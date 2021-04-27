import 'package:blog_theme_news/src/constrants.dart';
import 'package:blog_theme_news/src/controllers/MenuControllers.dart';
import 'package:blog_theme_news/src/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'component/header.dart';
import 'component/side_menu.dart';

class MainScreen extends StatelessWidget{
  final MenuController _controller = Get.put(MenuController());  
  Widget build(context){
    return Scaffold(
      key: _controller.scaffoldkey,
      drawer: SideMenu(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            Container(
              padding: EdgeInsets.all(kDefaultPadding),
              constraints: BoxConstraints(maxWidth: kMaxWidth),
              child: SafeArea(child: HomeScreen()),
            ),
          ]
        ),
      ),
    );
  }
}







