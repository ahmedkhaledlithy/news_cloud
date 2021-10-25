import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/articles_service.dart';

class ArticlesViewModel extends ChangeNotifier{

  List<Article> _articles=[];
  List<Article> _articlesByCategory=[];


  List<Article> get articles => _articles;
  List<Article> get articlesByCategory => _articlesByCategory;


 Future<void> fetchArticles()async{
    _articles=await NewsArticlesApi().fetchArticles();
    notifyListeners();
  }

  Future<void> fetchArticlesByCategory(String category)async{
    _articlesByCategory=await NewsArticlesApi().fetchArticlesByCategory(category);
    notifyListeners();

  }

}