import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({Key key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  List slider = [
    {'image': 'assets/images/hero3.png', 'name': ''},
    {'image': 'assets/images/hero3.png', 'name': ''},
    {'image': 'assets/images/hero3.png', 'name': ''},
  ];
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 200.0,
        viewportFraction: 0.8,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.easeInCubic,
        // enlargeCenterPage: true,
        // onPageChanged: callbackFunction,
        scrollDirection: Axis.horizontal,
      ),
      items: this.slider.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Stack(
                  children: <Widget>[
                    Container(
                      // height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                            image: AssetImage(i['image']),
                            // ),
                            fit: BoxFit.fill),
                      ),
                      width: MediaQuery.of(context).size.width,
                      // height: 200,
                      margin: EdgeInsets.only(right: 8),

                      // child: CachedNetworkImage(
                      //   width: MediaQuery.of(context).size.width,
                      //   height: 200,
                      //   imageUrl: item['path'],
                      //   memCacheHeight: 200,
                      //   memCacheWidth: 200,
                      //   fit: BoxFit.fill,
                      //   // placeholder: (context, url) =>
                      //   //     CircularProgressIndicator(),
                      // ),
                    ),
                    // Positioned(
                    //   bottom: 3,
                    //   left: 30,
                    //   child: Container(
                    //     alignment: Alignment.topCenter,
                    //     child: Text(
                    //       i['name'],
                    //       style: TextStyle(
                    //           fontSize: 20,
                    //           color: Colors.grey[200],
                    //           fontWeight: FontWeight.bold),
                    //     ),
                    //   ),
                    // ),
                  ],
                ));
          },
        );
      }).toList(),
    );
  }
}
