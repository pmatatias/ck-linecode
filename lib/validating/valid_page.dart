import 'package:ck_linecode/validating/mymodel.dart';
import 'package:flutter/material.dart';

class ValidatingPage extends StatefulWidget {
  const ValidatingPage({super.key});

  @override
  State<ValidatingPage> createState() => _ValidatingPageState();
}

class _ValidatingPageState extends State<ValidatingPage> {
  final _key = GlobalKey<FormState>();
  TextEditingController txtCtrl = TextEditingController();
  Color selectedColor = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Validate Everything"),
        actions: [
          ElevatedButton.icon(
              onPressed: () {
                _key.currentState!.validate();
              },
              icon: const Icon(Icons.check),
              label: const Text("Validate"))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Form(
          key: _key,
          child: ListView(
            children: [
              const Text("Validation on Textfield"),
              const SizedBox(height: 5),
              TextFormField(
                controller: txtCtrl,
                decoration: const InputDecoration(border: OutlineInputBorder()),
                validator: (value) {
                  /// check if value is null or empty string
                  if ((value ?? '').isEmpty) return "This field cant be empty!";
                  return null;
                },
              ),
              const Divider(),
              const Text("Validation on Textfield for Email"),
              const SizedBox(height: 5),
              TextFormField(
                controller: txtCtrl,
                decoration: const InputDecoration(border: OutlineInputBorder()),
                validator: (value) {
                  /// check is value is null
                  if (value == null) return "Required field";

                  /// check if the value is correct for email format
                  final bool emailValid = RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      .hasMatch(value);
                  if (!emailValid) return "Email not valid";

                  /// return null when value pass all conditons
                  return null;
                },
              ),
              const Divider(),
              const Text("Validation on Container"),
              const SizedBox(height: 5),
              FormField<Color>(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                initialValue: selectedColor,
                validator: (value) {
                  if (value == Colors.red) {
                    return "Red color";
                  } else if (value == Colors.blue) {
                    return "Blue color";
                  }
                  return null;
                },
                builder: (field) => Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            field.didChange(Colors.red);
                          },
                          child: Container(
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.red),
                            width: 80,
                            height: 80,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            field.didChange(Colors.amber);
                          },
                          child: Container(
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.amber),
                            width: 80,
                            height: 80,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            field.didChange(Colors.blue);
                          },
                          child: Container(
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.blue),
                            width: 80,
                            height: 80,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    if (field.hasError)
                      Text(
                        'You can\'t select ${field.errorText}',
                        style: const TextStyle(color: Colors.red),
                      ),
                    const Divider(),
                    ...players.map((e) => PlayerInfo(data: e)).toList(),
                  ],
                ),
              ),
              //
            ],
          ),
        ),
      ),
    );
  }
}

class PlayerInfo extends StatelessWidget {
  const PlayerInfo({super.key, required this.data});
  final Player data;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Column(
            children: [
              Text(data.name),
              CircleAvatar(child: Text(data.id.toString())),
            ],
          ),
          const SizedBox(width: 50),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Ability"),
                Slider(
                  value: data.ability.toDouble(),
                  onChanged: (val) {},
                  max: 100,
                ),
                const SizedBox(height: 12),
                const Text("Power"),
                Slider(
                  value: data.power.toDouble(),
                  onChanged: (val) {},
                  max: 100,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

List players = [
  const Player(1, "Player 1", 3, 20),
  const Player(2, "Player 2", 5, 40),
  const Player(3, "Player 3", 4, 30),
];
