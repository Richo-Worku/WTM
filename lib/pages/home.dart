import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hack/pages/firstpage.dart';
import 'package:hack/pages/telemedicine.dart';

import 'docdetail.dart';
import 'information.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: PreferredSize(
              preferredSize: const Size.fromHeight(50.0),
              child: AppBar(
                  bottom: TabBar(
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.white,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorPadding:
                        const EdgeInsets.only(bottom: 10, top: 10),
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white),
                    tabs: [
                      Tab(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("Home"),
                        ),
                      ),
                      Tab(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("Issues"),
                        ),
                      ),
                      Tab(
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("Telemedicine"),
                          ),
                        ),
                      ),
                    ],
                  ), // TabBar
                  //  title: const Text('GeeksForGeeks'),
                  backgroundColor: Color.fromARGB(255, 17, 158, 128))),
          body: TabBarView(
            children: [
              HomePage(),
              Information(
                fromhome: false,
              ),
              TeleMedicine(
                fromhome: false,
              ),
            ],
          ),
        ));
  }
}
