import 'package:flutter/material.dart';
import 'package:tinder_swipecard/tinder_swipecard.dart';


class swipe1 extends StatefulWidget {
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".


  @override
  _swipe1State createState() => _swipe1State();
}

class _swipe1State extends State<swipe1> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return  Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: TinderSwipeCard(
          profiles: demoProfiles,
          onLike: () {
            print("Liked Profile");
          },
          onDislike: () {
            print("Disliked Profile");
          },
          onSuperLike: () {
            print("Superliked profile");
          },
          onRefresh: () {
            print("Refreshed profiles");
          },
        ),
      )

    ;
  }
}
final List<Profile> demoProfiles = [
  Profile(
    photos: [
      "https://unsplash.com/photos/JVZTtdybC8s/download?force=true&w=640",
      "https://unsplash.com/photos/0oRefidSNKc/download?force=true&w=640",
      "https://unsplash.com/photos/MQ9U2GFnnDc/download?force=true&w=640",
    ],
    name: "Daenerys Targaryen",
    bio:
    "Do you believe in love at first sight – or should you swipe right again?",
  ),
  Profile(
    photos: [
      "https://unsplash.com/photos/bYzllm-pD1k/download?force=true&w=640",
      "https://unsplash.com/photos/UrYLlff6U60/download?force=true&w=640",
    ],
    name: "Sansa Stark",
    bio: "Last time I was someone’s type, I was donating blood.",
  ),
  Profile(
    photos: [
      "https://unsplash.com/photos/pvWvjHdX8O0/download?force=true&w=640",
      "https://unsplash.com/photos/p5SXRTjaPTc/download?force=true&w=640",
    ],
    name: "Margaery Tyrell",
    bio:
    "I’d tell you a lengthy description about myself but that would take away from the mystery.",
  ),
];


class Profile {
  final List<String> photos;
  final String name;
  final String bio;

  Profile({ this.photos, this.name, this.bio});
}