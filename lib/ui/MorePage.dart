import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants.dart';
import 'call_us.dart';

class MorePage extends StatefulWidget {
  static String id = 'MorePage' ;
  @override
  _MorePageState createState() => _MorePageState();
}
class _MorePageState extends State<MorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: offWhite,
      appBar: AppBar(
        backgroundColor: path1Color,
        title: Text(
          "المزيد",
          style: GoogleFonts.cairo(),
        ),
        centerTitle: true,
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView(
          padding: EdgeInsets.all(15),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  backgroundColor: path1Color.withOpacity(0.1),
                  radius: 70,
                  child: Image.asset(
                    "assets/doctor.png",
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "مهاب محمود",
                      style: GoogleFonts.cairo(fontSize: 20),
                    ),
                    Text("0123456789")
                  ],
                ),
              ],
            ),
            SizedBox(height: 35,),
            ListTile(
              leading: Icon(
                Icons.settings,
                size: 30.0,
                color:path1Color,
              ),
              title: Text(
                  'إعدادات',
                  style:GoogleFonts.cairo()
              ),
              trailing: Container(
                width: 20.0,
                height: 20.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  color: Colors.white10,
                ),
                child: IconButton(
                  padding: EdgeInsets.all(0),
                  icon: Icon(
                    Icons.keyboard_arrow_left,
                    color: path1Color,
                    size: 16.0,
                  ),
                ),
              ),
            ),
            Divider(),
            ListTile(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Call_us()));},
              leading: Icon(
                Icons.phone,
                size: 30.0,
                color: path1Color,
              ),
              title: Text(
                  'اتصل بنا',
                  style:GoogleFonts.cairo()
              ),
              trailing: Container(
                width: 20.0,
                height: 20.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  color: Colors.white10,
                ),
                child: IconButton(
                  padding: EdgeInsets.all(0),
                  icon: Icon(
                    Icons.keyboard_arrow_left,
                    color: path1Color,
                    size: 16.0,
                  ),
                ),
              ),
            ),
            Divider(),
            ListTile(
              leading: Icon(
                Icons.contact_support,
                size: 30.0,
                color: path1Color,
              ),
              title: Text(
                  'عن التطبيق',
                  style:GoogleFonts.cairo()
              ),
              trailing: Container(
                width: 20.0,
                height: 20.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  color: Colors.white10,
                ),
                child: IconButton(
                  padding: EdgeInsets.all(0),
                  icon: Icon(
                    Icons.keyboard_arrow_left,
                    color: path1Color,
                    size: 16.0,
                  ),
                ),
              ),
            ),
            Divider(),
            ListTile(
              leading: Icon(
                Icons.star_border,
                size: 30.0,
                color: path1Color,
              ),
              title: Text(
                  'المفضلة',
                  style:GoogleFonts.cairo()
              ),
              trailing: Container(
                width: 20.0,
                height: 20.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  color: Colors.white10,
                ),
                child: IconButton(
                  padding: EdgeInsets.all(0),
                  icon: Icon(
                    Icons.keyboard_arrow_left,
                    color: path1Color,
                    size: 16.0,
                  ),
                ),
              ),
            ),
            Divider(),
            ListTile(
              leading: Icon(
                Icons.login,
                size: 30.0,
                color:path1Color,
              ),
              title: Text(
                  'تسجيل الدخول',
                  style:GoogleFonts.cairo()
              ),
              trailing: Container(
                width: 20.0,
                height: 20.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  color: Colors.white10,
                ),
                child: IconButton(
                  padding: EdgeInsets.all(0),
                  icon: Icon(
                    Icons.keyboard_arrow_left,
                    color: path1Color,
                    size: 16.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
