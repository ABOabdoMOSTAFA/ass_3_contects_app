import 'package:flutter/material.dart';

class CustomContentMessage extends StatelessWidget {
  String name;
  String phoneNumber;
  bool isVisible;

  CustomContentMessage(
      {this.name = "", this.phoneNumber = "", this.isVisible = false});

  @override
  Widget build(BuildContext context) {
    // CustomTextFieldData data = ModalRoute.of(context)?.settings.arguments as CustomTextFieldData;
    return Visibility(
      visible: isVisible,
      child: Container(
        height: 100,
        width: double.infinity,
        margin: EdgeInsets.only(left: 15, right: 15, bottom: 25),
        padding: EdgeInsets.all(2),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(40)),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 40.0, right: 60, top: 16, bottom: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Text(
                "Name : $name",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                ),
              )),
              Expanded(
                  child: Text(
                "Phone : $phoneNumber",
                style: TextStyle(color: Colors.black, fontSize: 26),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
