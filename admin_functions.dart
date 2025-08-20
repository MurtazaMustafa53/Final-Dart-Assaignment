import 'dart:async';
import 'consumer_functions.dart';
import 'main_function.dart';
import 'data.dart';
import 'dart:io';

class Admin {
  int booknumber = 18;
  void adminmain() {
    bool lop = true;

    do {
      print(
        "-------------------------------------------------------------------------",
      );
      print("welcome Admin ");
      print("1. Check the number of Members and member related details");
      print("2. Check the stock of the books");
      print("3. Add new books to the library stock");
      print("4.Exit");
      String? choic = stdin.readLineSync();
      int? choice = int.parse(choic!);
      switch (choice) {
        case 1:
          checkMembers();
          break;
        case 2:
          checkStock();
          break;
        case 3:
          addBooks();
          break;
        case 4:
          print("Thankyou for using our Library Management System");
          lop = false;
          break;
        default:
          print("please choose from the choice given");
      }
    } while (lop);
  }

  void checkMembers() {
    int memberCount = ((members.values).toString().split(",").length) ~/ 2;
    print("there are total $memberCount members ");
    print("if you want to know their username type 'Y'");
    String? ans = stdin.readLineSync();
    if (ans!.toLowerCase() == "y") {
      for (var i = 1; i <= memberCount; i++) {
        print(members["ID"][i]["user"]);
      }
    }
    print("if you want their due date type 'Y'");
    String? anss = stdin.readLineSync();
    int memberDueCount =
        ((membersBooks.values).toString().split(",").length) ~/ 4;

    if (anss!.toLowerCase() == "y") {
      for (var i = 1; i <= memberDueCount; i++) {
        print(
          "The user ${members["ID"][i]["user"]} has their books due in ${membersBooks[i]["dueDate"]}",
        );
      }
    }
  }

  void checkStock() {
    print("there are total $booknumber books in our stock");
  }

  void addBooks() {
    bool pre = false;
    int a = 4, b = 1;
    print(
      "------------------------------------------------------------------------------------------------------------",
    );
    print(
      "If you want to add a new genre type '1'\nIf you want to add a book in the existing genre type '2'",
    );
    String? ans = stdin.readLineSync();
    int? anss = int.parse(ans!);
    if (anss == 1) {
      ///wants to add new genre
      print("what is the name of the genre");
      String? gener = stdin.readLineSync();
      if (!genre.contains(gener)) {
        genre.add(gener);
        print("What is the name of the book");
        String? book = stdin.readLineSync();
        print("What is the name of the author");
        String? author = stdin.readLineSync();
        booknumber++;
        books.addAll({
          gener!: {
            "ID": {
              b: {"bookname": book!, "author": author!},
            },
          },
        });
        b++;
        do {
          print(
            "Do you want to add another book in this genre\nIf you want type 'Y' othervise type 'N'",
          );
          String? anss1 = stdin.readLineSync();
          if (anss1!.toLowerCase() == "y") {
            //yes
            print("what is the name of the book");
            String? book = stdin.readLineSync();
            print("What is the name of the author");
            String? author = stdin.readLineSync();
            booknumber++;

            books[gener]!["ID"]!.addAll({
              b: {"bookname": book!, "Author": author!},
            });
            b++;
          } else if (anss1.toLowerCase() == "n") {
            break;
          }
        } while (1 < 2);
      } else {
        print("this genre is already in stock");
      }
    } else if (anss == 2) {
      //wants to add to an existing genre
      do {
        print("In what genre you want to add the book"); //asking the genre
        String? genres = stdin.readLineSync();

        if (genre.contains(genres!)) {
          //if the genre exist

          print("what is the name of the book");
          String? book = stdin.readLineSync();
          print("What is the name of the author");
          String? author = stdin.readLineSync();
          booknumber++;

          books[genres]!["ID"]!.addAll({
            a: {"bookname": book!, "Author": author!},
          });
          a++;
          print(
            "If you want to add another book type 'y'\nIf you want to exit type 'n'",
          );
          String? anss2 = stdin.readLineSync();
          if (anss2!.toLowerCase() == "y") {
            pre = true;
          } else {
            pre = false;
          }
        } else {
          //if the genre does not exist
          print("The genre you typed is not present");
          pre = true;
        }
      } while (pre);
    }
    print(
      "---------------------------------------------------------------------------------------------------------",
    );
  }
}
