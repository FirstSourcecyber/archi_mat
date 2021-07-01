import 'package:archi_mat/businessdashboard/list/professionallist.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../theme.dart';

class SearchPage extends StatefulWidget {
  final dynamic data;
  final dynamic title;
  final dynamic subtitle;
  const SearchPage({Key key, this.data, this.title, this.subtitle})
      : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme().white,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: AppTheme().black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          widget.title,
          style: TextStyle(color: AppTheme().black),
        ),
        centerTitle: true,
        // actions: <Widget>[
        //   IconButton(
        //       icon: Icon(
        //         FontAwesomeIcons.search,
        //         color: Colors.black,
        //       ),
        //       onPressed: null)
        // ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              decoration: BoxDecoration(color: AppTheme().purple),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: AppTheme().white,
                    borderRadius: BorderRadius.circular(5)),
                height: 50,
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: TextField(
                        // controller: fname,
                        style: new TextStyle(color: Colors.grey),
                        decoration: InputDecoration(
                          hintText: "Search Activities",
                          hintStyle: TextStyle(color: Colors.grey),
                          border: InputBorder.none,
                          // labelText: "First name",
                          // labelStyle: TextStyle(color: Colors.grey),
                        ),
                        onChanged: (text) {},
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 60,
                      decoration: BoxDecoration(
                          color: AppTheme().lightblue,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(5),
                              topRight: Radius.circular(5))),
                      child: IconButton(
                        icon: Icon(
                          FontAwesomeIcons.search,
                          color: AppTheme().lblack,
                        ),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                widget.subtitle,
                style: TextStyle(color: AppTheme().purple, fontSize: 18),
              ),
            ),
            ProfessionalList(
              data: widget.data,
            )
          ],
        ),
      ),
    );
  }
}
