import 'package:flutter/material.dart';
import 'package:instagram/model/pub.dart';

class PublicationScreen extends StatelessWidget{
  final Pub publication;

  const PublicationScreen({Key key, this.publication}) : super(key: key);
  @override
  Widget build(BuildContext context) {
   return Container(
     padding: EdgeInsets.all(10),
     child: Column(
       children: [
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Container(
               child: Row(
                 children: [
                   CircleAvatar(
                     backgroundImage: AssetImage(publication.user.profil),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(10.0),
                     child: Text(publication.user.username,style: TextStyle(fontWeight: FontWeight.bold),),
                   )
                 ],
               ),
             ),
             IconButton(icon: Icon(Icons.more_vert), onPressed: null)
           ],
         ),
         Container(
           height: MediaQuery.of(context).size.height*0.6,
           decoration: new BoxDecoration(
             image: new DecorationImage(
                 image: new AssetImage(publication.pub,),
                 fit: BoxFit.cover

             ),


           ),

         ),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Container(
               child: Row(
                 children: [
                   IconButton(icon: Icon(Icons.favorite_border), onPressed: null),
                   IconButton(icon: Icon(Icons.comment), onPressed: null),
                   IconButton(icon: Icon(Icons.share), onPressed: null),
                 ],
               ),
             ),
             IconButton(icon: Icon(Icons.bookmark_border), onPressed: null)
           ],
         ),
         Container(
           alignment: Alignment.topLeft,
           child: Text("Aimé par ${publication.nbrelike} Personnes",style: TextStyle(fontWeight: FontWeight.bold),),
         ),
         Container(
           alignment: Alignment.topLeft,
           child: Text("Voir les ${publication.nbrecommentaire} commentaires",style: TextStyle(fontSize: 10,color: Colors.blueGrey),),
         )
       ],
     ),
   );
  }

}