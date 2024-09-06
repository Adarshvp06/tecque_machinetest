import 'package:flutter/material.dart';
import 'package:teque_machinetest/utils/color.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
        height: 150,
        color: Colors.transparent,
        width: double.infinity,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 70,
                color: Colors.black,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Container(
                        height: 80,
                        width: 90,
                        child: const Row(
                          children: [Icon(Icons.wifi,color: Appcolor.primarycolor,), Text("Discovery", style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold))],
                        ),
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 90,
                      child: const Row(
                        children: [Icon(Icons.wifi,color: Appcolor.primarycolor,), Text("Sharing", style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold))],
                      ),
                    ),
                  ],
                ),
              ),
            ),
             Positioned(
                top: 20,
                left: 150,
                child: InkWell(
                  onTap: () {
                    
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.purple[200],
                    child: Text("Add", style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold)),
                    radius: 50,
                  ),
                ))
          ],
        ),
      );
  }
}