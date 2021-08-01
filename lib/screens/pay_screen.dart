import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class InformationFromUser extends StatefulWidget {
  final String price;
  final String nameDevice;
  const InformationFromUser(this.price, this.nameDevice) ;

  @override
  _InformationFromUserState createState() => _InformationFromUserState();
}

class _InformationFromUserState extends State<InformationFromUser> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool is_vis = false;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kPrimaryColor,
        title: Text(
          'Paying',
          style: GoogleFonts.getFont('Almarai'),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Center(
                child:Container(
                  width: size.width-100,
                  height: 50,
                  alignment: Alignment.center,
                  child: Text(widget.price,style: TextStyle(
                    fontSize: 30,
                    color: kSecondaryColor,
                  ),),
                ),
              ),
              BuildTextFromField(
                size: size,
                LText: 'enter your name',
                HText: 'name',
                TType: TextInputType.name,
                icon: Icons.person,
              ),
              BuildTextFromField(
                size: size,
                LText: 'address',
                HText: 'gove/city/cuntry',
                TType: TextInputType.text,
                icon: Icons.location_city,
              ),
              BuildTextFromField(
                size: size,
                LText: 'enter your e-mail',
                HText: '******@gmail.com',
                TType: TextInputType.emailAddress,
                icon: Icons.alternate_email,
              ),
              BuildTextFromField(
                size: size,
                LText: 'enter your phonnum',
                HText: '01*********',
                TType: TextInputType.number,
                icon: Icons.phone_callback_outlined,
              ),
              Container(
                width: size.width-100,
                height: 60,
                child: Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  color: kPrimaryColor,
                  child: TextButton(
                    onPressed: (){
                      setState(() {
                        is_vis=true;
                      });
                    },
                    child: Text('Confirm' ,style:TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1.5
                    ),),
                  ),
                ),
              ),
              Visibility(
                visible: is_vis,
                child: Container(
                  width: size.width,
                  height: 150,
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(15),
                  padding: EdgeInsets.all(15),
                  color: Colors.black12,
                  child: Text(
                    'Among 2 Day The${widget.nameDevice} well came to you in your home '
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BuildTextFromField extends StatelessWidget {
  final Size size;
  final String LText;
  final String HText;
  final TextInputType TType;
  final IconData icon;

  const BuildTextFromField({
    required this.size,
    required this.LText,
    required this.HText,
    required this.TType,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width,
      height: 45,
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        margin: EdgeInsets.symmetric(horizontal: 50),
        child: TextFormField(
          keyboardType: TType,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10),
              suffixIcon: Icon(icon),
              hintText: HText,
              labelText: LText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              )),
        ),
      ),
    );
  }
}
