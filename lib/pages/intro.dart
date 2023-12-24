import 'package:flutter/material.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Color(
                  0xffDBDBDB,
                ),
              ),
              child: Column(
                children: [Image.asset("")],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
