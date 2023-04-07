import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Std extends StatelessWidget {
  const Std({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 17, 158, 128),
      appBar: AppBar(
        title: const Text("STD"),
        backgroundColor: const Color.fromARGB(255, 17, 158, 128),
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            child: const Text(
              "What is STD",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            //  color: Color.fromARGB(255, 17, 158, 128).withOpacity(0.2),
            width: MediaQuery.of(context).size.width,
            child: const Text(
              "Sexually transmitted diseases (STDs), also known as sexually transmitted infections (STIs), are very common. Millions of new infections occur every year in the United States.STDs pass from one person to another through vaginal, oral, and anal sex. They also can spread through intimate physical contact like heavy petting, though this is not very common.",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            // color: Color.fromARGB(255, 17, 158, 128).withOpacity(0.2),
            width: MediaQuery.of(context).size.width,
            child: const Text(
              "STDs don’t always cause symptoms or may only cause mild symptoms. Therefore, it is possible to have an infection and not know it. That is why getting an STD test is important if you are having sex. If you receive a positive STD diagnosis, know that all are treatable with medicine and some are curable entirely.",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            child: Text(
              "There are dozens of STDs. Some STDs, such as syphilis, gonorrhea, and chlamydia, are spread mainly by sexual contact. Other diseases, including Zika, Ebola, and mpox, can be spread sexually but are more often spread through ways other than sex.",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
