import 'dart:io';

List<Map<String, dynamic>> signups = [];
Map<String, dynamic> clientsLog = {};
void main() {
  bool condition = true;

  while (condition) {
    print('start typing');
    var command = stdin.readLineSync();
    if (command == "quit") {
      print('finished program');
      condition = false;
    } else if (command == 'signup') {
      signup();
    } else if (command == 'print') {
      print(clientsLog);
    } else if (command == 'print all') {
      print(signups);
    }
  }
}

signup() {
  print('type your name');
  var name = stdin.readLineSync();
  clientsLog['name'] = name;

  print('type your age');
  var age = stdin.readLineSync();
  clientsLog['age'] = age;

  signups.add(clientsLog);
}
