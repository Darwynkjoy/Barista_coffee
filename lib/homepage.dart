import 'package:flutter/material.dart';

class Homepage extends StatelessWidget{
  const Homepage({super.key});
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            child: Column(
              children: [
                Text("deja",style: TextStyle(fontSize: 20,color: Colors.white),),
                Text("deja",style: TextStyle(fontSize: 20,color: Colors.white),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}