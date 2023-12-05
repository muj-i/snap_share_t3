import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../controllers/notifications_controller.dart';

class NotificationsView extends GetView<NotificationsController> {
  const NotificationsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 24,
              child: SvgPicture.asset(
                'assets/svgs/arrow_back.svg',
                height: 32,
                width: 32,
              ),
            ),
          ),
        ),
        titleSpacing: 0,
        title: const Text(
          'Notification',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            fontFamily: 'Satoshi',
            color: Colors.black87,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Divider(
              color: Colors.black12,
              height: 1,
              thickness: 0.5,
            ),
            Card(
              elevation: 0,
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 8, top: 8, right: 0, bottom: 0),
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 32,
                            width: 32,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 24,
                              child: Icon(Icons.person),
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          SizedBox(
                            width: 295,
                            //height: 40,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: const TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Dennis Nedry',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Satoshi',
                                            color: Colors.black87),
                                      ),
                                      TextSpan(
                                        text: ' commented on ',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'Satoshi',
                                            color: Colors.black87),
                                      ),
                                      TextSpan(
                                        text:
                                            'Isla Nublar SOC2 compliance report',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Satoshi',
                                            color: Colors.black87),
                                      ),
                                    ],
                                  ),
                                  textScaler: const TextScaler.linear(1.1),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  'Last Wednesday at 9:42 AM',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Satoshi',
                                    color: Colors.black26,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(
              color: Colors.black12,
              height: 1,
              thickness: 0.5,
            ),
            Card(
              elevation: 0,
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 8, top: 8, right: 0, bottom: 0),
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 32,
                            width: 32,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 24,
                              child: Icon(Icons.person),
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          SizedBox(
                            width: 295,
                            //height: 40,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: const TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Dennis Nedry',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Satoshi',
                                            color: Colors.black87),
                                      ),
                                      TextSpan(
                                        text: ' commented on ',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'Satoshi',
                                            color: Colors.black87),
                                      ),
                                      TextSpan(
                                        text:
                                            'Isla Nublar SOC2 compliance report',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Satoshi',
                                            color: Colors.black87),
                                      ),
                                    ],
                                  ),
                                  textScaler: const TextScaler.linear(1.1),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  'Last Wednesday at 9:42 AM',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Satoshi',
                                    color: Colors.black26,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(
              color: Colors.black12,
              height: 1,
              thickness: 0.5,
            ),
            Card(
              elevation: 0,
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 8, top: 8, right: 0, bottom: 0),
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                            height: 32,
                            width: 32,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 24,
                              child: Icon(Icons.person),
                            ),
                          ),
                          const SizedBox(
                            width: 220,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Md Shagor, from your contacts is on instagram as shagor2240',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Satoshi',
                                      color: Colors.black87),
                                  maxLines: 2,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Last Wednesday at 9:42 AM',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Satoshi',
                                    color: Colors.black26,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                            width: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 4, top: 4, bottom: 8, right: 8),
                            child: Container(
                              height: 28,
                              width: 59,
                              decoration: BoxDecoration(
                                color: const Color(0xFF6993FF),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(
                                    left: 8, right: 8, top: 4, bottom: 4),
                                child: Text(
                                  'Follow',
                                  style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(
              color: Colors.black12,
              height: 1,
              thickness: 0.5,
            ),
            Card(
              elevation: 0,
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 8, top: 8, right: 0, bottom: 0),
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 32,
                            width: 32,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 24,
                              child: Icon(Icons.person),
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          SizedBox(
                            width: 295,
                            //height: 40,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: const TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Dennis Nedry',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Satoshi',
                                            color: Colors.black87),
                                      ),
                                      TextSpan(
                                        text: ' commented on ',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'Satoshi',
                                            color: Colors.black87),
                                      ),
                                      TextSpan(
                                        text:
                                            'Isla Nublar SOC2 compliance report',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Satoshi',
                                            color: Colors.black87),
                                      ),
                                    ],
                                  ),
                                  textScaler: const TextScaler.linear(1.1),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  'Last Wednesday at 9:42 AM',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Satoshi',
                                    color: Colors.black26,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(
              color: Colors.black12,
              height: 1,
              thickness: 0.5,
            ),
            Card(
              elevation: 0,
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 8, top: 8, right: 0, bottom: 0),
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 32,
                            width: 32,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 24,
                              child: Icon(Icons.person),
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          SizedBox(
                            width: 295,
                            //height: 40,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: const TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Dennis Nedry',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Satoshi',
                                            color: Colors.black87),
                                      ),
                                      TextSpan(
                                        text: ' commented on ',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'Satoshi',
                                            color: Colors.black87),
                                      ),
                                      TextSpan(
                                        text:
                                            'Isla Nublar SOC2 compliance report',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Satoshi',
                                            color: Colors.black87),
                                      ),
                                    ],
                                  ),
                                  textScaler: const TextScaler.linear(1.1),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  'Last Wednesday at 9:42 AM',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Satoshi',
                                    color: Colors.black26,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(
              color: Colors.black12,
              height: 1,
              thickness: 0.5,
            ),
            Card(
              elevation: 0,
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 8, top: 8, right: 0, bottom: 0),
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                            height: 32,
                            width: 32,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 24,
                              child: Icon(Icons.person),
                            ),
                          ),
                          const SizedBox(
                            width: 220,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Md Shagor, from your contacts is on instagram as shagor2240',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Satoshi',
                                      color: Colors.black87),
                                  maxLines: 2,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Last Wednesday at 9:42 AM',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Satoshi',
                                    color: Colors.black26,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                            width: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 4, top: 4, bottom: 8, right: 8),
                            child: Container(
                              height: 28,
                              width: 59,
                              decoration: BoxDecoration(
                                color: const Color(0xFF6993FF),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(
                                    left: 8, right: 8, top: 4, bottom: 4),
                                child: Text(
                                  'Follow',
                                  style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(
              color: Colors.black12,
              height: 1,
              thickness: 0.5,
            ),
            Card(
              elevation: 0,
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 8, top: 8, right: 0, bottom: 0),
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 32,
                            width: 32,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 24,
                              child: Icon(Icons.person),
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          SizedBox(
                            width: 295,
                            //height: 40,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: const TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Dennis Nedry',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Satoshi',
                                            color: Colors.black87),
                                      ),
                                      TextSpan(
                                        text: ' commented on ',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'Satoshi',
                                            color: Colors.black87),
                                      ),
                                      TextSpan(
                                        text:
                                            'Isla Nublar SOC2 compliance report',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Satoshi',
                                            color: Colors.black87),
                                      ),
                                    ],
                                  ),
                                  textScaler: const TextScaler.linear(1.1),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  'Last Wednesday at 9:42 AM',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Satoshi',
                                    color: Colors.black26,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(
              color: Colors.black12,
              height: 1,
              thickness: 0.5,
            ),
            Card(
              elevation: 0,
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 8, top: 8, right: 0, bottom: 0),
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 32,
                            width: 32,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 24,
                              child: Icon(Icons.person),
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          SizedBox(
                            width: 295,
                            //height: 40,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: const TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Dennis Nedry',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Satoshi',
                                            color: Colors.black87),
                                      ),
                                      TextSpan(
                                        text: ' commented on ',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'Satoshi',
                                            color: Colors.black87),
                                      ),
                                      TextSpan(
                                        text:
                                            'Isla Nublar SOC2 compliance report',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Satoshi',
                                            color: Colors.black87),
                                      ),
                                    ],
                                  ),
                                  textScaler: const TextScaler.linear(1.1),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  'Last Wednesday at 9:42 AM',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Satoshi',
                                    color: Colors.black26,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(
              color: Colors.black12,
              height: 1,
              thickness: 0.5,
            ),
            Card(
              elevation: 0,
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 8, top: 8, right: 0, bottom: 0),
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 32,
                            width: 32,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 24,
                              child: Icon(Icons.person),
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          SizedBox(
                            width: 295,
                            //height: 40,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: const TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Dennis Nedry',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Satoshi',
                                            color: Colors.black87),
                                      ),
                                      TextSpan(
                                        text: ' commented on ',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'Satoshi',
                                            color: Colors.black87),
                                      ),
                                      TextSpan(
                                        text:
                                            'Isla Nublar SOC2 compliance report',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Satoshi',
                                            color: Colors.black87),
                                      ),
                                    ],
                                  ),
                                  textScaler: const TextScaler.linear(1.1),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  'Last Wednesday at 9:42 AM',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Satoshi',
                                    color: Colors.black26,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(
              color: Colors.black12,
              height: 1,
              thickness: 0.5,
            ),
            Card(
              elevation: 0,
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 8, top: 8, right: 0, bottom: 0),
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 32,
                            width: 32,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 24,
                              child: Icon(Icons.person),
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          SizedBox(
                            width: 295,
                            //height: 40,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: const TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Dennis Nedry',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Satoshi',
                                            color: Colors.black87),
                                      ),
                                      TextSpan(
                                        text: ' commented on ',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'Satoshi',
                                            color: Colors.black87),
                                      ),
                                      TextSpan(
                                        text:
                                            'Isla Nublar SOC2 compliance report',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Satoshi',
                                            color: Colors.black87),
                                      ),
                                    ],
                                  ),
                                  textScaler: const TextScaler.linear(1.1),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  'Last Wednesday at 9:42 AM',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Satoshi',
                                    color: Colors.black26,
                                  ),
                                  // textScaler: TextScaler.,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(
              color: Colors.black12,
              height: 1,
              thickness: 0.5,
            ),
            Card(
              elevation: 0,
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 8, top: 8, right: 0, bottom: 0),
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 32,
                            width: 32,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 24,
                              child: Icon(Icons.person),
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          SizedBox(
                            width: 295,
                            //height: 40,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: const TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Dennis Nedry',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Satoshi',
                                            color: Colors.black87),
                                      ),
                                      TextSpan(
                                        text: ' commented on ',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'Satoshi',
                                            color: Colors.black87),
                                      ),
                                      TextSpan(
                                        text:
                                            'Isla Nublar SOC2 compliance report',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Satoshi',
                                            color: Colors.black87),
                                      ),
                                    ],
                                  ),
                                  textScaler: const TextScaler.linear(1.1),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  'Last Wednesday at 9:42 AM',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Satoshi',
                                    color: Colors.black26,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
