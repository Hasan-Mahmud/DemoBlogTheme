import 'package:blog_theme_news/src/constrants.dart';
import 'package:blog_theme_news/src/models/Blog.dart';
import 'package:blog_theme_news/src/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BlogPostCard extends StatelessWidget {
  final Blog blog;
  const BlogPostCard({
    Key key, 
    @required this.blog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1.5,
            child: Image.asset(blog.image),
          ),
          Container(
            padding: EdgeInsets.all(kDefaultPadding),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Design".toUpperCase(),
                      style: TextStyle(
                        color: kDarkBlckColor,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: kDefaultPadding),
                    Text(
                      blog.date,
                      style: Theme.of(context).textTheme.caption,
                    )
                  ],
                ),
                Padding(
                  padding: 
                    const EdgeInsets.symmetric(vertical: kDefaultPadding),
                  child: Text(
                    blog.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: Responsive.isDesktop(context) ? 32 : 24,
                      fontFamily: "Raleway",
                      color: kDarkBlckColor,
                      height: 1.3,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Text(
                  blog.description,
                  maxLines: 4,
                  style: TextStyle(
                    height: 1.5,
                  ),
                ),
                SizedBox(height: kDefaultPadding,),
                Row(
                  children: [
                    TextButton(
                      onPressed: (){},
                      child: Container(
                        padding: EdgeInsets.only(bottom: kDefaultPadding / 4),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom:BorderSide(
                              color: kPrimaryColor,
                              width: 3,
                            ),
                          ),
                        ),
                        child: Text(
                          "Read More",
                          style: TextStyle(color: kDarkBlckColor),
                        ),
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      // icon: SvgPicture.asset("assets/icons/thumbs-up.svg"), 
                      icon: Icon(Icons.thumb_up_alt_outlined),
                      onPressed: (){},
                    ),
                    IconButton(
                      // icon: SvgPicture.asset("assets/icons/message-square.svg"), 
                      icon: Icon(Icons.message_outlined),
                      onPressed: (){},
                    ),
                    IconButton(
                      // icon: SvgPicture.asset("assets/icons/thumbs-up.svg"), 
                      icon: Icon(Icons.share_outlined),
                      onPressed: (){},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}