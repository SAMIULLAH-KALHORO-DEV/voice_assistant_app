import 'package:flutter/material.dart';
import 'package:voice_assistant_app/pallete.dart';

class HomPage extends StatefulWidget {
  const HomPage({super.key});

  @override
  State<HomPage> createState() => _HomPageState();
}

class _HomPageState extends State<HomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assistant"),
        centerTitle: true,
        leading: const Icon(Icons.menu),
      ),
      body: Column(children: [
        // Virtual Assistant Profile
        Stack(
          children: [
            Center(
              child: Container(
                height: 120,
                width: 120,
                margin: const EdgeInsets.only(top: 4),
                decoration: const BoxDecoration(
                    color: Pallete.assistantCircleColor,
                    shape: BoxShape.circle),
              ),
            ),
            Container(
              height: 130,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage("assets/images/virtualAssistant.png"))),
            )
          ],
        ),
// Chat Bubble

        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          margin: const EdgeInsets.symmetric(horizontal: 20).copyWith(top: 30),
          decoration: BoxDecoration(
              border: Border.all(color: Pallete.borderColor),
              borderRadius:
                  BorderRadius.circular(20).copyWith(topLeft: Radius.zero)),
          child: const Text(
            "Good Morning What Task can I do for you ",
            style: TextStyle(
                color: Pallete.mainFontColor,
                fontSize: 20,
                fontFamily: 'Cera Pro'),
          ),
        ),

        Container(
          padding: const EdgeInsets.all(10),
          alignment: Alignment.centerLeft,
          margin: const EdgeInsets.only(top: 10, left: 22),
          child: const Text(
            "Here are  few features",
            style: TextStyle(
                fontFamily: 'Cera Pro',
                color: Pallete.mainFontColor,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ),
        // feature list
        
      ]),
    );
  }
}
