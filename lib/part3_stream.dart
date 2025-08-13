// Stream function that emits numbers 1–5 with delays
Stream<int> numberStream() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i; // Emit the current number
  }
}

Future<void> main() async {
  print("Starting Hacking...");
  await for (int number in numberStream()) {
    print("In: $number");
  }
  print("Stream finished!");
}
