import 'package:flutter/material.dart';

import '../../../constrants.dart';
import '../components/sidebar_container.dart';

class Search extends StatelessWidget {
  const Search({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SidebarContainer(
      title: 'Search',
      child: TextField(
        onChanged: (value){},
        decoration: InputDecoration(
          hintText: "Type here...",
          suffixIcon: Padding(
            padding: const EdgeInsets.all(kDefaultPadding / 2 ),
            child: Icon(Icons.search_outlined),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(kDefaultPadding / 2),
            ), 
            borderSide: BorderSide(
              color: Color(0xffCCCCCC),
            )
          ),
        ),
      ),
    );
  }
}