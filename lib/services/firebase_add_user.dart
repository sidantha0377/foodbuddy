import 'package:cloud_firestore/cloud_firestore.dart';

class AddUser {
  final String fname;
  final String lname;
  final String email;
  final String uname;
  AddUser(this.fname, this.lname, this.email, this.uname);
  Future<void> addUserDetail() async {
    await FirebaseFirestore.instance.collection('users').add({
      'first name': fname,
      'last name': lname,
      'email': email,
      'user name': uname,
    });
  }
}
