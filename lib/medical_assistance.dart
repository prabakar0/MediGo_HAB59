import 'package:flutter/material.dart';
import 'package:medigo_hab59/constants.dart';
import 'package:clay_containers/clay_containers.dart';
class MedicalAssistance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),),
                gradient: LinearGradient(
                  colors: [colour1,Color(0xFF5B90F0)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  //stops: [0.0,0.9],
                  tileMode: TileMode.clamp,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15,bottom: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    SizedBox(height: 75,),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(icon: Icon(Icons.arrow_back,color: Colors.white,), onPressed: (){
                          Navigator.pop(context);
                        }),
                        Text('Need Help?',style: TextStyle(fontSize: 30,color: Colors.white.withOpacity(0.9),fontWeight: FontWeight.bold),),
                      ],
                    ),
                    //SizedBox(height: 10,),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: ClayContainer(
                width: double.infinity,
                height: 90,
                depth: 19,
                spread: 8,
                borderRadius: 15,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    //initChaptersTitleScrap(),

                    Text('Can we help?',style: TextStyle(fontFamily: 'nunito',fontSize: 17,fontWeight: FontWeight.bold)),
                    Padding(
                      padding: const EdgeInsets.only(left:16.0,bottom: 16,right: 10),
                      child: Text('If you\'re going through a difficult time and want support, we\'d like to help.',softWrap: true,style: TextStyle(fontFamily: 'nunito',)),
                    ),


                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:16.0,right: 16),
              child: SizedBox(
                height: 1.0,
                width: double.infinity,
                child: Divider(
                  color: Colors.grey ,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:25.0,right: 25.0,top: 20),
              child: ClayContainer(
                height: 80,
                depth: 19,
                spread: 8,
                borderRadius: 15,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 15,),
                    Row(
                      children: <Widget>[
                        SizedBox(width: 14,),
                        Icon(Icons.phone,color: Color(0xFF9055FF),),
                        Text(
                          '   Contact a helpline',
                          style: TextStyle(fontFamily: 'nunito',fontSize: 17,fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    //SizedBox(height: 1,),
                    Text(
                      '             +91 91529 87821',
                      style: TextStyle(fontSize: 15.0,
                        fontWeight: FontWeight.w900,),
                    ),
                  ],
                ),
                //curveType: CurveType.convex,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: ClayContainer(
                width: double.infinity,
                height: 490,
                depth: 19,
                spread: 8,
                borderRadius: 15,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    //initChaptersTitleScrap(),

                    Text('Suicide Prevention Lifeline',style: TextStyle(fontFamily: 'nunito',fontSize: 17,fontWeight: FontWeight.bold)),
                    Padding(
                      padding: const EdgeInsets.only(left:16.0,bottom: 16,right: 10),
                      child: Text('What Happens When You Call The Lifeline?\n\nFirst, you’ll hear an automated message featuring additional options while your call is routed to your local Lifeline network crisis center.\n\n\nWe’ll play you a little music while we connect you to a skilled, trained crisis worker.\n\nA trained crisis worker at your local center will answer the phone.\n\nThis person will listen to you, understand how your problem is affecting you, provide support, and get you the help you need.\n\nLifeline Center calls are free and confidential, and we’re available 24/7.',softWrap: true,style: TextStyle(fontFamily: 'nunito',)),
                    ),


                  ],
                ),
              ),
            ),
          ],
        ),
      ),



    );
  }
}
