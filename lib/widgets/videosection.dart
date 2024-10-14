import 'package:flutter/material.dart';

class Videosection extends StatelessWidget {
  List videoList = [
    "Introduction to Flutter",
    "Installing Flutter in Windows",
    "Setup Emulator on Windows",
    "Creating our First App",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: videoList.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return ListTile(
          leading: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: index == 0
                  ? Color(0xFF674AEF)
                  : Color(0xFF674AEF).withOpacity(0.6),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.play_arrow_rounded,
              color: Colors.white,
              size: 30,
            ),
          ),
          title: Text(videoList[index]),
           subtitle: Text("20 min 50 sec"),
        );
      },
    );
  }
}
