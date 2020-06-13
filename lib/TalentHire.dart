//import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TalentHire extends StatefulWidget {
  @override
  _TalentHireState createState() => _TalentHireState();
}

class _TalentHireState extends State<TalentHire> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: FlutterLogo(
          colors: Colors.green,
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back,),
          onPressed: (){},
          color: Colors.grey,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.menu,),
            onPressed: (){},
            color: Colors.grey,
          ),
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                color: Colors.white,
                height: 100,
                alignment: Alignment.center,
                child: Text(
                  "Get Coaching",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(25.0, 90.0, 25.0, 10.0),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2.0
                    ),
                  ]
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(25.0, 25.0, 5.0, 5.0),
                          child: Text(
                            "YOU HAVE",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(25.0, 40.0, 5.0, 25.0),
                          child: Text(
                            "206",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 40.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Container(
                        height: 50.0,
                        width: 125.0,
                        decoration: BoxDecoration(
                          color: Colors.greenAccent[100],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Center(
                          child: Text(
                            "Buy more",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 40.0,
          ),
          Container(
            padding: EdgeInsets.only(left: 25.0, right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "MY COACHES",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0
                  ),
                ),
                Text(
                  "VIEW PAST SESSIONS",
                  style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0
                  ),
                ),
              ],
            ),
          ),
          GridView.count(
            crossAxisCount: 2,
            primary: false,
            shrinkWrap: true,
            crossAxisSpacing: 2.0,
            mainAxisSpacing: 4.0,
            children: <Widget>[
              _buildCard("Tom", "Available", 1),
              _buildCard("Tom", "Away", 1),
              _buildCard("Tom", "Available", 1),
              _buildCard("Tom", "Away", 1),
              _buildCard("Tom", "Available", 1),
              _buildCard("Tom", "Away", 1),
              _buildCard("Tom", "Available", 1),
              _buildCard("Tom", "Away", 1),
              _buildCard("Tom", "Available", 1),
              _buildCard("Tom", "Away", 1),
            ],
          ),
        ],
      ),
    );
  }
  Widget _buildCard(String name, String status, int cardIndex) {
    return Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0)
        ),
        elevation: 7.0,
        child: Column(
          children: <Widget>[
            SizedBox(height: 30.0),
            Stack(
                children: <Widget>[
                  Container(
                    height: 60.0,
                    width: 60.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.green,
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://pixel.nymag.com/imgs/daily/vulture/2017/06/14/14-tom-cruise.w700.h700.jpg'
                            )
                        )
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 40.0),
                    height: 20.0,
                    width: 20.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: status == 'Away' ? Colors.amber : Colors.green,
                        border: Border.all(
                            color: Colors.white,
                            style: BorderStyle.solid,
                            width: 2.0
                        )
                    ),
                  )
                ]),
            SizedBox(height: 8.0),
            Text(
              name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              status,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12.0,
                  color: Colors.grey
              ),
            ),
            SizedBox(height: 15.0),
            Expanded(
                child: Container(
                    width: 175.0,
                    decoration: BoxDecoration(
                      color: status == 'Away' ? Colors.grey: Colors.green,
                      borderRadius: BorderRadius.only
                        (
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0)
                      ),
                    ),
                    child: Center(
                      child: Text('Request',
                        style: TextStyle(
                            color: Colors.white,
                        ),
                      ),
                    )
                )
            )
          ],
        ),
        margin: cardIndex.isEven? EdgeInsets.fromLTRB(10.0, 0.0, 25.0, 10.0):EdgeInsets.fromLTRB(25.0, 0.0, 5.0, 10.0)
    );
  }
}
