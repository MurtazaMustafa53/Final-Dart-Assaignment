import 'dart:math';
import 'consumer_functions.dart';
import 'main_function.dart';
import 'data.dart';
import 'admin_functions.dart';
import 'dart:io';

class Customer {
  void bookcustomer() {
    String gen = "";
    int limit = 0;
    do {
      print("what genre you want to select a book from");
      List abc = books.keys.toList();
      int i = 1;
      for (var element in abc) {
        print("$i. $element");
        i++;
      }
      String? gene = stdin.readLineSync();
      int? genr = int.parse(gene!);
      switch (genr) {
        case 1:
          gen = "sci fi";
          break;
        case 2:
          gen = "fantasy";
          break;
        case 3:
          gen = "mystery";
          break;
        case 4:
          gen = "romance";
          break;
        case 5:
          gen = "action";
          break;
        case 6:
          gen = "comedy";
          break;
        default:
          print("Please type a number that has a genre");
      }
      if (genre.indexOf(gen) >= 0) {
        for (var i = 1; i <= 3; i++) {
          print(
            "---------------------------------------------------------------------",
          );

          print("$i.  ${books[gen.toLowerCase()]?["ID"]?[i]?["bookname"]} by");
          print(books[gen.toLowerCase()]?["ID"]?[i]?["Author"]);
        }
        print("if you want to select any book from this genre type 'Y' ");
        print("if you want to go back type 'N'");
        String? sel = stdin.readLineSync();
        if (sel!.toLowerCase() == "y") {
          print("type the number of the book");
          String? numes = stdin.readLineSync();
          int? numo = int.parse(numes!);
          selectedBook.add(books[gen.toLowerCase()]?["ID"]?[numo]?["bookname"]);
          limit++;
          print("if you want to move forward type 'Y'");
          print("if you want to go back to select more books type 'N'");
          sel = stdin.readLineSync();
          if (sel!.toLowerCase() == "y") {
            break;
          }
        } else if (sel.toLowerCase() == "n") {}
      } else {}
    } while (limit < 4);
    print(
      "----------------------------------------------------------------------",
    );
    print("In how many days will you return the books");
    String? dat = stdin.readLineSync();
    int? day = int.parse(dat!);
    print("you will have to retuen the books in $day days");
    print(
      "---------------------------------------------------------------------",
    );
    print(
      "if you want to review what you have selected type 'Y', If you dont then type 'N'.",
    );
    String? sel = stdin.readLineSync();
    if (sel!.toLowerCase() == "y") {
      print("you have selected");
      for (var i = 0; i < selectedBook.length; i++) {
        print(selectedBook[i]);
      }
      print("you will have to return these books in $day days");
    }
    print(
      "------------------------------------------------------------------------",
    );
    print("Thankyou for using our library management system");
  }
}
