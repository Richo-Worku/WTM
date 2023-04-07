import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../ReusableItems/reusabledoctors.dart';

class TeleMedicine extends StatefulWidget {
  final bool fromhome;
  const TeleMedicine({super.key, required this.fromhome});

  @override
  State<TeleMedicine> createState() => _TeleMedicineState();
}

class _TeleMedicineState extends State<TeleMedicine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: widget.fromhome
            ? AppBar(
                title: Text("TeleMedicine"),
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
                children: const [
                  ReusableDoctor(imgpath: "drabe.jpg", title: "Dr Abebe Molla"),
                  ReusableDoctor(
                      imgpath: "drbrhan.jpg", title: "Dr berhan alayu")
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  ReusableDoctor(
                      imgpath: "drmelat.jpg", title: "Dr Melat Taye"),
                  ReusableDoctor(imgpath: "drmaki.jpg", title: "Dr Maki Mehari")
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  ReusableDoctor(
                      imgpath: "drmahi.jpg", title: "Dr Mahlet Leyu"),
                  ReusableDoctor(imgpath: "drsami.jpg", title: "Dr Samuel ayu ")
                ],
              )
            ],
          ),
        ));
  }
}
