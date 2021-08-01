import 'package:electronic_app/constants.dart';
import 'package:electronic_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Electronic Shop',
      theme: ThemeData(
        primaryColor: kPrimaryColor ,
        accentColor: kPrimaryColor,
        //canvasColor:kPrimaryColor,
        textTheme: GoogleFonts.almaraiTextTheme(Theme.of(context).textTheme),
      ),
      home: HomeScreen(),
    );
  }
}
