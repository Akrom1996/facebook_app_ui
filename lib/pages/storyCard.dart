import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  final backgroundImage;
  final userImage;
  final text;
  const StoryCard({
    Key? key,
    required this.backgroundImage,
    required this.userImage,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 3,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage("$backgroundImage"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(0.7),
                Colors.black.withOpacity(0.2),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("$userImage")),
                  shape: BoxShape.circle,
                  border: Border.all(width: 2, color: Colors.blue),
                ),
              ),
              Text(
                "$text",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
