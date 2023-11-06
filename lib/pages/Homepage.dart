import 'dart:ui';

import 'package:clonewhatsapp/widgets/Chats.dart';
import 'package:clonewhatsapp/widgets/Status.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBar(
            elevation: 0,
            title: Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text("Whatsapp"),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(top: 12, right: 30),
                child: Icon(
                  Icons.camera_alt_outlined
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 12, right: 15),
                child: Icon(
                  Icons.search
                ),
              ),
              PopupMenuButton(
                padding: EdgeInsets.symmetric(vertical: 20),
                iconSize: 28,
                itemBuilder: (context) =>[
                  PopupMenuItem(
                    child: Text("Promouvoir",style: TextStyle(fontWeight: FontWeight.bold),),
                  ),

                  PopupMenuItem(
                    child: Text("Outils professionnels",style: TextStyle(fontWeight: FontWeight.bold),),
                  ),

                  PopupMenuItem(
                    child: Text("Nouveau groupe",style: TextStyle(fontWeight: FontWeight.bold),),
                  ),

                  PopupMenuItem(
                    child: Text("Nouveau diffusion",style: TextStyle(fontWeight: FontWeight.bold),),
                  ),

                  PopupMenuItem(
                    child: Text("Communautés",style: TextStyle(fontWeight: FontWeight.bold),),
                  ),

                  PopupMenuItem(
                    child: Text("Étiquettes",style: TextStyle(fontWeight: FontWeight.bold),),
                  ),

                  PopupMenuItem(
                    child: Text("Appareils connectés",style: TextStyle(fontWeight: FontWeight.bold),),
                  ),

                  PopupMenuItem(
                    child: Text("Messages importants",style: TextStyle(fontWeight: FontWeight.bold),),
                  ),

                  PopupMenuItem(
                    child: Text("Paramètres",style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                ],
              )
            ],
          ),
        ),

        body: Column(
          children: [
            Container(
              color: Color(0xFF075E55),
              child: TabBar(
                indicatorWeight: 4,
                indicatorColor: Colors.white,
                isScrollable: true,
                labelStyle: TextStyle(fontSize: 16),
                tabs: [
                  Container(
                    height: 20,
                    child: Tab(
                      child: Icon(
                      Icons.home_work
                    ),
                    )
                  ),

                  Container(
                    width: 90,
                    child: Tab(
                      child: Row(
                        children: [
                          Text("Disc",style: TextStyle(fontWeight: FontWeight.bold),),
                          SizedBox(width: 5,),
                          Container(
                            alignment: Alignment.center,
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50)
                            ),
                            child: Text("10",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 11, color: Colors.black,),
                          ),
                          )
                        ],
                      )
                    ),
                  ),

                  Container(
                    width: 85,
                    child: Tab(
                      child: Row(
                        children: [
                          Text("Actus",style: TextStyle(fontWeight: FontWeight.bold),),
                          SizedBox(width: 5,),
                          Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50)
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  Container(
                    width: 85,
                    child: Tab(
                      child: Text("Appels",style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                  )
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: TabBarView(children: [
                //tab 0 : Home
                Container(color: Colors.blue,),
                //tab 1 : disc
                Chats(),
                //tab 2 : status
                Status(),
                //tab 3 : calls
                Container(),
              ],)
            )
          ],
        ),
      ),
    );
  }
}