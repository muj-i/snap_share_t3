import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:snap_share_t3/app/modules/create_post/views/create_post_view.dart';
import 'package:snap_share_t3/app/modules/home/views/home_view.dart';
import 'package:snap_share_t3/app/modules/user_profile/views/user_profile_view.dart';

import '../controllers/bottom_nav_layout_controller.dart';

// class BottomNavLayoutView extends GetView<BottomNavLayoutController> {
//    BottomNavLayoutView({Key? key}) : super(key: key);
//    int _currentIndex = 0;
//   final List<Widget>_screen = [
//     const HomeView(),
//     const SearchBar(),
//     const CreatePostView(),
//     const UserProfileView(),
//
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _screen[_currentIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: ,
//       ),
//     );
//   }
// }
class BottomNavLayoutView extends StatefulWidget {
  const BottomNavLayoutView({Key? key}) : super(key: key);

  @override
  State<BottomNavLayoutView> createState() => _BottomNavLayoutViewState();
}

class _BottomNavLayoutViewState extends State<BottomNavLayoutView> {
  int _currentIndex = 0;
  final List<Widget>_screen = [
    HomeView(),
    const SearchBar(),
    const CreatePostView(),
    const UserProfileView(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screen[_currentIndex],
      bottomNavigationBar: GNav(
        iconSize: 30,
        backgroundColor: Colors.white,
          activeColor: Colors.blue,
          tabBackgroundColor: Colors.blue.shade50,
          padding: EdgeInsets.only(left: 30,right: 30,top: 15,bottom: 15),
          tabBorderRadius: 10,
          tabs: [
        GButton(icon: Icons.home_outlined,),
        GButton(icon: Icons.search,),
        GButton(icon: Icons.add,),
        GButton(icon: Icons.person_outline,),
      ],selectedIndex: _currentIndex,
      onTabChange: (index){
          setState(() {
            _currentIndex = index;
          });
      },
      )
    );
  }
}
