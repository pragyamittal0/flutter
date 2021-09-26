import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(MyApp());

}
class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);
        List<String> images = [
          "https://th.bing.com/th/id/OIP.z9DgCgl3z9jhbiJDMuwsOAHaEK?w=302&h=180&c=7&r=0&o=5&dpr=1.09&pid=1.7",
          "https://th.bing.com/th/id/OIP.5SjKih2sQZ_ysAcRIOzJhgHaEo?w=260&h=180&c=7&r=0&o=5&dpr=1.09&pid=1.7",
          "https://th.bing.com/th/id/OIP.SRWiDbK6HEikgEyC0LsCWwHaEo?w=315&h=197&c=7&r=0&o=5&dpr=1.09&pid=1.7",
          "https://th.bing.com/th/id/OIP.z9DgCgl3z9jhbiJDMuwsOAHaEK?w=302&h=180&c=7&r=0&o=5&dpr=1.09&pid=1.7",
          "https://th.bing.com/th/id/OIP.5SjKih2sQZ_ysAcRIOzJhgHaEo?w=260&h=180&c=7&r=0&o=5&dpr=1.09&pid=1.7",
          "https://th.bing.com/th/id/OIP.SRWiDbK6HEikgEyC0LsCWwHaEo?w=315&h=197&c=7&r=0&o=5&dpr=1.09&pid=1.7",
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       home: Scaffold(
         appBar: AppBar(
           title: Text("GridView"),
           backgroundColor: Colors.black12,
         ),
         body: GridView.builder(
           itemCount: images.length,
             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
               crossAxisCount: 2,
               mainAxisSpacing: 10.0,
               crossAxisSpacing: 13.0,
             ),
             itemBuilder: (BuildContext context , int index){
             return Container(
               height: 400,
               width: 200,
               child: Image.network(images[index]),
             );
             }
         ),
       ),
    );
  }
}
