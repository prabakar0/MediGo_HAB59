import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medigo_hab59/medical_ID.dart';
import 'constants.dart';
import 'package:clay_containers/clay_containers.dart';
import 'drug_search.dart';

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
                  colors: [colour1,Color(0xFF5B90F0)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  //stops: [0.0,0.9],
                  tileMode: TileMode.clamp,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15,bottom: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    SizedBox(height: 100,),
                    Text('Welcome Back,',style: TextStyle(fontSize: 18,color: Colors.white.withOpacity(0.7)),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Samsritha',style: TextStyle(fontSize: 40,color: Colors.white.withOpacity(0.9),fontWeight: FontWeight.bold),),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                                border: Border.all(color: Colors.white.withOpacity(0.2),width: 2)
                            ),
                            padding: EdgeInsets.all(3),
                            child: CircleAvatar(
                              radius: 20.0,
                              backgroundImage: AssetImage('images/model1.jpg'),
                            ),
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
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return DrugSearch();
                        },
                        ),
                        );
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
                            SizedBox(height: 20,),
                            Image.asset('images/syringe.png',height: 50,width: 50,),
                            Text('Pharmaceutical',style: TextStyle(fontSize: 14.5),),
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
                            SizedBox(height: 20,),
                            Image.asset('images/medical-assistance.png',height: 50,width: 50,),
                            Text('Mental Assistance',style: TextStyle(fontSize: 14.5),),
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
                            SizedBox(height: 20,),
                            Image.asset('images/medical-box.png',height: 50,width: 50,),
                            Text('Emergency practices',style: TextStyle(fontSize: 14.5),),
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
                            SizedBox(height: 20,),
                            Image.asset('images/personal-information.png',height: 50,width: 50,),
                            Text('Medical ID',style: TextStyle(fontSize: 14.5),),
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
              padding: const EdgeInsets.only(left:20.0,bottom: 10),
              child: Text('Health Articles',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  SizedBox(width: 12,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClayContainer(
                  height: 150,
                  width: 300,
                  depth: 20,
                  spread: 8,
                  borderRadius: 15,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      SizedBox(height: 78,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              colors: [colour1,Color(0xFF5B90F0)],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              tileMode: TileMode.clamp,
                            ),
                          ),
                          child: Icon(Icons.arrow_forward,color: Colors.white.withOpacity(0.7),size: 20,),
                        ),
                      ),
                    ],
                  ),
                  //curveType: CurveType.convex,
                ),
              ),
                  Padding(
                    padding: const EdgeInsets.only(top:8.0,bottom: 8,left: 10),
                    child: ClayContainer(
                      height: 150,
                      width: 310,
                      depth: 20,
                      spread: 8,
                      borderRadius: 15,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          SizedBox(height: 78,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                  colors: [colour1,Color(0xFF5B90F0)],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  tileMode: TileMode.clamp,
                                ),
                              ),
                              child: Icon(Icons.arrow_forward,color: Colors.white.withOpacity(0.7),size: 20,),
                            ),
                          ),
                        ],
                      ),
                      //curveType: CurveType.convex,
                    ),
                  ),
                  SizedBox(width: 20,),
                ],
              ),
            ),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
