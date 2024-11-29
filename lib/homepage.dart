import 'package:flutter/material.dart';

class Homepage extends StatelessWidget{
  const Homepage({super.key});
  Widget build(BuildContext context){
    List <Map> imageList=[
    {
      "image":"assets/images/coffe1.jpg",
      "name":"Dalgona \n Macha",
      "price":"Rs:299"
    },
    {
      "image":"assets/images/coffee2.jpg",
      "name":"Bursting Blueberry",
      "price":"Rs:249"
    },
    {
      "image":"assets/images/coffee3.jpg",
      "name":"Cinnamon & Cocoa",
      "price":"Rs:99"
    },
    {
      "image":"assets/images/coffee4.png.jpeg",
      "name":"Marshmello & Cocoa",
      "price":"Rs:99"
    },
        {
      "image":"assets/images/coffee5.jpg",
      "name":"Drizzled with Caramel",
      "price":"Rs:199"
    },
        {
      "image":"assets/images/coffee6.jpeg",
      "name":"Dalgona Whipped Macha",
      "price":"Rs:299"
    },
    ];
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 35, 35, 35),
      body: Column(
        children: [
          Container(
            color: const Color.fromARGB(255, 35, 35, 35),
            height: 190,
            width: 500,
            child:
              Stack(
                children:[ 
                  Positioned(
                  top: 20,
                  left: 15,
                  child: Text("deja",style: TextStyle(fontSize: 45,color: Colors.grey),)),

                  Positioned(
                  top: 52,
                  left: 25,
                  child: Text("Brew",style: TextStyle(fontSize: 55,color: Colors.white),)),

                  Positioned(
                  top: 40,
                  right: 20,
                  child:Container(
                  height:60,
                  width:60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image:AssetImage("assets/images/face2.jpg"),fit: BoxFit.cover),
                  color: const Color.fromARGB(255, 29, 39, 18),
                      ),
                    )),

                  Positioned(
                  top: 130,
                  left: 20,
                  child: SizedBox(
                    height: 40,
                    width: 370,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                      ),
                      onPressed: (){}, child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.search,color: Colors.white,size: 35,),
                          SizedBox(width: 10,),
                          Text("Browse your favorite coffee...",style: TextStyle(fontSize: 20,color: const Color.fromARGB(255, 90, 90, 90)),)
                        ],
                      )),
                  ),),
                ]
              ),
          ),

          
          Expanded(
            child: GridView.builder(
              itemCount: 6,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 0 ,
              crossAxisSpacing: 0,
              childAspectRatio: 0.6
              ),
              itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.only(left: 10.0,top: 10,right: 10,bottom: 10),
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: const Color.fromARGB(255, 65, 65, 65)),
                    child: Column(
                      children: [
                        Container(
                          height: 160,
                          width: 170,
                            decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(image: AssetImage(imageList[index]["image"]),
                            fit: BoxFit.cover
                            )),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(imageList[index]["name"],style: TextStyle(fontSize: 19,color: const Color.fromARGB(255, 255, 255, 255),fontWeight: FontWeight.bold),),

                            SizedBox(height: 30,),
                            
                            Container(
                              height: 45,
                              width: 140,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: const Color.fromARGB(255, 92, 92, 92)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(imageList[index]["price"],style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                                  SizedBox(width: 5,),
                                  Container(
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
                                      ),
                                      onPressed: (){},
                                      child:Center(child: Text("+",style: TextStyle(fontSize: 30,color: Colors.black),))
                                      ),
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                );
              }
              ),
          ),
        ]
          ),
    );
  }
}