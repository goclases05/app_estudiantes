import 'package:flutter/material.dart';

class ListTileMenu extends StatelessWidget {
  String image,name;

  ListTileMenu(this.image,this.name, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.only(right: 30),
      child: ListTile(
        shape:const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight:Radius.circular(30),
            bottomRight: Radius.circular(30) 
            
          )
        ),
        hoverColor: Colors.white60,
        trailing: const Icon(Icons.navigate_next),
        leading: CircleAvatar(radius: 25,backgroundColor: Colors.lightBlue[50],child: Image.asset(image,width: 35,)),
        title:  Text(name,style:const TextStyle(
                color: Colors.blueGrey,
                fontWeight: FontWeight.bold,
                fontSize: 15
              ),),
        onLongPress: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}