import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/widgets/details_content.dart';
import 'package:news_app/widgets/image_widget.dart';

class DetailsScreen extends StatelessWidget {
  final Article article;

  const DetailsScreen({Key? key,required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      color: Colors.purple,
      child: SafeArea(
        child: Stack(
          children: [
            ImageWidget(
                screenHeight: screenHeight * 0.8,
                screenWidth: screenWidth,
                url: article.urlToImage==null?"https://cdn.pixabay.com/photo/2018/08/28/12/41/avatar-3637425_960_720.png":article.urlToImage!),
            Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                title: const Text(
                  "Details",
                  style: TextStyle(color: Colors.white),
                ),
                centerTitle: true,
                backgroundColor: Colors.transparent,
                elevation: 0,
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const  SizedBox(
                    height: 155 ,
                  ),
                  Expanded(
                    child: Container(
                      height: screenHeight,
                      decoration: BoxDecoration(
                        color: Colors.grey[50],
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35),
                        ),
                      ),
                      child: DetailsContent(article: article,),
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
