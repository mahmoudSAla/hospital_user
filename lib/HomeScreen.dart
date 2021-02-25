
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hospital_app/constants.dart';
import 'package:hospital_app/ui/InClinics/clinicPage.dart';
import 'package:hospital_app/ui/InClinics/doctorinfo.dart';
import 'package:table_calendar/table_calendar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  CalendarController _calendarController ;
  Map<DateTime, List> _events;
  List _selectedEvents;
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    final _selectedDay = DateTime.now();

    _events = {
      _selectedDay.subtract(Duration(days: 30)): [
        'Event A0',
        'Event B0',
        'Event C0'
      ],
      _selectedDay.subtract(Duration(days: 27)): ['Event A1'],
      _selectedDay.subtract(Duration(days: 20)): [
        'Event A2',
        'Event B2',
        'Event C2',
        'Event D2'
      ],
      _selectedDay.subtract(Duration(days: 16)): ['Event A3', 'Event B3'],
      _selectedDay.subtract(Duration(days: 10)): [
        'Event A4',
        'Event B4',
        'Event C4'
      ],
      _selectedDay.subtract(Duration(days: 4)): [
        'Event A5',
        'Event B5',
        'Event C5'
      ],
      _selectedDay.subtract(Duration(days: 2)): ['Event A6', 'Event B6'],
      _selectedDay: ['Event A7', 'Event B7', 'Event C7', 'Event D7'],
      _selectedDay.add(Duration(days: 1)): [
        'Event A8',
        'Event B8',
        'Event C8',
        'Event D8'
      ],
      _selectedDay.add(Duration(days: 3)):
      Set.from(['Event A9', 'Event A9', 'Event B9']).toList(),
      _selectedDay.add(Duration(days: 7)): [
        'Event A10',
        'Event B10',
        'Event C10'
      ],
      _selectedDay.add(Duration(days: 11)): ['Event A11', 'Event B11'],
      _selectedDay.add(Duration(days: 17)): [
        'Event A12',
        'Event B12',
        'Event C12',
        'Event D12'
      ],
      _selectedDay.add(Duration(days: 22)): ['Event A13', 'Event B13'],
      _selectedDay.add(Duration(days: 26)): [
        'Event A14',
        'Event B14',
        'Event C14'
      ],
    };

    _selectedEvents = _events[_selectedDay] ?? [];
    _calendarController = CalendarController();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );

    _animationController.forward();
  }
  @override
  void dispose() {
    _animationController.dispose();
    _calendarController.dispose();
    super.dispose();
  }
  void _onDaySelected(DateTime day, List events, List holidays) {
    print('CALLBACK: _onDaySelected');
    setState(() {
      _selectedEvents = events;
    });
  }

  void _onVisibleDaysChanged(
      DateTime first, DateTime last, CalendarFormat format) {
    print('CALLBACK: _onVisibleDaysChanged');
  }

  void _onCalendarCreated(
      DateTime first, DateTime last, CalendarFormat format) {
    print('CALLBACK: _onCalendarCreated');
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
          children:[ SizedBox(height: 10,),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Material(borderRadius: BorderRadius.circular(10.0),elevation: 5.0,child: Container(
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: blue ,
                      ),child: Center(child: IconButton(icon: Icon(
                    Icons.grid_view,color: yellow,
                    size: 25.0,),
                      onPressed: null)))),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("اهلا بك, كريم.".toUpperCase(),style: GoogleFonts.cairo(
                        color: blue,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,

                      ),),

                    ],
                  ),
                  CircleAvatar(
                    backgroundImage:NetworkImage('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500') ,
                    radius: 30.0,
                    backgroundColor: blue,
                  )

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:30.0),
              child: Divider(thickness: 1.8,color: yellow,),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("عيادات الخاصة بنا",style: GoogleFonts.cairo(
                      color: blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0
                  ),),
                ],
              ),
            ),
            Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Material(
                      borderRadius: BorderRadius.circular(15.0),
                      elevation: 5.0,
                      child: InkWell(
                        onTap: ()=> Navigator.pushNamed(context, InClinics.id),
                        child: Container(
                          height: 180,
                          width: 130,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: Colors.white
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              SizedBox(
                                height: 15.0,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    radius: 50.0,
                                    backgroundImage: NetworkImage('https://png.pngtree.com/png-clipart/20190516/original/pngtree-stomach-stomach-organ-cartoon-cartoon-stomach-png-image_3921489.jpg'),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              Text("عيادات البطنة",style: GoogleFonts.cairo(color: blue,fontWeight: FontWeight.bold),),
                              //Divider(thickness: 1.3,),
                            ],
                          ),

                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:30.0),
              child: Divider(thickness: 1.8,color: yellow,),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text("عيادات خارجيه",style: GoogleFonts.cairo(
                      color: blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0
                  ),),
                ),
              ],
            ),
            SizedBox(height: 10.0,),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Container(
                height: 120,
                width: MediaQuery.of(context).size.width*0.92,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    CircleAvatar(
                      radius: 40.0,
                      backgroundImage: NetworkImage('https://www.lewermark.com/wp-content/uploads/2018/07/doctor5-1.png'),

                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 26.0,),
                        Text("د/ رنيا محمود" ,style: GoogleFonts.cairo(
                          color: blue,
                          fontSize: 20.0,
                        ),),
                        SizedBox(height: 10.0,),
                        Text("قسم/ بطنة" ,style: GoogleFonts.cairo(
                          color: blue,
                          fontSize: 15.0,
                        ),),
                      ],
                    ),
                    IconButton(icon: Icon(Icons.arrow_back_ios_rounded), onPressed: ()=> Navigator.pushNamed(context, DoctorInfo.id))
                  ],
                ),
              ),
            ),
            SizedBox(height: 10.0,),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Container(
                height: 120,
                width: MediaQuery.of(context).size.width*0.92,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    CircleAvatar(
                      radius: 40.0,
                      backgroundImage: NetworkImage('https://www.lewermark.com/wp-content/uploads/2018/07/doctor5-1.png'),

                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 26.0,),
                        Text("د/ رنيا محمود" ,style: GoogleFonts.cairo(
                          color: blue,
                          fontSize: 20.0,
                        ),),
                        SizedBox(height: 10.0,),
                        Text("قسم/ بطنة" ,style: GoogleFonts.cairo(
                          color: blue,
                          fontSize: 15.0,
                        ),),
                      ],
                    ),
                    IconButton(icon: Icon(Icons.arrow_back_ios_rounded), onPressed: ()=> Navigator.pushNamed(context, DoctorInfo.id))
                  ],
                ),
              ),
            ),
            Container(height:445,child: _buildTableCalendarWithBuilders()),
            // _buildTableCalendarWithBuilders(),
            const SizedBox(height: 8.0),
            Container(height:400,
                decoration: BoxDecoration(
                    color: blue ,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(20.0),topLeft: Radius.circular(20.0))
                ),
                child: _buildEventList()),

          ]),
    );
  }
  Widget _buildTableCalendarWithBuilders() {
    return TableCalendar(
      locale: 'ar_Eg',
      calendarController: _calendarController,
      events: _events,
      initialCalendarFormat: CalendarFormat.twoWeeks,
      formatAnimation: FormatAnimation.slide,
      startingDayOfWeek: StartingDayOfWeek.saturday,
      availableGestures: AvailableGestures.all,

      calendarStyle: CalendarStyle(
        outsideDaysVisible: false,

      ),
      daysOfWeekStyle: DaysOfWeekStyle(
        weekendStyle: TextStyle().copyWith(color: Colors.blue[600]),
      ),
      headerStyle: HeaderStyle(
        formatButtonShowsNext: false,
        centerHeaderTitle: true,
        formatButtonVisible: false,
      ),
      builders: CalendarBuilders(
        selectedDayBuilder: (context, date, _) {
          return FadeTransition(
            opacity: Tween(begin: 0.0, end: 1.0).animate(_animationController),
            child: Container(
              margin: const EdgeInsets.all(4.0),
              padding: const EdgeInsets.only(top: 5.0, left: 6.0),
              color: blue,
              width: 100,
              height: 100,
              child: Text(
                '${date.day}',
                style: TextStyle().copyWith(fontSize: 16.0),
              ),
            ),
          );
        },
        todayDayBuilder: (context, date, _) {
          return Container(
            margin: const EdgeInsets.all(4.0),
            padding: const EdgeInsets.only(top: 5.0, left: 6.0),
            color: yellow,
            width: 100,
            height: 100,
            child: Text(
              '${date.day}',
              style: TextStyle().copyWith(fontSize: 16.0),
            ),
          );
        },
        markersBuilder: (context, date, events, holidays) {
          final children = <Widget>[];

          if (events.isNotEmpty) {
            children.add(
              Positioned(
                right: 1,
                bottom: 1,
                child: _buildEventsMarker(date, events),
              ),
            );
          }


          return children;
        },
      ),
      onDaySelected: (date, events, holidays) {
        _onDaySelected(date, events, holidays);
        _animationController.forward(from: 0.0);
      },
      onVisibleDaysChanged: _onVisibleDaysChanged,
      onCalendarCreated: _onCalendarCreated,
    );
  }
  Widget _buildEventList() {
    return ListView(
      children: _selectedEvents
          .map((event) => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
        ),
        margin:
        const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: ListTile(
            leading: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: yellow
              ),
              child: Center(child: FaIcon(FontAwesomeIcons.clock,color: Colors.white,)),
            ),
            title: Text(event.toString(),style: GoogleFonts.cairo(
              color: Colors.white,

            ),),
            onTap: () => print('$event tapped!'),
          ),
        ),
      ))
          .toList(),
    );
  }
  Widget _buildEventsMarker(DateTime date, List events) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: _calendarController.isSelected(date)
            ? Colors.brown[500]
            : _calendarController.isToday(date)
            ? Colors.brown[300]
            : orrange,
      ),
      width: 16.0,
      height: 16.0,
      child: Center(
        child: Text(
          '${events.length}',
          style: TextStyle().copyWith(
            color: Colors.white,
            fontSize: 12.0,
          ),
        ),
      ),
    );
  }

}
