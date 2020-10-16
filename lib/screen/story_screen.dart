import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/model/story.dart';
class StoryScreen extends StatelessWidget{
  final Story story;

  const StoryScreen({Key key, this.story}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.only(top: 10,bottom: 10),
            child: CircleAvatar(
              backgroundImage: AssetImage(story.image),
            ),
          ),
          Container(
            child: Text(story.username,style: TextStyle(fontWeight: FontWeight.bold),),
          )
        ],
      ),
    );
  }
}