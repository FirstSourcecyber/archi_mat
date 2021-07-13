import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/carousel/gf_carousel.dart';

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

  final List<String> imageList = [
    "https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg",
    "https://cdn.pixabay.com/photo/2017/12/13/00/23/christmas-3015776_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/19/10/55/christmas-market-4705877_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/20/00/03/road-4707345_960_720.jpg",
    "https://cdn.pixabay.com/photo/2016/11/22/07/09/spruce-1848543__340.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return GFCarousel(
      items: imageList.map(
        (url) {
          return Container(
            margin: EdgeInsets.all(8.0),
            width: MediaQuery.of(context).size.width,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              child: Image.network(url,
                  fit: BoxFit.cover, width: MediaQuery.of(context).size.width
                  //  1000.0
                  ),
            ),
          );
        },
      ).toList(),
      onPageChanged: (index) {
        setState(() {
          index;
        });
      },
    );
    // CarouselSlider(
    //   options: CarouselOptions(
    //     height: 200.0,
    //     viewportFraction: 0.8,
    //     initialPage: 0,
    //     enableInfiniteScroll: true,
    //     reverse: false,
    //     autoPlay: true,
    //     autoPlayInterval: Duration(seconds: 3),
    //     autoPlayAnimationDuration: Duration(milliseconds: 800),
    //     autoPlayCurve: Curves.easeInCubic,
    //     // enlargeCenterPage: true,
    //     // onPageChanged: callbackFunction,
    //     scrollDirection: Axis.horizontal,
    //   ),
    //   items: this.slider.map((i) {
    //     return Builder(
    //       builder: (BuildContext context) {
    //         return Padding(
    //             padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
    //             child: Stack(
    //               children: <Widget>[
    //                 Container(
    //                   // height: 200,
    //                   decoration: BoxDecoration(
    //                     borderRadius: BorderRadius.circular(5),
    //                     image: DecorationImage(
    //                         image: AssetImage(i['image']),
    //                         // ),
    //                         fit: BoxFit.fill),
    //                   ),
    //                   width: MediaQuery.of(context).size.width,
    //                   // height: 200,
    //                   margin: EdgeInsets.only(right: 8),

    //                   // child: CachedNetworkImage(
    //                   //   width: MediaQuery.of(context).size.width,
    //                   //   height: 200,
    //                   //   imageUrl: item['path'],
    //                   //   memCacheHeight: 200,
    //                   //   memCacheWidth: 200,
    //                   //   fit: BoxFit.fill,
    //                   //   // placeholder: (context, url) =>
    //                   //   //     CircularProgressIndicator(),
    //                   // ),
    //                 ),
    //                 // Positioned(
    //                 //   bottom: 3,
    //                 //   left: 30,
    //                 //   child: Container(
    //                 //     alignment: Alignment.topCenter,
    //                 //     child: Text(
    //                 //       i['name'],
    //                 //       style: TextStyle(
    //                 //           fontSize: 20,
    //                 //           color: Colors.grey[200],
    //                 //           fontWeight: FontWeight.bold),
    //                 //     ),
    //                 //   ),
    //                 // ),
    //               ],
    //             ));
    //       },
    //     );
    //   }).toList(),
    // );
  }
}
