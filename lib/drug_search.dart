import 'package:flutter/material.dart';
//import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;













class DrugSearch extends StatefulWidget {
  @override
  _DrugSearchState createState() => _DrugSearchState();
}

class _DrugSearchState extends State<DrugSearch> {
  String medicineQuery;
  String name1 = 'nil';
  String name2 = 'nil';
  String name3 = 'nil';
  String name4 = 'nil';
  String name5 = 'nil';

  double price1 = 0.0;
  double price2 = 0.0;
  double price3 = 0.0;
  double price4 = 0.0;
  double price5 = 0.0;

  String manufacturer1 = 'nil';
  String manufacturer2 = 'nil';
  String manufacturer3 = 'nil';
  String manufacturer4 = 'nil';
  String manufacturer5 = 'nil';

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
        print('$price1 + $name1 + $manufacturer1');
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
      backgroundColor: Colors.black,
      appBar: AppBar(),
         body: SingleChildScrollView(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: <Widget>[
               SizedBox(height: 10,),
               TextField(

                 decoration: InputDecoration(

                   filled: true,
                   fillColor: Colors.white,
                   hintText: 'Search Medicines',
                   border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0),)
                 ),
                 onChanged: (value){medicineQuery = value;},
               ),
               
               RaisedButton(onPressed: (){
                 fetchAlbum(medicineQuery);
                 print(medicineQuery);
               },
                 child: Text('Search'),
                 
               ),

               Container(
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10.0),
                   color: Colors.white,
                 ),
                 width: double.infinity,
                 height: 100.0,
                 margin: EdgeInsets.all(10.0),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: <Widget>[
                     Text(name1),
                     Text('₹$price1'),
                     Text(manufacturer1),

                   ],
                 ),




               ),
               Container(
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10.0),
                   color: Colors.white,
                 ),
                 width: double.infinity,
                 height: 100.0,
                 margin: EdgeInsets.all(10.0),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: <Widget>[
                     Text(name2),
                     Text('₹$price2'),
                     Text(manufacturer2),

                   ],
                 ),




               ),
               Container(
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10.0),
                   color: Colors.white,
                 ),
                 width: double.infinity,
                 height: 100.0,
                 margin: EdgeInsets.all(10.0),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: <Widget>[
                     Text(name3),
                     Text('₹$price3'),
                     Text(manufacturer3),

                   ],
                 ),




               ),
               Container(
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10.0),
                   color: Colors.white,
                 ),
                 width: double.infinity,
                 height: 100.0,
                 margin: EdgeInsets.all(10.0),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: <Widget>[
                     Text(name4),
                     Text('₹$price4'),
                     Text(manufacturer4),

                   ],
                 ),




               ),
               Container(
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10.0),
                   color: Colors.white,
                 ),
                 width: double.infinity,
                 height: 100.0,
                 margin: EdgeInsets.all(10.0),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: <Widget>[
                     Text(name5),
                     Text('₹$price5'),
                     Text(manufacturer5),

                   ],
                 ),




               ),

               


             ],
           ),

),


    );
  }
}
