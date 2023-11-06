import 'dart:html';

import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  const Status({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool iconbar = false;

    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Column(
          children: [
            Row(
              children: [
                Text("Statut",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Spacer(),
                PopupMenuButton(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  iconSize: 28,
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      child: Text(
                        "Promouvoir",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    PopupMenuItem(
                      child: Text(
                        "Outils professionnels",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    PopupMenuItem(
                      child: Text(
                        "Nouveau groupe",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    PopupMenuItem(
                      child: Text(
                        "Nouveau diffusion",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    PopupMenuItem(
                      child: Text(
                        "Communautés",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    PopupMenuItem(
                      child: Text(
                        "Étiquettes",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    PopupMenuItem(
                      child: Text(
                        "Appareils connectés",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    PopupMenuItem(
                      child: Text(
                        "Messages importants",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    PopupMenuItem(
                      child: Text(
                        "Paramètres",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Row(
              children: [
                Container(
                  height: 65,
                  width: 65,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.blue, width: 3),
                      image: DecorationImage(
                          image: AssetImage('images/man.jpg'),
                          fit: BoxFit.cover)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Mon statut",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Appuyez pour ajouter un statut",
                        style: TextStyle(color: Colors.black45, fontSize: 16),
                      )
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 1, color: Colors.black.withOpacity(.5)),
                    borderRadius: BorderRadius.circular(50)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.volume_down_sharp),
                      Text(
                        "Booster le statut",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Mises à jour récentes",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black54),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Column(
                children: [
                  for (int i = 0; i < 4; i++)
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          Container(
                            height: 65,
                            width: 65,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border:
                                    Border.all(color: Colors.blue, width: 3),
                                image: DecorationImage(
                                    image: AssetImage('images/man.jpg'),
                                    fit: BoxFit.cover)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Yasainte",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "il y a 6 minutes",
                                  style: TextStyle(
                                      color: Colors.black45, fontSize: 16),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                ],
              ),
            ),
            Container(
              child: ExpansionTile(
              title: Text("Mises à jour vues"),
              trailing: Icon(iconbar
                  ? Icons.keyboard_arrow_up
                  : Icons.keyboard_arrow_down),
              children: [
                Container(
                  child: Column(
                    children: [
                      for (int i = 0; i < 4; i++)
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            children: [
                              Container(
                                height: 65,
                                width: 65,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(
                                        color: Colors.blue, width: 3),
                                    image: DecorationImage(
                                        image: AssetImage('images/man.jpg'),
                                        fit: BoxFit.cover)),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Yasainte",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "il y a 6 minutes",
                                      style: TextStyle(
                                          color: Colors.black45, fontSize: 16),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
              ],
              onExpansionChanged: (bool expendad) {},
              controlAffinity: ListTileControlAffinity.trailing,
            ),
            ),
            

            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      
                      Text("Chaînes",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      Spacer(),
                      Icon(Icons.add)
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(top:15.0),
                          child: Text("Restez informée des sujets qui vous intéressents. Les chaines que vous suivez apparaitront ici",style: TextStyle(fontSize: 18,color: Colors.black.withOpacity(.5))),
                        ),
                      )
                    ],
                  ),

                ],

              ),
            ),

            Container(
              height: 100,
              width: 100,
              color: Colors.red,
              child: Text(
                "dgff"
              ),
              
            )
          ],
        ),
      ),
    );
  }
}
