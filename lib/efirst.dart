import 'package:flutter/material.dart';

class efirst extends StatelessWidget {
  const efirst({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(width: 100, height: 100, color: Colors.white),
                  Container(width: 100, height: 100, color: Colors.white),
                ],
              ),
              Container(
                width: 200,
                height: 150,
                color: Colors.black,
                child: Center(
                  child: Text(
                    'Challenge 15',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(width: 100, height: 100, color: Colors.white),
                  Container(width: 100, height: 100, color: Colors.white),
                ],
              ),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
