import 'package:electronic_app/model/product.dart';
import 'package:electronic_app/widgets/color_dots.dart';
import 'package:electronic_app/widgets/prodguct_image_detals.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
class Bodydetials extends StatefulWidget {
  final Product product;

  const Bodydetials(this.product);

  @override
  _BodydetialsState createState() => _BodydetialsState();
}

class _BodydetialsState extends State<Bodydetials> {
  String buttonText='Add to Chart';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            decoration: BoxDecoration(
                color: kBackgroundColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
               ProductImage(widget.product.image),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ColorDot(kTextLightColor, true),
                      ColorDot(Colors.red, false),
                      ColorDot(Colors.blue, false),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(widget.product.title,style:Theme.of(context).textTheme.headline6),
                ),
                Text('Price \$ ${widget.product.price}',style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color:kSecondaryColor
                ),)
              ],
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.symmetric(vertical: 10),
            padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
            child: Text(widget.product.description,style: TextStyle(
              color: Colors.white,
              fontSize: 20
            ),),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                if(!Chartproducts.contains(widget.product)) {
                  Chartproducts.add(widget.product);
                  buttonText='Added in Chart';
                }
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize:MainAxisSize.min,
              children: [
                Icon(Icons.shopping_cart,color: kPrimaryColor,),
                SizedBox(width: 10,),
                Text(buttonText),
              ],
            ),
                style: TextButton.styleFrom(
                primary: kPrimaryColor,
                minimumSize: Size(200, 40),
                backgroundColor: Colors.white),
          ),
          SizedBox(height: 100,)
        ],
      ),
    );
  }
}


