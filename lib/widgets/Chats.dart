import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
          children: [
            for (int i = 1; i < 11; i++)
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: Container(
                      margin: EdgeInsets.symmetric(vertical: 12),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(
                              'images/man.jpg',
                              height: 65,
                              width: 65,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Mac Innov Africa",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 15),
                                ),
                                Text(
                                  "Bonjour à tous",
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 15),
                                )
                              ],
                            ),
                          ),
                          Spacer(),
                          Column(
                            children: [
                              Text("13:16"),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Color(0xFF0FCE5E),
                                ),
                                child: Text(
                                  '26',
                                  textAlign: TextAlign.center,
                                ),
                              )
                            ],
                          )
                        ],
                      )),
                ),
              )
          ],
        ),
      
    );
  }
}
