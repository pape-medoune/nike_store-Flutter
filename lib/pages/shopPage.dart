import 'package:flutter/material.dart'; 

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var _currentIndex;
    return Scaffold(
      key: _scaffoldKey,
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
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
                          _scaffoldKey.currentState?.openDrawer();
                        },
                        child: Icon(
                          Icons.menu,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                  
                // Expanded(
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 15,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(
                                20,
                              ),
                            ),
                            child: ListTile(
                              leading: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                  50,
                                ),
                                child: Image.asset(
                                  "images/nike3.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              title: Text(
                                "Nike",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text("150000F"),
                              trailing: Icon(Icons.delete),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 15,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(
                                20,
                              ),
                            ),
                            child: ListTile(
                              leading: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                  50,
                                ),
                                child: Image.asset(
                                  "images/nike1.webp",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              title: Text(
                                "Nike",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text("120000F"),
                              trailing: Icon(Icons.delete),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed("/");
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xff2A2A2C),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: EdgeInsets.symmetric(
                            vertical: 25,
                          ),
                          width: double.infinity,
                          child: Text(
                            "Pay \$",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                // ),
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
      );
  }
}
