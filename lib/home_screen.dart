import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:readmore/readmore.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:badges/badges.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:badges/badges.dart' as badges;

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.redAccent,
        appBar: AppBar(
          // leading: Padding(
          //   padding: EdgeInsets.only(left: 0,),
          //   child: badges.Badge(
          //     child: Icon(Icons.menu,size: 30,),
          //     position: badges.BadgePosition.topEnd(top: 10, end: 10),
          //     badgeContent: Icon(Icons.check,color: Colors.white,size: 15, ),
          //     badgeStyle: BadgeStyle(
          //       shape: BadgeShape.twitter,
          //         badgeColor: Colors.red,
          //         // padding: EdgeInsets.all(5)
          //     ),
          //   ),
          // ),
          // leadingWidth: 100,
          title: const Text("Pub.dev"),
          actions: [
            PopupMenuButton(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, right: 20),
                  child: badges.Badge(
                    position: badges.BadgePosition.topEnd(top: -20, end: -15),
                    badgeContent: const Text(
                      "4",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    child: const Icon(
                      FontAwesomeIcons.shoppingCart,
                      size: 30,
                    ),
                  ),
                ),
                itemBuilder: (context) =>
                    [const PopupMenuItem(value: 1, child: Text("settings"))]),
          ],
        ),
        drawer: Drawer(),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PinCodeTextField(
                appContext: context,
                length: 5,
                onChanged: (value) {},
                keyboardType: TextInputType.phone,
                obscureText: true,
                obscuringCharacter: '*',
                cursorColor: Colors.blue,
                enabled: true,
                pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(10),
                    fieldHeight: 50,
                    fieldWidth: 40,
                    inactiveColor: Colors.grey,
                    selectedColor: Colors.lime,
                    selectedBorderWidth: 5),
              )
            ],
          ),
        ));
  }
}

/*
Icon(Icons.lock),
  Icon(CupertinoIcons.lock),
  Icon(FontAwesomeIcons.lock),
  ReadMoreText(
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
   ,textAlign: TextAlign.justify,
    trimMode: TrimMode.Line,
    trimLines: 2,
    trimCollapsedText: "mazeed",
    style: TextStyle(
      fontSize: 14
    ),
    moreStyle: TextStyle(
     color: Colors.blue
  ),

  ),
// SizedBox(
//   width: 250.0,
//   child: DefaultTextStyle(
//     style: const TextStyle(
//       fontSize: 30.0,
//       fontFamily: 'Agne',
//     ),
//     child: AnimatedTextKit(
//       animatedTexts: [
//         TypewriterAnimatedText('Discipline is the best tool'),
//         TypewriterAnimatedText('Design first, then code'),
//         TypewriterAnimatedText('Do not patch bugs out, rewrite them'),
//         TypewriterAnimatedText('Do not test bugs out, design them out'),
//       ],
//       onTap: () {
//         print("Tap Event");
//       },
//     ),
//   ),
// ),
SizedBox(
  width: 300.0,

  child: TextLiquidFill(
    text: 'LIQUIDY',
    waveColor: Colors.blueAccent,
    // boxBackgroundColor: Colors.redAccent,

    textStyle: TextStyle(
      fontSize: 80.0,
      fontWeight: FontWeight.bold,
    ),
    boxHeight: 100.0,
  ),
)
*/
