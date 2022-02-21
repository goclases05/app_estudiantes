import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TimeLineItemList extends StatelessWidget {
  const TimeLineItemList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Expanded(
      child: TimelineTile(
        //axis: TimelineAxis.vertical,
        endChild: 
         Card(
           elevation: 3,
           child: ExpansionTile(
            title:const Text('Reporte de Comportamiento'),
            subtitle: const Text('10/08/2022'),
            trailing:const Icon(Icons.info),
            children: [
              Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                color: Colors.blueGrey.shade50,
                child: const Text('Detalles',style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 4, 121, 175)
                ),),
              ),
              Container(
                padding:const EdgeInsets.all(10),
                width: double.infinity,
                child:const Text(
                  'Sit amet deserunt et non officia consectetur officia duis et ipsum. Sit amet deserunt et non officia consectetur officia duis et ipsum. Sit amet deserunt et non officia consectetur officia duis et ipsum. Sit amet deserunt et non officia consectetur officia duis et ipsum. Sit amet deserunt et non officia consectetur officia duis et ipsum.',
                style: TextStyle(
                  fontSize: 14,
                ),
                textAlign: TextAlign.justify,
                ),
              ),
              Container(
                color: Colors.lightBlue[50],
                child:const ListTile(
                  leading: Text('Puntos:',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                )),
                  trailing: Text('-10',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                )),
                ),
              )
            ],
                 ),
         )
        ,
        beforeLineStyle: const LineStyle(color: Color.fromARGB(255, 12, 113, 160),thickness: 5),
        afterLineStyle:const LineStyle(color: Color.fromARGB(255, 12, 113, 160),thickness: 5),
        indicatorStyle:const IndicatorStyle(
          color: Colors.green,
          width: 40,
          height: 50,
          /*indicator: Container(
            width: 40,
            height: 50,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 107, 194, 37),
              borderRadius: BorderRadius.circular(8)
            ),
            child: Icon(Icons.insert_emoticon,color: Colors.white,size: 25,),
          )*/
          indicator: CircleAvatar(
            backgroundColor: Color.fromARGB(255, 27, 153, 211),
            radius: 10,
            child: Icon(Icons.fiber_manual_record,color: Colors.white,size: 25,)
          )
        ),
        //alignment: TimelineAlign.manual,
        //lineXY: 0.5,
      ),
    );
  }
}