
import 'package:flutter/material.dart';

class EventVO{
Icon icon;
String title;
String time;
bool isDisable;

EventVO(this.icon, this.title, this.time,this.isDisable);
}


List <String>times=[
  '8:00 ','08:30',
  '9:00 ','09:30',
  '10:00 ','10:30',
  '11:00 ','11:30',
];

List<EventVO>events=[
  EventVO(const Icon(Icons.local_hospital_outlined,color: Colors.white,), 'Fello Lowercase', '8:00AM - 8:30AM',true),
  EventVO(const Icon(Icons.local_hospital_outlined,color: Colors.white,), 'Silivana Lillona', '9:00AM - 9:30AM',false),
  EventVO(const Icon(Icons.local_hospital_outlined,color: Colors.white,), 'Sweet Satinterist', '10:00AM - 10:30AM',false),
  EventVO(const Icon(Icons.local_hospital_outlined,color: Colors.white,), 'Millo Slift', '11:00AM - 11:30AM',false),
];