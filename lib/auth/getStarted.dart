import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:archi_mat/theme.dart';
class GetStartedScreen extends StatefulWidget {
  @override
  _GetStartedScreenState createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              color: AppTheme().getstartedbg,
            ),
            // Image(
            //   image: AssetImage('assets/images/splashbg.png'),
            //   fit: BoxFit.fitHeight,
            //   width: MediaQuery.of(context).size.width,
            // ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

            Padding(
              padding: const EdgeInsets.only(top: 170),
              child: Center(
                child: Container(
                  alignment: Alignment.topCenter,
                  child: Image(
                    image: AssetImage('assets/images/getstartedlogo.png'),
                    fit: BoxFit.cover,
                    // height: 160,
                    width: 180,
                  ),
                ),
              ),
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('Track Your \nActive Lifestyle',style: TextStyle(fontSize: 32,color: AppTheme().white,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: 40,
                height: 1.5,
                color: AppTheme().white,
              ),
            ),
          
             Padding(
              padding: const EdgeInsets.all(20.0),
               child: Text('With goal a driven approach',style: TextStyle(color: AppTheme().white,fontSize: 20),),
             ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: (){
                
              },
              child: Container(
              decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.yellow,
                  AppTheme().purple,
                  AppTheme().purple,
                ],
              )
          ),

                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    //  Container(width: 20,),
                     Padding(
                       padding: const EdgeInsets.only(left: 70),
                       child: Text('GET STARTED',style: TextStyle(color: AppTheme().white,letterSpacing: 1.5,fontSize: 16),),
                     ),
                     Icon(Icons.arrow_forward_ios,size: 20,color: AppTheme().white,),
              ],),
                ),),
            ),
            ],),

            ],),
          ],
        ),
      ),
    );
  }
}
