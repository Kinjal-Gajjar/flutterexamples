import 'package:emoji_alert/arrays.dart';
import 'package:flutter/material.dart';
import 'package:emoji_alert/emoji_alert.dart';

void main() => {
      runApp(MyApp()),
    };

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyemojiPage(),
    );
  }
}

class MyemojiPage extends StatefulWidget {
  MyemojiPage({Key? key}) : super(key: key);

  @override
  _MyemojiPageState createState() => _MyemojiPageState();
}

class _MyemojiPageState extends State<MyemojiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                EmojiAlert(
                  description: Text('this is description'),
                  emojiType: EMOJI_TYPE.LAUGHING,
                  // emojiSize: 100,
                  // height: 300,
                  cancelable: false,
                  enableMainButton: true,
                  mainButtonText: Text('cancle'),
                  onMainButtonPressed: () {
                    Navigator.pop(context);
                  },
                ).displayAlert(context);
              },
              child: const Text(
                'Alert',
                style: TextStyle(fontSize: 30),
              ),
              style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(Size(100, 50))),
            )
          ],
        ),
      ),
    );
  }
}
