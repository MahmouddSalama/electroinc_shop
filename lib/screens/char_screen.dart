import 'package:electronic_app/model/product.dart';
import 'package:electronic_app/widgets/body_of_chart.dart';
import 'package:electronic_app/widgets/product_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class ChartScreen extends StatefulWidget {
  @override
  _ChartScreenState createState() => _ChartScreenState();
}

class _ChartScreenState extends State<ChartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kPrimaryColor,
        title: Text(
          'My Chart',
          style: GoogleFonts.getFont('Almarai'),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        )),
                    margin: EdgeInsets.only(top: 70),
                  ),
                  ListView.builder(
                    itemCount: Chartproducts.length,
                    itemBuilder: (context, index) => ChartCard(
                      product: Chartproducts[index],
                      index: index,
                      pressOnPay: (){},
                    ),
                  ),
                  //ChartCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
