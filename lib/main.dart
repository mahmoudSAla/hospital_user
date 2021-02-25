import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hospital_app/ui/InClinics/clinicPage.dart';
import 'package:hospital_app/ui/InClinics/doctorinfo.dart';
import 'package:hospital_app/ui/LoginScreen.dart';
import 'package:hospital_app/ui/MorePage.dart';
import 'package:hospital_app/ui/bills/yourBills.dart';
import 'package:hospital_app/ui/login.dart';
import 'package:hospital_app/ui/pharmacy/pharmacy.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'constants.dart';
import 'ui/homePage.dart';

void main() {
  initializeDateFormatting().then((_) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       initialRoute: MyHomePage.id,
      routes: {
         MyHomePage.id:(context)=>MyHomePage(),
         HomePage.id:(context)=>HomePage(),
         LoginPage.id:(context)=>LoginPage(),
         InClinics.id:(context)=>InClinics(),
        DoctorInfo.id:(context)=>DoctorInfo(),
        LoginScreen.id:(context)=>LoginScreen(),
        PharmacyScreen.id:(context)=>PharmacyScreen(),
        YourBills.id:(context)=>YourBills(),
        MorePage.id:(context) => MorePage()
      },

    );
  }
}
class MyHomePage extends StatefulWidget {
  static String id ='MyHomePage';
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: CustomPaint(
                    painter: pathPainter(),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(50),
                  margin: EdgeInsets.only(top: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("موعد مع الطبيب في دقيقتين", style: GoogleFonts.cairo(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold
                      ),),
                      Text("لم يكن العثور على طبيب بهذه السهولة على الإطلاق", style: GoogleFonts.cairo(
                          fontSize: 22,
                          fontWeight: FontWeight.w500
                      ))
                    ],
                  ),
                ),
                Positioned(
                  bottom: MediaQuery.of(context).size.height*0.3,
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Image.asset('assets/onBoardDoc.png'),
                      )
                  ),
                ),
                Positioned(
                  bottom: 25,
                  right: 15,
                  child: Row(
                    children: [
                      InkWell(
                        child: Container(
                          height: 80,
                          width: 150,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                stops: [0,1],
                                colors: [yellow,orrange],
                              ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                              )
                          ),
                          child: Center(
                            child: Text(
                                "تسجيل الدخول", style:GoogleFonts.cairo(
                              textStyle:  TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                              ),
                            )
                            ),
                          ),
                        ),
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>LoginScreen()));
                        },
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width*0.2,
                      ),
                      InkWell(
                        child: Container(
                          height: 80,
                          width: 150,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                stops: [0,1],
                                colors: [yellow,orrange],
                              ),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(25),
                              )
                          ),
                          child: Center(
                            child: Text(
                                "احجز الان", style:GoogleFonts.cairo(
                              textStyle:  TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                              ),
                            )
                            ),
                          ),
                        ),
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>HomePage()));
                        },
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
class pathPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = path1Color;
    paint.style = PaintingStyle.fill;
    var path = Path();
    path.moveTo(0, size.height*0.4);
    path.quadraticBezierTo(size.width*0.35, size.height*0.40, size.width*0.58, size.height*0.6);
    path.quadraticBezierTo(size.width*0.72, size.height*0.8, size.width*0.92, size.height*0.8);
    path.quadraticBezierTo(size.width*0.98, size.height*0.8, size.width, size.height*0.82);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}




