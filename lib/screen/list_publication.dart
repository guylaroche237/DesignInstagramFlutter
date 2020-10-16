import 'package:flutter/cupertino.dart';
import 'package:instagram/screen/publication_screen.dart';

class ListPublication extends StatelessWidget{
  final List<PublicationScreen> list;

  const ListPublication({Key key, this.list}) : super(key: key);
  @override
  Widget build(BuildContext context) {
   return  Container(
     height: MediaQuery.of(context).size.height*0.57,
     child: ListView.builder(
       itemCount: list.length,
       itemBuilder: (context,index){
         return list[index];
       },

     ),
   );
  }

}