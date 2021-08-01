import 'package:electronic_app/model/product.dart';
import 'package:electronic_app/widgets/body_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen( this.product);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detalisAppBar(context),
      body: Bodydetials(product),
    );
  }
}

AppBar detalisAppBar(BuildContext ctx) {
  return AppBar(
    backgroundColor: kBackgroundColor,
    elevation: 0,
    title: Text(
      'Back',
      style: Theme.of(ctx).textTheme.title,
    ),
    leading: IconButton(
      onPressed: () {
        Navigator.pop(ctx);
      },
      icon: Icon(
        Icons.arrow_back,
        color: kPrimaryColor,
      ),
    ),
  );
}
