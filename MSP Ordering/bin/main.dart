import 'dart:ffi';
import 'dart:io';

import 'package:test/test.dart';
double total=0 ;
var name,choco,cream,cups;

main() {
  try {
  print("Welcome to MSP Ordering app , Please enter your name : ");
  name = stdin.readLineSync();

  print("*** Hi $name :) \n Our price plan <<\$5 for Cup ,add Chocolate for \$2.5 , add  Whipped cream for \$2.25>>"+
  "\n So, How many Cups do you need ? *** ");
  cups = stdin.readLineSync();

    print("\nWould you like to add Whipped cream ? (YES , NO)");
    cream = stdin.readLineSync().toLowerCase().trim();
    check(cream, 2.25);

    print("\nWould you like to add Chocolate ? (YES , NO)");
    choco = stdin.readLineSync().toLowerCase().trim();
    check(choco, 2.5);

    total = total + 5 * (double.parse(cups));
    order();

  } catch (e) { print("Wrong Input , Try again later !");
                  exit(0);};
  }



 check(String add , double cost){
    if (add =="yes") {total = total + cost*double.parse(cups);}
    else if (add=="no"){}
    else {print('Wrong input , try again later');
          exit(0);}
  }

  order(){
    print("\n---------------ORDER DETAILS---------------\nName: $name\n#Cups: $cups\n$choco >>Chocolate\n$cream >>Whipped cream\n"
        "Total: \$$total\n---------THANKS , PLEASE COME AGAIN---------");
  }

