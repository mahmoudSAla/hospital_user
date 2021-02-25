import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants.dart';

class written_prescription extends StatefulWidget {
  @override
  _written_prescriptionState createState() => _written_prescriptionState();
}

class _written_prescriptionState extends State<written_prescription> {
  List<Widget> _childrenDrug = [];
  List<Widget> _childrenDrugNumber = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _childrenDrug = List.from(_childrenDrug)
      ..add(Container(
        padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: path1Color)),
        child: TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              labelText: "اسم الدواء",
              labelStyle: GoogleFonts.cairo()),
        ),
      ));
    _childrenDrugNumber = List.from(_childrenDrugNumber)
      ..add(Container(
        padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: path1Color)),
        child: TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              labelText: "عدد المرات",
              labelStyle: GoogleFonts.cairo()),
        ),
      ));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: offWhite,
        floatingActionButton: FloatingActionButton(
          backgroundColor: path1Color,
          child: Icon(Icons.add,size: 30,),
          onPressed: (){
            setState(() {
              _addDrug();
            });
          },
        ),
        appBar: AppBar(
          backgroundColor: path1Color,
          title: Text(
            "كتابة الروشتة",
            style: GoogleFonts.cairo(),
          ),
          centerTitle: true,
        ),
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: ListView.builder(
              padding: EdgeInsets.all(10.0),
              itemCount: _childrenDrug.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(child: _childrenDrug[index]),
                      SizedBox(width: 5.0,),
                      Expanded(child: _childrenDrugNumber[index],)
                     ],
                  ),
                );
              }),
        ));
  }

  void _addDrug() {
    _childrenDrug = List.from(_childrenDrug)
      ..add(Container(
        padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: path1Color)),
        child: TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              labelText: "اسم الدواء",
              labelStyle: GoogleFonts.cairo()),
        ),
      ));
    _childrenDrugNumber = List.from(_childrenDrugNumber)
      ..add(Container(
        padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: path1Color)),
        child: TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              labelText: "عدد المرات",
              labelStyle: GoogleFonts.cairo()),
        ),
      ));
  }
}
