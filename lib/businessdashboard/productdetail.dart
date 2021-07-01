import 'package:archi_mat/businessdashboard/list/arlist.dart';
import 'package:archi_mat/slider/productslider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../theme.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({Key key}) : super(key: key);

  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  List color = [
    Colors.yellow[700],
    Color(0xFF708491),
    Color(0xFF907070),
    Colors.yellow,
    Color(0xFFA12791)
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
          'Business',
          style: TextStyle(
            color: AppTheme().black,
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                FontAwesomeIcons.facebookMessenger,
                color: AppTheme().black,
              ),
              onPressed: null)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductSlider(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Card(
                    shadowColor: AppTheme().black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'CHANGE COLORS',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'See All',
                                    style: TextStyle(color: AppTheme().blue),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 15,
                                    color: AppTheme().blue,
                                  )
                                ],
                              )
                            ],
                          ),
                          //  listlength == 0
                          //         ? Column(
                          //             children: <Widget>[
                          //               list
                          //                   ? Center(
                          //                       child: SpinKitFadingCircle(
                          //                         color: Color(0xff22294b),
                          //                         size: 60.0,
                          //                       ),
                          //                     )
                          //                   : Text(
                          //                       'No Catagory Available'.tr().toString(),
                          //                       style: TextStyle(color: Colors.grey),
                          //                     ),
                          //             ],
                          //           )
                          //         :
                          Wrap(
                              spacing: 10,
                              children: List.generate(
                                color.length,
                                (i) => InkWell(
                                  onTap: () {
                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(
                                    //       builder: (context) => SubCatPage(
                                    //             text: catagories[i],
                                    //           )),
                                    // );
                                  },
                                  child: Padding(
                                    // width: 60,
                                    padding:
                                        const EdgeInsets.fromLTRB(5, 5, 5, 5),
                                    child: Container(
                                      // decoration: BoxDecoration(
                                      //   color: Colors.white,
                                      //   shape: BoxShape.circle,
                                      //   boxShadow: [
                                      //     BoxShadow(
                                      //         blurRadius: 3,
                                      //         color: Colors.grey,
                                      //         spreadRadius: 3)
                                      //   ],
                                      // ),
                                      child: CircleAvatar(
                                        backgroundColor: color[i],
                                        radius: 40,
                                      ),
                                    ),
                                  ),
                                ),
                              )),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Video'),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage('assets/images/video.png'))),
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
                    children: [Text('Name'), Text('Alice Arm Chair')],
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
                    children: [Text('Descriptions'), Text('Xxxxxxxxxxxxxx')],
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
                    children: [Text('Options'), Text('www.mywebsite.com')],
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
                    children: [Text('Website'), Text('www.mywebsite.com')],
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
                    children: [Text('Warranty'), Text('www.vr.mywebsite.com')],
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
                      Text('Packaging Dimension'),
                      Text('www.vr.mywebsite.com')
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Additional Info'),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Wrap(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          spacing: 70,

                          children: [
                            Container(
                              width: 80,
                              margin: const EdgeInsets.all(5),
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: AppTheme().lightblue,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SvgPicture.asset('assets/images/Secure.svg'),
                                  Text('2')
                                ],
                              ),
                            ),
                            Container(
                              width: 80,
                              margin: const EdgeInsets.all(5),
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.blue[50],
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SvgPicture.asset('assets/images/Secure.svg'),
                                  Text('2')
                                ],
                              ),
                            ),
                            Container(
                              width: 80,
                              margin: const EdgeInsets.all(5),
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.blue[50],
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SvgPicture.asset('assets/images/Secure.svg'),
                                  Text('2')
                                ],
                              ),
                            ),
                            Container(
                              width: 80,
                              margin: const EdgeInsets.all(5),
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.blue[50],
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SvgPicture.asset('assets/images/Secure.svg'),
                                  Text('2')
                                ],
                              ),
                            ),
                            // Text('www.vr.mywebsite.com')
                          ],
                        ),
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
                  ArList()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
