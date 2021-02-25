import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class Call_us extends StatefulWidget {
  @override
  _Call_usState createState() => _Call_usState();
}

class _Call_usState extends State<Call_us> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: offWhite,
      appBar: AppBar(
        backgroundColor: path1Color,
        centerTitle: true,
        title: Text(
          "اتصل بنا",
          style: GoogleFonts.cairo(),
        ),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.75,
                width: MediaQuery.of(context).size.width,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Center(
                          child: Image.asset(
                            "assets/message.png",
                            width: 250,
                          ),
                        ),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "نحن سعداء لتلقى استفسارتكم واقتراحاتكم",
                              style: GoogleFonts.cairo(fontSize: 16),
                            )),
                        TextField(
                          decoration: InputDecoration(labelText: "اضف رسالة",labelStyle: GoogleFonts.cairo()),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 120.0, top: 185),
                          child: Row(
                            children: [
                              Text(
                                "للمزيد اتصل ب ",
                                style: GoogleFonts.cairo(fontSize: 18),
                              ),
                              Text(
                                "12345",
                                style: GoogleFonts.cairo(
                                  fontSize: 18,
                                  color: Colors.blueAccent,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.96,
                child: RaisedButton(
                  color: Color(0xff1D3D59),
                  child: Text(
                    "إرسال",
                    style: GoogleFonts.cairo(color: Colors.white),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
