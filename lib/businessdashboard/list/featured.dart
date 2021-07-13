import 'package:flutter/material.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Featured extends StatefulWidget {
  final dynamic data;
  const Featured({Key key, this.data}) : super(key: key);

  @override
  _FeaturedState createState() => _FeaturedState();
}

class _FeaturedState extends State<Featured> {
  dynamic photos = [];
  @override
  void initState() {
    setState(() {
      photos = widget.data;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: StaggeredGridView.countBuilder(
        scrollDirection: Axis.vertical,

        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 4,

        // childAspectRatio: (1 / .4),
        shrinkWrap: true,
        itemCount: photos.length,
        itemBuilder: (BuildContext context, int index) => new Container(
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
        staggeredTileBuilder: (int index) =>
            new StaggeredTile.count(2, index.isEven ? 2 : 1),
        mainAxisSpacing: 15.0,
        crossAxisSpacing: 15.0,
      ),
    );
  }
}
