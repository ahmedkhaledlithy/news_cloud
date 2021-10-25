import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:http/http.dart' as http;
import 'package:news_app/models/articles_model.dart';
import 'package:news_app/secret.dart';

class NewsArticlesApi {
  Future<Secret> secret = SecretLoader(secretPath: "assets/secrets.json").load();


  Future<List<Article>> fetchArticles() async{
    String apiKey="";
    secret.then((value) {
      apiKey= value.apikey;
    });
    List<Article> listOfArticles=[];

     try{
       http.Response response = await http.get(Uri.parse('https://newsapi.org/v2/top-headlines?country=eg&apiKey=$apiKey'));
       if(response.statusCode==200){
         String data=response.body;
         var jsonData=jsonDecode(data);
         ArticlesList articles = ArticlesList.fromJson(jsonData);
          listOfArticles=articles.articles.map((e) => Article.fromJson(e)).toList();

         return listOfArticles;

         
       }else{
         debugPrint("status code : ${response.statusCode}");
       }
     }catch (e){
       debugPrint(e.toString());
     }

     return listOfArticles;

  }

  //===================================================================

  Future<List<Article>> fetchArticlesByCategory(String category) async{
    String apiKey="";
    secret.then((value) {
      apiKey= value.apikey;
    });
    List<Article> listOfArticles=[];

    try{
      http.Response response = await http.get(Uri.parse('https://newsapi.org/v2/top-headlines?country=eg&category=$category&apiKey=$apiKey'));
      if(response.statusCode==200){
        String data=response.body;
        var jsonData=jsonDecode(data);
        ArticlesList articles = ArticlesList.fromJson(jsonData);
         listOfArticles=articles.articles.map((e) => Article.fromJson(e)).toList();

        return listOfArticles;


      }else{
        debugPrint("status code : ${response.statusCode}");
      }
    }catch (e){
      debugPrint(e.toString());
    }
    return listOfArticles;
  }
}
