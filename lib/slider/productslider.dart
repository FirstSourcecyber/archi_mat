import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ProductSlider extends StatefulWidget {
  final dynamic list;
  // ProductSlider({this.list});
  const ProductSlider({Key key, this.list}) : super(key: key);

  @override
  _ProductSliderState createState() => _ProductSliderState();
}

class _ProductSliderState extends State<ProductSlider> {
  List list = [
    'assets/images/Image1.png',
    'assets/images/Image1.png',
    'assets/images/virtual.png',
    'assets/images/Image1.png',
    'assets/images/Image1.png',
    'assets/images/virtual.png',
    'assets/images/Image1.png',
    'assets/images/Image1.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260.0,

      // decoration: BoxDecoration(
      //         color:AppTheme().white,
      //       ),
      child: CarouselSlider(
        options: CarouselOptions(
          height: 250.0,

          autoPlay: true,

          //  autoPlay: true,
          autoPlayInterval: Duration(seconds: 5),
          autoPlayAnimationDuration: Duration(seconds: 2),
          viewportFraction: 0.9,
          // height: cardSize.height,
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
          initialPage: 0,
          onPageChanged: (index, reason) => {
            this.setState(() {
              // currentIndex = index.toDouble();
            }),
          },
        ),
        items: list.map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  child: Image(
                    image: AssetImage(i),
                    fit: BoxFit.cover,
                  ));
            },
          );
        }).toList(),
      ),
    );
  }
}
