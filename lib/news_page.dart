import 'package:flutter/material.dart';
import 'constants.dart';
import 'ArticleModel.dart';
import 'News.dart';
import 'package:medigo_hab59/ArticleModel.dart';
import 'package:medigo_hab59/ArticleView.dart';
class NewsPage extends StatefulWidget {
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  List<ArticleModel> articles = new List<ArticleModel>();
  bool _loading = true;
  getNews()async{
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

  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      body: SingleChildScrollView(
        child: Column(
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Health Articles',style: TextStyle(fontSize: 30,color: Colors.white.withOpacity(0.9),fontWeight: FontWeight.bold),),
                      ],
                    ),
                    //SizedBox(height: 10,),
                  ],
                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:10.0,right: 10.0),
              child: Container(
                height: height,
                //padding: EdgeInsets.only(right: 16),

                child: ListView.builder(

                  itemCount: articles.length,
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  itemBuilder: (context,index){
                    return NewsCard(imgurl: articles[index].urlToImage, title: articles[index].title, desc: articles[index].description,url: articles[index].url,);
                  },

                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}

class NewsCard extends StatelessWidget {
  final String imgurl,title,desc,url;
  NewsCard({@required this.imgurl,@required this.title,@required this.desc,@required this.url});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){

        Navigator.push(context, MaterialPageRoute(builder: (context) => ArticleView(
          imageurl: url,
        ),
        ),
        );
      } ,

      child: Container(
        margin: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            //ClipRRect(
            // borderRadius: BorderRadius.circular(10),
            //  child: Image.network(imgurl)),
            Text(title,style: TextStyle(fontSize: 17,color: Colors.black87,fontWeight: FontWeight.w500),),
            Text(desc,style: TextStyle(color:Colors.grey[700]),),
          ],
        ),
      ),
    );
  }
}