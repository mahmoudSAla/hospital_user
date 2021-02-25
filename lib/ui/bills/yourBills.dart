import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';
class YourBills extends StatefulWidget {
  static String id ='YourBills';
  @override
  _YourBillsState createState() => _YourBillsState();
}

class _YourBillsState extends State<YourBills> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: blue,
        title: Text("الادويه الخاصه بك",style:GoogleFonts.cairo(
          color: Colors.white
        )),
      ),
      backgroundColor: offWhite,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [

            ],
          ),
        ),
      ),
    );
  }
}
