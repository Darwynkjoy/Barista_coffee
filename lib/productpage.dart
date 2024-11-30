import 'package:barista/cartpage.dart';
import 'package:flutter/material.dart';

class Productpage extends StatelessWidget{
  const Productpage({super.key});
  @override
  Widget build(BuildContext context){
    Future.delayed(Duration(seconds: 5),(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Cartpage()));
    });
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 15,left: 15,right: 15),
              child: Stack(
                children: [
                  Container(
                    height: 450,
                    width:400,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/Coffeeincup.jpg"),
                        fit: BoxFit.cover,),
                        borderRadius: BorderRadius.circular(40)
                        )
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: CircleAvatar(backgroundColor: Colors.transparent,
                      child: IconButton(onPressed: (){},
                      icon: Icon(Icons.arrow_back)),
                      foregroundColor: Colors.white,
                      ),
                  )
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 15.0,right: 15.0,top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text("Cappachino",
                        style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,)),
                
                        SizedBox(width: 180,),
                
                      Icon(Icons.favorite,color: Colors.red,size: 35,),
                  ],
                ),
                SizedBox(height: 10),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Drizzeled with Caramel    ",
                        style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,)),

                      Icon(Icons.star,color: Colors.yellow,size: 20,),

                      Text("+5",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)
                    ],
                  ),

                  //SizedBox(height: 10),
                  
                  Text("a single espresso short poured into hot foamy milk, with the surface topped with Milky sweetened cocoa powder and drizzeled with scrumptious caramel syrup ....E",
                    style: TextStyle(
                    fontSize: 17,
                    color: Colors.white,)),

                  SizedBox(height: 20,),

                  Text("Choice of Milk",
                    style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,)),

                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 40,
                        width: 110,
                        child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                          backgroundColor: const Color.fromARGB(255, 255, 236, 175),),
                        onPressed: (){},
                        child: Text("Oat Milk",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),))),
                        
                      SizedBox(
                        height: 40,
                        width: 110,
                        child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                          backgroundColor: const Color.fromARGB(255, 255, 236, 175),),
                        onPressed: (){},
                        child: Text("Soy Milk",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),))),

                      SizedBox(
                        height: 40,
                        width: 145,
                        child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                          backgroundColor: const Color.fromARGB(255, 255, 236, 175),),
                        onPressed: (){},
                        child: Text("Almond Milk",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),))),
                    ],
                  ),
                  SizedBox(height: 80,width: 150,),

                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Price",
                            style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,)),
                          Text("Rs.249",
                            style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,)),
                        ],
                      ),
                      SizedBox(width: 20),

                      SizedBox(
                        height: 50,
                        width: 290,
                        child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                          backgroundColor: const Color.fromARGB(255, 255, 236, 175),
                          ),
                        onPressed: (){},
                        child: Text("BUY NOW",style: TextStyle(fontSize: 17,color: Colors.black),)))
                    ],
                  )
              ],
            )),
            ]
      ),
    );
  }
}