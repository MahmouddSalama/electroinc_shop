import 'package:electronic_app/model/product.dart';
import 'package:electronic_app/screens/char_screen.dart';
import 'package:electronic_app/widgets/body_home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:electronic_app/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryColor,
        appBar: HomeAppBar(context),
        body: HomeBody(),
    );
  }
}

// Home App Bar in Home Screen
AppBar HomeAppBar(BuildContext ctx) {
  return AppBar(
    elevation: 0,
    backgroundColor: kPrimaryColor,
    title: Text(
      'Welcome in Electronic Shop',
      style: GoogleFonts.getFont('Almarai'),
    ),
    actions: [
      IconButton(
        onPressed: () {
          Navigator.push(ctx, MaterialPageRoute(builder: (ctx)=>ChartScreen()));
        },
        icon: Icon(Icons.shopping_cart),
      ),
    ],
  );
}


