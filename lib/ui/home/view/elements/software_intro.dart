import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_website/ui/utils/resources/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class SoftwareIntro extends StatelessWidget {
  const SoftwareIntro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData().copyWith(dividerColor: Colors.transparent),
      child: Column(
        children: [
          Text("Must change this"),
          SizedBox(height: 20),
          Container(
            width: MediaQuery.of(context).size.width * 0.6,
            child: ExpansionTile(
              textColor: Colors.black,
              backgroundColor: Colors.transparent,
              iconColor: Colors.black,
              collapsedIconColor: Colors.black,
              collapsedTextColor: Colors.black,
              title: RichText(
                text: TextSpan(
                  style: Constants.bodyFont,
                  children: [
                    TextSpan(
                        text: "I", style: GoogleFonts.greatVibes(fontSize: 44)),
                    TextSpan(
                      text:
                          " never had any interest in computers or technology in general growing up.",
                      style: TextStyle(textBaseline: TextBaseline.alphabetic),
                    ),
                  ],
                ),
              ),
              children: [
                Column(
                  children: [
                    RichText(
                      text: TextSpan(
                        style: Constants.bodyFont,
                        children: [
                          TextSpan(
                            text:
                                "I understood how things functioned, intuitively, but never understood the inner workings.  For example, I would know to plug in the VCR\'s yellow, white and red cables to the TV\'s yellow, white and red ports & to then change the input of the TV but I was just matching colors and pressing buttons on the remote.  I didn\'t actually know what was happening or why it worked.\n\nI never really had any interest in Computers or Software, I wanted to be a Detective or an Undercover Federal Agent, like my dad, but he was the one that encouraged me towards Software.  He told me on multiple occasions it simply wasn\'t worth risking your life and sacrificing so many hours for such little pay.  He said ",
                            style: TextStyle(
                                textBaseline: TextBaseline.alphabetic),
                          ),
                          TextSpan(
                              text:
                                  "\"go towards Cyber Security or anything involving Computers, ",
                              style: Constants.italic),
                          TextSpan(
                              text: "that\'s the future\".  ",
                              style: Constants.boldAndItalic),
                          TextSpan(
                              text:
                                  "And you know what, he was 100% right. \n\nEvery single aspect of our lives today is touched by Computers and more so - Software.  If not only for the ability to understand the world around you, why wouldn't you want to understand the basics of Computers? Software has surpassed Math, in which now Software is integrated into every discipline available: ex ex ex.\n\nIf you want to be a part of the world.  If you want to understand how the world works.  You must understand how the internet works.  And if you want to not just contribute to the world, but actually shape it, you must first understand Software."),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 24.0),
          Container(
            width: MediaQuery.of(context).size.width * 0.6,
            child: ExpansionTile(
              textColor: Colors.black,
              backgroundColor: Colors.transparent,
              iconColor: Colors.black,
              collapsedIconColor: Colors.black,
              collapsedTextColor: Colors.black,
              title: RichText(
                text: TextSpan(
                  style: Constants.bodyFont,
                  children: [
                    TextSpan(
                        text: "I", style: GoogleFonts.greatVibes(fontSize: 44)),
                    TextSpan(
                      text:
                          " believe the most important aspect of Software is the system's architecture.",
                      style: TextStyle(textBaseline: TextBaseline.alphabetic),
                    ),
                  ],
                ),
              ),
              children: [
                Column(
                  children: [
                    RichText(
                      text: TextSpan(
                        style: Constants.bodyFont,
                        children: [
                          TextSpan(
                            text:
                                "Everything stems from the quality of the architecture. Most of the systems I\'ve joined have employed Architecture by Accident in which a certain architecture ",
                            style: TextStyle(
                                textBaseline: TextBaseline.alphabetic),
                          ),
                          TextSpan(
                              text: "emerges", style: Constants.boldAndItalic),
                          TextSpan(
                              text:
                                  " but was ultimately unplanned.  I would also include hyper-simplistic architectures in this \'unplanned\' category.  I have been lucky enough to have a mentor that is a Clean Architecture enthusiast and I would recommend visiting "),
                          TextSpan(
                            text: "Lyle\'s website",
                            style: TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () async {
                                final Uri _url = Uri(
                                  scheme: "https",
                                  host: "lyleresnick.com",
                                );
                                if (await canLaunchUrl(_url)) {
                                  launchUrl(_url);
                                } else {
                                  print("Unable to launch URL");
                                }
                              },
                          ),
                          TextSpan(
                              text:
                                  " and listening to some of his talks to understand the importance of the system's architecture.  Lyle does an excellent job of explaining the philosophy."),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
