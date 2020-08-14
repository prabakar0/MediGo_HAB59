import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medigo_hab59/ArticleModel.dart';
import 'package:medigo_hab59/ArticleView.dart';
import 'package:medigo_hab59/medical_ID.dart';
import 'package:medigo_hab59/news_page.dart';
import 'constants.dart';
import 'package:clay_containers/clay_containers.dart';
import 'drug_search.dart';
import 'ArticleModel.dart';
import 'News.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ArticleModel> articles = new List<ArticleModel>();
  bool _loading = true;
  getNews() async {
    News newsObject = News();
    await newsObject.GetNews();
    articles = newsObject.news;
    setState(() {
      _loading = false;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getNews();
  }

  @override
  Widget build(BuildContext context) {
    //double width=MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      //backgroundColor: Colors.white.withOpacity(0.9),
      body: _loading
          ? Center(
              child: Container(
              child: CircularProgressIndicator(),
            ))
          : SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                      ),
                      gradient: LinearGradient(
                        colors: [colour1, Color(0xFF5B90F0)],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        //stops: [0.0,0.9],
                        tileMode: TileMode.clamp,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, bottom: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          SizedBox(
                            height: 120,
                          ),
                          Text(
                            'Welcome Back,',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white.withOpacity(0.7)),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Samsritha',
                                style: TextStyle(
                                    fontSize: 40,
                                    color: Colors.white.withOpacity(0.9),
                                    fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Colors.white.withOpacity(0.2),
                                          width: 2)),
                                  padding: EdgeInsets.all(3),
                                  child: CircleAvatar(
                                    radius: 20.0,
                                    backgroundImage:
                                        AssetImage('images/model1.jpg'),
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
                  SizedBox(
                    height: 17,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      'What do you need?',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        bottom: 15, left: 15, right: 15, top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return DrugSearch();
                                  },
                                ),
                              );
                            },
                            child: ClayContainer(
                              height: 120,
                              //width: width*0,
                              //color: Color(0xFFF2F2F2),
                              depth: 19,
                              spread: 8,
                              borderRadius: 15,
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Image.asset(
                                    'images/syringe.png',
                                    height: 60,
                                    width: 60,
                                  ),
                                  Text(
                                    'Pharmaceutical',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ],
                              ),
                              //curveType: CurveType.convex,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 17,
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {},
                            child: ClayContainer(
                              height: 120,
                              //width: width*0.4,
                              depth: 19,
                              spread: 8,
                              borderRadius: 15,
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Image.asset(
                                    'images/medical-assistance.png',
                                    height: 60,
                                    width: 60,
                                  ),
                                  Text(
                                    'Mental Assistance',
                                    style: TextStyle(fontSize: 15),
                                  ),
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
                    padding: const EdgeInsets.only(
                        bottom: 15, left: 15, right: 15, top: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              print('pressed');
                            },
                            child: ClayContainer(
                              height: 120,
                              //width: width*0.4,
                              //color: Color(0xFFF2F2F2),
                              depth: 19,
                              spread: 8,
                              borderRadius: 15,
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Image.asset(
                                    'images/medical-box.png',
                                    height: 60,
                                    width: 60,
                                  ),
                                  Text(
                                    'Medical Emergency',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ],
                              ),
                              //curveType: CurveType.convex,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 17,
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MedicalID()));
                            },
                            child: ClayContainer(
                              height: 120,
                              //width: width*0.4,
                              depth: 19,
                              spread: 8,
                              borderRadius: 15,
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Image.asset(
                                    'images/personal-information.png',
                                    height: 60,
                                    width: 60,
                                  ),
                                  Text(
                                    'Medical ID',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ],
                              ),
                              //curveType: CurveType.convex,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 9),
                  Padding(
                    padding: const EdgeInsets.only(top:5,left: 20.0, bottom: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Health Articles',
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 30,),
                        GestureDetector(
                          onTap: (){

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return NewsPage();
                                },
                              ),
                            );

                          },
                            child: Text(
                          'See all  ',
                          style: TextStyle(
                              fontSize: 16, color: Colors.grey.shade700),
                        )),
                      ],
                    ),
                  ),
                  Container(
                    height: 170,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        SizedBox(
                          width: 12,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClayContainer(
                            height: 120,
                            width: 300,
                            depth: 20,
                            spread: 8,
                            borderRadius: 15,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
//                                SizedBox(
//                                  height: 78,
//                                ),
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 20,bottom: 9,left: 12,right: 12),
                                    child: Text('Bubonic Plague: Causes,Symptoms and Mode of Transmission',softWrap: true,style:TextStyle(fontSize: 18,fontWeight: FontWeight.w600)),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8,bottom: 8,left: 8,right: 8),
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      gradient: LinearGradient(
                                        colors: [colour1, Color(0xFF5B90F0)],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        tileMode: TileMode.clamp,
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.arrow_forward,
                                      color: Colors.white.withOpacity(0.7),
                                      size: 20,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, bottom: 8, left: 10),
                          child: ClayContainer(
                            height: 150,
                            width: 310,
                            depth: 20,
                            spread: 8,
                            borderRadius: 15,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                SizedBox(
                                  height: 78,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      gradient: LinearGradient(
                                        colors: [colour1, Color(0xFF5B90F0)],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        tileMode: TileMode.clamp,
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.arrow_forward,
                                      color: Colors.white.withOpacity(0.7),
                                      size: 20,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ),

//              Container(
//
//
//                height: 300 ,
//                padding: EdgeInsets.only(right: 16),
//
//                child: ListView.builder(
//
//                  itemCount: articles.length,
//                  shrinkWrap: true,
//                  physics: ClampingScrollPhysics(),
//                  itemBuilder: (context,index){
//                    return NewsCard(imgurl: articles[index].urlToImage, title: articles[index].title, desc: articles[index].description,url: articles[index].url,);
//                  },
//
//                ),
//              ),
                ],
              ),
            ),
    );
  }
}

class NewsCard extends StatelessWidget {
  final String imgurl, title, desc, url;
  NewsCard(
      {@required this.imgurl,
      @required this.title,
      @required this.desc,
      @required this.url});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ArticleView(
              imageurl: url,
            ),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            //ClipRRect(
            // borderRadius: BorderRadius.circular(10),
            //  child: Image.network(imgurl)),
            Text(
              title,
              style: TextStyle(
                  fontSize: 17,
                  color: Colors.black87,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              desc,
              style: TextStyle(color: Colors.grey[700]),
            ),
          ],
        ),
      ),
    );
  }
}
