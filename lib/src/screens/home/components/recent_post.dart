import 'package:blog_theme_news/src/constrants.dart';
import 'package:flutter/material.dart';

import 'sidebar_container.dart';

class RecentPost extends StatelessWidget {
  const RecentPost({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SidebarContainer(
      title: "Recent Post", 
      child: Column(
        children: [
          RecentPostCard(
            image: "assets/images/0.jpeg",
            title: "Our Secret Formula to Online Workshops",
            press: (){},
          ),
          SizedBox(height: kDefaultPadding),
          RecentPostCard(
            image: "assets/images/3.jpg",
            title: "Digital Product Inovations from Warsaw with Love",
            press: (){},
          ),
        ],
      ),
    );
  }
}

class RecentPostCard extends StatelessWidget {
  final String image, title;
  final VoidCallback press;
  const RecentPostCard({
    Key key, 
    @required this.image, 
    @required this.title, 
    @required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: press,
        child: Row(
          children:[
            Expanded(
              flex: 2,
              child: Image.asset(image),
            ),
            SizedBox(width: kDefaultPadding),
            Expanded(
              flex: 5,
              child: Text(
                title,
                maxLines: 2,
                style: TextStyle(
                  fontFamily: "Raleway",
                  color: kDarkBlckColor,
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                ),
              ),
            ),
          ]
        ),
      ),
    );
  }
}