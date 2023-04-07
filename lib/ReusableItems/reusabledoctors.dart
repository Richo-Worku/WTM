import 'package:flutter/material.dart';

import '../pages/docdetail.dart';

class ReusableDoctor extends StatelessWidget {
  final String imgpath;
  final String title;
  const ReusableDoctor({
    super.key,
    required this.imgpath,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    ProfessionalDetailPage(imgpath: imgpath, name: title)));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/$imgpath"), fit: BoxFit.cover),
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(100)),
              margin: const EdgeInsets.only(right: 10, top: 10),
              height: 130,
              width: 130),
          Container(
            margin: const EdgeInsets.only(top: 10),
            width: 130,
            child: Container(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      margin: const EdgeInsets.only(bottom: 5.0),
                      child: Text(
                        title,
                        style: TextStyle(
                          fontSize: 17,
                          color: Color.fromARGB(255, 17, 158, 128),
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                  Text(
                    "",
                    style: TextStyle(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
