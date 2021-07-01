import 'package:flutter/material.dart';
import 'package:archi_mat/theme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ArList extends StatefulWidget {
  const ArList({Key key}) : super(key: key);

  @override
  _ArListState createState() => _ArListState();
}

class _ArListState extends State<ArList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 400,
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
                      height: 390,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                              image: AssetImage('assets/images/Rectangle.png'),
                              fit: BoxFit.cover)),
                    ),
                    Positioned(
                        top: 20,
                        left: 20,
                        child: Text(
                          'AR',
                          style: TextStyle(fontSize: 18),
                        )),
                    Positioned(
                        bottom: 0,
                        child: Container(
                          width: 240,
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
                                  // mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.location_on,
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
                                      height: 50,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: AppTheme().whiteopacity1),
                                      child: Icon(
                                        FontAwesomeIcons.swimmingPool,
                                        size: 18,
                                      ),
                                    ),
                                    Container(
                                      width: 70,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: AppTheme().whiteopacity1,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.star,
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
                                        Icons.bookmark,
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
}
