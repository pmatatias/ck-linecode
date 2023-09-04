import 'dart:io';
import 'package:args/command_runner.dart';

void main(List<String> arguments) {
  const baseCommand = 'git';

  const countLines =
      'git diff --shortstat 4b825dc642cb6eb9a060e54bf8d69288fbee4904';
  // final args = ['status', ...arguments];

  if (arguments[0] == 'xt') {
    print("masuk sini");
    Process.run(countLines, arguments);
  }
  // Process.run(baseCommand, arguments).then((result) {
  //   print(result.stdout);
  // });
}
