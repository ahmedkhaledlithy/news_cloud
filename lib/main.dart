import 'package:flutter/material.dart';
import 'package:news_app/view_models/articles_viewmodel.dart';
import 'package:provider/provider.dart';

import 'view/home_screen.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<ArticlesViewModel>(create: (BuildContext context)=>ArticlesViewModel()),
  ],
  child: const MyNews()));
}

class MyNews extends StatelessWidget {
  const MyNews({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  HomeScreen(),
    );
  }
}

