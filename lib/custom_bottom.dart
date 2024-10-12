import 'package:flutter/material.dart';

typedef onClicked = void Function();

class CustomBottom extends StatelessWidget {
  String titleBottom;
  Color colorBottom;
  onClicked onPressed;

  CustomBottom(
      {required this.titleBottom,
      required this.colorBottom,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ElevatedButton(
            onPressed: () {
              print("prssed");
              onPressed();
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: colorBottom,
                fixedSize: Size(100, 48),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18))),
            child: Text(
              titleBottom,
              style: TextStyle(color: Colors.black, fontSize: 20),
            )));
  }
}
