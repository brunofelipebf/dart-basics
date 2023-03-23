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
        else if(text == 'remove'){
            print('which item would you like to remove?');
            for(var i = 0; i < products.length; i++){
                print('item $i - ${products[i]}');
            }
            var position = int.parse(stdin.readLineSync()!);
            products.removeAt(position);
        }
        else{
        products.add(text);
        }
    }
}