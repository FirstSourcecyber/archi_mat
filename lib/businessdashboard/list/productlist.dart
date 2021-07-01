import 'package:archi_mat/util/widgets/title.dart';
import 'package:flutter/material.dart';
import '../../theme.dart';

class Productlist extends StatefulWidget {
  const Productlist({Key key}) : super(key: key);

  @override
  _ProductlistState createState() => _ProductlistState();
}

class _ProductlistState extends State<Productlist> {
  List product = [
    {
      'image': 'assets/images/product.png',
      'name': 'Mererials',
      'category': 'Virtual'
    },
    {
      'image': 'assets/images/product1.png',
      'name': 'Showrooms',
      'category': 'Virtual'
    },
    {
      'image': 'assets/images/product2.png',
      'name': 'Event',
      'category': 'Virtual'
    },
    {
      'image': 'assets/images/product.png',
      'name': 'Mererials',
      'category': 'Virtual'
    },
    {
      'image': 'assets/images/product1.png',
      'name': 'Showrooms',
      'category': 'Virtual'
    },
    {
      'image': 'assets/images/product2.png',
      'name': 'Event',
      'category': 'Virtual'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Title_Widgets(
          text: 'Welcome to Virtual World',
          onclick: null,
          bold: false,
        ),
        Container(
          height: 165,
          padding: EdgeInsets.only(left: 10),
          color: AppTheme().white,
          child:
              // loader
              //     ? Center(child: CircularProgressIndicator())
              //     :
              ListView.builder(
            // padding:
            //     const EdgeInsets.only(top: 5, right: 16, left: 16, bottom: 5),
            itemCount: product.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                  padding: const EdgeInsets.fromLTRB(7, 10, 7, 10),
                  child: Container(
                    width: 120,
                    height: 150,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(2, 2), // changes position of shadow
                          ),
                        ],
                        borderRadius: BorderRadius.circular(15),
                        color: AppTheme().white),
                    child: Column(
                      children: [
                        Container(
                          width: 120,
                          height: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15)),
                              image: DecorationImage(
                                  image: AssetImage(product[index]['image']),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          product[index]['name'],
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        Text(
                          product[index]['category'],
                          style: TextStyle(color: AppTheme().l1black),
                        )
                      ],
                    ),
                  ));
            },
          ),
        ),
      ],
    );
  }
}
