
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hospital_app/HomeScreen.dart';
import 'package:hospital_app/ui/InClinics/clinicPage.dart';
import 'package:hospital_app/ui/InClinics/doctorinfo.dart';
import 'package:hospital_app/ui/LoginScreen.dart';
import 'package:hospital_app/ui/MorePage.dart';
import 'package:hospital_app/ui/bills/yourBills.dart';
import 'package:hospital_app/ui/pharmacy/pharmacy.dart';
import 'package:table_calendar/table_calendar.dart';
import '../constants.dart';

class HomePage extends StatefulWidget {
  static String id = 'HomePage';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>  {
  int _page = 0;

  GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: offWhite,
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 50.0,
        items: <Widget>[
          FaIcon(FontAwesomeIcons.clinicMedical, size: 25),
          Icon(Icons.local_pharmacy_rounded, size: 30),
           FaIcon(FontAwesomeIcons.medkit, size: 25.0,),
          Icon(Icons.perm_identity, size: 30),
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
      body:IndexedStack(
        children: [
          HomeScreen(),
          PharmacyScreen(),
          YourBills(),
          LoginScreen(),
          MorePage()
        ],
        index: _page,
      )
    );
  }

  // More advanced TableCalendar configuration (using Builders & Styles)
}
