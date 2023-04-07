import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Hiv extends StatelessWidget {
  const Hiv({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 17, 158, 128),
      appBar: AppBar(
        title: const Text("Hiv Aids"),
        backgroundColor: const Color.fromARGB(255, 17, 158, 128),
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            child: const Text(
              "What is HIV AIDS?",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            //  color: Color.fromARGB(255, 17, 158, 128).withOpacity(0.2),
            width: MediaQuery.of(context).size.width,
            child: const Text(
              "HIV (human immunodeficiency virus) is a virus that attacks cells that help the body fight infection, making a person more vulnerable to other infections and diseases.",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            // color: Color.fromARGB(255, 17, 158, 128).withOpacity(0.2),
            width: MediaQuery.of(context).size.width,
            child: const Text(
              "A person with HIV is considered to have progressed to AIDS when the number of their CD4 cells falls below 200 cells per cubic millimeter of blood (200 cells/mm3). (In someone with a healthy immune system, CD4 counts are between 500 and 1,600 cells/mm3.) OR they develop one or more opportunistic infections (https://www.hiv.gov/hiv-basics/staying-in-hiv-care/other-related-health-issues/opportunistic-infections) regardless of their CD4 count.",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            child: Text(
              "The symptoms of HIV and AIDS :-        • Headache, Muscle aches and joint pain, Rash, Sore throat and painful mouth sores, Swollen lymph glands, mainly on the neck. Diarrhea, Weight loss, Cough, Night sweats",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
