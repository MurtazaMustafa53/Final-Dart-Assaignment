import 'consumer_functions.dart';
import 'admin_functions.dart';
import 'data.dart';
import 'dart:io';

class Main {
  String Login() {
    int attempts = 1;
    String User = "admin", _Pass = "admin123", usr = "";

    print(
      "--------------------------------------------------------------------",
    );
    stdout.write(
      "welcome to the Library Managment System made by Murtaza Mustafa\n\n\n",
    );
    print("Please select from the given options");
    print("1. Admin\n2. Member\n3. Customer");
    String? log = stdin.readLineSync();
    int? logi = int.parse(log!);
    if (logi == 1) {
      //admin login
      print("Please Type the login Credentials. You will get 5 tries");
      do {
        print("Attempt #$attempts");
        print("Username:");
        String? username = stdin.readLineSync();
        print("Password :");
        String? password = stdin.readLineSync();
        if (username == User && password == _Pass) {
          return "admin";
        }
        attempts++;
      } while (attempts <= 5);
      print("You have reached your login attempts limit ");
    } else if (logi == 3) {
      //customer login
      print("Please type your name, email, Password  ");
      print("Name: ");
      String? Name = stdin.readLineSync();
      print("Email:");
      String? Email = stdin.readLineSync();
      print("Password: ");
      String? pass = stdin.readLineSync();
      credentials.addAll({"Name": Name, "Email": Email, "Password": pass});
      return "customer";
    } else if (logi == 2) {
      //members login
      print("Please login to your account");
      print("you will get 5 attempts");
      do {
        print("Attempt #$attempts");
        print("Username:");
        String? username = stdin.readLineSync();
        usr = username!;
        print("Password :");
        String? password = stdin.readLineSync();
        attempts++;
        if (members["ID"][1].containsValue(username.toLowerCase()) &&
                members["ID"][1].containsValue(password) ||
            members["ID"][2].containsValue(username.toLowerCase()) &&
                members["ID"][2].containsValue(password) ||
            members["ID"][3].containsValue(username.toLowerCase()) &&
                members["ID"][3].containsValue(password)) {
          return "member";
        }
      } while (attempts <= 5);
      memuser = usr;
    }

    return "failed";
  }
}
