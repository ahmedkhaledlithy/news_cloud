import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/view/details_screen.dart';

class ArticleItem extends StatelessWidget {
  final Article article;
  const ArticleItem({Key? key,required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(10),
      child: GestureDetector(
        onTap: (){
         Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailsScreen(article: article,)));
        },
        child: FittedBox(
          fit: BoxFit.fitHeight,
          child: Container(
            padding: const EdgeInsets.all(10),
            height: height * .3,
            width: width * .5,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                border: Border.all(color: Colors.indigo)),
            child: Column(

              children: [
                Text(article.author==null?"ahmed":article.author!,
                ),
                Text(
                  article.title==null?"":article.title!,maxLines: 3,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: height * .02,
                ),
                Expanded(child: Image.network(
                    article.urlToImage==null?"https://cdn.pixabay.com/photo/2018/08/28/12/41/avatar-3637425_960_720.png":article.urlToImage!,
                    fit: BoxFit.fill,

                  height: 50,
                )),



              ],
            ),
          ),
        ),
      ),
    );
  }
}

