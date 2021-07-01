import 'package:flutter/material.dart';

class VisualiseSlider extends StatefulWidget {
  const VisualiseSlider({Key key}) : super(key: key);

  @override
  _VisualiseSliderState createState() => _VisualiseSliderState();
}

class _VisualiseSliderState extends State<VisualiseSlider> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: (MediaQuery.of(context).size.width * 1.3),
          width: MediaQuery.of(context).size.width,
          // child: Image.asset(
          //   imageData.assetsImage,
          //   fit: BoxFit.cover,
          // ),
          // child: Image.network(
          //   imageData.assetsImage,
          //   fit: BoxFit.cover,
          // ),
        ),
      ],
    );
  }
}
