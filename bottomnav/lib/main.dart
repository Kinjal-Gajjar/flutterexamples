import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

void main() => runApp(
      MyPage(),
    );

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Navbar(),
    );
  }
}

class Navbar extends StatefulWidget {
  Navbar({Key? key}) : super(key: key);

  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  PageController _controller = PageController();
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            children: [
              _buildPage(
                icon: Icons.apps,
                title: "@flutterlove",
                color: Colors.red,
              ),
              _buildPage(
                icon: Icons.person,
                title: "Profile",
                color: Colors.pink,
              ),
              _buildPage(
                icon: Icons.message,
                title: "Meassage",
                color: Colors.orange,
              ),
              _buildPage(
                icon: Icons.settings,
                title: "settings",
                color: Colors.blue,
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavyBar(
            selectedIndex: _selectedIndex,
            onItemSelected: (index) {
              setState(() {
                _selectedIndex = index;
                _controller.animateToPage(index,
                    duration: Duration(milliseconds: 300), curve: Curves.ease);
              });
            },
            items: [
              BottomNavyBarItem(
                  icon: Icon(Icons.apps),
                  title: Text('home'),
                  activeColor: Colors.red),
              BottomNavyBarItem(
                  icon: Icon(Icons.people),
                  title: Text('user'),
                  activeColor: Colors.pink),
              BottomNavyBarItem(
                  icon: Icon(Icons.message),
                  title: Text('meassage'),
                  activeColor: Colors.orange),
              BottomNavyBarItem(
                  icon: Icon(Icons.settings),
                  title: Text('settings'),
                  activeColor: Colors.blue),
            ]));
  }

  _buildPage({IconData? icon, String? title, Color? color}) {
    return Container(
      color: color,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 200, color: Colors.white),
            Text(
              title!,
              style: TextStyle(color: Colors.white, fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
