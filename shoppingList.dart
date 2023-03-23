import 'dart:io';

main(){

    List<String> products = [];
    bool condition = true;

    while(condition){
        print('Add the product:');
        var text = stdin.readLineSync()!;
        if(text == 'quit'){
            condition = false;
        }
        else if(text == 'list'){
            for(var i = 0; i < products.length; i++){
                print('item $i - ${products[i]}');
            }
        }
        else{
        products.add(text);
        }
    }
}