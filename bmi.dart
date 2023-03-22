import 'dart:io';
import 'dart:math';

main(){
    print('Type your weight in kilograms:');
    var weight = double.parse(stdin.readLineSync()!);

    print('Type your height in meters separated by dot e.g 1.88:');
    var height = double.parse(stdin.readLineSync()!);

    var calc = weight / pow(height, 2);

    if(calc < 18.5){
        print('$calc Underweight');
    } 
    else if(calc >= 18.5 && calc <= 24.9){
        print('$calc Normal weight');
    } 
    else if(calc >= 25 && calc <= 29.9){
        print('$calc Overweight');
    } 
    else if(calc >= 30 && calc <= 34.9){
        print('$calc Obesity type I');
    } 
    else if(calc >= 35 && calc <= 39.9){
        print('$calc Obesity type II');
    } 
    else{
        print('$calc Obesity type III');
    }
}