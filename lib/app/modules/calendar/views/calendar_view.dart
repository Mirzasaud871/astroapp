import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/calendar_controller.dart';

class CalendarView extends GetView<CalendarController> {
  CalendarView({Key? key}) : super(key: key);
  CalendarController calendarController = Get.put(CalendarController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: (){
              Get.back();
            },
            icon: Icon(Icons.arrow_back_ios_new,color: Colors.black,)),
        title: const Text('Hindu Calendar',style: TextStyle(fontSize: 18,color: Colors.black),),

      ),
      body:SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: 750,
              child: ListView.builder(
                  itemCount: calendarController.calendarlist.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: EdgeInsets.all(08.0),
                      height:120,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: Colors.grey)
                      ),
                      child: Stack(children: [
                        Container(
                          margin: EdgeInsets.only(left: 10.0),
                          height:180,
                          width: 60,
                          color: Colors.orange,
                        ),
                        ListTile(
                          title: Align(
                              alignment: Alignment.topCenter,
                              child: Text(calendarController.calendarlist[index].title,textAlign: TextAlign.start,)),
                          subtitle: Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(calendarController.calendarlist[index].subtitle,textAlign: TextAlign.start,)),
                        ),
                      ],)
                    );
                  }),
            ),
          ],),
        ),
      )
    );
  }
}
