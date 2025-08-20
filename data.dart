import 'consumer_functions.dart';
import 'main_function.dart';
import 'admin_functions.dart';
import 'dart:io';
import 'main.dart';

Map credentials = {};
String memuser = "";
Map members = {
  "ID": {
    1: {"user": "murtaza", "password": "murtaza123"},
    2: {"user": "mustafa", "password": "mustafa123"},
    3: {"user": "hussain", "password": "hussain123"},
  },
};
Map membersBooks = {
  1: {
    "dueDate": "5 days",
    "books": {
      1: {"bookname": "The Princess Bride"},
      2: {"bookname": "Foundation"},
      3: {"bookname": "The Lord of the Rings"},
    },
  },
  2: {
    "dueDate": "2 days",
    "books": {
      1: {"bookname": "The Duke who Didn't"},
      2: {"bookname": "The Hunger Games"},
      3: {"bookname": "Dune"},
    },
  },
};
Map<String, Map<String, Map<int, Map<String, String>>>> books = {
  "sci fi": {
    "ID": {
      1: {"bookname": "Dune", "Author": "Frank Herbery"},
      2: {
        "bookname": "The Hitchhiker's Guide to the Galaxy",
        "Author": "Douglas Adams",
      },
      3: {"bookname": "Foundation", "Author": "Isaac Asimov"},
    },
  },
  "fantasy": {
    "ID": {
      1: {"bookname": "The Lord of the Rings", "Author": "J.R.R. Tolkien"},
      2: {"bookname": "A Game of Thrones", "Author": "George R.R. Martin"},
      3: {"bookname": "The Chronicles of Narnia", "Author": "C.S. Lewis"},
    },
  },
  "mystery": {
    "ID": {
      1: {"bookname": "And Then There Were None", "Author": "Agatha Christie"},
      2: {"bookname": "The Big Sleep", "Author": "Raymond Chandler"},
      3: {"bookname": "The Shadow of the Wind", "Author": "Carlos Ruiz Zafón"},
    },
  },
  "romance": {
    "ID": {
      1: {"bookname": "The Duke Who Didn't", "Author": "Courtney Milan"},
      2: {"bookname": "The Hating Game", "Author": "Sally Thorne"},
      3: {"bookname": "Wuthering Heights", "Author": "Emily Brontë"},
    },
  },
  "action": {
    "ID": {
      1: {"bookname": "Jurassic Park", "Author": "Michael Crichton"},
      2: {"bookname": "The Hunger Games", "Author": "Suzanne Collins"},
      3: {"bookname": "Moby Dick ", "Author": "Herman Melville"},
    },
  },
  "comedy": {
    "ID": {
      1: {
        "bookname": "The Hitchhiker's Guide to the Galaxy",
        "Author": "Douglas Adams",
      },
      2: {"bookname": "The Princess Bride", "Author": "William Goldman"},
      3: {
        "bookname": "Where the Deer and the Antelope ",
        "Author": "Nick Offerman",
      },
    },
  },
};
List selectedBook = [];
List genre = ["comedy", "action", "romance", "mystery", "fantasy", "sci fi"];
