import 'package:flutter/material.dart';
import 'package:teque_machinetest/utils/color.dart';

class customtile extends StatefulWidget {
  customtile({super.key, required this.titletext});
  final String? titletext;
bool isselect =false;

  @override
  State<customtile> createState() => _customtileState();

}


class _customtileState extends State<customtile> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 12,
      child: ListTile(
        onTap: () {
          
          setState(() {
           widget. isselect=! widget. isselect;
          });
        },
        selected:  widget. isselect,
        
        selectedTileColor: 
        //  widget. isselect? Colors.white :
         Appcolor.primarycolor,
        leading:CircleAvatar(
          backgroundImage: NetworkImage("https://img.freepik.com/free-photo/portrait-white-man-isolated_53876-40306.jpg?size=626&ext=jpg&ga=GA1.1.1391119898.1717069661&semt=ais_hybrid"),
          radius: 30,),
        title: Text(widget.titletext!,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 16)),
        subtitle: Text("MIAMI,FL . TODAY, 11:46 AM",style: TextStyle(color: Appcolor.primarycolor,fontWeight: FontWeight.w500,fontSize: 13),),
        trailing: IconButton(
          highlightColor: Appcolor.primarycolor,
          onPressed: () {}, icon: Icon(Icons.edit,size: 18,
        
        )),
      ),
    );
  }
}
