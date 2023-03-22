import 'dart:io';
void main() {

  print('type your name:');
  String name = stdin.readLineSync()!;

  print('type your age:');
  var age = int.parse(stdin.readLineSync()!);
  
  if(age >= 18){
    print('$name, you are an adult');
  } else {
    print('$name, you are a minor');
  }
}