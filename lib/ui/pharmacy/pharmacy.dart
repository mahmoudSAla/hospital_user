import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hospital_app/ui/pharmacy/writtien_prescription.dart';

import '../../constants.dart';

class PharmacyScreen extends StatefulWidget {
  static String id ='PharmacyScreen';
  @override
  _PharmacyScreenState createState() => _PharmacyScreenState();
}

class _PharmacyScreenState extends State<PharmacyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: offWhite,

      appBar: AppBar(
        title: Text(
          "الصيدلية",
          style: GoogleFonts.cairo(),
        ),
        centerTitle: true,
        backgroundColor: path1Color,
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.065,
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.09),
                Center(
                  child: Column(
                    children: <Widget>[
                      patDocBtn(
                          context: context,
                          categoryText: 'رفع الروشتة',
                          Imageurl: "assets/medical-file.png",
                          ontap: () {}),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),
                      patDocBtn(
                          context: context,
                          categoryText: "كتابة الروشتة",
                          Imageurl: "assets/pills.png",
                          ontap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        written_prescription()));
                          }),
                      SizedBox(
                        height: 5,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget patDocBtn(
      {String Imageurl, String categoryText, context, Function ontap}) {
    return GestureDetector(
      onTap: ontap,
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.black.withOpacity(0.1),
            radius: MediaQuery.of(context).size.height * 0.100,
            child: Image(
              image: AssetImage("$Imageurl"),
              height: MediaQuery.of(context).size.height * 0.14,
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.05,
            width: MediaQuery.of(context).size.width * 0.5,
            child: RaisedButton(
              onPressed: ontap,
              color: Colors.white,
              child: Text(
                categoryText,
                style: GoogleFonts.cairo(fontSize: 20),
              ),
              shape: StadiumBorder(),
            ),
          ),
        ],
      ),
    );
  }
}
