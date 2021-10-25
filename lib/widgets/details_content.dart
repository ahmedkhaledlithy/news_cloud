import 'package:flutter/material.dart';
import 'package:news_app/colors.dart';
import 'package:news_app/models/article_model.dart';

class DetailsContent extends StatelessWidget {
  final Article article;

  const DetailsContent({Key? key,required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 36),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding:const EdgeInsets.only(left: 25),
              child: Text(article.author==null?"No one":article.author!,
                style: TextStyle(
                    color: pink600Color,
                    fontSize: 30,
                    fontWeight: FontWeight.w600),
              ),
            ),

            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Title :",
                        style: TextStyle(
                            color: blackColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        article.title==null?"":article.title!,
                        style: TextStyle(
                            color: grey700Color,
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                        ),
                      ),

                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Description :",
                        style: TextStyle(
                            color: blackColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        article.description==null?"":article.description!,
                        style: TextStyle(
                            color: grey700Color,
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                        ),
                      ),

                    ],
                  ),
                  const SizedBox(
                    height: 50,
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

