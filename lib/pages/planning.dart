import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Planning extends StatelessWidget {
  const Planning({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 17, 158, 128),
      appBar: AppBar(
        title: const Text("Family Planning"),
        backgroundColor: const Color.fromARGB(255, 17, 158, 128),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              child: const Text(
                "Family Planning",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              //  color: Color.fromARGB(255, 17, 158, 128).withOpacity(0.2),
              width: MediaQuery.of(context).size.width,
              child: const Text(
                "According to the Centers for Disease Control and Prevention (CDC), family planning is one of the 10 great public health achievements of the twentieth century, on a par with such accomplishments as vaccination and advances in motor vehicle safety (CDC, 1999). The ability of individuals to determine their family size and the timing and spacing of their children has resulted in significant improvements in health and in social and economic well-being (IOM, 1995). Smaller families and increased child spacing have helped decrease rates of infant and child mortality, improve the social and economic conditions of women and their families, and improve maternal health. Contemporary family planning efforts in the United States began in the early part of the twentieth century. By 1960, modern contraceptive methods had been developed, and in 1970 federal funding for family planning was enacted through the Title X program, the focus of this repor",
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
      ),
    );
  }
}
