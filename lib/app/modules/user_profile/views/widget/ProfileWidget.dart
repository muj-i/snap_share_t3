import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  final String img;
  final String name;
  final String email;
  final String post;
  final String following;
  final String follwer;
  const ProfileWidget({
    super.key,
    required this.img,
    required this.name,
    required this.email,
    required this.post,
    required this.following,
    required this.follwer,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            width: 10,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(100.0),
            child: Container(
              height: 100,
              width: 100,
              child: Center(
                child: Image.asset(
                  img,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8,bottom: 1),
                child: Text(
                  name,
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Text(
                email,
                style: TextStyle(fontSize: 16),
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Text(post,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                      Text(' Post  ',style: TextStyle(color: Colors.grey.shade700),),
                      Icon(Icons.circle,color: Colors.grey,size: 8,),
                      Text(following,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                      Text(' Following  ',style: TextStyle(color: Colors.grey.shade700),),
                      Icon(Icons.circle,color: Colors.grey,size: 8,),
                      Text(follwer,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                      Text(' Follower  ',style: TextStyle(color: Colors.grey.shade700),),
                    ],
                  ),
                ],
              ),

            ],
          )
        ],
      ),
    );
  }
}