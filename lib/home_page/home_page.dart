import 'package:flutter/material.dart';
import 'package:voice_assistant/pallet/pallete.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alexy'),
        centerTitle: true,
        leading: Icon(Icons.menu),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Center(
                child: Container(
                  height: 120,
                  width: 120,
                  margin: EdgeInsets.only(top: 4),
                  decoration: BoxDecoration(
                      color: Pallete.assistantCircleColor,
                      shape: BoxShape.circle),
                ),
              ),
              Container(
                  height: 123,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/images/virtualAssistant.png')))),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            margin: EdgeInsets.symmetric(horizontal: 40).copyWith(top: 30),
            decoration:
                BoxDecoration(border: Border.all(color: Pallete.borderColor)),
            child: Text(
              'hellow there , what task can i do for you?',
              style: TextStyle(
                  color: Pallete.mainFontColor,
                  fontSize: 25,
                  fontFamily: 'Cera Pro'),
            ),
          ),
        ],
      ),
    );
  }
}
