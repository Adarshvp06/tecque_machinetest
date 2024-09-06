import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:teque_machinetest/service/getname.dart';
import 'package:teque_machinetest/utils/color.dart';
import 'package:teque_machinetest/widgets/custom_bottom.dart';
import 'package:teque_machinetest/widgets/custom_tile.dart';

class UiPage extends StatelessWidget {
  const UiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Edit Discoverd",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
          ),
          leading: InkWell(
            onTap: () {},
            child: Center(
                child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                "Cancel",
                style: TextStyle(
                    color: Colors.purple, fontWeight: FontWeight.bold),
              ),
            )),
          ),
          actions: [
            TextButton(
                onPressed: () {},
                child: Text(
                  "Done",
                  style: TextStyle(
                      color: Colors.purple, fontWeight: FontWeight.bold),
                ))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      style: ButtonStyle(
                          side: WidgetStatePropertyAll(BorderSide(
                              width: 2, color: Appcolor.primarycolor))),
                      onPressed: () {},
                      child: const Text(
                        "Select All",
                        style: TextStyle(
                            color: Colors.purple, fontWeight: FontWeight.bold),
                      )),
                  ElevatedButton(
                      style: ButtonStyle(
                          side: WidgetStatePropertyAll(BorderSide(
                              width: 2, color: Appcolor.primarycolor))),
                      onPressed: () {},
                      child: const Text(
                        "Delete",
                        style: TextStyle(
                            color: Colors.purple, fontWeight: FontWeight.bold),
                      )),
                  ElevatedButton(
                      style: ButtonStyle(
                          side: WidgetStatePropertyAll(BorderSide(
                              width: 2, color: Appcolor.primarycolor))),
                      onPressed: () {},
                      child: const Text(
                        "Remember",
                        style: TextStyle(
                            color: Colors.purple, fontWeight: FontWeight.bold),
                      ))
                ],
              ),
              Container(
                height: 30,
                width: double.infinity,
                child: Center(
                  child: RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "0",
                        style: TextStyle(
                            color: Appcolor.primarycolor,
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                        text: " Contacts Selected",
                        style: TextStyle(
                            color: Colors.blue[800],
                            fontWeight: FontWeight.bold))
                  ])),
                ),
              ),
              Expanded(
                child: ListView.separated(
                    itemBuilder: (context, int) {
                      return customtile(titletext: "titletext");
                    },
                    separatorBuilder: (context, int) {
                      return const SizedBox(
                        height: 10,
                      );
                    },
                    itemCount: 8),
              )
            ],
          ),
        ),
        bottomNavigationBar: CustomBottom());
  }
}
