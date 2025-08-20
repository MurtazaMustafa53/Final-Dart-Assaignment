import 'dart:async';
import 'dart:vmservice_io';
import 'consumer_functions.dart';
import 'admin_functions.dart';
import 'data.dart';
import 'dart:io';
import 'main_function.dart';
import 'main.dart';

class Member {
  int memid = 0;
  void member() {
    print(
      "-------------------------------------------------------------------------",
    );
    if (members["ID"][1]["user"] == memuser) {
      memid = 1;
    } else if (members["ID"][2]["user"] == memuser) {
      memid = 2;
    } else if (members["ID"][3]["user"] == memuser) {
      memid = 3;
    }
    if (membersBooks.containsKey(memid)) {
      //has a book
      print(
        "you have books you still have to ruturn that is why you cannot select any more books",
      );
      print(
        "\nif you want to know the name of the books type 'Y', if you dont type 'N'",
      );
      String? ans1 = stdin.readLineSync();
      if (ans1!.toLowerCase() == "y") {
        if (memid == 1) {
          for (var i = 1; i <= 3; i++) {
            print(membersBooks[1]["books"][i]["bookname"]);
          }
        } else if (memid == 2) {
          for (var i = 1; i <= 3; i++) {
            print(membersBooks[2]["books"][i]["bookname"]);
          }
        }
      }
      print(
        "\nif you want to know the return date of the book please type 'Y' ",
      );
      print("if you dont want to view the return date please type 'N' ");
      String? ans2 = stdin.readLineSync();
      if (ans2!.toLowerCase() == "y") {
        if (memid == 1) {
          print(
            "you have to submit the books in ${membersBooks[1]["dueDate"]}",
          );
        } else if (memid == 2) {
          print(
            "you have to submit the books in ${membersBooks[2]["dueDate"]}",
          );
        }
      }
    } else {
      //does not have a book
      print("If you want to select new books type 'Y', Otherwise type 'N' ");
      String? ans1 = stdin.readLineSync();
      if (ans1!.toLowerCase() == "y") {
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

              print(
                "$i.  ${books[gen.toLowerCase()]?["ID"]?[i]?["bookname"]} by",
              );
              print(books[gen.toLowerCase()]?["ID"]?[i]?["Author"]);
            }
            print("if you want to select any book from this genre type 'Y' ");
            print("if you want to go back type 'N'");
            String? sel = stdin.readLineSync();
            if (sel!.toLowerCase() == "y") {
              print("type the number of the book");
              String? numes = stdin.readLineSync();
              int? numo = int.parse(numes!);
              selectedBook.add(
                books[gen.toLowerCase()]?["ID"]?[numo]?["bookname"],
              );
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
      }
    }
    print("Thankyou for using our library management system");
  }
}
