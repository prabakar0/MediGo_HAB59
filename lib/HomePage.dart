import 'package:flutter/material.dart';
import 'package:medigo_hab59/medical_ID.dart';
import 'constants.dart';
import 'package:clay_containers/clay_containers.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    //double width=MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      //backgroundColor: Colors.white.withOpacity(0.9),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),),
                gradient: LinearGradient(
                  colors: [colour1,colour2],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  //stops: [0.0,0.9],
                  tileMode: TileMode.clamp,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15,bottom: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    SizedBox(height: 85,),
                    Text('Welcome Back,',style: TextStyle(fontSize: 18,color: Colors.white),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Samsritha',style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: CircleAvatar(
                            radius: 30.0,
                            backgroundImage: AssetImage('images/model1.jpg'),
                          ),
                        ),
                      ],
                    ),
                    //SizedBox(height: 10,),
                  ],
                ),
              ),
            ),
            SizedBox(height: 17,),
            Padding(
              padding: const EdgeInsets.only(left:20.0),
              child: Text('What do you need?',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15,left: 15,right: 15,top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: (){},
                      child: ClayContainer(
                        height: 100,
                        //width: width*0.4,
                        //color: Color(0xFFF2F2F2),
                        depth: 19,
                        spread: 8,
                        borderRadius: 15,
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 15,),
                            Image.asset('images/syringe.png',height: 60,width: 60,),
                            Text('Pharmaceutical'),
                          ],
                        ),
                        //curveType: CurveType.convex,
                      ),
                    ),
                  ),
                  SizedBox(width: 17,),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){},


                      child: ClayContainer(
                        height: 100,
                        //width: width*0.4,
                        depth: 19,
                        spread: 8,
                        borderRadius: 15,
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 15,),
                            Image.asset('images/medical-assistance.png',height: 60,width: 60,),
                            Text('Mental Assistance'),
                          ],
                        ),
                        //curveType: CurveType.convex,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(bottom: 15,left: 15,right: 15,top: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        print('pressed');
                      },
                      child: ClayContainer(
                        height: 100,
                        //width: width*0.4,
                        //color: Color(0xFFF2F2F2),
                        depth: 19,
                        spread: 8,
                        borderRadius: 15,
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 15,),
                            Image.asset('images/medical-box.png',height: 60,width: 60,),
                            Text('Emergency practices'),
                          ],
                        ),
                        //curveType: CurveType.convex,
                      ),
                    ),
                  ),
                 SizedBox(width: 17,),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> MedicalID()));
                      },
                      child: ClayContainer(
                        height: 100,
                        //width: width*0.4,
                        depth: 19,
                        spread: 8,
                        borderRadius: 15,
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 15,),
                            Image.asset('images/personal-information.png',height: 60,width: 60,),
                            Text('Medical ID'),
                          ],
                        ),
                        //curveType: CurveType.convex,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left:20.0),
              child: Text('Health Articles',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ClayContainer(
                height: 150,
                depth: 19,
                spread: 8,
                borderRadius: 15,
                //curveType: CurveType.convex,
              ),
            ),
//            Padding(
//              padding: const EdgeInsets.all(15.0),
//              child: ClayContainer(
//                height: 150,
//                depth: 12,
//                spread: 8,
//                borderRadius: 15,
//                //curveType: CurveType.convex,
//              ),
//            ),
          ],
        ),
      ),
    );
  }
}
