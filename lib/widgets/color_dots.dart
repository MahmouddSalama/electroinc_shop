import 'package:flutter/material.dart';
class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelect;

  const ColorDot( this.color,this.isSelect);
  @override
  Widget build(BuildContext context) {
    return   Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color:isSelect? color:Colors.transparent),
      ),
      margin: EdgeInsets.symmetric(horizontal: 20/2.5),
      padding: EdgeInsets.all(3),
      height: 24,
      width: 24,
      child: Container(
        decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle
        ),
      ),
    );
  }
}

