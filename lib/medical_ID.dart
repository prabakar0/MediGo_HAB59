import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:clay_containers/clay_containers.dart';

 class MedicalID extends StatefulWidget {
   @override
   _MedicalIDState createState() => _MedicalIDState();
 }

 class _MedicalIDState extends State<MedicalID> {
   int height=180;
   int age=19;
   int weight=60;

   @override
   Widget build(BuildContext context) {
     return Scaffold(
        // backgroundColor: Color(0xFFF2F2F2),
         //backgroundColor: Colors.white.withOpacity(0.9),
         body: Container(
           width: double.infinity,
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
           child: SingleChildScrollView(
           child: Column(
             children: <Widget>[
               Container(

                 child: Padding(
                   padding: const EdgeInsets.only(left: 15,bottom: 15,top: 8),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     //crossAxisAlignment: CrossAxisAlignment.stretch,
                     children: <Widget>[
                       SizedBox(height: 85,),
                       Container(
                         height: 100,
                         width: 100,
                         decoration: BoxDecoration(
                           shape: BoxShape.circle,
                           border: Border.all(color: Colors.white.withOpacity(0.9),width: 2)
                         ),
                         padding: EdgeInsets.all(5.5),
                         child: CircleAvatar(
                           radius: 45.0,
                           backgroundImage: AssetImage('images/model1.jpg'),
                         ),
                       ),
                       Text('Samsritha',style: TextStyle(fontSize: 23,color: Colors.white,fontWeight: FontWeight.bold),),
                       Text('Medical ID',style: TextStyle(fontSize: 15,color: Colors.white),),
                       SizedBox(height: 20,),
                     ],
                   ),
                 ),
               ),
               Container(
                   decoration: BoxDecoration(
                     color: Color(0xFFF2F2F2),
                   borderRadius: BorderRadius.only(topRight: Radius.circular(45),topLeft: Radius.circular(45)),
                 ),
                 child: Column(
                   children: <Widget>[
                     Row(
                       children: <Widget>[
                         Expanded(
                           child: Padding(
                             padding: const EdgeInsets.only(left:25.0,right:7.7,top: 20),
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
                                       Icon(Icons.calendar_today,color: Color(0xFF9055FF),),
                                       Text(
                                         '  Date of Birth',
                                         style: kLabelTextStyle,
                                       ),
                                     ],
                                   ),
                                   //SizedBox(height: 1,),
                                   Text(
                                     '            27/09/1998',
                                     style: TextStyle(fontSize: 16.0,
                                       fontWeight: FontWeight.w900,),
                                   ),
                                 ],
                               ),
                               //curveType: CurveType.convex,
                             ),
                           ),
                         ), 
                         Expanded(
                           child: Padding(
                             padding: const EdgeInsets.only(left:7.7,right:25,top: 20),
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
                                       Icon(Icons.opacity,color: Color(0xFF9055FF),),
                                       Text(
                                         '  Blood Type',
                                         style: kLabelTextStyle,
                                       ),
                                     ],
                                   ),
                                   //SizedBox(height: 1,),
                                   Text(
                                     '            B+',
                                     style: TextStyle(fontSize: 16.0,
                                       fontWeight: FontWeight.w900,),
                                   ),
                                 ],
                               ),
                               //curveType: CurveType.convex,
                             ),
                           ),
                         ),
                       ],
                     ),
                     Padding(
                       padding: const EdgeInsets.only(left:25.0,right: 25.0,top: 20),
                       child: ClayContainer(
                         height: 110,
                         depth: 19,
                         spread: 8,
                         borderRadius: 15,
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: <Widget>[
                             SizedBox(height: 9,),
                             Text(
                               'Height',
                               style: kLabelTextStyle,
                             ),
                             //SizedBox(height: 1,),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               crossAxisAlignment: CrossAxisAlignment.baseline,
                               textBaseline: TextBaseline.alphabetic,
                               children: <Widget>[

                                 Text(
                                   height.toString(),
                                  style: kNumberTextStyle,
                                 ),
                                 Text(
                                   ' cm',
                                   style: kLabelTextStyle,
                                 ),
                               ],
                             ),
                             SliderTheme(
                               data: SliderTheme.of(context).copyWith(
                                 thumbShape:
                                 RoundSliderThumbShape(enabledThumbRadius: 9.0),
                                 activeTrackColor: Color(0xFF9055FF),
                                 thumbColor: Color(0xFF9055FF),
                                 overlayColor: Color(0x222962F7),
                                 inactiveTrackColor: Colors.grey,
                                 overlayShape: RoundSliderOverlayShape(overlayRadius: 20.0),
                               ),
                               child: Slider(
                                   value: height.toDouble(),
                                   min: 120.0,
                                   max: 220.0,
                                   onChanged: (double newValue) {
                                     setState(() {
                                       height = newValue.round();
                                     });
                                   }),
                             )
                           ],
                         ),
                         //curveType: CurveType.convex,
                       ),
                     ),

                     Row(
                       children: <Widget>[
                         Expanded(
                           child: Padding(
                             padding: const EdgeInsets.only(left:25.0,right:7.7,top: 20),
                             child: ClayContainer(
                               height: 110,
                               depth: 19,
                               spread: 8,
                               borderRadius: 15,
                               child: Column(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: <Widget>[
                                   Text(
                                     'Weight',
                                     style: kLabelTextStyle,
                                   ),
                                   Text(
                                     weight.toString(),
                                     style: kNumberTextStyle,
                                   ),
                                   Row(
                                     mainAxisAlignment: MainAxisAlignment.center,
                                     children: <Widget>[
                                       RoundIconButton(
                                         icon: Icons.remove,
                                         onPressed: () {
                                           setState(() {
                                             weight--;
                                           });
                                         },
                                       ),
                                       SizedBox(
                                         width: 2.0,
                                       ),
                                       RoundIconButton(
                                         icon: Icons.add,
                                         onPressed: () {
                                           setState(() {
                                             weight++;
                                           });
                                         },
                                       ),
                                     ],
                                   ),
                                 ],
                               ),
                               //curveType: CurveType.convex,
                             ),
                           ),
                         ),
                         Expanded(
                           child: Padding(
                             padding: const EdgeInsets.only(left:7.7,right: 25.0,top: 20),
                             child: ClayContainer(
                               height: 110,
                               depth: 19,
                               spread: 8,
                               borderRadius: 15,
                               child: Column(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: <Widget>[
                                   Text(
                                     'Age',
                                     style: kLabelTextStyle,
                                   ),
                                   Text(
                                     age.toString(),
                                     style: kNumberTextStyle,
                                   ),
                                   Row(
                                     mainAxisAlignment: MainAxisAlignment.center,
                                     children: <Widget>[
                                       RoundIconButton(
                                         icon: Icons.remove,
                                         onPressed: (){
                                           setState(() {
                                             age--;
                                           });
                                         },
                                       ),
                                       SizedBox(
                                           width:2.0
                                       ),
                                       RoundIconButton(
                                         icon: Icons.add,
                                         onPressed: (){
                                           setState(() {
                                             age++;
                                           });
                                         },
                                       ),
                                     ],
                                   ),
                                 ],
                               ),
                               //curveType: CurveType.convex,
                             ),
                           ),
                         ),
                       ],
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
                                 Icon(Icons.local_hospital,color: Color(0xFF9055FF),),
                                 Text(
                                   '  Medical Condition',
                                   style: kLabelTextStyle,
                                 ),
                               ],
                             ),
                             //SizedBox(height: 1,),
                             Text(
                               '             Low Blood Pressure',
                               style: TextStyle(fontSize: 15.0,
                                 fontWeight: FontWeight.w900,),
                             ),
                           ],
                         ),
                         //curveType: CurveType.convex,
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(left:25.0,right: 25.0,top: 20,bottom: 20),
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
                                   '  Emergency Contact',
                                   style: kLabelTextStyle,
                                 ),
                               ],
                             ),
                             //SizedBox(height: 1,),
                             Text(
                               '             +91 98566 67445',
                               style: TextStyle(fontSize: 15.0,
                                 fontWeight: FontWeight.w900,),
                             ),
                           ],
                         ),
                         //curveType: CurveType.convex,
                       ),
                     ),

                   ],
                 ),
               ),
             ],
           ),
           ),
         ),
     );
   }
 }

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, @required this.onPressed});

  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 3.0,
      child: Icon(icon),
      shape: CircleBorder(),
      //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      constraints: BoxConstraints.tightFor(
        width: 40.0,
        height: 40.0,
      ),
      fillColor: Color(0xFF8364FB),
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