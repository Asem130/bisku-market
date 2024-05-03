import 'package:bisku/constants.dart';
import 'package:bisku/core/utils/app_router.dart';
import 'package:bisku/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:permission_handler/permission_handler.dart';

enum PermissionGroup {
  /// Android: Fine and Coarse Location
  /// iOS: CoreLocation - Always
  locationAlways,

  /// Android: Fine and Coarse Location
  /// iOS: CoreLocation - WhenInUse
  locationWhenInUse
}

class GetLocationView extends StatelessWidget {
  const GetLocationView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 226, 235, 233),
      body: GetLocationBody(),
    );
  }
}

class GetLocationBody extends StatelessWidget {
  const GetLocationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/unknown.png",
            width: 150,
            height: 200,
          ),
          Text(
            'We need to know where are you in order to find nearby stores',
            textAlign: TextAlign.center,
            style: Styles.textStyle24.copyWith(fontSize: 20),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () async {
              PermissionStatus locationstatus =
                  await Permission.location.request();
              if (locationstatus == PermissionStatus.granted) {
                GoRouter.of(context).push(AppRouter.kHomeView);
              }
              if (locationstatus == PermissionStatus.denied) {
                Fluttertoast.showToast(
                    msg: 'Location usage must be permitted',
                    toastLength: Toast.LENGTH_LONG,
                    gravity: ToastGravity.TOP,
                    timeInSecForIosWeb: 5,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 16);
               
              }
              if (locationstatus == PermissionStatus.permanentlyDenied) {
                openAppSettings();
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: kPrimaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
            ),
            child: Text(
              'Enable location',
              style: Styles.textStyle16.copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
