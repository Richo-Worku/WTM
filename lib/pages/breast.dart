import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Breast extends StatelessWidget {
  const Breast({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 17, 158, 128),
      appBar: AppBar(
        title: const Text("Breast Cancer"),
        backgroundColor: const Color.fromARGB(255, 17, 158, 128),
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            child: const Text(
              "Breast Cancer",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            //  color: Color.fromARGB(255, 17, 158, 128).withOpacity(0.2),
            width: MediaQuery.of(context).size.width,
            child: const Text(
              "Breast cancer is a disease in which cells in the breast grow out of control. There are different kinds of breast cancer. The kind of breast cancer depends on which cells in the breast turn into cancer.",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            // color: Color.fromARGB(255, 17, 158, 128).withOpacity(0.2),
            width: MediaQuery.of(context).size.width,
            child: const Text(
              "Breast cancer can begin in different parts of the breast. A breast is made up of three main parts: lobules, ducts, and connective tissue. The lobules are the glands that produce milk. The ducts are tubes that carry milk to the nipple. The connective tissue (which consists of fibrous and fatty tissue) surrounds and holds everything together. Most breast cancers begin in the ducts or lobules.",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            child: const Text(
              " Symptoms og breast Cancer can beNew lump in the breast or underarm (armpit).Thickening or swelling of part of the breast.,Irritation or dimpling of breast skin.,Redness or flaky skin in the nipple area or the breast.,Pulling in of the nipple or pain in the nipple area.",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
