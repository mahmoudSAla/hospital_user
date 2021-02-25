import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hospital_app/constants.dart';
 class DoctorInfo extends StatefulWidget {
   static String id = 'DoctorInfo' ;
   @override
   _DoctorInfoState createState() => _DoctorInfoState();
 }
 
 class _DoctorInfoState extends State<DoctorInfo> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: SingleChildScrollView(
         child: Container(
           height: MediaQuery.of(context).size.height,
           width: MediaQuery.of(context).size.width,
           decoration: BoxDecoration(
               color: blue
           ),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             mainAxisAlignment: MainAxisAlignment.start,
             children: <Widget>[
               SizedBox(
                 height: 30.0,
               ),
               Row(
                 children: [
                   IconButton(icon: Icon(Icons.arrow_back_ios_rounded ,color: yellow,), onPressed: ()=>Navigator.pop(context))
                 ],
               ),
               Container(
                 height: MediaQuery.of(context).size.height*0.3,
                 width: MediaQuery.of(context).size.width,
                 child: Container(
                   decoration: BoxDecoration(
                     image: DecorationImage(
                       image: AssetImage('assets/onBoardDoc.png')
                     )
                   ),

                 ),
               ),
               Container(
                 height: MediaQuery.of(context).size.height*0.615,
                 width: MediaQuery.of(context).size.width,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.only(
                     topLeft: Radius.circular(40),
                     topRight: Radius.circular(40),
                   ),
                   color: offWhite,
                 ),
                 child: Container(
                   padding: EdgeInsets.all(10),
                   child: SingleChildScrollView(
                     child: Directionality(
                       textDirection: TextDirection.rtl,
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: <Widget>[
                           Row(
                             children: <Widget>[
                               Container(
                                 height: 100,
                                 width: 100,
                                 child: Image.asset('assets/doc1.png'),
                               ),
                               Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: <Widget>[
                                   Text("د/ محمود صلاج", style: GoogleFonts.cairo(
                                     fontSize: 20,
                                     fontWeight: FontWeight.w400,
                                   ),),
                                   Text("Heart Surgeon - CK Hospital", style: TextStyle(
                                     fontSize: 17,
                                     fontWeight: FontWeight.w400,
                                   ),)
                                 ],
                               )
                             ],
                           ),
                           Padding(
                             padding: EdgeInsets.only(left: 8, right: 8),
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: <Widget>[
                                 Text("عن الدكتور", style: GoogleFonts.cairo(
                                   fontSize: 18,
                                   fontWeight: FontWeight.w800,
                                 ),),
                                 SizedBox(height: 10,),
                                 Text("الرجاء كتابة وصف الطبيب هنا. ستكون هذه معلومات مفصلة عن الطبيب والأدوار والإنجازات التي قام بها الطبيب خلال السنوات الماضية", style: GoogleFonts.cairo(
                                   fontSize: 14,
                                   fontWeight: FontWeight.w400,
                                 ),),
                                 SizedBox(height: 10,),
                                 Text("الاوقات المتاحه", style: GoogleFonts.cairo(

                                   fontSize: 18,
                                   fontWeight: FontWeight.w800,
                                 ),),
                                 SizedBox(height: 5,),
                                 timeSlotWidget("13", "MAY", "Consultation", "Sunday 9 am to 11.30 am"),
                                 timeSlotWidget("14", "MAY", "Consultation", "Monday 10 am to 12.30 am"),
                                 timeSlotWidget("1", "JUN", "Consultation", "Wednesday 8 am to 12.30 pm"),
                                 timeSlotWidget("3", "JUN", "Consultation", "Friday 8 am to 1 am"),
                               ],
                             ),
                           )
                         ],
                       ),
                     ),
                   ),
                 ),
               ),

             ],
           ),
         ),
       ),
     );
   }
   Container timeSlotWidget(String date, String month, String slotType, String time)
   {
     return Container(
       margin: EdgeInsets.only(bottom: 10),
       width: MediaQuery.of(context).size.width,
       decoration: BoxDecoration(
           borderRadius: BorderRadius.all(Radius.circular(20)),
           color: Colors.white
       ),
       child: Container(
         padding: EdgeInsets.all(10),
         child: Row(
           children: <Widget>[
             Container(
               width: 70,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.all(Radius.circular(10)),
                 color: blue,
               ),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   Text("$date", style: TextStyle(
                       color: yellow,
                       fontSize: 30,
                       fontWeight: FontWeight.w800
                   ),),
                   Text("$month", style: TextStyle(
                       color: yellow,
                       fontSize: 20,
                       fontWeight: FontWeight.w800
                   ),)
                 ],
               ),
             ),
             SizedBox(width: 10,),
             Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: <Widget>[
                 Text("$slotType", style: TextStyle(
                   fontSize: 20,
                   fontWeight: FontWeight.w800,
                 ),),
                 Text("$time", style: TextStyle(
                     fontSize: 17,
                     fontWeight: FontWeight.w600
                 ),)
               ],
             )
           ],
         ),
       ),
     );
   }
 }
 