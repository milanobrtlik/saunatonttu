import 'package:flutter/material.dart';
import 'package:saunatonttu/home/view/home_view.dart';
import 'package:saunatonttu/page_articles/view/articles_view.dart';

class ArticlesPage extends StatelessWidget {
  const ArticlesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ArticlesView(),
      bottomNavigationBar: SaunatonttuNavigationBar(),
    );
  }
}
