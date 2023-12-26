import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavoritesPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const Text("FAVORITES",style: TextStyle(color: Colors.black),),

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
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        selectedFontSize: 10,
        unselectedItemColor: Colors.blue,
        unselectedFontSize: 10,
        showUnselectedLabels: true,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.blue,),
            label: 'Calls',
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
      ),

      body:Container(

        padding: const EdgeInsets.fromLTRB(10,20,10,0),
        child: SingleChildScrollView(
              child: Column(

                  children: [
                    Container(
                      child: Row(
                        children: [
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
                        ],
                      ),
                    ),


                  ]



      ) ,
    ),),
    );
  }

}