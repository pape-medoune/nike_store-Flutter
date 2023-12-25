import 'package:flutter/material.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView( 
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Color(
              0xffDBDBDB,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 70,horizontal: 25,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  "images/Nike.png",
                  width: 300,
                  fit: BoxFit.contain,
                ),
                const SizedBox(
                  height: 90,
                ),
                Text(
                  "Just do it",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Brand new sneakers and custom kick made with premium quali",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Color(
                      0xffB8B8B8,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed("/home");
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
                      "Shop Now",
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
          ),
        ),
      ), 
    );
  }
}
