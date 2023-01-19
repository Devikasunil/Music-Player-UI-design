import 'package:flutter/material.dart';

class aboutpage extends StatelessWidget {
  const aboutpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: Text(
          "About",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        toolbarHeight: 90,
      ),
      body: Column(
        children: [
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(
                Colors.black,
              ),
              elevation: MaterialStatePropertyAll(
                0,
              ),
            ),
            onPressed: () {},
            child: Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Text(
                  'PRIVACY POLICY',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  width: 110,
                ),
                Icon(
                  Icons.info,
                  color: Colors.white,
                  size: 24,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(
                Colors.black,
              ),
              elevation: MaterialStatePropertyAll(
                0,
              ),
            ),
            onPressed: () {},
            child: Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Text(
                  'Terms & Conditions',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  width: 107,
                ),
                Icon(
                  Icons.my_library_books_rounded,
                  color: Colors.white,
                  size: 24,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(
                Colors.black,
              ),
              elevation: MaterialStatePropertyAll(
                0,
              ),
            ),
            onPressed: () {},
            child: Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Text(
                  'Contact Us!',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  width: 157,
                ),
                Icon(
                  Icons.mail_lock,
                  color: Colors.white,
                  size: 24,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          SizedBox(
            height: 250,
          ),
          Text(
            'Version',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 20,
            ),
          ),
          Text(
            "1.0",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
