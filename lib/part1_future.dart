Future<String> getMessage(int seconds, String text) async {
  return await Future.delayed(Duration(seconds: seconds), () {
    return text;
  });
}

Future<void> main() async {
  Future<String> future1 = getMessage(2, "Your computer has been hacked!");
  Future<String> future2 = getMessage(1, "We are getting your credentials...");

  print(await future2);
  print(await future1);
}
