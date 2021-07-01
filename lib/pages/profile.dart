import 'package:archi_mat/businessdashboard/list/featured.dart';
import 'package:archi_mat/theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int i = 0;
  List photos = [
    'assets/images/profile1.png',
    'assets/images/profile3.png',
    'assets/images/profile4.png',
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
            Icons.menu,
            color: AppTheme().black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Profile',
          style: TextStyle(color: AppTheme().black),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                FontAwesomeIcons.search,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfilePage()));
              })
        ],
      ),
      backgroundColor: AppTheme().black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 400,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: AppTheme().white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  Container(
                    width: 100,
                    height: 100,

                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          AppTheme().pink,
                          AppTheme().purple,
                          AppTheme().purple,
                        ],
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage(
                          'assets/images/avatar2.png',
                        ),
                      )),
                    ),
                    // child: CircleAvatar(
                    //   backgroundImage: AssetImage(
                    //     'assets/images/avatar2.png',
                    //   ),
                    //   radius: 47,
                    // ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Eva Tee',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Text('Zihuatanejo,Mexico'),
                  Text(
                    '#LifeStyle #Design #Photography #Urban #Art',
                    style: TextStyle(color: AppTheme().blue),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              '735',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Post',
                              style: TextStyle(color: AppTheme().l1black),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '876',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Followers',
                              style: TextStyle(color: AppTheme().l1black),
                            )
                          ],
                        ),
                        InkWell(
                          onTap: () {},
                          child: Column(
                            children: [
                              Text(
                                '563',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Following',
                                style: TextStyle(color: AppTheme().l1black),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(60, 15, 60, 15),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            AppTheme().pink,
                            AppTheme().purple,
                            AppTheme().purple,
                          ],
                        ),
                        borderRadius: BorderRadius.circular(30)),
                    child: Text(
                      'Follow',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: AppTheme().white),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
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
                        'Post',
                        style: TextStyle(
                            color: i == 0 ? AppTheme().grey : AppTheme().white,
                            fontSize: 18),
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
                        'matIT',
                        style: TextStyle(
                            color: i == 1 ? AppTheme().grey : AppTheme().white,
                            fontSize: 18),
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
              ],
            ),
            SizedBox(
              height: 20,
            ),
            i == 0
                ? Featured(
                    data: photos,
                  )
                : Featured(
                    data: photos,
                  )
          ],
        ),
      ),
    );
  }
}
