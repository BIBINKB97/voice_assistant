import 'package:flutter/material.dart';
import 'package:voice_assistant/feature_box.dart';
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
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(20).copyWith(topLeft: Radius.zero),
                border: Border.all(color: Pallete.borderColor)),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Text(
                'hellow there , what task can i do for you?',
                style: TextStyle(
                    color: Pallete.mainFontColor,
                    fontSize: 25,
                    fontFamily: 'Cera Pro'),
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(top: 10, left: 30),
            child: Text(
              'Here are a few features',
              style: TextStyle(
                  fontFamily: 'Cera Pro',
                  color: Pallete.mainFontColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          FeatureBox(
            color: Pallete.firstSuggestionBoxColor,
            descriptionText:
                'lorem ipsum fhifj fgf9weouwf w8f hain dalo fweuifgwifh',
            headerText: 'Chat GPT',
          ),
          FeatureBox(
            color: Pallete.secondSuggestionBoxColor,
            descriptionText:
                'ipsum fhifj fgf9weouwf w8f ghrfguisyfebi hain dalo fweuifgwifh',
            headerText: 'Dall-E',
          ),
          FeatureBox(
            color: Pallete.thirdSuggestionBoxColor,
            descriptionText:
                'loremIpsum fhifj fgf9weouwf w8f ghrfguisyfebi hain dalo fweuifgwifh',
            headerText: 'Smart voice Assistant',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.mic   ),
      ),
    );
  }
}
