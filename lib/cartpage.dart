import 'package:flutter/material.dart';

class Cartpage extends StatelessWidget{
  const Cartpage({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
    
    body:
    Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 40,bottom: 10),
          child: Text("Cart",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
        ),
        Expanded(
          child: ListView.separated(
            padding: EdgeInsets.all(15),
            itemBuilder: (context,index){
              return Container(
                height: 100,
                width: 200,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: const Color.fromARGB(255, 82, 82, 82)),
              );
            },
            separatorBuilder: (context,index){
              return Padding(padding: EdgeInsets.all(10));
            },
            itemCount: 3,
            )
        ),
      ]
    ),
    );
  }
}