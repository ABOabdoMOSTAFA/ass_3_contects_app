import 'package:ass_3_contects_app/Custom_Content_Message.dart';
import 'package:ass_3_contects_app/Custom_Text_Field.dart';
import 'package:ass_3_contects_app/custom_bottom.dart';
import 'package:flutter/material.dart';

class ContactsScreen extends StatefulWidget {
  static const String routeName = "ContactsScreen";

  ContactsScreen();

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  TextEditingController nameController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  List<CustomContentMessage> cards = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(),
            child: Text(
              "Contacts Screen",
              style: TextStyle(
                color: Colors.white,
              ),
            )),
      ),
      backgroundColor: Color(0xFF9e9e9e),
      body: Column(
        children: [
          CustomTextField(
            hintText: "Enter Your Name Here",
            iconData: Icons.edit,
            controller: nameController,
          ),
          CustomTextField(
            hintText: "Enter Your Number Here",
            iconData: Icons.phone,
            controller: phoneController,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 35.0, horizontal: 10),
            child: Row(
              children: [
                CustomBottom(
                  titleBottom: "Add",
                  colorBottom: Colors.blueAccent,
                  onPressed: createContentMessage,
                ),
                SizedBox(
                  width: 4,
                ),
                CustomBottom(
                  titleBottom: "Delete",
                  colorBottom: Colors.red,
                  onPressed: deleteContentMessage,
                )
              ],
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => cards[index],
              scrollDirection: Axis.vertical,
              itemCount: cards.length,
            ),
          )

          // card1,
          // card2,
          // card3,
          // Spacer(),
          // CustomContentMessage(),
          // Spacer(),
          // CustomContentMessage(),
        ],
      ),
    );
  }

  int counter = 1;

  // void createContentMessage() {
  //   print("oooooooooooooooooooooooo");
  //   if (counter == 1) {
  //     card1 = CustomContentMessage(
  //       name: nameController.text,
  //       phoneNumber: phoneController.text,
  //       isVisible: true,
  //     );
  //   } else if (counter == 2) {
  //     card2 = CustomContentMessage(
  //       name: nameController.text,
  //       phoneNumber: phoneController.text,
  //       isVisible: true,
  //     );
  //   } else if (counter == 3) {
  //     card3 = CustomContentMessage(
  //       name: nameController.text,
  //       phoneNumber: phoneController.text,
  //       isVisible: true,
  //     );
  //   } else {
  //     return;
  //   }
  //
  //   counter++;
  //   setState(() {}); // Trigger rebuild
  //
  //   // Prevent exceeding the number of available cards
  //   print("$counter ");
  //
  //   if (counter > 3) {
  //     counter = 4;
  //     print("counter =4");
  //   }
  // }
  int index = 0;

  void createContentMessage() {
    if (cards.length == 3) {
      index = 2;
      print(index);
      return;
    }
    cards.add(CustomContentMessage(
      name: nameController.text,
      phoneNumber: phoneController.text,
      isVisible: true,
    ));
    index++;
    setState(() {});
  }

  // void deleteContentMessage() {
  //   if (counter == 0) {
  //     counter = 1;
  //   }
  //   print(counter);
  //   counter--;
  //   if (counter == 3) {
  //     // card3 ..isVisible =false ..name="" ..phoneNumber="";
  //     card3 = CustomContentMessage(
  //       name: "",
  //       phoneNumber: "",
  //       isVisible: false,
  //     );
  //     setState(() {});
  //   } else if (counter == 2) {
  //     card2 = CustomContentMessage(
  //       name: "",
  //       phoneNumber: "",
  //       isVisible: false,
  //     );
  //     setState(() {});
  //   } else if (counter == 1) {
  //     card1 = CustomContentMessage(
  //       name: "",
  //       phoneNumber: "",
  //       isVisible: false,
  //     );
  //     setState(() {});
  //   } else {
  //     return;
  //   }
  // }
  void deleteContentMessage() {
    if (cards.isEmpty) {
      return;
    }

    print(index);
    cards.removeAt(index);
    print("error");
    index--;
    setState(() {});
  }
}
