import 'package:flutter/material.dart';

import '../../theme.dart';

class Title_Widgets extends StatelessWidget {
  final dynamic text;
  final Function onclick;
  final bool bold;
  const Title_Widgets({Key key, this.onclick, this.text, @required this.bold})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            this.text,
            style: TextStyle(
                color: AppTheme().black,
                fontSize: 20,
                fontWeight:
                    this.bold == true ? FontWeight.bold : FontWeight.w500),
          ),
          InkWell(
            onTap: this.onclick,
            child: Row(
              children: [
                Text('See All ',
                    style: TextStyle(
                      color: AppTheme().grey,
                    )),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                  color: AppTheme().grey,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
