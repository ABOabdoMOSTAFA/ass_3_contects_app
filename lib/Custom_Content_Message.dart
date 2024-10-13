import 'package:flutter/material.dart';

typedef onClicked = void Function();

class CustomContentMessage extends StatelessWidget {
  String name;
  String phoneNumber;
  bool isVisible;
  onClicked onPressed;

  CustomContentMessage(
      {this.name = "",
      this.phoneNumber = "",
      this.isVisible = false,
      required this.onPressed});

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
              const EdgeInsets.only(left: 25.0, right: 15, top: 16, bottom: 18),
          child: Row(
            children: [
              Column(
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
              Spacer(),
              IconButton(
                  onPressed: onPressed,
                  icon: Icon(
                    Icons.delete,
                    color: Colors.red,
                    size: 35,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
