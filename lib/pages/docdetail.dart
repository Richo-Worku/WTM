import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

import '../ReusableItems/Reusablebutton.dart';

class ProfessionalDetailPage extends StatefulWidget {
  final String imgpath;
  final String name;

  const ProfessionalDetailPage({
    super.key,
    required this.imgpath,
    required this.name,
  });

  @override
  State<ProfessionalDetailPage> createState() => _ProfessionalDetailPageState();
}

class _ProfessionalDetailPageState extends State<ProfessionalDetailPage> {
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        setState(() {});
      },
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: SizedBox(
          height: 150,
          width: 350,
          child: FloatingActionButton(
            backgroundColor: Colors.transparent,
            elevation: 0,
            child: Container(
                margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: ReusableElevatedButton(
                  onPressed: (() async {
                    const number = '9898'; //set the number here
                    await FlutterPhoneDirectCaller.callNumber(number);
                  }),
                  buttonText: const Text(
                    'Call Now',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                )),
            onPressed: () async {
              const number = '08592119XXXX'; //set the number here
              bool? res = await FlutterPhoneDirectCaller.callNumber(number);
            },
          ),
        ),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 17, 158, 128),
          elevation: 0,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  color: const Color.fromARGB(255, 17, 158, 128),
                  height: 220,
                  width: MediaQuery.of(context).size.width,
                ),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                            image: AssetImage("assets/${widget.imgpath}"),
                            fit: BoxFit.cover),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(60))),
                    height: 120,
                    width: 120,
                  ),
                ),
                Positioned(
                    bottom: 0,
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      color: const Color.fromARGB(255, 17, 158, 128),
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                            child: Text(
                              widget.name,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          const Text("Breast Cancer Specialsit",
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ))
              ],
            ),
            SingleChildScrollView(child: _buildProfessionalInfo()),
          ],
        ),
      ),
    );
  }

  Widget _buildProfessionalInfo() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      height: MediaQuery.of(context).size.height / 2,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 0,
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: const Text('Work Experience',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 17, 158, 128))),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 0, 15, 0),
              child: const Text(
                  "Physician, Internal Medicine Concord Regional Medical Center, Concord, CAOctober 2015–January 2020"),
            ),
            Container(
              margin: const EdgeInsets.all(15),
              child: const Text('Key Achievement',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 17, 158, 128))),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 0, 15, 0),
              child: const Text(
                  "Achieved 22% reduction in surgeries by working with patients, admin, and nurse practitioners to suggest alternative treatments."),
            ),
            Container(
              margin: const EdgeInsets.all(15),
              child: const Text('Location',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 17, 158, 128))),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 0, 15, 0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(
                    Icons.location_on,
                    color: Color.fromARGB(255, 17, 158, 128),
                    size: 24,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text("Addis Ababa"),
                ],
              ),
            ),
            const SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
