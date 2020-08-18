import 'dart:ffi';

import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';
//import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:medigo_hab59/constants.dart';
class Diseasopedia extends StatefulWidget {
  @override
  _DiseasopediaState createState() => _DiseasopediaState();
}

class _DiseasopediaState extends State<Diseasopedia> {
  String diseaseQuery;
  String name = '';
  String cat = '';
  String info = '';

  void fetchDisease(String query) async {
    http.Response response = await http.get(
      'http://www.healthos.co/api/v1/search/diseases/$query',
      headers: {HttpHeaders.authorizationHeader: "Bearer 321d205da6caec255b4f78080063fd790ac79e8a71e0da6deba207805c5a4c43"},
    );
    if (response.statusCode==200){
      String data = response.body;
      var decodeddata = jsonDecode(data);
      setState(() {
        name = decodeddata[0]['disease_name'];


        cat = decodeddata[0]['disease_cat'];



        info = decodeddata[0]['disease_info'];

        print('$name + $cat + $info');
      });
    }
    else{
      print(response.statusCode);
      fetchDisease(query);
    }
  }
  double _height=50;
  //double _width=300;
  Color colour3=Colors.white;
  Color colour4=Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
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
                      children: <Widget>[
                        IconButton(icon: Icon(Icons.arrow_back,color: Colors.white,), onPressed: (){
                          Navigator.pop(context);
                        }),
                        Text('Diseasopedia',style: TextStyle(fontSize: 30,color: Colors.white.withOpacity(0.9),fontWeight: FontWeight.bold),),
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
                    hintText: 'Search Disease',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0),)
                ),
                onChanged: (value){diseaseQuery = value;},
              ),
            ),

            RaisedButton(onPressed: (){
              fetchDisease(diseaseQuery);
              print(diseaseQuery);
              _height=700;
              //_width=500;
              colour3=Colors.transparent;
              colour4=Colors.white;
            },
              child: Text('Search'),
            ),

            Padding(
              padding: const EdgeInsets.only(left:25.0,right: 25.0,top: 12,bottom: 20),
              child: AnimatedContainer(
                duration: Duration(milliseconds: 50),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  gradient: LinearGradient(
                    colors: [colour1,Color(0xFF5B90F0)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    tileMode: TileMode.clamp,

                  ),
                ),
                width: double.infinity,
                height: _height,
//                depth: 19,
////                spread: 8,
////                borderRadius: 15,
                child:Padding
                (padding: const EdgeInsets.all(25),
                  child: Column(
                 //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text('search for a disease',style: TextStyle(color: colour3),),
                    Text(name,style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                    SizedBox(height: 10, ),
                    Text(cat,style: TextStyle(color:Colors.white,fontSize: 15),),
                    SizedBox(height: 10,),
                    Text(info,style: TextStyle(color:Colors.white,fontSize: 15),),

                  ],
                ),
                ),
              ),
            ),
          ],
        ),

      ),
    );
  }
}
