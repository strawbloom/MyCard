import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> _launchUrl(String urlString) async {
  final Uri url = Uri.parse(urlString);
  if (!await launchUrl(url)) {
    throw 'nao da pra abrir nao $url';
  }
}

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffffffff),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('assets/img/strawbloom.png'),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  'Nikolle',
                  style: GoogleFonts.jersey10(
                    textStyle: TextStyle(
                      color: Color(0xffE47D70),
                      fontSize: 40,
                      height: 0.8,
                    ),
                  ),
                ),
              ),
              Text(
                'Mobile Development Student',
                style: TextStyle(
                  color: Color(0xffFDB3AA),
                  fontSize: 25,
                  fontFamily: 'GoogleSans',
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: SizedBox(
                  height: 20,
                  width: 250,
                  child: Divider(color: Color(0xffFDCEC8), thickness: 3),
                ),
              ),
              InkWell(
                onTap: () {
                  _launchUrl('https://github.com/strawbloom');
                },
                child: Card(
                  elevation: 0,
                  color: Color(0xffFDCEC8),
                  margin: EdgeInsets.all(20),
                  child: ListTile(
                    leading: Icon(
                      Icons.favorite,
                      size: 30,
                      color: Color(0xffE47D70),
                    ),
                    title: Center(
                      child: Text(
                        'github.com/strawbloom',
                        style: GoogleFonts.jersey10(
                          letterSpacing: 1.5,
                          color: Color(0xffE47D70),
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                elevation: 0,
                color: Color(0xffFDCEC8),
                margin: EdgeInsets.only(left: 20, right: 20),
                child: ListTile(
                  leading: Icon(Icons.star, size: 30, color: Color(0xffE47D70)),
                  title: Center(
                    child: Text(
                      'discord: strawbioom',
                      style: GoogleFonts.jersey10(
                        letterSpacing: 1.5,
                        color: Color(0xffE47D70),
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
