import 'package:flutter/material.dart';
import 'package:nike/pages/homePage.dart';
import 'package:nike/pages/shopPage.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}



class _HomeState extends State<Home> {
int _currentIndex = 0;
  List <Widget> _screen = [
    HomePage(),
    ShopPage(),
];
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: _screen[_currentIndex], 
      bottomNavigationBar: SalomonBottomBar(
        backgroundColor: Color(
          0xffD6D6D6,
        ),
        itemPadding: EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 15,
        ),
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: Icon(
              Icons.home,
              color: Color(
                0xff4E4E4E,
              ),
            ),
            title: Text(
              "Shop",
              style: TextStyle(
                color: Color(
                  0xff4E4E4E,
                ),
              ),
            ),
            selectedColor: Color.fromARGB(255, 143, 143, 143),
          ),

          /// Likes
          SalomonBottomBarItem(
            icon: Icon(
              Icons.shopping_bag,
              color: Color(
                0xff4E4E4E,
              ),
            ),
            title: Text(
              "Carts",
              style: TextStyle(
                color: Color(
                  0xff4E4E4E,
                ),
              ),
            ),
            selectedColor: Color.fromARGB(255, 143, 143, 143),
          ),
        ],
      ),
    );
  }
}
