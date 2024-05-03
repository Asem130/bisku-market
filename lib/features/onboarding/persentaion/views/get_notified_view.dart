import 'package:bisku/constants.dart';
import 'package:bisku/core/utils/app_router.dart';
import 'package:bisku/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:permission_handler/permission_handler.dart';

class GetNotifiedView extends StatelessWidget {
  const GetNotifiedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GetNotifiedBody(),
    );
  }
}

class GetNotifiedBody extends StatelessWidget {
  const GetNotifiedBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/notification.png",
            height: 100,
            width: 200,
          ),
          Row(
            children: [
              SizedBox(
                width: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Get Notified',
                      style: Styles.textStyle24.copyWith(
                          color: kPrimaryColor, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'Get notified about new activities, new stores, discounts, and the latest prices',
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle16,
                    ),
                  ],
                ),
              ),
              Image.asset(
                "assets/images/person.png",
                height: 400,
                width: 160,
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () async {
              PermissionStatus notistatus =
                  await Permission.notification.request();
              if (notistatus == PermissionStatus.granted) {

                GoRouter.of(context).push(AppRouter.kHomeView);
              }
              if (notistatus == PermissionStatus.denied) {
                
              }
              if (notistatus == PermissionStatus.permanentlyDenied) {
                openAppSettings();
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: kPrimaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            child: Text(
              'Let\'s do it',
              style: Styles.textStyle16.copyWith(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
