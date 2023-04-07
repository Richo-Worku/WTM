import 'package:flutter/material.dart';
import 'package:hack/ReusableItems/reusablecard.dart';
import 'package:hack/ReusableItems/reusabledoctors.dart';
import 'package:hack/pages/information.dart';
import 'package:hack/pages/telemedicine.dart';

import 'hiv.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage('assets/utres.jpg'), fit: BoxFit.cover),
              ),
              child: Container(
                height: MediaQuery.of(context).size.height * .3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black.withOpacity(.7),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Text(
                                '24,000+',
                                style: TextStyle(
                                    fontSize: 45,
                                    color: Color.fromARGB(255, 228, 224, 224),
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'WOMEN',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 212, 212, 212),
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Deaths Per Year',
                            style: TextStyle(
                                letterSpacing: 1.2,
                                fontSize: 20,
                                color: Color.fromARGB(255, 5, 211, 166),
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Issues',
                    style: TextStyle(
                        color: Color.fromARGB(255, 17, 158, 128),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Information(
                                    fromhome: true,
                                  )));
                    },
                    child: Text(
                      "See all",
                      style:
                          TextStyle(color: Color.fromARGB(255, 17, 158, 128)),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ReusableAllAlbumsCard(
                    imgpath: "abort.png",
                    title: "Abortion",
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Hiv()));
                    },
                  ),
                  ReusableAllAlbumsCard(
                    imgpath: "download.jpg",
                    title: "Cotraception",
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Hiv()));
                    },
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Telemedicine',
                    style: TextStyle(
                        color: Color.fromARGB(255, 17, 158, 128),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TeleMedicine(
                                    fromhome: true,
                                  )));
                    },
                    child: Text(
                      "See all",
                      style:
                          TextStyle(color: Color.fromARGB(255, 17, 158, 128)),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ReusableDoctor(imgpath: "drmelat.jpg", title: "Dr Melat"),
                  ReusableDoctor(imgpath: "drbrhan.jpg", title: "Dr Berhan")
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
