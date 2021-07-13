// import 'package:archi_mat/package/bar.dart';
// import 'package:archi_mat/package/spinbarcircle.dart';
// import 'package:flutter/material.dart';

// class TabPage extends StatefulWidget {
//   @override
//   _TabPageState createState() => _TabPageState();
// }

// class _TabPageState extends State<TabPage> {
//   int _page = 0;

//   getPage() {
//     if (_page == 0) {
//       return AnimatedContainer(
//           color: AppTheme().purple,
//           duration: Duration(seconds: 1),
//           child: Container());
//     }
//     if (_page == 1) {
//       return AnimatedContainer(
//         color: AppTheme().purple,
//         duration: Duration(seconds: 1),
//         child: Container(),
//       );
//     }
//     if (_page == 2) {
//       return AnimatedContainer(
//         color: AppTheme().purple,
//         duration: Duration(seconds: 1),
//         child: Container(),
//       );
//     }
//     if (_page == 3) {
//       return AnimatedContainer(
//           color: AppTheme().purple,
//           duration: Duration(seconds: 1),
//           child: Container());
//     }
//     if (_page == 4) {
//       return AnimatedContainer(
//           color: AppTheme().purple,
//           duration: Duration(seconds: 1),
//           child: Container());
//     }
//     if (_page == 5) {
//       return AnimatedContainer(
//           color: AppTheme().purple,
//           duration: Duration(seconds: 1),
//           child: Container());
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SpinCircleBottomBarHolder(
//           bottomNavigationBar: SCBottomBarDetails(
//               circleColors: [AppTheme().purple, Color(0xff233C96), Colors.blue],
//               iconTheme: IconThemeData(color: Colors.black45),
//               activeIconTheme: IconThemeData(color: Color(0xff233C96)),
//               backgroundColor: AppTheme().purple,
//               titleStyle: TextStyle(color: Colors.black45, fontSize: 12),
//               activeTitleStyle: TextStyle(
//                   color: Colors.black,
//                   fontSize: 12,
//                   fontWeight: FontWeight.bold),
//               actionButtonDetails: SCActionButtonDetails(
//                   color: Color(0xff233C96),
//                   icon: Icon(
//                     Icons.expand_less,
//                     color: AppTheme().purple,
//                   ),
//                   elevation: 2),
//               elevation: 2.0,
//               items: [
//                 // Suggested count : 4
//                 SCBottomBarItem(
//                     icon: Icons.home,
//                     // title: "User",
//                     onPressed: () {
//                       setState(() {
//                         _page = 0;
//                       });
//                       // HomePage();
//                     }),
//                 SCBottomBarItem(
//                     icon: Icons.notifications,
//                     // title: "Details",
//                     onPressed: () {
//                       setState(() {
//                         _page = 1;
//                       });
//                     }),
//                 SCBottomBarItem(
//                     icon: Icons.bookmark_border,
//                     // title: "Notifications",
//                     onPressed: () {
//                       setState(() {
//                         _page = 2;
//                       });
//                     }),
//                 SCBottomBarItem(
//                     icon: Icons.settings,
//                     //  title: "New Data",
//                     onPressed: () {
//                       setState(() {
//                         _page = 3;
//                       });
//                     }),
//               ],
//               circleItems: [
//                 SCItem(
//                   icon: Icon(
//                     Icons.attach_money,
//                     size: 18,
//                   ),
//                   onPressed: () {
//                     // setState(() {
//                     //   _page = 5;
//                     // });
//                     // Navigator.push(context,
//                     //     MaterialPageRoute(builder: (context) => Payment()));
//                   },
//                 ),
//                 SCItem(
//                   icon: Icon(
//                     Icons.bookmark_border,
//                     size: 18,
//                   ),
//                   onPressed: () {
//                     setState(() {
//                       _page = 2;
//                     });
//                   },
//                 ),
//                 SCItem(
//                   icon: Icon(
//                     Icons.confirmation_number,
//                     size: 18,
//                   ),
//                   onPressed: () {
//                     // setState(() {
//                     //   _page = 4;
//                     // });
//                     // Navigator.push(context,
//                     //     MaterialPageRoute(builder: (context) => Reservation()));
//                   },
//                 ),
//               ],
//               bnbHeight: 60 // Suggested Height 80
//               ),
//           // Put your Screen Content in Child
//           child: getPage()),
//     );
//   }
// }

import 'package:archi_mat/businessdashboard/userhome.dart';
import 'package:archi_mat/pages/homepage.dart';
import 'package:archi_mat/pages/profile.dart';
import 'package:archi_mat/pages/search.dart';
import 'package:archi_mat/theme.dart';
import 'package:archi_mat/userdashboard/userprofile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TabPage extends StatefulWidget {
  final int index;
  TabPage({@required this.index});
  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  // PageController _controller = PageController(
  //   initialPage: 0,
  // );
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
  int _page = 0;
  bool check = true;

  getPage() {
    if (_page == 0) {
      return AnimatedContainer(
          color: AppTheme().white,
          duration: Duration(seconds: 1),
          child: HomePage());
    }
    if (_page == 1) {
      return AnimatedContainer(
        color: AppTheme().white,
        duration: Duration(seconds: 1),
        child: SearchPage(
          title: 'All Virtual',
          subtitle: 'Find Virtual Product Around You',
          data: professional1,
        ),
      );
    }

    if (_page == 2) {
      return AnimatedContainer(
          color: AppTheme().white,
          duration: Duration(seconds: 1),
          child: UserProfile());
    }
    if (_page == 3) {
      return AnimatedContainer(
          color: AppTheme().white,
          duration: Duration(seconds: 1),
          child: ProfilePage());
    }
    if (_page == 4) {
      return AnimatedContainer(
          color: AppTheme().white,
          duration: Duration(seconds: 1),
          child: BusinessHome());
    }
  }

  List pages = [];
  String logstatment = 'You Need To Login First \nTo Move Forward!';

  @override
  void initState() {
    super.initState();
    setState(() {
      _page = widget.index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(237, 240, 242, 1.0),
      body: getPage(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        child: SvgPicture.asset(
          'assets/images/floatlogo.svg',
          width: 20,
          color: AppTheme().white,
        ),
        onPressed: () {
          this.setState(() {
            _page = 4;
          });
        },
      ),
      bottomNavigationBar: BottomAppBar(
        color: AppTheme().white,
        shape: CircularNotchedRectangle(),
        notchMargin: 0.0,
        child: Container(
          height: 70,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              InkWell(
                onTap: () {
                  this.setState(() {
                    _page = 0;
                  });
                },
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 1, bottom: 3),
                      child: SvgPicture.asset(
                        'assets/images/home.svg',
                        width: 25,
                        color: _page == 0 ? AppTheme().purple : AppTheme().grey,
                      ),
                    ),
                    // IconButton(
                    //   icon: Icon(
                    //     Icons.home,
                    //     size: 30,
                    //     color: _page == 0 ? AppTheme().purple : AppTheme().grey,
                    //   ),
                    //   onPressed: () {
                    //     this.setState(() {
                    //       _page = 0;
                    //     });
                    //   },
                    // ),
                    Text(
                      'Home',
                      style: TextStyle(
                          color:
                              _page == 0 ? AppTheme().purple : AppTheme().grey,
                          fontSize: 12),
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  this.setState(() {
                    _page = 1;
                  });
                },
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 15, bottom: 3),
                      child: SvgPicture.asset(
                        'assets/images/category.svg',
                        width: 25,
                        color: _page == 1 ? AppTheme().purple : AppTheme().grey,
                      ),
                    ),
                    Text(
                      'Category',
                      style: TextStyle(
                        color: _page == 1 ? AppTheme().purple : AppTheme().grey,
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      'ARVR',
                      style: TextStyle(
                        color: AppTheme().purple,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  this.setState(() {
                    _page = 2;
                  });
                },
                child: Column(
                  children: <Widget>[
                    // IconButton(
                    //   icon: Icon(
                    //     _page == 2 ? Icons.search : Icons.search,
                    //     color: _page == 2 ? AppTheme().purple : AppTheme().grey,
                    //     size: 30,
                    //   ),
                    //   onPressed: () {
                    //     this.setState(() {
                    //       _page = 2;
                    //     });
                    //   },
                    // ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, bottom: 3),
                      child: SvgPicture.asset(
                        'assets/images/search.svg',
                        width: 25,
                        color: _page == 2 ? AppTheme().purple : AppTheme().grey,
                      ),
                    ),
                    Text(
                      'Discover',
                      style: TextStyle(
                          color:
                              _page == 2 ? AppTheme().purple : AppTheme().grey,
                          fontSize: 12),
                    )
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      this.setState(() {
                        _page = 3;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: SvgPicture.asset(
                        'assets/images/mat.svg',
                        width: 40,
                        color: _page == 3 ? AppTheme().purple : AppTheme().grey,
                      ),
                    ),
                  ),
                  // IconButton(
                  //   icon: Icon(
                  //     Icons.location_city,
                  //     color: _page == 3 ? AppTheme().purple : AppTheme().grey,
                  //     size: 30,
                  //   ),
                  //   onPressed: () {
                  //     this.setState(() {
                  //       _page = 3;
                  //     });
                  //   },
                  // ),
                  // Text(
                  //   'MAT IT',
                  //   style: TextStyle(
                  //       color: _page == 3 ? AppTheme().purple : AppTheme().grey,
                  //       fontSize: 12),
                  // )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
