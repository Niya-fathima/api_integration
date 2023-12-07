
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<void> register({
  required BuildContext context,
  required String username,
  required String password,
  required String name,
  required String email,
  required String phone,
}) async {
  var response=await http.post(Uri.parse('https://ecommerce-s2.onrender.com/api/register'),
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded'
      },
      body: <String,String>{
        'username':username,
        'password':password,
        'name':name,
        'email':email,
        'phone':phone

      });
  if (response.statusCode==200){
    ScaffoldMessenger.of(context).showSnackBar(content: Text('Registration successfull'))
  }
  print(response.body);
}
