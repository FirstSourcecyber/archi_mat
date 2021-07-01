import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_switch/flutter_switch.dart';
import '../theme.dart';

class BusinessProfile extends StatefulWidget {
  const BusinessProfile({Key key}) : super(key: key);

  @override
  _BusinessProfileState createState() => _BusinessProfileState();
}

class _BusinessProfileState extends State<BusinessProfile> {
  bool push = true, contact = true, location = true, activity = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme().white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_sharp,
            color: AppTheme().black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Business',
          style: TextStyle(
            color: AppTheme().black,
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                FontAwesomeIcons.facebookMessenger,
                color: Colors.black,
              ),
              onPressed: null)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Stack(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.grey[200],
                    backgroundImage:
                        //  image != null && imageshow == true
                        //     ? NetworkImage(Config.url + '/' + image)
                        //     :
                        AssetImage('assets/images/profile2.png'),
                  ),
                  Positioned(
                    right: 0,
                    top: 60,
                    child: Container(
                      child: IconButton(
                        icon: Icon(
                          Icons.camera_alt,
                          size: 30,
                          color: Colors.blue,
                        ),
                        onPressed: () {
                          // _showDialogue(context);
                        },
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Edit Profile',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Push Notifications',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  FlutterSwitch(
                    activeColor: AppTheme().purple,
                    width: 50.0,
                    height: 30.0,
                    // valueFontSize: 25.0,
                    // toggleSize: 45.0,
                    value: push,
                    borderRadius: 30.0,
                    padding: 5.0,
                    // showOnOff: true,
                    onToggle: (val) {
                      setState(() {
                        push = val;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Allow Access to My Contacts',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  FlutterSwitch(
                    activeColor: AppTheme().purple,
                    width: 50.0,
                    height: 30.0,
                    // valueFontSize: 25.0,
                    // toggleSize: 45.0,
                    value: contact,
                    borderRadius: 30.0,
                    padding: 5.0,
                    // showOnOff: true,
                    onToggle: (val) {
                      setState(() {
                        contact = val;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Allow My Location',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  FlutterSwitch(
                    activeColor: AppTheme().purple,
                    width: 50.0,
                    height: 30.0,
                    // valueFontSize: 25.0,
                    // toggleSize: 45.0,
                    value: location,
                    borderRadius: 30.0,
                    padding: 5.0,
                    // showOnOff: true,
                    onToggle: (val) {
                      setState(() {
                        location = val;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Others Can See My Activity',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  FlutterSwitch(
                    activeColor: AppTheme().purple,
                    width: 50.0,
                    height: 30.0,
                    // valueFontSize: 25.0,
                    // toggleSize: 45.0,
                    value: activity,
                    borderRadius: 30.0,
                    padding: 5.0,
                    // showOnOff: true,
                    onToggle: (val) {
                      setState(() {
                        activity = val;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 150,
                alignment: Alignment.center,
                padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: AppTheme().l1black, width: 1)),
                child: Text('LOG OUT'),
              ),
              // ListTile(
              //   leading: Text(
              //     'Push Notifications',
              //     style: TextStyle(fontWeight: FontWeight.bold),
              //   ),
              //   trailing: Container(
              //     child: FlutterSwitch(
              //       width: 125.0,
              //       height: 55.0,
              //       valueFontSize: 25.0,
              //       activeColor: AppTheme().purple,
              //       toggleColor: AppTheme().white,
              //       toggleSize: 45.0,
              //       value: push,
              //       borderRadius: 30.0,
              //       padding: 8.0,
              //       showOnOff: true,
              //       onToggle: (val) {
              //         setState(() {
              //           push = val;
              //         });
              //       },
              //     ),
              //   ),
              // ),
              SizedBox(
                height: 20,
              ),
              Text('Version 4.8.15.16.23.42')
            ],
          ),
        ),
      ),
    );
  }
}
