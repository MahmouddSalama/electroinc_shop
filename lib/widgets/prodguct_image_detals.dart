import 'package:flutter/material.dart';
class ProductImage extends StatelessWidget {
  final String image;

  const ProductImage( this.image);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.width*.8,
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: size.width*.7,
            height: size.width*.7,
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle
            ),
          ),
          Image.asset(image,
            fit: BoxFit.cover,
            width: size.width*.7,
            height: size.width*.7,
          )
        ],
      ),
    );
  }
}
