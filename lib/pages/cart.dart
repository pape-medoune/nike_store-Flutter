import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var _currentIndex;
    return Scaffold(
      key: _scaffoldKey,
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Color(0xffDBDBDB),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 70,
              horizontal: 25,
            ),
            child: Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          // _scaffoldKey.currentState?.openDrawer();
                        },
                        child: Icon(
                          Icons.keyboard_arrow_left_sharp,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                
              ],
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
            color: Color(
              0xff2F2F2F,
            ),
          ),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(
                    0xff2F2F2F,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/image-removebg-preview.png',
                    ),
                  ],
                ),
              ),
              Container(
                // decoration: BoxDecoration(color:Colors.deepPurple),
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 1.4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        ListTile(
                          title: Text(
                            'Home',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          leading: Icon(
                            Icons.home,
                            size: 28,
                            color: Colors.white,
                          ),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                        ListTile(
                          title: Text(
                            'About',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          leading: Icon(
                            Icons.info,
                            size: 28,
                            color: Colors.white,
                          ),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                    ListTile(
                      title: Text(
                        'Logout',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      leading: Icon(
                        Icons.logout,
                        size: 28,
                        color: Colors.white,
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SalomonBottomBar(
        backgroundColor: Color(
          0xffD6D6D6,
        ),
        itemPadding: EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 15,
        ),
        // currentIndex: _currentIndex,
        // onTap: (i) => setState(() => _currentIndex = i),
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
