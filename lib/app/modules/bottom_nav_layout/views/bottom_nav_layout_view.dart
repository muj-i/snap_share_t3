import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:snap_share_t3/app/modules/create_post/views/create_post_view.dart';
import 'package:snap_share_t3/app/modules/home/views/home_view.dart';
import 'package:snap_share_t3/app/modules/user_profile/views/user_profile_view.dart';
import '../../search/views/search_view.dart';
class BottomNavLayoutView extends StatefulWidget {
  const BottomNavLayoutView({Key? key}) : super(key: key);

  @override
  State<BottomNavLayoutView> createState() => _BottomNavLayoutViewState();
}

class _BottomNavLayoutViewState extends State<BottomNavLayoutView> {
  int _currentIndex = 0;
  List<Widget> _screen = [
     HomeView(),
    SearchView(),
    CreatePostView(),
    UserProfileView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screen[_currentIndex],
      bottomNavigationBar: GNav(
          tabBorderRadius: 15,
          gap: 8, // the tab button gap between icon and text
          color: Colors.black, // unselected icon color
          activeColor: Colors.blue, // selected icon and text color
          iconSize: 24, // tab button icon size
          tabBackgroundColor: Colors.blue.withOpacity(0.1), // selected tab background color
          padding: EdgeInsets.symmetric(horizontal: 35, vertical: 15), // navigation bar padding
          tabs: [
            GButton(
              icon: Icons.home_outlined,
            ),
            GButton(
              icon: Icons.search,
            ),
            GButton(
              icon: Icons.add,
            ),
            GButton(
              icon: Icons.person_outline,
            )
          ],
        selectedIndex: _currentIndex,
        onTabChange: (index){
            setState(() {
              _currentIndex = index;
            });

      },
      ),
    );
  }
}
