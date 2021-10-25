
class ArticlesList
{
  final List<dynamic> articles;


  ArticlesList({required this.articles});


  factory ArticlesList.fromJson(Map<String,dynamic>json){
    return ArticlesList(
      articles: json["articles"]
    );

  }
}