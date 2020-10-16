import 'package:flutter/cupertino.dart';
import 'package:instagram/model/story.dart';
import 'package:instagram/screen/story_screen.dart';

class ListStory extends StatelessWidget{
  final List<Story> stories;

  const ListStory({Key key, this.stories}) : super(key: key);
  @override
  Widget build(BuildContext context) {
   return Container(
     height: MediaQuery.of(context).size.height*0.2,
     child: ListView.builder(
         scrollDirection: Axis.horizontal,
         itemCount: stories.length,
         itemBuilder: (context,index){
           return StoryScreen(story: stories[index],);
       },
     ),
   );
  }

}