import 'package:flutter/material.dart';


class AvatarPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/emma-watson-1585646482.jpg?crop=0.723xw:1.00xh;0.0238xw,0&resize=480:*'),
              radius: 25.0,
            ),
          ),

          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('JB'),
              backgroundColor: Colors.brown,
            )
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://api.time.com/wp-content/uploads/2015/12/gettyimages-485360238.jpg'),
          placeholder: AssetImage('assets/original.gif'),
          fadeInDuration: Duration( milliseconds: 200),
        )
      ),
    );
  }
}