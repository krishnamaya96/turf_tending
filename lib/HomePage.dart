import 'dart:html';

import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:turf_booking/Register.dart';
import 'package:turf_booking/favorites.dart';
import 'package:turf_booking/orders.dart';

class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool isFavorite = false;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const Text("HOME",style: TextStyle(color: Colors.black),),

        leading: Container(
          padding: const EdgeInsets.all(8),
          child: CircleAvatar(
            backgroundImage: AssetImage("images/girl1.jpg"),
          ),
        ),

         backgroundColor: Colors.white,
        toolbarHeight: 70,
        toolbarOpacity: 0.8,


      ),
      bottomNavigationBar: Theme(
      data: ThemeData(
        canvasColor: Colors.white,
      ),
      child: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        selectedFontSize: 10,
        unselectedItemColor: Colors.blue,
        unselectedFontSize: 10,
        showUnselectedLabels: true,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.blue,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border,color: Colors.blue,),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_travel,color: Colors.blue,),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.perm_identity,color: Colors.blue,),
            label: 'Profile',
          ),
        ],
        onTap: (i){
          if(i == 0){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  HomePage()),
            );
          }
          if(i == 1){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  FavoritesPage()),
            );
          }
          if(i == 2){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  OrdersPage()),
            );
          }
          if(i == 3){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  Register()),
            );
          }
        },
      ),
      ),
      body: Container(
        // width: ScreenUtil().,
        // height: ScreenUtil().screenHeight,
        padding: const EdgeInsets.fromLTRB(10,0,10,0),
            child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(10,20,0,0),
                  width: ScreenUtil().setWidth(355),
                  height:ScreenUtil().setHeight(70),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
                        height: 50,width: 70,
                        child: Column(
                          children: [
                             Image(image: AssetImage("images/Vector.png"),),
                            SizedBox(height: 5,),
                            Text("Football",style: GoogleFonts.firaSansExtraCondensed(color: Colors.grey,fontSize: 11),),
                          ],
                        ),
                      ),

                      SizedBox(width: 10,),

                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
                        height: 50,width: 70,
                        child: Column(
                          children: [
                            Image(image: AssetImage("images/vector1.png")),
                            SizedBox(height: 5,),
                            Text("Cricket",style: GoogleFonts.firaSansExtraCondensed(color: Colors.grey,fontSize: 11),),
                          ],
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
                        height: 50,width: 70,
                        child: Column(
                          children: [
                            Image(image: AssetImage("images/vector2.png")),
                            SizedBox(height: 5,),
                            Text("Cricket",style: GoogleFonts.firaSansExtraCondensed(color: Colors.grey,fontSize: 11),),
                          ],
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
                        height: 50,width: 70,
                        child: Column(
                          children: [
                            Image(image: AssetImage("images/vector3.png")),
                            SizedBox(height: 5,),
                            Text("Cricket",style: GoogleFonts.firaSansExtraCondensed(color: Colors.grey,fontSize: 11),),
                          ],
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
                        height: 50,width: 70,
                        child: Column(
                          children: [
                            Image(image: AssetImage("images/vector1.png")),
                            SizedBox(height: 5,),
                            Text("Cricket",style: GoogleFonts.firaSansExtraCondensed(color: Colors.grey,fontSize: 11),),
                          ],
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
                        height: 50,width: 70,
                        child: Column(
                          children: [
                            Image(image: AssetImage("images/vector2.png")),
                            SizedBox(height: 5,),
                            Text("Cricket",style: GoogleFonts.firaSansExtraCondensed(color: Colors.grey,fontSize: 11),),
                          ],
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
                        height: 50,width: 70,
                        child: Column(
                          children: [
                            Image(image: AssetImage("images/vector3.png")),
                            SizedBox(height: 5,),
                            Text("Cricket",style: GoogleFonts.firaSansExtraCondensed(color: Colors.grey,fontSize: 11),),
                          ],
                        ),
                      ),

                    ],

                  ),

                ),
                SizedBox(height: 20,),

                Container(
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(5,0,0,0),
                        //height: 15,
                        width: MediaQuery.of(context).size.width - 100,
                        child: SearchBar(
                          shape: MaterialStateProperty.all(const ContinuousRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)))),

                            trailing: [
                            IconButton(
                                 icon: const Icon(Icons.search),
                                 color: Colors.grey,
                                 onPressed: () {},
                         ),],

                          hintText: "Search here",
                          hintStyle: MaterialStateProperty.all(const TextStyle(color: Colors.grey,fontSize: 13)),
                        ),

                      ),
                      SizedBox(width: 10,),
                      Container(
                        height: 50,
                        width: 50,
                        child: Icon(Icons.filter_alt_outlined,color: Colors.grey,),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),),
                    ],
                  ),
                ),

                   SizedBox(height: 20,),

                     Container(
                       height: 600,
                          width:MediaQuery.of(context).size.width ,
                          child: ListView.builder(
                           itemCount: 5,
                             itemBuilder: (BuildContext context, int index){
                             return Column(
                               children: <Widget> [
                                 Container(
                                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
                                  // padding: const EdgeInsets.fromLTRB(5,5,0,5),
                                   child: Column(
                                     children: [
                                       Row(
                                         mainAxisAlignment: MainAxisAlignment.start,
                                         crossAxisAlignment: CrossAxisAlignment.start,
                                         children: [
                                           Container(
                                             height: 207,
                                             width:166,
                                             decoration: BoxDecoration(
                                               image: const DecorationImage(
                                                   image: AssetImage("images/football.png"),fit: BoxFit.cover),
                                               borderRadius: BorderRadius.circular(20),

                                             ),
                                               //child: Image.asset("images/cricket.png")

                                              ),
                                           //SizedBox(width: 1,),
                                           Container(
                                             padding: const EdgeInsets.all(5),
                                               child: Column(
                                             children: [
                                               Text("ABC Soccer Club\n Kakkanad",style: GoogleFonts.firaSansExtraCondensed(),),

                                               SizedBox(height: 7,),

                                               Row(
                                                 mainAxisAlignment: MainAxisAlignment.start,
                                               // crossAxisAlignment: CrossAxisAlignment.start,
                                                 children: [
                                                   Icon(Icons.female,size: 12,color: Colors.blue,),
                                                   Text("kakkanad infopark \ncampus",
                                                     style: GoogleFonts.firaSansExtraCondensed(color: Colors.blue,fontSize: 10),)
                                                 ],
                                               ),
                                               SizedBox(height: 15,),

                                               Container(
                                                 padding: const EdgeInsets.fromLTRB(25,0,0,0),
                                                 child: Text("Lorem ipsum dolor sit amet  \n consectetur. Consequat\n fames pellentesque \n elementum.",
                                                 style: GoogleFonts.firaSansExtraCondensed(fontSize: 11,color: Colors.grey),),
                                               ),

                                               SizedBox(height: 20,),

                                               Row(
                                                 children: [
                                                   Icon(Icons.timelapse,color: Colors.green,size: 15,),
                                                   SizedBox(width: 5,),
                                                   Text("Mon - sun 4am - 12am",style: GoogleFonts.firaSansExtraCondensed(color: Colors.green,fontSize: 11),)
                                                 ],
                                               )

                                             ],
                                           )),
                                           SizedBox(width: 1,),

                                        Expanded(
                                          child:Container(
                                            padding: const EdgeInsets.fromLTRB(5,10,5,5),
                                            child: FavoriteButton(
                                            iconSize: 30,
                                           // isFavorite: true,
                                            valueChanged: (_isFavorite) {
                                              //print('Is Favorite : $_isFavorite');
                                            },
                                          ),
                                          // child:    IconButton(
                                          //    icon: Icon(
                                          //      isFavorite ? Icons.favorite : Icons.favorite_border,
                                          //      color: isFavorite ? Colors.red : Colors.red,
                                          //
                                          //    ),
                                          //    onPressed: () {
                                          //      setState(() {
                                          //       isFavorite = !isFavorite;
                                          //      });
                                          //      },
                                          //  ),
                                          ) )


                                         ],
                                       ),

                                     ],

                                   ),
                                 ),
                                 SizedBox(height: 15,)
                               ],
                              );
                           //  return Column(
                           //   children:<Widget> [
                           //     Container(
                           //       decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
                           //       padding: const EdgeInsets.fromLTRB(5,5,5,5),
                           //       child: Row(
                           //         mainAxisAlignment: MainAxisAlignment.start,
                           //         crossAxisAlignment: CrossAxisAlignment.start,
                           //         children: [
                           //
                           //           Image.asset("images/cricket.png"),
                           //           Spacer(),
                           //           Text("ABC Soccer Club\n Kakkanad",),
                           //           Spacer(),
                           //           IconButton(
                           //             icon: Icon(
                           //               isFavorite ? Icons.favorite : Icons.favorite_border,
                           //               color: isFavorite ? Colors.red : null,
                           //             ),
                           //             onPressed: () {
                           //               setState(() {
                           //                 // Toggle the favorite state
                           //                 isFavorite = !isFavorite;
                           //               });
                           //             },
                           //           ),
                           //
                           //
                           //         ],
                           //       ),
                           //
                           //     ),
                           //
                           //     SizedBox(height: 20,)
                           //   ],
                           //
                           //
                           //
                           // );
                           }),



                    ),



                // SingleChildScrollView(
                //   child: ListView.builder(itemBuilder: (BuildContext context, int index) {
                //     Text("hello");
                //   }),
                // )

              ],
            ),


            ),

      )

    );
  }
}
