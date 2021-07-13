import 'package:archi_mat/util/widgets/title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../theme.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({Key key}) : super(key: key);

  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int i = 0;
  List category = ['All', "Tiles", "Comment", 'Furniture'];
  List material = [
    {'image': 'assets/images/search.svg', 'name': 'Search'},
    {'image': 'assets/images/1.svg', 'name': 'BRICK'},
    {'image': 'assets/images/2.svg', 'name': 'WALL'},
    {'image': 'assets/images/3.svg', 'name': 'CEILING'},
    {'image': 'assets/images/4.svg', 'name': 'CEMENT'},
    {'image': 'assets/images/5.svg', 'name': 'DEMOLITION'},
    {'image': 'assets/images/1.svg', 'name': 'BRICK'},
    {'image': 'assets/images/2.svg', 'name': 'WALL'},
    {'image': 'assets/images/3.svg', 'name': 'CEILING'},
    {'image': 'assets/images/4.svg', 'name': 'CEMENT'},
    {'image': 'assets/images/5.svg', 'name': 'DEMOLITION'},
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Title_Widgets(
          text: 'Find Materials Around You',
          onclick: null,
          bold: false,
        ),
        Container(
          height: 140,
          child:
              // loader
              //     ? Center(child: CircularProgressIndicator())
              //     :
              ListView.builder(
            // padding:
            //     const EdgeInsets.only(top: 5, right: 16, left: 16, bottom: 5),
            itemCount: category.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                  padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                  child: Container(
                    width: 95,
                    height: 100,
                    // decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(15),
                    //     color: AppTheme().lightgrey),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          i = index;
                        });
                      },
                      child: Column(
                        children: [
                          Container(
                            width: 90,
                            height: 90,
                            decoration: BoxDecoration(
                                // shape: BoxShape.circle,
                                borderRadius: BorderRadius.circular(15),
                                color: i == index
                                    ? AppTheme().purple
                                    : AppTheme().lightgrey),
                            child: Image.asset(
                              'assets/images/Icon.png',
                              color: i == index
                                  ? AppTheme().white
                                  : AppTheme().black,
                            ),
                            //  Icon(
                            //   Icons.cleaning_services,
                            //   color: i == index
                            //       ? AppTheme().white
                            //       : AppTheme().grey,
                            // ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            material[index]['name'],
                            style: TextStyle(fontSize: 15, wordSpacing: 6.0),
                          ),
                        ],
                      ),
                    ),
                  ));
            },
          ),
        ),
      ],
    );
  }
}
