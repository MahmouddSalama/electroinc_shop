import 'package:electronic_app/model/product.dart';
import 'package:electronic_app/screens/detals_screen.dart';
import 'package:electronic_app/screens/home_screen.dart';
import 'package:electronic_app/widgets/product_card.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 70),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40),
                          topLeft: Radius.circular(40))),
                ),
                ListView.builder(
                  itemBuilder: (context, index) => ProductCard(
                    product: products[index],
                    index: index,
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(products[index]),
                        ),
                      );
                    },
                  ),
                  itemCount: products.length,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
