import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/model/pub.dart';
import 'package:instagram/model/story.dart';
import 'package:instagram/model/user.dart';
import 'package:instagram/screen/list_publication.dart';
import 'package:instagram/screen/list_story.dart';
import 'package:instagram/screen/publication_screen.dart';
import 'package:instagram/screen/story_screen.dart';

class HomePage extends StatelessWidget {
  static Route<dynamic> route() => MaterialPageRoute(
    builder: (context) => HomePage(),
  );

  @override
  Widget build(BuildContext context) {
    User x = new User("Feukam guy","assets/images/ava-1.png");
    User a = new User("Alexandre foisier","assets/images/ava-2.png");
    User b= new User("Patrick Mboma","assets/images/ava-3.png");
    User h= new User("Mimba Worker","assets/images/ava-4.png");
    User g= new User("Tenor Officiel","assets/images/avatar-1.jpg");
    User f= new User("Samuel Etoo","assets/images/avatar-2.jpg");
    User e= new User("joella","assets/images/avatar-13.jpg");
    User i= new User("Malla Jeanne","assets/images/avatar-4.jpg");
    User d= new User("miranda","assets/images/avatar-5.jpg");
    User c = new User("Kamga joel","assets/images/avatar-6.jpg");
    User y= new User("joel","assets/images/avatar-1.jpg");


    Pub p =  Pub(x,"assets/images/ava-1.png", 15, 45);
    Pub p1 =  Pub(y,"assets/images/ava-2.png", 125, 6);
    Pub p2 =  Pub(a,"assets/images/ava-3.png", 15, 2);
    Pub p3 =  Pub(b,"assets/images/ava-4.png", 5, 45);
    Pub p4 =  Pub(c,"assets/images/avatar-10.jpg", 12, 45);
    Pub p5 =  Pub(d,"assets/images/avatar-5.jpg", 11, 3);
    Pub p6 =  Pub(c,"assets/images/avatar-8.jpg", 15, 5);
    Pub p7 =  Pub(y,"assets/images/avatar-2.jpg", 12, 75);
    Pub p8 =  Pub(i,"assets/images/avatar-6.jpg", 55, 95);
    Pub p9 =  Pub(h,"assets/images/avatar-5.jpg", 32, 25);
    Pub p10 =  Pub(g,"assets/images/avatar-4.jpg", 5, 75);
    Pub p11=  Pub(f,"assets/images/avatar-11.jpg", 0, 45);
    Pub p12=  Pub(e,"assets/images/avatar-2.jpg", 1, 4);
    Pub p13=  Pub(d,"assets/images/avatar-1.jpg", 3, 5);
    List<Story> list = [
      Story("assets/images/ava-1.png","Guy Laroche"),
      Story("assets/images/ava-2.png","marcelin"),
      Story("assets/images/ava-3.png","marina"),
      Story("assets/images/ava-4.png","fRANK Massa"),
      Story("assets/images/avatar-1.jpg","The Rock"),
      Story("assets/images/cafe.jpg","P SIAKAM"),
      Story("assets/images/francais.jpg","Fabrice takam"),
      Story("assets/images/ava-2.png","Alex"),
      Story("assets/images/ava-1.png","Joel Embiid"),
      Story("assets/images/work.jpg","Alex Song"),

    ];
    List<PublicationScreen> pubs = [
      PublicationScreen(publication:p1,),
      PublicationScreen(publication:p2,),
      PublicationScreen(publication:p3,),
      PublicationScreen(publication:p4,),
      PublicationScreen(publication:p5,),
      PublicationScreen(publication:p6,),
      PublicationScreen(publication:p13,),
      PublicationScreen(publication:p12,),
      PublicationScreen(publication:p11,),
      PublicationScreen(publication:p10,),
      PublicationScreen(publication:p9,),
      PublicationScreen(publication:p8,),
      PublicationScreen(publication:p7,),
      PublicationScreen(publication:p6,),
    ];
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.camera_alt,color: Colors.black,), onPressed: null),
        title: Text("Instagram",style: TextStyle(color: Colors.black),),
        actions: [
          IconButton(icon: Icon(Icons.send,color: Colors.black,), onPressed: null)
        ],
        backgroundColor: Colors.white,
      ),
      body: Column(
          children: [
            ListStory(stories: list,),
            Divider(height: 8,color: Colors.black,),
            ListPublication(list: pubs,)
          ],
        ),

    );
  }
}
