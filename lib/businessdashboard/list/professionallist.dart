import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../theme.dart';

class ProfessionalList extends StatefulWidget {
  final dynamic data;
  const ProfessionalList({Key key, this.data}) : super(key: key);

  @override
  _ProfessionalListState createState() => _ProfessionalListState();
}

class _ProfessionalListState extends State<ProfessionalList> {
  List professional = [];
  int i = 0;

  @override
  void initState() {
    setState(() {
      professional = widget.data;
      i = professional.length;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Column(
        children: [
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (_, index) => GestureDetector(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.only(left: 10, bottom: 10),
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.300001,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppTheme().lightgrey),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.width * 0.3,
                        width: MediaQuery.of(context).size.width * 0.5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15)),
                            image: DecorationImage(
                                image: AssetImage(professional[index]['image']),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        professional[index]['name'],
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ],
                  ),
                )),
            itemCount: professional.length,
          ),
          // i == 0
          //     ? CircularProgressIndicator()
          //     : Wrap(
          //         spacing: 10,
          //         children: List.generate(
          //           professional.length,
          //           (i) => GestureDetector(
          //               onTap: () {},
          //               child: Container(
          //                 margin: EdgeInsets.only(bottom: 10),
          //                 width: 155,
          //                 height: 170,
          //                 decoration: BoxDecoration(
          //                     borderRadius: BorderRadius.circular(15),
          //                     color: AppTheme().lightgrey),
          //                 child: Column(
          //                   children: [
          //                     Container(
          //                       height: 120,
          //                       width: 155,
          //                       decoration: BoxDecoration(
          //                           borderRadius: BorderRadius.only(
          //                               topLeft: Radius.circular(15),
          //                               topRight: Radius.circular(15)),
          //                           image: DecorationImage(
          //                               image: AssetImage(
          //                                   professional[i]['image']),
          //                               fit: BoxFit.cover)),
          //                     ),
          //                     SizedBox(
          //                       height: 15,
          //                     ),
          //                     Text(
          //                       professional[i]['name'],
          //                       style: TextStyle(
          //                           fontWeight: FontWeight.bold, fontSize: 15),
          //                     ),
          //                   ],
          //                 ),
          //               )),
          //         )),
        ],
      ),
    );
    // ),;
  }
}
