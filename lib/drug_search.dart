import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';
//import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:medigo_hab59/constants.dart';

class DrugSearch extends StatefulWidget {
  @override
  _DrugSearchState createState() => _DrugSearchState();
}

class _DrugSearchState extends State<DrugSearch> {
  String medicineQuery;
  String name1 = '';
  String name2 = '';
  String name3 = '';
  String name4 = '';
  String name5 = '';

  double price1 = 0.0;
  double price2 = 0.0;
  double price3 = 0.0;
  double price4 = 0.0;
  double price5 = 0.0;

  String manufacturer1 = '';
  String manufacturer2 = '';
  String manufacturer3 = '';
  String manufacturer4 = '';
  String manufacturer5 = '';

  String  medicine__id1 = '';
  String  medicine__id2 = '';
  String  medicine__id3 = '';
  String  medicine__id4 = '';
  String  medicine__id5 = '';


  void fetchAlbum(String query) async {
    http.Response response = await http.get(
      'http://www.healthos.co/api/v1/autocomplete/medicines/brands/$query',
      headers: {HttpHeaders.authorizationHeader: "Bearer 321d205da6caec255b4f78080063fd790ac79e8a71e0da6deba207805c5a4c43"},
    );
    if (response.statusCode==200){
      String data = response.body;
      var decodeddata = jsonDecode(data);
setState(() {
        name1 = decodeddata[0]['name'];
        name2 = decodeddata[1]['name'];
        name3 = decodeddata[2]['name'];
        name4 = decodeddata[3]['name'];
        name5 = decodeddata[4]['name'];

        price1 = decodeddata[0]['price'];
        price2 = decodeddata[1]['price'];
        price3 = decodeddata[2]['price'];
        price4 = decodeddata[3]['price'];
        price5 = decodeddata[4]['price'];


        manufacturer1 = decodeddata[0]['manufacturer'];
        manufacturer2 = decodeddata[1]['manufacturer'];
        manufacturer3 = decodeddata[2]['manufacturer'];
        manufacturer4 = decodeddata[3]['manufacturer'];
        manufacturer5 = decodeddata[4]['manufacturer'];

        medicine__id1 = decodeddata[0]['medicine_id'];
        medicine__id2 = decodeddata[1]['medicine_id'];
        medicine__id3 = decodeddata[2]['medicine_id'];
        medicine__id4 = decodeddata[3]['medicine_id'];
        medicine__id5 = decodeddata[4]['medicine_id'];
        print('$price1 + $name1 + $manufacturer1+ $medicine__id1');


      });
    }
    else{
      print(response.statusCode);
      fetchAlbum(query);
    }



  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
//      appBar: AppBar(
//        title: Text('Pharmaceuticals'),
//        //centerTitle: true,
//        flexibleSpace: Container(
//          decoration: BoxDecoration(
//              gradient: LinearGradient(
//                  begin: Alignment.topLeft,
//                  end: Alignment.bottomRight,
//                  colors: <Color>[
//                    Color(0xFF5B90F0),colour1,
//                  ])
//          ),
//        ),
//      ),
         body: SingleChildScrollView(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                           Text('Pharmaceuticals',style: TextStyle(fontSize: 30,color: Colors.white.withOpacity(0.9),fontWeight: FontWeight.bold),),
//                           Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Icon(Icons.add_alert,color: Colors.white.withOpacity(0.8)),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.only(right: 15),
//                             child: Container(
//                               height: 50,
//                               width: 50,
//                               decoration: BoxDecoration(
//                                   shape: BoxShape.circle,
//                                   border: Border.all(color: Colors.white.withOpacity(0.2),width: 2)
//                               ),
//                               padding: EdgeInsets.all(3),
//                               child: CircleAvatar(
//                                 radius: 20.0,
//                                 backgroundImage: AssetImage('images/model1.jpg'),
//                               ),
//                             ),
//                           ),
                         ],
                       ),
                       //SizedBox(height: 10,),
                     ],
                   ),
                 ),
               ),
               SizedBox(height: 10,),
               Padding(
                 padding: const EdgeInsets.only(left:12.0,right: 12.0,top: 12,bottom: 12),
                 child: TextField(
                   decoration: InputDecoration(
                     filled: true,
                     fillColor: Color(0xFFF2F2F2),
                     hintText: 'Search Medicines',
                     border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0),)
                   ),
                   onChanged: (value){medicineQuery = value;},
                 ),
               ),
               
               RaisedButton(onPressed: (){
                 fetchAlbum(medicineQuery);
                 print(medicineQuery);

               },
                 child: Text('Search'),
               ),

               Padding(
                 padding: const EdgeInsets.only(left:25.0,right: 25.0,top: 12),
                 child: ClayContainer(
                   width: double.infinity,
                   height: 90,
                   depth: 19,
                   spread: 8,
                   borderRadius: 15,
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: <Widget>[
                       Text(name1),
                       Text('₹$price1',style: TextStyle(color: Color(0xFF9055FF))),
                       Text(manufacturer1),

                     ],
                   ),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.only(left:25.0,right: 25.0,top: 20),
                 child: ClayContainer(
                   width: double.infinity,
                   height: 90,
                   depth: 19,
                   spread: 8,
                   borderRadius: 15,
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: <Widget>[
                       Text(name2),
                       Text('₹$price2',style: TextStyle(color: Color(0xFF9055FF))),
                       Text(manufacturer2),

                     ],
                   ),




                 ),
               ),
               Padding(
                 padding: const EdgeInsets.only(left:25.0,right: 25.0,top: 20),
                 child: ClayContainer(
                   width: double.infinity,
                   height: 90,
                   depth: 19,
                   spread: 8,
                   borderRadius: 15,
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: <Widget>[
                       Text(name3),
                       Text('₹$price3',style: TextStyle(color:Color(0xFF9055FF))),
                       Text(manufacturer3),

                     ],
                   ),

                 ),
               ),
               Padding(
                 padding: const EdgeInsets.only(left:25.0,right: 25.0,top: 20),
                 child: ClayContainer(
                   width: double.infinity,
                   height: 90,
                   depth: 19,
                   spread: 8,
                   borderRadius: 15,
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: <Widget>[
                       Text(name4),
                       Text('₹$price4',style: TextStyle(color: Color(0xFF9055FF))),
                       Text(manufacturer4),

                     ],
                   ),




                 ),
               ),
               Padding(
                 padding: const EdgeInsets.only(left:25.0,right: 25.0,top: 20,bottom: 20),
                 child: ClayContainer(
                   width: double.infinity,
                   height: 90,
                   depth: 19,
                   spread: 8,
                   borderRadius: 15,
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: <Widget>[
                       Text(name5),
                       Text('₹$price5',style: TextStyle(color: Color(0xFF9055FF))),
                       Text(manufacturer5),

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
