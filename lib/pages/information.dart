import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hack/pages/abortion.dart';
import 'package:hack/pages/breast.dart';
import 'package:hack/pages/planning.dart';
import 'package:hack/pages/std.dart';
import 'package:hack/pages/utres.dart';

import '../ReusableItems/reusablecard.dart';
import 'hiv.dart';

class Information extends StatefulWidget {
  final bool fromhome;
  const Information({super.key, required this.fromhome});

  @override
  State<Information> createState() => _InformationState();
}

class _InformationState extends State<Information> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: widget.fromhome
            ? AppBar(
                title: Text("Issues"),
                backgroundColor: const Color.fromARGB(255, 17, 158, 128),
                elevation: 0,
              )
            : null,
        body: Container(
          margin: EdgeInsets.fromLTRB(20, 50, 20, 0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ReusableAllAlbumsCard(
                    imgpath: "abort.png",
                    title: "Abortion",
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Abortion()));
                    },
                  ),
                  ReusableAllAlbumsCard(
                    imgpath: "aids.jpg",
                    title: "HIV AIDS",
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Hiv()));
                    },
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ReusableAllAlbumsCard(
                    imgpath: "std.jpg",
                    title: "STD",
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Std()));
                    },
                  ),
                  ReusableAllAlbumsCard(
                    imgpath: "breast2.jpg",
                    title: "Breast Cancer",
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Breast()));
                    },
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ReusableAllAlbumsCard(
                    imgpath: "utres2.jpg",
                    title: "Utres Cancer",
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Utres()));
                    },
                  ),
                  ReusableAllAlbumsCard(
                    imgpath: "download.jpg",
                    title: "Family Planning",
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Planning()));
                    },
                  )
                ],
              )
            ],
          ),
        ));
  }
}
