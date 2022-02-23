import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ChoosePage extends StatefulWidget {
  ChoosePage({Key? key}) : super(key: key);

  @override
  State<ChoosePage> createState() => _ChoosePageState();
}

class _ChoosePageState extends State<ChoosePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Where would',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                      fontFamily: 'Lobster',
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  SizedBox(
                    width: 130,
                  ),
                  CircleAvatar(),
                ],
              ),
              Text(
                'You like to travel?',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 35,
                  fontFamily: 'Lobster',
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 360,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Color(0xffF4F4F4),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: ' Search',
                      hintStyle: TextStyle(
                        fontSize: 20,
                      ),
                      suffixIcon: Icon(Icons.search)),
                ),
              ),
              SizedBox(height: 10),
              DefaultTabController(
                length: 7,
                child: Column(children: <Widget>[
                  ButtonsTabBar(
                    unselectedBackgroundColor: Color(0xffF5F4F6),
                    backgroundColor: Color(0xffEC6D67),
                    contentPadding: EdgeInsets.symmetric(horizontal: 25),
                    radius: 100,
                    tabs: [
                      Tab(
                        text: 'All',
                      ),
                      Tab(
                        text: 'Fight',
                      ),
                      Tab(
                        text: 'Cruise',
                      ),
                      Tab(
                        text: 'Train',
                      ),
                      Tab(
                        text: 'Bus',
                      ),
                      Tab(
                        text: 'Ricksha',
                      ),
                      Tab(
                        text: 'Cycle',
                      ),
                    ],
                  ),
                ]),
              ),
              SizedBox(
                height: 30,
              ),
              StaggeredGrid.count(
                crossAxisCount: 4,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
                children: [
                  //first image
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 2,
                    child: Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          colorFilter: ColorFilter.mode(
                              Colors.grey.withOpacity(0.8), BlendMode.dstATop),
                          image: AssetImage('image/imag2.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 20, bottom: 20),
                            child: Text(
                              "Parise",
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 40, bottom: 20),
                            child: Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                '\$120',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  //second
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 1.5,
                    child: Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          colorFilter: ColorFilter.mode(
                              Colors.grey.withOpacity(0.8), BlendMode.dstATop),
                          image: AssetImage('image/imag3.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 20, bottom: 20),
                            child: Text(
                              "Rom",
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 40, bottom: 20),
                            child: Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                '\$250',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  //three
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 2,
                    child: Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          colorFilter: ColorFilter.mode(
                              Colors.grey.withOpacity(0.8), BlendMode.dstATop),
                          image: AssetImage('image/imag4.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 20, bottom: 20),
                            child: Text(
                              "Bail",
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 40, bottom: 20),
                            child: Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                '\$500',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  //four
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 3,
                    child: Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          colorFilter: ColorFilter.mode(
                              Colors.grey.withOpacity(0.8), BlendMode.dstATop),
                          image: AssetImage('image/imag5.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 20, bottom: 20),
                            child: Text(
                              "Span",
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 40, bottom: 20),
                            child: Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                '\$560',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  //five
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 3,
                    child: Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          colorFilter: ColorFilter.mode(
                              Colors.grey.withOpacity(0.8), BlendMode.dstATop),
                          image: AssetImage('image/imag6.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 20, bottom: 20),
                            child: Text(
                              "Us",
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 40, bottom: 20),
                            child: Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                '\$100',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  //six
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 3,
                    child: Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          colorFilter: ColorFilter.mode(
                              Colors.grey.withOpacity(0.8), BlendMode.dstATop),
                          image: AssetImage('image/imag7.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 20, bottom: 20),
                            child: Text(
                              "Us",
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 40, bottom: 20),
                            child: Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                '\$100',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  //seven
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 3,
                    child: Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          colorFilter: ColorFilter.mode(
                              Colors.grey.withOpacity(0.8), BlendMode.dstATop),
                          image: AssetImage('image/imag8.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 20, bottom: 20),
                            child: Text(
                              "Us",
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 40, bottom: 20),
                            child: Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                '\$100',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  //eight
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 1.5,
                    child: Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          colorFilter: ColorFilter.mode(
                              Colors.grey.withOpacity(0.8), BlendMode.dstATop),
                          image: AssetImage('image/imag9.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 20, bottom: 20),
                            child: Text(
                              "Us",
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 40, bottom: 20),
                            child: Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                '\$100',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      )),
      bottomNavigationBar: BottomNavigationBar(
        // iconSize: 20.0,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Color(0xffEC6C69),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ' ',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ' '),
          BottomNavigationBarItem(
              icon: Icon(Icons.stars_sharp), tooltip: 'star', label: ' '),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ' '),
        ],
      ),
    );
  }
}
