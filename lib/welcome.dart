import 'package:barista/homepage.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget{
  const WelcomePage({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            child: Expanded(
              child: Stack(
                children: [Container(
                  height: 600,
                   decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/coffee.jpeg"),fit: BoxFit.cover))
                ),
                Positioned(
                  top: 600,
                  left: 10,
                  child: Container(
                    height: 190,
                    width: 390,
                    child:Column(
                      children: [
                        Text("Fall in Love with",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white)),
                        Text("Coffee in Blistful",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white)),
                        Text("Delight",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white)),
                        Text("Welcome to our cozy coffee corner,where",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.white)),
                        Text("every cup is a delightful for you",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.white)),
                        ],
                  ),
                  )
                  ),
                  Positioned(
                    top: 820,
                    left: 15,
                    child: SizedBox(
                      height: 60,
                      width: 380,
                      child: ElevatedButton(onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>Homepage()));
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        backgroundColor: const Color.fromARGB(255, 228, 121, 20),
                      ),
                      child: Text("Get Started",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),))))
        ],
              )
              )  
          ),
        ],
      ),
    );
  }
}