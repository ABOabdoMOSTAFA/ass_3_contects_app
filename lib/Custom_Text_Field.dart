import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  String hintText;
  String nameError;
  IconData iconData;
  TextEditingController controller;
  bool isTyping;
  TextInputType keyboardTyping;

  CustomTextField(
      {required this.hintText,
      required this.iconData,
      required this.controller,
      required this.isTyping,
      required this.nameError,
      required this.keyboardTyping});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, left: 15, right: 15),
      child: TextField(
        cursorColor: Colors.black,
        controller: controller,
        keyboardType: keyboardTyping,
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
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: Colors.transparent),
            ),
            errorText: isTyping ? " $nameError can't be Empty" : null,
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: Colors.transparent),
            ),
            hintStyle:
                TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Colors.transparent)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Colors.blueAccent))),
      ),
    );
  }
}
