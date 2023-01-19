import 'package:flutter/material.dart';

class customAppBar extends StatelessWidget {
  customAppBar({Key? key}) : super(key: key);
  TextEditingController SearchTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
            color: Colors.white,
          ),
        ),
      ],
      backgroundColor: Colors.black,
      elevation: 0,
      title: Container(
        margin: new EdgeInsets.only(bottom: 4),
        child: TextFormField(
          style: TextStyle(
            fontSize: 10,
            color: Colors.white,
          ),
          controller: SearchTextEditingController,
          decoration: InputDecoration(
            hintText: "Search the music",
            hintStyle: TextStyle(
              color: Colors.grey,
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
              ),
            ),
            focusedBorder:  UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
            filled: true,

          ),
        ),
      ),
    );
  }
}
