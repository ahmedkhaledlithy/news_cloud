import 'package:flutter/material.dart';
import 'package:news_app/view_models/articles_viewmodel.dart';
import 'package:news_app/widgets/article_item.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {



  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final notifier = Provider.of<ArticlesViewModel>(context);

    WidgetsBinding.instance!.addPostFrameCallback((_) {
      notifier.fetchArticles();
    });

  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Consumer<ArticlesViewModel>(
        builder: (context, viewModel, _) {
          return ListView.builder(
            itemCount: viewModel.articles.length,
            itemBuilder: (context, index) {
              return ArticleItem(article: viewModel.articles[index],);
            },
          );
        },
      ),
    );
  }
}
