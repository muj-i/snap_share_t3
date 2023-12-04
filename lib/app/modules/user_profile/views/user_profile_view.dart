import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:snap_share_t3/app/modules/user_profile/views/widget/ProfileWidget.dart';
class UserProfileView extends StatefulWidget {
  const UserProfileView({Key? key}) : super(key: key);

  @override
  State<UserProfileView> createState() => _UserProfileViewState();
}

class _UserProfileViewState extends State<UserProfileView> with TickerProviderStateMixin {

  List<String> img = [
    'assets/placeholderimage/Image1.png',
    'assets/placeholderimage/Image2.png',
    'assets/placeholderimage/Image3.png',
    'assets/placeholderimage/Image4.png',
    'assets/placeholderimage/Image5.png',
    'assets/placeholderimage/Image6.png',
    'assets/placeholderimage/Rectangle 192.png',
    'assets/placeholderimage/Rectangle 193.png',
    'assets/placeholderimage/Rectangle 194.png',
    'assets/placeholderimage/Rectangle 195.png',
  ];

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'My Profile',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const ProfileWidget(
                img: 'assets/placeholderimage/24.png',
                name: 'Ferdous Mondol',
                email: '@ferdous12',
                post: '60',
                following: '125',
                follwer: '850',
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  width: double.infinity,
                  height: 15,
                  color: Colors.grey.shade200,
                ),
              ),
              Container(
                width: 260,
                height: 60,
                child: TabBar(
                  controller: _tabController,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.black,
                  indicatorColor: Colors.black,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorWeight: 1,
                  indicatorPadding: const EdgeInsets.only(left: 20,right: 20),
                  tabs: const [
                    Tab(
                      child: Row(
                        children: [
                          Icon(Icons.grid_view_outlined),
                          Text(' GridView'),
                        ],
                      ),
                    ),
                    Tab(    child: Row(
                      children: [
                        Icon(Icons.list_outlined),
                        Text(' ListView'),
                      ],
                    ),),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 500,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Container(
                      child: GridView.custom(
                        gridDelegate: SliverQuiltedGridDelegate(
                          crossAxisCount: 4,
                          mainAxisSpacing: 4,
                          crossAxisSpacing: 4,
                          repeatPattern: QuiltedGridRepeatPattern.inverted,
                          pattern: [
                            const QuiltedGridTile(2, 2),
                            const QuiltedGridTile(1, 2),
                            const QuiltedGridTile(1, 1),
                            const QuiltedGridTile(1, 1),
                          ],
                        ),
                        childrenDelegate: SliverChildBuilderDelegate(
                          childCount: img.length,
                              (context, index) => Padding(padding: const EdgeInsets.all(8),
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadiusDirectional.circular(10),
                                ),
                                child: Image.asset(img[index],fit: BoxFit.fill,)),
                          ),
                        ),
                      ),
                    ),
                    Container(child: const Center(child: Text('ListView Image in here')),),
                  ],
                ),
              ),

            ],
          ),
        ));
  }
}





