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
              height: 700,
              child: ListView.builder(
                  itemCount: calendarController.calendarlist.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: EdgeInsets.all(08.0),
                      height:80,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: Colors.grey)
                      ),
                      child: Row(children: [
                        Container(
                          height:100,
                          width: 90,
                          decoration: BoxDecoration(
                            color: calendarController.myBgColors[index].color,
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10))
                          ),
                          child: Column(children: [
                            Center(child: Text(calendarController.calendarlist[index].date,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),)),
                            Center(child: Text(calendarController.calendarlist[index].subtitle,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),)),
                          ],)
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 15.0,top: 2.0),
                            height: 100,
                            width: 220,
                            child: Text(calendarController.calendarlist[index].title,style: TextStyle(fontSize: 18),)
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
