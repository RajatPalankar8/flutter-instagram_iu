import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_instagram_ui/InstaStories.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Data_Model_Story.dart';

class InstaList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    var deviceSize = MediaQuery.of(context).size;
    return ListView.builder(itemCount:dummyStoryData.length,itemBuilder: (context,index)=> index == 0 ? SizedBox(
      child: InstaStories(), //show story page
      height: deviceSize.height *0.15,
    ):Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [

        //1 row

        Padding(
          padding: const EdgeInsets.fromLTRB(16.0,16.0,8.0, 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
              Row(
                children: [
                  Container(
                    height: 40.0,width: 40.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(dummyStoryData[index].profilepic)
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(dummyStoryData[index].name,style: TextStyle(fontWeight: FontWeight.bold),),
                ],
              ),

               IconButton(
                 icon: Icon(Icons.more_vert),
                 onPressed: null,
               )

             ],
          ),
        ),

        //2 row


        InteractiveViewer(
          boundaryMargin: EdgeInsets.all(8.0),
          minScale: 0.1,
          maxScale: 1.6,
          onInteractionUpdate: (_)=>print("Interaction Updated"),
          child: ClipRRect(borderRadius: BorderRadius.circular(15),
              child: Flexible(
                fit: FlexFit.loose,
                child: Image.network(dummyStoryData[index].postphoto,fit: BoxFit.cover,),
              ),
          ),
        ),

        //3rd row

        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    FontAwesomeIcons.heart
                  ),
                  SizedBox(width: 10,),
                  Icon(
                    FontAwesomeIcons.comment
                  ),
                  SizedBox(width: 10,),
                  Icon(
                    FontAwesomeIcons.paperPlane
                  )
                ],
              ),
              Icon(
                FontAwesomeIcons.bookmark
              )
            ],
          ),
        ),

        //4th Row

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            "Liked by Rajat Palankar and 568,444 others ",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),

        //5th Row

        Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 40.0,
                  width: 40.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(dummyStoryData[index].profilepic)
                  ),
                ),
              ),
              SizedBox(width: 10.0,),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Add a comment..."
                  ),
                ),
              )
            ],
          ),
        ),

      // 6th row 
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Text("20 Minutes Ago",style: TextStyle(color: Colors.grey),) ,
      )
      ],
    ),);
  }
}
