import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:clay_containers/clay_containers.dart';

 class MedicalID extends StatefulWidget {
   @override
   _MedicalIDState createState() => _MedicalIDState();
 }

 class _MedicalIDState extends State<MedicalID> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
         backgroundColor: Color(0xFFF2F2F2),
         //backgroundColor: Colors.white.withOpacity(0.9),
         body: SingleChildScrollView(
         child: Column(
           children: <Widget>[
             Container(
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.only(bottomRight: Radius.circular(45),),
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
                     Row(
                       children: <Widget>[
                         CircleAvatar(
                           radius: 37.0,
                           backgroundImage: AssetImage('images/model1.jpg'),
                         ),

                         SizedBox(width: 20,),
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: <Widget>[
                             Text('Medical ID',style: TextStyle(fontSize: 18,color: Colors.white),),
                             Text('Samsritha',style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),),
                           ],
                         ),
                       ],
                     ),
                     //SizedBox(height: 10,),
                   ],
                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(left:25.0,right: 25.0,top: 25),
               child: ClayContainer(
                 height: 110,
                 depth: 19,
                 spread: 8,
                 borderRadius: 15,
                 //curveType: CurveType.convex,
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(left:25.0,right: 25.0,top: 20),
               child: ClayContainer(
                 height: 110,
                 depth: 19,
                 spread: 8,
                 borderRadius: 15,
                 //curveType: CurveType.convex,
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(left:25.0,right: 25.0,top: 20),
               child: ClayContainer(
                 height: 110,
                 depth: 19,
                 spread: 8,
                 borderRadius: 15,
                 //curveType: CurveType.convex,
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(left:25.0,right: 25.0,top: 20),
               child: ClayContainer(
                 height: 110,
                 depth: 19,
                 spread: 8,
                 borderRadius: 15,
                 //curveType: CurveType.convex,
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(left:25.0,right: 25.0,top: 20,bottom: 20.0),
               child: ClayContainer(
                 height: 110,
                 depth: 19,
                 spread: 8,
                 borderRadius: 15,
                 //curveType: CurveType.convex,
               ),
             ),
           ],
         ),
         ),
     );
   }
 }
//Positioned(
//left: 60.0,
//top: 25.0,
//child: Container(
//height: 100.0,
//width: 100.0,
//decoration: BoxDecoration(
//image: DecorationImage(
//image: AssetImage(imgPath),
//fit: BoxFit.contain
//)
//)
//)
//)