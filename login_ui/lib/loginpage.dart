import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  bool checked = false;
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0.5),
        elevation: 0,
        title: Text(
          'Login',
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
                    'Log in with Google',
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
                  'Remember me ',
                  style: TextStyle(fontSize: 20, color: Colors.black54),
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
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            child: Text(
              'Forgot Password?',
              style: TextStyle(fontSize: 18, color: Colors.blue[300]),
            ),
          ),
          SizedBox(
            height: 25,
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
              'Don\'t have an account?',
              style: TextStyle(fontSize: 18, color: Colors.black87),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: TextButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, 'second');
              },
              child: Text(
                'Sign up',
                style: TextStyle(fontSize: 18, color: Colors.blue[300]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
