import 'package:flutter/material.dart';

class WhatsappListTile extends StatelessWidget {
  final String title;
  final String subTitle;
  final String time;
  final String imageLocalUrl;

  const WhatsappListTile(
      {Key key,
      @required this.title,
      @required this.subTitle,
      @required this.time,
      @required this.imageLocalUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {},
          child: ListTile(
            tileColor: Color(0xFF131C21),
            leading: CircleAvatar(
              backgroundImage: AssetImage(imageLocalUrl),
            ),
            title: Text(
              title,
              style: TextStyle(
                color: Color(0xFFC4E2E3),
              ),
            ),
            subtitle: Text(
              subTitle,
              style: TextStyle(
                color: Color(0xFFCBCCCD),
              ),
            ),
            trailing: Text(
              time,
              style: TextStyle(color: Color(0xFFCBCCCD)),
            ),
          ),
        ),
      ],
    );
  }
}
