import 'package:flutter/material.dart';

import 'package:get/get.dart';

class SearchView extends GetView<SearchController> {
  const SearchView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
             TextFormField(

               decoration:  InputDecoration(
                 contentPadding: const EdgeInsets.symmetric(vertical: 12),
                   border:
                   OutlineInputBorder(
                       borderRadius: BorderRadius.circular(4),
                       borderSide: const BorderSide(color: Color(0xFF6993FF))),
                   enabledBorder:
                   OutlineInputBorder(
                       borderRadius: BorderRadius.circular(4),
                       borderSide: const BorderSide(color: Color(0xFF6993FF))),
                   disabledBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(4),
                     borderSide: const BorderSide(color: Color(0xFF6993FF)),
                   ),
                 hintText: "Search",
                 prefixIcon: const Icon(Icons.search,size: 32,)
               ),
             ),
              const SizedBox(height: 28,),
              Expanded(
                child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 16,
                    ),
                    itemCount: 24,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: ShapeDecoration(
                          image: const DecorationImage(
                            image: AssetImage("assets/images/searchphoto.png"),
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
