Future<String> simulateError() async {
  return await Future.delayed(Duration(seconds: 2), () {
    throw Exception("There's a problem in the system, please try again");
  });
}

Future<void> main() async {
  try {
    print("Starting process...");
    String result = await simulateError();
    print(result);
  } catch (e) {
    print("Caught an error: $e");
  }
}
