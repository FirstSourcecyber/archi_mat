import 'package:archi_mat/businessdashboard/inbox.dart';
import 'package:archi_mat/businessdashboard/list/featured.dart';
import 'package:flutter/material.dart';
import 'package:archi_mat/theme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key key}) : super(key: key);

  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  int i = 0;
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
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Inbox()));
              })
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
                          Text('Zeeshan'),
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
                              'Wishlist',
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
                              'Favourite',
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
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  i == 0
                      ? Featured(
                          data: photos,
                        )
                      //  getcollection()
                      : i == 1
                          ? Featured(
                              data: photos,
                            )
                          : Featured(
                              data: photos,
                            )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

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

  getphotos() {
    return Container(
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
}
