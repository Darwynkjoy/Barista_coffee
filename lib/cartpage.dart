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
                child: Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 10.0)),
                    Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color.fromARGB(255, 255, 254, 254),
                        image: DecorationImage(image: AssetImage("assets/images/coffee.jpeg"),fit: BoxFit.cover)
                        ),
                      ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.only(top: 15.0)),
                      Text("Cappuccino",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white),),
                      Text("Dalgona Macha",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white),),
                      SizedBox(height: 10,),
                      Text("rs.299",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white),),
                    ],
                  ),
                  SizedBox(width: 50,),
                  Container(
                    height: 35,
                    width: 95,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: const Color.fromARGB(255, 69, 69, 69)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 35,
                          width: 35,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                            ),
                            onPressed: (){}, child: Center(child: Text("+",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),)),)),
                        
                        Text("1",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),

                        SizedBox(
                          height: 35,
                          width: 35,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                            ),
                            onPressed: (){}, child: Center(child: Text("-",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),)),))
                      ],
                    ),
                  ),
                  ],
                ),
                height: 110,
                width: 200,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: const Color.fromARGB(255, 82, 82, 82)),
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