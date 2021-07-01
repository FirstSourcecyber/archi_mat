import 'package:archi_mat/util/widgets/title.dart';
import 'package:flutter/material.dart';
import 'package:archi_mat/theme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MaterialList extends StatefulWidget {
  const MaterialList({Key key}) : super(key: key);

  @override
  _MaterialListState createState() => _MaterialListState();
}

class _MaterialListState extends State<MaterialList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Title_Widgets(
          text: 'Feature New Materials',
          onclick: null,
          bold: false,
        ),
        Container(
          height: 370,
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
                      height: 340,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                              image: AssetImage('assets/images/product.png'),
                              fit: BoxFit.cover)),
                    ),
                    // Positioned(top: 20, left: 20, child: Text('AR')),
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
                                  style: TextStyle(
                                      color: AppTheme().black, fontSize: 20),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: AppTheme().yellowdark,
                                    ),
                                    Text(
                                      '   Teck Yew, Singapore',
                                      style: TextStyle(
                                          color: AppTheme().l1black,
                                          fontSize: 15),
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
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: AppTheme().whiteopacity1),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: AppTheme().yellowdark,
                                            size: 18,
                                          ),
                                          Text(' New')
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 50,
                                      height: 55,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: AppTheme().whiteopacity1),
                                      child: Icon(
                                        Icons.bookmark,
                                        size: 35,
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
