import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hospital_app/constants.dart';
import 'package:hospital_app/ui/InClinics/doctorinfo.dart';

import '../homePage.dart';
class InClinics extends StatelessWidget {
  static String id = 'InClinics' ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        height: 120,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: blue,
                        ),
                      child: Center(child: Text('قسم البطنه',style: GoogleFonts.cairo(color: yellow ,fontSize: 25.0),)),
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
           Container(
             height: MediaQuery.of(context).size.height*0.9,
             child: ListView(
               children: [
                 createDocWidget("doc1.png", "محمود", context),
                 createDocWidget("doc2.png", "محمود",context),
                 createDocWidget("doc3.png", "محمود",context),
                 createDocWidget("doc1.png", "محمود",context),
                 createDocWidget("doc2.png", "محمود",context),
                 createDocWidget("doc3.png", "محمود",context),
                 createDocWidget("doc1.png", "محمود",context),

               ],
             ),

           )
          ],
        ),
      ),
    );
  }
  Container createDocWidget(String imgName, String docName , BuildContext context)
  {
    return Container(
      child: InkWell(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Container(

            margin: EdgeInsets.only(bottom: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
              color: blue.withOpacity(0.3),
            ),
            child: Container(
              padding: EdgeInsets.all(7),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Container(
                    width: 70,
                    height: 90,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/$imgName'),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("د/$docName", style: GoogleFonts.cairo(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),),
                      SizedBox(height: 5,),
                      Container(
                        width: 250,
                        height: 50,
                        child: Text("A brief about the doctor to be added here. This is more like an introduction about the doctor", style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                          overflow: TextOverflow.clip,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        onTap: (){
          Navigator.pushNamed(context,DoctorInfo.id );
        },
      ),
    );
  }
}
