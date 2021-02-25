import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hospital_app/ui/homePage.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

import '../constants.dart';
class LoginPage extends StatefulWidget {
  static String id  = 'LoginPage' ;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  int _page = 3;

  GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: _page,
        height: 50.0,
        items: <Widget>[
          IconButton(icon: FaIcon(FontAwesomeIcons.clinicMedical, size: 25), onPressed: ()=>Navigator.pushNamed(context, HomePage.id)),
          Icon(Icons.local_pharmacy_rounded, size: 30),
          FaIcon(FontAwesomeIcons.briefcaseMedical, size: 25.0,),
          IconButton(icon:Icon(Icons.perm_identity, size: 30), onPressed: (){
            Navigator.pushNamed(context, LoginPage.id);
          },),
          Icon(Icons.list, size: 30),
        ],
        color: Colors.white,
        buttonBackgroundColor: yellow,
        backgroundColor: blue,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        letIndexChange: (index) => true,
      ),
      backgroundColor: offWhite,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children:[ 
                Container(
                child:ClipPath(
                  clipper: OvalBottomBorderClipper(),
                  child: Container(
                    height: 250,
                    color: blue,

                  ),
                ),
              ),
                Positioned(
                  top: 30.0,
                  child: Row(
                    children: [
                      IconButton(icon: Icon(Icons.arrow_back_ios_rounded,color: yellow,size: 28.0,), onPressed: ()=>Navigator.pushNamed(context, HomePage.id)),
                    ],
                  ),
                ),

              ]
            ),
            Form(child: Column(
              children: [
                SizedBox(height: 40.0,),
                Text("تسجيل الدخول",style: GoogleFonts.cairo(
                  color: blue,
                  fontSize: 40.0,
                ),),
                SizedBox(height: 20.0,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: TextFormField(
                      
                      textDirection: TextDirection.rtl,
                      decoration: InputDecoration(
                        hintText: "ادخل اسم المستخدم او البريد الالكتروني",
                        prefixIcon: Icon(Icons.person),

                        hintStyle: GoogleFonts.cairo(

                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide(color: blue),


                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide(color: blue), ),

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide(color: blue), )
                      ),

                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: TextFormField(

                      textDirection: TextDirection.rtl,
                      decoration: InputDecoration(
                          hintText: "ادخل كلمة المرور",
                          prefixIcon: Icon(Icons.vpn_key),

                          hintStyle: GoogleFonts.cairo(

                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: BorderSide(color: blue),


                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: BorderSide(color: blue), ),

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: BorderSide(color: blue), )
                      ),

                    ),
                  ),
                )
              ],
            ),)
          ],
        ),
      ),
    );
  }
}
