import 'package:archi_mat/businessdashboard/list/featured.dart';
import 'package:archi_mat/businessdashboard/list/professionallist.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../theme.dart';

class NewFeed extends StatefulWidget {
  const NewFeed({Key key}) : super(key: key);

  @override
  _NewFeedState createState() => _NewFeedState();
}

class _NewFeedState extends State<NewFeed> {
  List photos = [
    'assets/images/card1.png',
    'assets/images/card3.png',
    'assets/images/card4.png',
    'assets/images/card6.png',
    'assets/images/card7.png',
    'assets/images/2.png',
    'assets/images/Image1.png',
    'assets/images/card4.png',
    'assets/images/card6.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme().black,
      appBar: AppBar(
        backgroundColor: AppTheme().white,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: AppTheme().black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Image(
          image: AssetImage('assets/images/archimat.png'),
          width: 150,
          height: 100,
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                FontAwesomeIcons.search,
                color: Colors.black,
              ),
              onPressed: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => ProfilePage()));
              })
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'New Feed',
                    style: TextStyle(color: AppTheme().grey, fontSize: 20),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration: BoxDecoration(
                        color: AppTheme().white,
                        borderRadius: BorderRadius.circular(25)),
                    height: 40,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Flexible(
                          child: TextField(
                            // controller: fname,
                            style: new TextStyle(color: Colors.grey),
                            decoration: InputDecoration(
                                hintText: "Search ",
                                hintStyle: TextStyle(color: Colors.grey),
                                border: InputBorder.none,
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: AppTheme().grey,
                                )
                                // labelText: "First name",
                                // labelStyle: TextStyle(color: Colors.grey),
                                ),
                            onChanged: (text) {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Featured(
                data: photos,
              )
            ],
          ),
        ),
      ),
    );
  }
}
