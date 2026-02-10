import 'package:flutter/material.dart';

class fifteen extends StatelessWidget {
  const fifteen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 100.0,
                width: 100.0,
                color: Colors.black,
                child: Center(
                  child: Text(
                    '',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20.0),
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.white,
                child: Center(child: Text('')),
              ),
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.blueGrey,
                child: Center(child: Text('')),
              ),
            ],
          ),
        ),
        appBar: AppBar(backgroundColor: Colors.pink),
        bottomNavigationBar: BottomAppBar(color: Colors.blue),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
