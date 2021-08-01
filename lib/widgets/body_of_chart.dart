import 'package:electronic_app/model/product.dart';
import 'package:electronic_app/screens/pay_screen.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class ChartCard extends StatefulWidget {
  final Product product;
  final int index;
  final Function pressOnPay;

  const ChartCard({
    required this.product,
    required  this.index,
    required this.pressOnPay,
  }) ;

  @override
  _ChartCardState createState() => _ChartCardState();
}
class _ChartCardState extends State<ChartCard> {
  bool is_vis=true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Visibility(
      visible: is_vis,
      child: Container(
        height: 220,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: InkWell(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(22.5),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 15),
                          blurRadius: 25,
                          color: Colors.black12)
                    ]),
              ),
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  width: 200,
                  height: 160,
                  child: Image.asset(widget.product.image),
                ),
              ),
              Positioned(
                bottom: 30,
                right: 0,
                child: SizedBox(
                  height: 136,
                  width: size.width - 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        child: Text(
                          widget.product.title,
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          widget.product.subTitle,
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: kSecondaryColor,
                          ),
                          child: Text('Price \$ ${widget.product.price}'),
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
              Positioned(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    children: [
                      FlatButton(
                        onPressed: () {
                         setState(() {
                           Chartproducts.remove(widget.product);
                           is_vis=false;
                         });
                        },
                        child: Text(
                          'Move',
                          style: TextStyle(
                              color: kPrimaryColor, fontWeight: FontWeight.w700),
                        ),
                      ),
                      Spacer(),
                      Spacer(),
                      Spacer(),
                      Container(
                        width: 90,
                        height: 40,
                        child: Card(
                          color: kPrimaryColor,
                          elevation: 3,
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                               builder:  (context)=>InformationFromUser('price \$ ${widget.product.price}',widget.product.title)
                              ));
                              setState(() {
                                print(widget.product.price);
                              });
                            },
                            child: Text(
                              'pay',
                              style: TextStyle(color: Colors.white, fontSize: 13),
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
