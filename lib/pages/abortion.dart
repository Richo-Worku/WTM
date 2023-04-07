import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Abortion extends StatelessWidget {
  const Abortion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 17, 158, 128),
      appBar: AppBar(
        title: const Text("Abortion"),
        backgroundColor: const Color.fromARGB(255, 17, 158, 128),
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            child: const Text(
              "Abortion",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            //  color: Color.fromARGB(255, 17, 158, 128).withOpacity(0.2),
            width: MediaQuery.of(context).size.width,
            child: const Text(
              "Abortion is a common health intervention. It is safe when carried out using a method recommended by WHO, appropriate to the pregnancy duration and by someone with the necessary skills.",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            // color: Color.fromARGB(255, 17, 158, 128).withOpacity(0.2),
            width: MediaQuery.of(context).size.width,
            child: const Text(
              "Six out of 10 of all unintended pregnancies end in an induced abortion.Around 45% of all abortions are unsafe, of which 97% take place in developing countries.",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            child: const Text(
              "Unsafe abortion is a leading – but preventable – cause of maternal deaths and morbidities. It can lead to physical and mental health complications and social and financial burdens for women, communities and health systems.Lack of access to safe, timely, affordable and respectful abortion care is a critical public health and human rights issue.",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
