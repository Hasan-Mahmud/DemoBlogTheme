import 'package:blog_theme_news/src/constrants.dart';
import 'package:blog_theme_news/src/models/Blog.dart';
import 'package:blog_theme_news/src/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/blog_post.dart';
import 'components/categories.dart';
import 'components/recent_post.dart';
import 'components/search.dart';
import 'components/sidebar_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Column(
            children: List.generate(
              blogPosts.length, 
              (index) => BlogPostCard(blog: blogPosts[index],),
            ),
          ),
        ),
        if (!Responsive.isMobile(context))  SizedBox(width: kDefaultPadding),
        // Sidebar
        if (!Responsive.isMobile(context)) 
          Expanded(
            child: Column(
              children: [
                Search(),
                SizedBox(height: kDefaultPadding),
                Categories(),
                SizedBox(height: kDefaultPadding),
                RecentPost(),
              ],
            ),
          ),
      ],
    );
  }
}









