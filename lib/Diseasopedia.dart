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
                        Text('Diseasopedia',style: TextStyle(fontSize: 30,color: Colors.white.withOpacity(0.9),fontWeight: FontWeight.bold),),
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
                    hintText: 'Search Disease',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0),)
                ),
                onChanged: (value){diseaseQuery = value;},
              ),
            ),

            RaisedButton(onPressed: (){
              fetchDisease(diseaseQuery);
              print(diseaseQuery);
            },
              child: Text('Search'),
            ),

            Padding(
              padding: const EdgeInsets.only(left:25.0,right: 25.0,top: 12),
              child: ClayContainer(
                width: double.infinity,
                height: 200,
                depth: 19,
                spread: 8,
                borderRadius: 15,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(name),
                    Text(cat),
                    Text(info),

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
