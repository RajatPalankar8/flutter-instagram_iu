import 'package:flutter/material.dart';
import 'package:flutter_instagram_ui/InstaBody.dart';

class HomePage extends StatelessWidget {

  final AppTopBar = new AppBar(
    backgroundColor: Color(0XFFF8faf8),
    elevation: 1.0,
    centerTitle: true,
    leading: Icon(Icons.camera_alt),
    title: SizedBox(height: 35.0,child: Image.asset("assets/images/instatexticon.png")),
    actions: <Widget>[
      Padding(
        padding: EdgeInsets.only(right: 12.0),
        child: Icon(Icons.send),
      )
    ],
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppTopBar,
      body: InstaBody(),
      bottomNavigationBar: Container(
        color: Colors.white,
          height: 58.0,
         alignment: Alignment.center,
        child: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
               IconButton(
                icon: Icon(Icons.home),
                onPressed: (){

                },
              ), IconButton(
                icon: Icon(Icons.search),
                onPressed: null
              ),
              IconButton(
                icon: Icon(Icons.add_box),
                onPressed: null
              ),
              IconButton(
                icon: Icon(Icons.favorite),
                onPressed:null
              ),
              IconButton(
                icon: Icon(Icons.person),
                onPressed: null
              ),
            ],
          ),
        ),
      ),
    );
  }
}
