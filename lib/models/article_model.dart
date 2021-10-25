class Article
{
 final String? author;
 final String? title;
 final String? description;
 final String? url;
 final String? urlToImage;
 final String? publishedAt;

 Article({this.author, this.title, this.description, this.url, this.urlToImage,
      this.publishedAt});


    factory Article.fromJson(Map<String,dynamic>json){
      return Article(
        author: json["author"],
        title: json["title"],
        description: json["description"],
        url:  json["url"],
        publishedAt: json["publishedAt"],
        urlToImage: json["urlToImage"]
      );

    }
}