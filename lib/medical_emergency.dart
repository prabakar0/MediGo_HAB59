import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:medigo_hab59/constants.dart';
import 'package:medigo_hab59/medical_emergency_brain.dart';
import 'medical_emergency_brain.dart';

class MedicalEmergency extends StatefulWidget {
  @override
  _MedicalEmergencyState createState() => _MedicalEmergencyState();
}

class _MedicalEmergencyState extends State<MedicalEmergency> {

  @override


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
            appBar: AppBar(
        title: Text('Medical Emergency'),
        //centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Color(0xFF5B90F0),colour1,
                  ])
          ),
        ),
      ),

      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(15),
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
        crossAxisCount: 3,
        children: <Widget>[
          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Procedure(choice:0);
                  },
                ),
              );
            },
            child: ClayContainer(
              height: 120,
              depth: 19,
              spread: 8,
              borderRadius: 15,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),

                  Image.asset(
                    'images/epipen.png',
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    medemer[0].heading,
                    style: TextStyle(fontSize: 12,color: Color(0xFF428DFF)),
                  ),
                ],
              ),
              //curveType: CurveType.convex,
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Procedure(choice:1);
                  },
                ),
              );
            },
            child: ClayContainer(
              height: 120,
              depth: 19,
              spread: 8,
              borderRadius: 15,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    'images/asthma.png',
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    medemer[1].heading,
                    style: TextStyle(fontSize: 12,color: Color(0xFF428DFF)),
                  ),
                ],
              ),
              //curveType: CurveType.convex,
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Procedure(choice:2);
                  },
                ),
              );
            },
            child: ClayContainer(
              height: 120,
              depth: 19,
              spread: 8,
              borderRadius: 15,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    'images/bleeding.png',
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    medemer[2].heading,
                    style: TextStyle(fontSize: 12,color: Color(0xFF428DFF)),
                  ),
                ],
              ),
              //curveType: CurveType.convex,
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Procedure(choice:3);
                  },
                ),
              );
            },
            child: ClayContainer(
              height: 120,
              depth: 19,
              spread: 8,
              borderRadius: 15,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    'images/ointment.png',
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    medemer[3].heading,
                    style: TextStyle(fontSize: 12,color: Color(0xFF428DFF)),
                  ),
                ],
              ),
              //curveType: CurveType.convex,
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Procedure(choice:4);
                  },
                ),
              );
            },
            child: ClayContainer(
              height: 120,
              depth: 19,
              spread: 8,
              borderRadius: 15,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    'images/choking.png',
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    medemer[4].heading,
                    style: TextStyle(fontSize: 12,color: Color(0xFF428DFF)),
                  ),
                ],
              ),
              //curveType: CurveType.convex,
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Procedure(choice:5);
                  },
                ),
              );
            },
            child: ClayContainer(
              height: 120,
              depth: 19,
              spread: 8,
              borderRadius: 15,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    'images/cpr.png',
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    medemer[5].heading,
                    style: TextStyle(fontSize: 12,color: Color(0xFF428DFF)),
                  ),
                ],
              ),
              //curveType: CurveType.convex,
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Procedure(choice:6);
                  },
                ),
              );
            },
            child: ClayContainer(
              height: 120,
              depth: 19,
              spread: 8,
              borderRadius: 15,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    'images/defribillator.png',
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    medemer[6].heading,
                    style: TextStyle(fontSize: 12,color: Color(0xFF428DFF)),
                  ),
                ],
              ),
              //curveType: CurveType.convex,
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Procedure(choice:7);
                  },
                ),
              );
            },
            child: ClayContainer(
              height: 120,
              depth: 19,
              spread: 8,
              borderRadius: 15,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    'images/eye-drop.png',
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    medemer[7].heading,
                    style: TextStyle(fontSize: 12,color: Color(0xFF428DFF)),
                  ),
                ],
              ),
              //curveType: CurveType.convex,
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Procedure(choice:8);
                  },
                ),
              );
            },
            child: ClayContainer(
              height: 120,
              depth: 19,
              spread: 8,
              borderRadius: 15,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    'images/injury (2).png',
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    medemer[8].heading,
                    style: TextStyle(fontSize: 12,color: Color(0xFF428DFF),),
                  ),
                ],
              ),
              //curveType: CurveType.convex,
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Procedure(choice:9);
                  },
                ),
              );
            },
            child: ClayContainer(
              height: 120,
              depth: 19,
              spread: 8,
              borderRadius: 15,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    'images/injury (3).png',
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    medemer[9].heading,
                    style: TextStyle(fontSize: 12,color: Color(0xFF428DFF)),
                  ),
                ],
              ),
              //curveType: CurveType.convex,
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Procedure(choice:10);
                  },
                ),
              );
            },
            child: ClayContainer(
              height: 120,
              depth: 19,
              spread: 8,
              borderRadius: 15,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    'images/heart-attack.png',
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    medemer[10].heading,
                    style: TextStyle(fontSize: 12,color: Color(0xFF428DFF)),
                  ),
                ],
              ),
              //curveType: CurveType.convex,
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Procedure(choice:11);
                  },
                ),
              );
            },
            child: ClayContainer(
              height: 120,
              depth: 19,
              spread: 8,
              borderRadius: 15,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    'images/antibiotic.png',
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    medemer[11].heading,
                    style: TextStyle(fontSize: 12,color: Color(0xFF428DFF)),
                  ),
                ],
              ),
              //curveType: CurveType.convex,
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Procedure(choice:12);
                  },
                ),
              );
            },
            child: ClayContainer(
              height: 120,
              depth: 19,
              spread: 8,
              borderRadius: 15,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),

                  Image.asset(
                    'images/fast.png',
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    medemer[12].heading,
                    style: TextStyle(fontSize: 12,color: Color(0xFF428DFF)),
                  ),
                ],
              ),
              //curveType: CurveType.convex,
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Procedure(choice:13);
                  },
                ),
              );
            },
            child: ClayContainer(
              height: 120,
              depth: 19,
              spread: 8,
              borderRadius: 15,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),

                  Image.asset(
                    'images/injection.png',
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    medemer[13].heading,
                    style: TextStyle(fontSize: 12,color: Color(0xFF428DFF)),
                  ),
                ],
              ),
              //curveType: CurveType.convex,
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Procedure(choice:14);
                  },
                ),
              );
            },
            child: ClayContainer(
              height: 120,
              depth: 19,
              spread: 8,
              borderRadius: 15,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),

                  Image.asset(
                    'images/heated.png',
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    medemer[14].heading,
                    style: TextStyle(fontSize: 12,color: Color(0xFF428DFF)),
                  ),
                ],
              ),
              //curveType: CurveType.convex,
            ),
          ),
        ],
      ),

    );
  }
}
