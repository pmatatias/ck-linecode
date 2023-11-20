import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

String readableDate(DateTime? date) {
  if (date == null) {
    return '';
  }
  return DateFormat('dd MMM yyyy').format(date);
}

class DateFieldWidget extends StatelessWidget {
  const DateFieldWidget(
      {super.key,
      required this.hint,
      required this.onTap,
      this.initVal,
      required this.onClear});
  final String hint;
  final VoidCallback onTap;
  final DateTime? initVal;
  final VoidCallback onClear;

  @override
  Widget build(BuildContext context) {
    final ctrl = TextEditingController(text: readableDate(initVal));
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 160),
      child: TextField(
        readOnly: true,
        controller: ctrl,
        onTap: () {
          onTap();
          FocusScope.of(context).unfocus();
        },
        decoration: InputDecoration(
          // hintText: hint,
          label: Text(hint),
          suffixIcon: IconButton(
              constraints: const BoxConstraints(),
              onPressed: initVal == null
                  ? null
                  : () {
                      onClear();
                      FocusScope.of(context).unfocus();
                    },
              icon: initVal == null
                  ? const Icon(Icons.calendar_month, color: Colors.black45)
                  : const Icon(Icons.clear, color: Colors.black)),
          suffixIconConstraints: const BoxConstraints(),
          contentPadding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
          border: OutlineInputBorder(
              // borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(6)),
          // fillColor: Palette.filledColorForm,
          filled: true,
          isCollapsed: true,
        ),
      ),
    );
  }
}
