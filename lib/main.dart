import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    String coffetittle="Coffee is one of the most popular beverages in the world,consumed by billions of people every day.";
    String coffeArticla="Most adults can safely consume up to 400 milligrams of caffeine per day, which is about four cups of coffee. However, it is important to note that caffeine sensitivity varies from person to person.";
    return MaterialApp(home: Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(color: Colors.white,height: 50,),
          Text("About Us",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.black),),
          Divider(color: Colors.green,thickness: 3,height: 2,indent: 140,endIndent: 140,),
          SizedBox(height: 13,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: Text(coffetittle,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 13),),
          ),
          SizedBox(height: 20,),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Image.asset("images/coffe.jpeg")),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text("How much coffee is safe to drink?",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 8),
                     child: Text(coffeArticla,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 13),),
                   ),
                  SizedBox(height: 4,),
                  Container(alignment: Alignment.center,
                    width: 100,height: 30,decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.horizontal(right: Radius.circular(30),left:Radius.circular(30) )

                  ),
                  child: Text("Read More",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),),
                ],),
              )
            ],
          )
        ],
      ),

    ),
      debugShowCheckedModeBanner: false,


    );
  }
}
