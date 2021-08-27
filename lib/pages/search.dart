import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key? key,
    required this.mainColor,
  }) : super(key: key);

  final Color mainColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 0.8, color: Colors.grey),
                image: DecorationImage(
                  image: AssetImage("assets/images/user_5.jpeg"),
                ),
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Container(
                // color: Colors.white,
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: mainColor,
                  border: Border.all(width: 0.8, color: Colors.grey),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 16),
                      border: InputBorder.none,
                      hintText: "What's on your mind?",
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 14)),
                ),
              ),
            ),
          ],
        ),
        Container(
          // width: double.infinity,
          padding: EdgeInsets.only(top: 6),
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.video_call,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Live",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              VerticalDivider(
                color: Colors.grey,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.photo,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Photo",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              VerticalDivider(
                color: Colors.grey,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Check in",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
