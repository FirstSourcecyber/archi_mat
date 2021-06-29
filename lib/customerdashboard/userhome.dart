import 'package:flutter/material.dart';
import 'package:archi_mat/theme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:qr_flutter/qr_flutter.dart';

class UserHome extends StatefulWidget {
  const UserHome({Key key}) : super(key: key);

  @override
  _UserHomeState createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme().white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_sharp,
            color: AppTheme().black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'matIT',
          style: TextStyle(
            color: AppTheme().black,
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                FontAwesomeIcons.facebookMessenger,
                color: Colors.black,
              ),
              onPressed: null)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 80),
                  width: MediaQuery.of(context).size.width,
                  height: 220,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25)),
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/images/mask.png',
                          ),
                          fit: BoxFit.cover)),
                ),
                Positioned(
                    bottom: 0,
                    width: MediaQuery.of(context).size.width,
                    child: Container(
                      height: 80,
                      padding: EdgeInsets.only(top: 40),
                      decoration: BoxDecoration(color: AppTheme().white),
                      child: Column(
                        children: [
                          Text('ABC Furniture Company'),
                          Text(
                            '@evatee123 .  The power of now',
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    )),
                Positioned(
                    bottom: 50,
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/mask.png'),
                        radius: 50,
                      ),
                    ))
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text('4/5'),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Reviews',
                        style: TextStyle(color: AppTheme().l1black),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text('95.2K'),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Like',
                        style: TextStyle(color: AppTheme().l1black),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text('763'),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Following',
                        style: TextStyle(color: AppTheme().l1black),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
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
                              'Collections',
                              style: TextStyle(
                                  color: i == 0
                                      ? AppTheme().purple
                                      : AppTheme().grey),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: 60,
                            child: i == 0
                                ? Divider(
                                    color: AppTheme().purple,
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
                              'Virtual',
                              style: TextStyle(
                                  color: i == 1
                                      ? AppTheme().purple
                                      : AppTheme().grey),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: 40,
                            child: i == 1
                                ? Divider(
                                    color: AppTheme().purple,
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
                              'Photos',
                              style: TextStyle(
                                  color: i == 2
                                      ? AppTheme().purple
                                      : AppTheme().grey),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: 50,
                            child: i == 2
                                ? Divider(
                                    color: AppTheme().purple,
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
                                i = 3;
                              });
                            },
                            child: Text(
                              'About',
                              style: TextStyle(
                                  color: i == 3
                                      ? AppTheme().purple
                                      : AppTheme().grey),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: 50,
                            child: i == 3
                                ? Divider(
                                    color: AppTheme().purple,
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
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  i == 0
                      ? getcollection()
                      : i == 1
                          ? getvitual()
                          : i == 2
                              ? getphotos()
                              : getabout(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  List photos = [
    'assets/images/Image1.png',
    'assets/images/Image1.png',
    'assets/images/virtual.png',
    'assets/images/Image1.png',
    'assets/images/Image1.png',
    'assets/images/virtual.png',
    'assets/images/Image1.png',
    'assets/images/Image1.png',
    'assets/images/virtual.png',
  ];

  Widget getcollection() {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: StaggeredGridView.countBuilder(
        scrollDirection: Axis.vertical,
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 4,
        itemCount: 8,
        itemBuilder: (BuildContext context, int index) => new Container(
          decoration: BoxDecoration(
              // color: Colors.green,
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                  image: AssetImage('assets/images/Image1.png'),
                  fit: BoxFit.cover)),
          // child: new Center(
          //   child: new CircleAvatar(
          //     backgroundColor: Colors.white,
          //     child: new Text('$index'),
          //   ),
          // )
        ),
        staggeredTileBuilder: (int index) =>
            new StaggeredTile.count(2, index.isEven ? 2 : 1),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
      ),
    );
  }

  getvitual() {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 20, bottom: 20),
          width: MediaQuery.of(context).size.width,
          height: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                  image: AssetImage('assets/images/virtual.png'),
                  fit: BoxFit.cover)),
        ),
        Divider(
          color: AppTheme().purple,
          thickness: 1,
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text('Website'), Text('www.mywebsite.com')],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 20),
          child: Divider(
            color: AppTheme().purple,
            thickness: 1,
            height: 5,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text('Virtual Shop'), Text('www.vr.mywebsite.com')],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 20),
          child: Divider(
            color: AppTheme().purple,
            thickness: 1,
            height: 5,
          ),
        ),
        Text('QR'),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              children: [
                QrImage(
                  data: "1234567890",
                  version: QrVersions.auto,
                  size: 150.0,
                ),
                Text('Virtual Shop'),
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 20),
          child: Divider(
            color: AppTheme().purple,
            thickness: 1,
            height: 5,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('AR Product'),
            Row(
              children: [
                Text(
                  'See All ',
                  style: TextStyle(
                    color: AppTheme().blue,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: AppTheme().blue,
                )
              ],
            )
          ],
        ),
        // Stack(
        //   alignment: Alignment.center,
        //   children: [
        //     Container(
        //       width: 270,
        //       height: 400,
        //       decoration: BoxDecoration(
        //           borderRadius: BorderRadius.circular(30),
        //           image: DecorationImage(
        //               image: AssetImage('assets/images/Rectangle.png'),
        //               fit: BoxFit.cover)),
        //     ),
        //     Positioned(top: 20, left: 20, child: Text('AR')),
        //     Positioned(
        //         bottom: 0,
        //         child: Container(
        //           width: 220,
        //           height: 180,
        //           decoration: BoxDecoration(
        //               color: AppTheme().whiteopacity,
        //               borderRadius: BorderRadius.circular(30)),
        //           child: Padding(
        //             padding: const EdgeInsets.all(20.0),
        //             child: Column(
        //               crossAxisAlignment: CrossAxisAlignment.start,
        //               children: [
        //                 Text(
        //                   'Mossimom Sofa',
        //                   style: TextStyle(color: AppTheme().l1black),
        //                 ),
        //                 SizedBox(
        //                   height: 10,
        //                 ),
        //                 Row(
        //                   children: [
        //                     Icon(
        //                       FontAwesomeIcons.clock,
        //                       color: AppTheme().yellowdark,
        //                     ),
        //                     Text(
        //                       '   Teck Yew, Singapore',
        //                       style: TextStyle(color: AppTheme().lblack),
        //                     )
        //                   ],
        //                 ),
        //                 SizedBox(
        //                   height: 20,
        //                 ),
        //                 Row(
        //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                   children: [
        //                     Container(
        //                       width: 50,
        //                       height: 60,
        //                       decoration: BoxDecoration(
        //                           borderRadius: BorderRadius.circular(15),
        //                           color: AppTheme().whiteopacity1),
        //                       child: Icon(FontAwesomeIcons.safari),
        //                     ),
        //                     Container(
        //                       width: 70,
        //                       height: 60,
        //                       decoration: BoxDecoration(
        //                           borderRadius: BorderRadius.circular(15),
        //                           color: AppTheme().whiteopacity1),
        //                       child: Row(
        //                         children: [
        //                           Icon(
        //                             FontAwesomeIcons.star,
        //                             color: AppTheme().yellowdark,
        //                           ),
        //                           Text(' New')
        //                         ],
        //                       ),
        //                     ),
        //                     Container(
        //                       width: 50,
        //                       height: 60,
        //                       decoration: BoxDecoration(
        //                           borderRadius: BorderRadius.circular(15),
        //                           color: AppTheme().whiteopacity1),
        //                       child: Icon(
        //                         FontAwesomeIcons.bookmark,
        //                         color: AppTheme().yellowdark,
        //                       ),
        //                     ),
        //                   ],
        //                 )
        //               ],
        //             ),
        //           ),
        //         ))
        //   ],
        // ),
        // SizedBox(
        //   height: 20,
        // ),
        Container(
          height: 450,
          child:
              // loader
              //     ? Center(child: CircularProgressIndicator())
              //     :
              ListView.builder(
            // padding:
            //     const EdgeInsets.only(top: 5, right: 16, left: 16, bottom: 5),
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 270,
                      height: 400,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                              image: AssetImage('assets/images/Rectangle.png'),
                              fit: BoxFit.cover)),
                    ),
                    Positioned(top: 20, left: 20, child: Text('AR')),
                    Positioned(
                        bottom: 0,
                        child: Container(
                          width: 220,
                          height: 180,
                          decoration: BoxDecoration(
                              color: AppTheme().whiteopacity,
                              borderRadius: BorderRadius.circular(30)),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Mossimom Sofa',
                                  style: TextStyle(color: AppTheme().l1black),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      FontAwesomeIcons.clock,
                                      color: AppTheme().yellowdark,
                                    ),
                                    Text(
                                      '   Teck Yew, Singapore',
                                      style:
                                          TextStyle(color: AppTheme().lblack),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 50,
                                      height: 60,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: AppTheme().whiteopacity1),
                                      child: Icon(FontAwesomeIcons.safari),
                                    ),
                                    Container(
                                      width: 70,
                                      height: 60,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: AppTheme().whiteopacity1),
                                      child: Row(
                                        children: [
                                          Icon(
                                            FontAwesomeIcons.star,
                                            color: AppTheme().yellowdark,
                                          ),
                                          Text(' New')
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 50,
                                      height: 60,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: AppTheme().whiteopacity1),
                                      child: Icon(
                                        FontAwesomeIcons.bookmark,
                                        color: AppTheme().yellowdark,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ))
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  getphotos() {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: StaggeredGridView.countBuilder(
        scrollDirection: Axis.vertical,
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 4,
        itemCount: photos.length,
        itemBuilder: (BuildContext context, int index) => new Container(
          decoration: BoxDecoration(
              // color: Colors.green,
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                  image: AssetImage(photos[index]), fit: BoxFit.cover)),
          // child: new Center(
          //   child: new CircleAvatar(
          //     backgroundColor: Colors.white,
          //     child: new Text('$index'),
          //   ),
          // )
        ),
        staggeredTileBuilder: (int index) =>
            new StaggeredTile.count(2, index.isEven ? 2 : 1),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
      ),
    );
  }

  getabout() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('About Us'),
          SizedBox(
            height: 30,
          ),
          Text(
              'Surfing is a surface water sport in which the wave ride, referred to as a surfer, ride on the forward or deep face of a moving wave, which is usually carrying the surfer toward the shore.'),
          SizedBox(
            height: 20,
          ),
          Divider(
            color: AppTheme().purple,
            thickness: 1,
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('Website'), Text('www.mywebsite.com')],
            ),
          ),
          Divider(
            color: AppTheme().purple,
            thickness: 1,
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('Email'), Text('info@mywebsite.com')],
            ),
          ),
          Divider(
            color: AppTheme().purple,
            thickness: 1,
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('Mobile'), Text('123456789')],
            ),
          ),
          Divider(
            color: AppTheme().purple,
            thickness: 1,
            height: 5,
          ),
          SizedBox(
            height: 20,
          ),
          Text('Opening Hours'),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 150,
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Monday'),
                        Text('9 - 6pm'),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 150,
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Tuesday'),
                        Text('9 - 6pm'),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 150,
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Wednesday'),
                        Text('9 - 6pm'),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    width: 150,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Thursday'),
                        Text('9 - 6pm'),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 150,
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Friday'),
                        Text('9 - 6pm'),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 150,
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Saturday'),
                        Text('Closed'),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 150,
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Sunday'),
                        Text('Closed'),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Divider(
            color: AppTheme().purple,
            thickness: 1,
            height: 5,
          ),
          SizedBox(
            height: 20,
          ),
          Text('Map'),
          SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 170,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/map.png'),
                    fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: Divider(
              color: AppTheme().purple,
              thickness: 1,
              height: 5,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                children: [
                  Text('Zoom onCall'),
                  QrImage(
                    data: "1234567890",
                    version: QrVersions.auto,
                    size: 150.0,
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
