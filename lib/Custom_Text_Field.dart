import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  String hintText;
  IconData iconData;
  TextEditingController controller;

  CustomTextField(
      {required this.hintText,
      required this.iconData,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, left: 15, right: 15),
      child: TextField(
        cursorColor: Colors.black,
        controller: controller,
        decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            suffixIcon: IconButton(
                onPressed: () {},
                icon: Icon(
                  iconData,
                  color: Colors.blueAccent,
                )),
            hintText: hintText,
            hintStyle:
                TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Colors.transparent)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Colors.transparent))),
      ),
    );
  }
}
