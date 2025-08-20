import 'admin_functions.dart';
import 'consumer_functions.dart';
import 'main_function.dart';
import 'data.dart';
import 'dart:io';

import 'member_functions.dart';

void main() {
  Member member = Member();
  Main main = Main();
  Customer customer = Customer();
  Admin admin = Admin();
  member.memid = 3;

  String login = main.Login();
  if (login == "customer") {
    customer.bookcustomer();
  } else if (login == "admin") {
    admin.adminmain();
  } else if (login == "member") {
    member.member();
  } else if (login == "failed") {
    print("Please try Again");
  }
}
