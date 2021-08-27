import 'package:facebook_ui8/pages/postCard.dart';
import 'package:facebook_ui8/pages/search.dart';
import 'package:facebook_ui8/pages/storyCard.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color mainColor = Colors.black;
  List<String> feedImages = [
    "assets/images/feed_5.jpeg",
    "assets/images/feed_4.jpeg",
    "assets/images/feed_3.jpeg",
    "assets/images/feed_2.jpeg",
    "assets/images/feed_1.jpeg"
  ];
  List<String> backgroundImages = [
    "assets/images/story_5.jpeg",
    "assets/images/story_4.jpeg",
    "assets/images/story_3.jpeg",
    "assets/images/story_2.jpeg",
    "assets/images/story_1.jpeg"
  ];
  List<String> userImages = [
    "assets/images/user_5.jpeg",
    "assets/images/user_4.jpeg",
    "assets/images/user_3.jpeg",
    "assets/images/user_2.jpeg",
    "assets/images/user_1.jpeg"
  ];
  List<String> texts = [
    "User Five",
    "User Four",
    "User Three",
    "User Two",
    "User One"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: mainColor,
        brightness: Brightness.dark,
        title: Text(
          "facebook",
          style: TextStyle(
              fontSize: 26, color: Colors.blue, fontWeight: FontWeight.w700),
        ),
        actions: [
          Icon(
            Icons.search,
            color: Colors.white60,
            size: 26,
          ),
          SizedBox(
            width: 24,
          ),
          Icon(
            Icons.camera_alt,
            color: Colors.white60,
            size: 26,
          ),
          SizedBox(
            width: 12,
          )
        ],
        elevation: 0,
      ),
      body: ListView(
        children: [
          //search field
          Container(
            // height: 100,
            color: Colors.black,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: SearchWidget(mainColor: mainColor),
          ),
          SizedBox(
            height: 10,
          ),
          //Story
          Container(
            width: double.infinity,
            height: 210,
            color: Colors.black,
            child: ListView.builder(
                itemCount: texts.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return StoryCard(
                    backgroundImage: backgroundImages[index],
                    userImage: userImages[index],
                    text: texts[index],
                  );
                }),
          ),
          SizedBox(
            height: 10,
          ),

          // Posts

          PostCard(
            mainColor: mainColor,
            userImages: userImages,
            texts: texts,
            feedImages: feedImages,
            index: 2,
          ),
          PostCard(
            mainColor: mainColor,
            userImages: userImages,
            texts: texts,
            feedImages: feedImages,
            index: 3,
          ),

          PostCard(
            mainColor: mainColor,
            userImages: userImages,
            texts: texts,
            feedImages: feedImages,
            index: 0,
          ),
        ],
      ),
    );
  }
}
