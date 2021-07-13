import 'package:archi_mat/businessdashboard/list/arlist.dart';
import 'package:archi_mat/businessdashboard/list/categorylist.dart';
import 'package:archi_mat/businessdashboard/list/featured.dart';
import 'package:archi_mat/businessdashboard/list/material.dart';
import 'package:archi_mat/businessdashboard/list/professionallist.dart';
import 'package:archi_mat/businessdashboard/list/shoplist.dart';
import 'package:archi_mat/pages/newfeed.dart';
import 'package:archi_mat/pages/search.dart';
import 'package:archi_mat/slider/slider.dart';
import 'package:archi_mat/theme.dart';
import 'package:archi_mat/util/widgets/title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../businessdashboard/list/productlist.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int i = 0;
  List professional = [
    {'image': 'assets/images/card2.png', 'name': 'Architects'},
    {'image': 'assets/images/card10.png', 'name': 'Interior Designer'},
    {'image': 'assets/images/card9.png', 'name': 'Engineer'},
    {'image': 'assets/images/card8.png', 'name': 'Contractors'},
  ];
  List professional1 = [
    {'image': 'assets/images/professional1.png', 'name': 'Architects'},
    {'image': 'assets/images/professional.png', 'name': 'Interior Designer'},
    {'image': 'assets/images/professional3.png', 'name': 'Engineer'},
    {'image': 'assets/images/professional2.png', 'name': 'Contractors'},
    {'image': 'assets/images/professional1.png', 'name': 'Architects'},
    {'image': 'assets/images/professional.png', 'name': 'Interior Designer'},
    {'image': 'assets/images/professional3.png', 'name': 'Engineer'},
    {'image': 'assets/images/professional2.png', 'name': 'Contractors'},
  ];
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
      appBar: AppBar(
        backgroundColor: AppTheme().white,
        leading: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            // padding: EdgeInsets.only(left: 10),
            child: SvgPicture.asset(
              'assets/images/menu.svg',
              color: AppTheme().l1black,
              width: 20,
            ),
          ),
        ),
        // leading: IconButton(
        //   icon: Icon(
        //     Icons.menu,
        //     color: AppTheme().black,
        //   ),
        //   onPressed: () {
        //     // Navigator.pop(context);
        //     Navigator.push(
        //         context, MaterialPageRoute(builder: (context) => NewFeed()));
        //   },
        // ),
        title: Image(
          image: AssetImage('assets/images/archimat.png'),
          width: 150,
          height: 100,
        ),
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: SvgPicture.asset(
              'assets/images/search.svg',
              color: AppTheme().l1black,
              width: 20,
            ),
          )
          // IconButton(
          //     icon: Icon(
          //       FontAwesomeIcons.search,
          //       color: Colors.black,
          //     ),
          //     onPressed: () {
          //       Navigator.push(context,
          //           MaterialPageRoute(builder: (context) => ProfilePage()));
          //     })
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 350,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/video1.png'),
                          fit: BoxFit.cover)),
                ),
                Positioned(
                    top: 25,
                    left: 15,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello Eva Tee',
                          style:
                              TextStyle(color: AppTheme().white, fontSize: 18),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'How can we help you?',
                          style:
                              TextStyle(color: AppTheme().white, fontSize: 20),
                        ),
                      ],
                    )),
                Positioned(
                    bottom: 25,
                    left: 15,
                    right: 15,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        i = 0;
                                      });
                                    },
                                    child: Text(
                                      'Material',
                                      style: TextStyle(color: AppTheme().white),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    width: 60,
                                    child: i == 0
                                        ? Divider(
                                            color: AppTheme().white,
                                            thickness: 2,
                                            height: 5,
                                          )
                                        : null,
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        i = 1;
                                      });
                                    },
                                    child: Text(
                                      'Product',
                                      style: TextStyle(color: AppTheme().white),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    width: 40,
                                    child: i == 1
                                        ? Divider(
                                            color: AppTheme().white,
                                            thickness: 2,
                                            height: 5,
                                          )
                                        : null,
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        i = 2;
                                      });
                                    },
                                    child: Text(
                                      'Shop',
                                      style: TextStyle(color: AppTheme().white),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    width: 50,
                                    child: i == 2
                                        ? Divider(
                                            color: AppTheme().white,
                                            thickness: 2,
                                            height: 5,
                                          )
                                        : null,
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        i = 3;
                                      });
                                    },
                                    child: Text(
                                      'Event',
                                      style: TextStyle(color: AppTheme().white),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    width: 50,
                                    child: i == 3
                                        ? Divider(
                                            color: AppTheme().white,
                                            thickness: 2,
                                            height: 5,
                                          )
                                        : null,
                                  ),

                                  // IconButton(
                                  //     icon: Icon(Icons.ac_unit),
                                  //     onPressed: () {
                                  //       Navigator.push(
                                  //           context,
                                  //           MaterialPageRoute(
                                  //               builder: (context) => Pages()));
                                  //     }),
                                ],
                              ),
                              Column(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        i = 4;
                                      });
                                    },
                                    child: Text(
                                      'Service',
                                      style: TextStyle(color: AppTheme().white),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    width: 50,
                                    child: i == 4
                                        ? Divider(
                                            color: AppTheme().white,
                                            thickness: 2,
                                            height: 5,
                                          )
                                        : null,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: AppTheme().white,
                              borderRadius: BorderRadius.circular(5)),
                          height: 50,
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
                                    hintText: "Search Activities",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none,
                                    // labelText: "First name",
                                    // labelStyle: TextStyle(color: Colors.grey),
                                  ),
                                  onChanged: (text) {},
                                ),
                              ),
                              Container(
                                  width: 50,
                                  height: 60,
                                  decoration: BoxDecoration(
                                      color: AppTheme().lightblue,
                                      borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(5),
                                          topRight: Radius.circular(5))),
                                  child: SvgPicture.asset(
                                    'assets/images/Filter.svg',
                                    width: 15,
                                    color: AppTheme().grey,
                                  ))
                            ],
                          ),
                        ),
                      ],
                    )),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SearchPage(
                                title: 'All Virtual',
                                subtitle: 'Find Virtual Product Around You',
                                data: professional1,
                              )));
                },
                child: Productlist()),
            SizedBox(
              height: 20,
            ),
            SliderPage(),

            SizedBox(
              height: 20,
            ),
            CategoryList(),

            SizedBox(
              height: 20,
            ),
            MaterialList(),
            SizedBox(
              height: 20,
            ),
            ShopList(),
            SizedBox(
              height: 20,
            ),
            Title_Widgets(
              text: 'Feature AR Product',
              onclick: null,
              bold: true,
            ),

            ArList(),
            SizedBox(
              height: 30,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/hero.png'),
                    fit: BoxFit.cover),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Open doors to the',
                    style: TextStyle(color: AppTheme().white, fontSize: 20),
                  ),
                  Text(
                    ' World of Architecural & ',
                    style: TextStyle(color: AppTheme().white, fontSize: 20),
                  ),
                  Text(
                    'Building Materials',
                    style: TextStyle(color: AppTheme().white, fontSize: 20),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Title_Widgets(
              text: 'Find Professional Around you',
              onclick: null,
              bold: false,
            ),

            //
            InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SearchPage(
                                title: 'All Professional',
                                subtitle: 'Find Professional Around You',
                                data: professional1,
                              )));
                },
                child: ProfessionalList(
                  data: professional,
                )),
            // SizedBox(
            //   height: 20,
            // ),
            Title_Widgets(
              bold: false,
              text: 'New Feature',
            ),

            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NewFeed()));
              },
              child: Featured(
                data: photos,
              ),
            ),
            Container(
              height: 180,
              width: double.infinity,
              color: AppTheme().lightgrey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'Featured In',
                      style: TextStyle(color: AppTheme().purple, fontSize: 20),
                    ),
                  ),
                  Image(image: AssetImage('assets/images/hero1.png')),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Follow us @archMAT',
                style: TextStyle(color: AppTheme().purple, fontSize: 20),
              ),
            ),
            Row(
              children: [
                // Container(
                //     width: MediaQuery.of(context).size.width * 0.5,
                //     height: 150,
                //     child: Image(image: AssetImage('assets/images/hero.png'))),
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width * 0.5,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/hero.png'),
                          fit: BoxFit.cover)),
                ),
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width * 0.5,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/hero.png'),
                          fit: BoxFit.cover)),
                )
                // child: Image(image: AssetImage('assets/images/hero.png'))),
              ],
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
