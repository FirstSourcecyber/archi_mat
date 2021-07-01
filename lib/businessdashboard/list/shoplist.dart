import 'package:archi_mat/util/widgets/title.dart';
import 'package:flutter/material.dart';
import 'package:archi_mat/theme.dart';

class ShopList extends StatefulWidget {
  const ShopList({Key key}) : super(key: key);

  @override
  _ShopListState createState() => _ShopListState();
}

class _ShopListState extends State<ShopList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Title_Widgets(
          text: 'Feature Virtual Shop',
          bold: true,
        ),
        Container(
          height: 250,
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
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 250,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage('assets/images/card11.png'),
                              fit: BoxFit.cover)),
                    ),
                    // Positioned(top: 20, left: 20, child: Text('AR')),
                    Positioned(
                        bottom: 20,
                        left: 15,
                        right: 15,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Jay Timber',
                              style: TextStyle(
                                  color: AppTheme().white, fontSize: 30),
                            ),
                            Text(
                              'Specialise',
                              style: TextStyle(
                                  color: AppTheme().white, fontSize: 30),
                            ),
                            Text(
                              'Synthetic Intelligent Wood',
                              style: TextStyle(
                                  color: AppTheme().white, fontSize: 20),
                            ),
                          ],
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
