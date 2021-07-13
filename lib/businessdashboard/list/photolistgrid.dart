import 'package:archi_mat/businessdashboard/productdetail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class PhotoListGride extends StatefulWidget {
  const PhotoListGride({Key key}) : super(key: key);

  @override
  _PhotoListGrideState createState() => _PhotoListGrideState();
}

class _PhotoListGrideState extends State<PhotoListGride> {
  List photos = [
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
      // height: MediaQuery.of(context).size.height,
      // width: MediaQuery.of(context).size.width,
      child: StaggeredGridView.countBuilder(
        scrollDirection: Axis.vertical,
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 4,
        shrinkWrap: true,
        itemCount: photos.length,
        itemBuilder: (BuildContext context, int index) => InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ProductDetail()));
          },
          child: new Container(
            decoration: BoxDecoration(
                // color: Colors.green,
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: AssetImage(photos[index]), fit: BoxFit.cover)),
            // child: new Center(
            //   child: new CircleAvatar(
            //     backgroundColor: Colors.white,
            //     child: new Text('$index'),
            //   ),
            // )
          ),
        ),
        staggeredTileBuilder: (int index) =>
            // StaggeredTile.fit(2),
            new StaggeredTile.count(2, index.isEven ? 2 : 1),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
      ),
    );
  }
}
