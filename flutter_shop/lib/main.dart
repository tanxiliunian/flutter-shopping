import 'package:flutter/material.dart';
import './pages/index_page.dart';
import 'package:provide/provide.dart';
import 'config/index.dart';
import 'provide/index.dart';

void main() {
  final currentIndexProvide = CurrentIndexProvide();
  final categoryProvide = CategoryProvide();
  final categoryGoodsProvide = CategoryGoodsProvide();
  final providers = Providers();
  providers
    ..provide(Provider<CurrentIndexProvide>.value(currentIndexProvide))
    ..provide(Provider<CategoryProvide>.value(categoryProvide))
    ..provide(Provider<CategoryGoodsProvide>.value(categoryGoodsProvide));
  runApp(ProviderNode(child: MyApp(), providers: providers));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: KString.mainTitle,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: KColor.primaryColor,
          // primarySwatch: Colors.blue
        ),
        home: IndexPage());
  }
}
