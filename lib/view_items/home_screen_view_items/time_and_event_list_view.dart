import 'package:dentelapp/data/vos/time_and_event_vo.dart';
import 'package:dentelapp/resources/dimesion.dart';
import 'package:flutter/material.dart';

import '../../resources/color.dart';

class TimeAndEventListSession extends StatelessWidget {
  const TimeAndEventListSession({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final Function(bool)onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: secondMainScreenBackgroundColor,
        child: Padding(
          padding: const EdgeInsets.only(top: 90),
          child: Row(
             children: [
              const TimeSessionView(),
              EventsSessionView(onTap: (isDisable)=>onTap(isDisable),)
            ],
          ),
        ),
      ),
    );
  }
}

class EventsSessionView extends StatelessWidget {
  const EventsSessionView({
    Key? key,
   required this.onTap,
  }) : super(key: key);
  final Function(bool)onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      const Text("Event",style: TextStyle(fontWeight: FontWeight.bold),),
          RefreshIndicator(
            onRefresh: ()async{
              const snackBar = SnackBar(
                backgroundColor: firstMainScreenBackgroundColor,
                content: Text('Loading more data',style:  TextStyle(color: Colors.white),),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: SizedBox(
        width: 250,
        height: MediaQuery.of(context).size.height * 0.45,
        child: events.isEmpty?
        Container(
          alignment: Alignment.centerLeft,
          child: const Text("No Events"),
        ): ListView.separated(
            separatorBuilder: (_, index) => const SizedBox(
              height: spacing1x,
            ),
            itemCount: events.length,
            itemBuilder: (_, index) =>
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(smallCircleAvaterRadius),
                  ),
                  child: Opacity(
                    opacity: (events[index].isDisable)?0.3:1,
                    child: ListTile(
                      onTap: (){
                        onTap(events[index].isDisable);
                      },
                      enabled: !events[index].isDisable,
                      leading: CircleAvatar(
                        backgroundColor: Colors.blue[400],
                        child: events[index].icon,
                      ),
                      title: Text(events[index].title,style: const TextStyle(fontWeight: FontWeight.bold),),
                      subtitle: Text(events[index].time,style: const TextStyle(color: Colors.black38),),
                    ),
                  ),
                )
        ),
      ),
          )
    ]
    );
  }
}

class TimeSessionView extends StatelessWidget {
  const TimeSessionView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Text("Time",style: TextStyle(fontWeight: FontWeight.bold),),
      Container(
        width: 150,
        height: MediaQuery.of(context).size.height * 0.45,
        child: ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (_, index) => const SizedBox(
                  height: spacing3x,
                ),
            itemCount: times.length,
            itemBuilder: (_, index) =>
                Container(
                  alignment: Alignment.topCenter,
                  width: double.infinity,
                    child: Text(times[index],style: const TextStyle(
                      color: Colors.black38,
                      fontSize: regularText
                    ),)
                )
        ),
      )
    ]
    );
  }
}
