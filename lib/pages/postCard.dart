import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  const PostCard({
    Key? key,
    required this.mainColor,
    required this.userImages,
    required this.texts,
    required this.feedImages,
    required this.index,
  }) : super(key: key);

  final Color mainColor;
  final List<String> userImages;
  final List<String> texts;
  final List<String> feedImages;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      color: mainColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage("${userImages[index]}"))),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${texts[index]}",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "1 hr ago",
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey,
                        fontWeight: FontWeight.normal),
                  )
                ],
              ),
              Spacer(),
              Icon(
                Icons.more_horiz,
                color: Colors.grey,
                size: 28,
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            "Some text here",
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
          Container(
            width: double.infinity,
            height: 210,
            color: Colors.red,
            margin: EdgeInsets.symmetric(vertical: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Image.asset(
                    feedImages[index],
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                    child: Image.asset(
                  feedImages[index + 1],
                  fit: BoxFit.cover,
                ))
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 36,
            child: Row(
              children: [
                Container(
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 1, color: Colors.white),
                      color: Colors.blue),
                  child: Icon(
                    Icons.thumb_up,
                    color: Colors.white,
                    size: 12,
                  ),
                ),
                Transform.translate(
                  offset: Offset(-5, 0),
                  child: Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 1, color: Colors.white),
                        color: Colors.red),
                    child: Icon(
                      Icons.favorite,
                      color: Colors.white,
                      size: 13,
                    ),
                  ),
                ),
                Spacer(),
                Text(
                  "400 comments",
                  style: TextStyle(
                      fontSize: 11,
                      color: Colors.grey,
                      decoration: TextDecoration.underline),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
