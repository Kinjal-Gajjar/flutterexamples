import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Signpage extends StatefulWidget {
  const Signpage({Key? key}) : super(key: key);

  @override
  _SignpageState createState() => _SignpageState();
}

class _SignpageState extends State<Signpage> {
  bool checked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0.5),
        elevation: 0,
        title: Text(
          'Sign up',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.cancel_rounded,
                color: Colors.black12,
              )),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 45,
            margin: EdgeInsets.all(15),
            child: TextButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.grey[50]),
                elevation: MaterialStateProperty.all(4),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 50,
                  ),
                  FaIcon(
                    FontAwesomeIcons.google,
                    size: 20,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Sign up with Google',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black87,
                      fontFamily: 'Oswald',
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 350,
            child: Divider(
              color: Colors.black38,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            child: Text(
              'Name',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              alignment: Alignment.topRight,
              height: 45,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    hintText: 'Lesile Alexander',
                    hintStyle: TextStyle(
                      fontSize: 19,
                    )),
              ),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            child: Text(
              'Email',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              alignment: Alignment.topRight,
              height: 45,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    hintText: 'example@gmail.com',
                    hintStyle: TextStyle(
                      fontSize: 19,
                    )),
              ),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            child: Text(
              'Password',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              alignment: Alignment.topRight,
              height: 45,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    hintText: 'at least 8 characters',
                    hintStyle: TextStyle(
                      fontSize: 19,
                    ),
                    suffixIcon: IconButton(
                        onPressed: () {}, icon: Icon(Icons.visibility))),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 0),
            child: Container(
              height: 4,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.grey[350],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.grey[350],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.grey[350],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.grey[350],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Row(
              children: [
                Checkbox(
                  value: checked,
                  onChanged: (bool? value) {
                    setState(() {
                      checked = value!;
                    });
                  },
                ),
                Text(
                  'I agree with ',
                  style: TextStyle(fontSize: 20, color: Colors.black54),
                ),
                Text(
                  'Terms',
                  style: TextStyle(fontSize: 20, color: Colors.blue),
                ),
                Text(
                  ' and',
                  style: TextStyle(fontSize: 20, color: Colors.black54),
                ),
                Text(
                  ' privacy',
                  style: TextStyle(fontSize: 20, color: Colors.blue),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: 40,
              width: 390,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.blue),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                  child: Text(
                    'Sign up',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 350,
            child: Divider(
              color: Colors.black26,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Text(
              'Alerady have an account?',
              style: TextStyle(fontSize: 18, color: Colors.black87),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Text(
              'Login',
              style: TextStyle(fontSize: 18, color: Colors.blue),
            ),
          ),
        ],
      ),
    );
  }
}
