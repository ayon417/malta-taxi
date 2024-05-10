// ignore_for_file: unused_field

import 'dart:async';
import 'dart:io';

import 'package:floating/floating.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:live_activities/live_activities.dart';
import 'package:malta_taxi/utils/utils.dart';
import 'package:malta_taxi/view/screens/bottomNavigation/trip/trip_confirmed/component/trip_confirmed_body.dart';
import 'package:malta_taxi/view/screens/bottomNavigation/trip/trip_confirmed/component/trip_confirmed_panel.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class TripConfirmedView extends ConsumerStatefulWidget {
  const TripConfirmedView({super.key});

  @override
  ConsumerState<TripConfirmedView> createState() => _TripConfirmedViewState();
}

class _TripConfirmedViewState extends ConsumerState<TripConfirmedView>
    with BaseScreenView, TickerProviderStateMixin, WidgetsBindingObserver {
  final _liveActivitiesPlugin = LiveActivities();
  String? activityId;
  PanelController panelController = PanelController();
  final floating = Floating();
  Map<String, dynamic> data = {
    "tittle": "Trip Live Tracking",
    "description": "Trip Live Tracking",
    "icon": "ic_launcher",
    "color": "#FF0000",
    "notification": {
      "title": "Trip Live Tracking",
      "description": "Trip Live Tracking",
      "icon": "ic_launcher",
      "color": "#FF0000",
      "sound": "default",
      "vibrate": true,
      "priority": "high",
      "visibility": "public",
      "importance": "high",
      "channel": {
        "id": "trip_live_tracking_channel",
        "name": "Trip Live Tracking",
        "description": "Trip Live Tracking",
        "sound": "default",
        "vibrate": true,
        "priority": "high",
        "visibility": "public",
        "importance": "high",
      },
    },
  };

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    // tripLiveActivityInit();
    Future.delayed(const Duration(milliseconds: 300), () {
      panelController.animatePanelToSnapPoint(
        curve: Curves.easeInOutCubic,
        duration: 500.ms,
      );
    });

    super.initState();
  }

  // Future<void> tripLiveActivityInit() async {
  //   _liveActivitiesPlugin.init(appGroupId: "group.trip_live_tracking_group");

  //   if (activityId == null) {
  //     activityId = await _liveActivitiesPlugin.createActivity(data);
  //     print("activityId");
  //     print(activityId);
  //     setState(() {});
  //   } else {
  //     await _liveActivitiesPlugin.updateActivity(activityId!, data);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return (Platform.isAndroid)
        ? WillPopScope(
            onWillPop: () async {
              return false;
            },
            child: Pipbody(panelController: panelController),
          )
        : Pipbody(panelController: panelController);
    // return Scaffold(
    //   // bottomNavigationBar: Container(
    //   //   height: 30.h,
    //   //   width: double.infinity,
    //   //   decoration: const BoxDecoration(
    //   //     color: primaryColor,
    //   //   ),
    //   //   child: Center(
    //   //     child: Text(
    //   //       ref.read(tripConfirmedViewModelProvider).getOngoingRideResponseModel.data?.rideStatus ??  "" ,
    //   //       style: TextStyle(
    //   //         color: kWhite,
    //   //         fontSize: 28.sp,
    //   //       ),
    //   //     ),
    //   //   ),
    //   // ),
    //   body: SizedBox(
    //     child: TripConfirmedBody(
    //       isMapvisible: true,
    //     ),
    //   ),
    // );
    // return Platform.isAndroid
    //     ? WillPopScope(
    //         onWillPop: () {
    //           floating.enable(aspectRatio: const Rational.square());
    //           return Future.value(false);
    //         },
    //         child: Scaffold(
    //           // bottomNavigationBar: Container(
    //           //   height: 30.h,
    //           //   width: double.infinity,
    //           //   decoration: const BoxDecoration(
    //           //     color: primaryColor,
    //           //   ),
    //           //   child: Center(
    //           //     child: Text(
    //           //       ref.read(tripConfirmedViewModelProvider).getOngoingRideResponseModel.data?.rideStatus ??  "" ,
    //           //       style: TextStyle(
    //           //         color: kWhite,
    //           //         fontSize: 28.sp,
    //           //       ),
    //           //     ),
    //           //   ),
    //           // ),
    //           body: SizedBox(
    //             child: TripConfirmedBody(
    //               isMapvisible: true,
    //             ),
    //           ),
    //         ))
    // : Pipbody(panelController: panelController);
  }

  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    context.goNamed(appRoute.name);
  }

  @override
  void showSnackbar(String message, {Color? color}) {
    // implement showSnackbar
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.inactive && Platform.isAndroid) {
      floating.enable(aspectRatio: const Rational.square());
      super.didChangeAppLifecycleState(state);
    }
  }
}

class Pipbody extends ConsumerWidget {
  const Pipbody({
    super.key,
    required this.panelController,
  });

  final PanelController panelController;

  @override
  Widget build(BuildContext context, WidgetRef watch) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          panelController.isPanelOpen == true
              ? panelController.close()
              : panelController.open();
        },
        backgroundColor: kWhite,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
        ),
        child: const Icon(
          Icons.keyboard_arrow_down,
          color: kBlack,
        ),
      ),
      body: SlidingUpPanel(
        controller: panelController,
        minHeight: MediaQuery.of(context).size.height * 0.1,
        maxHeight: MediaQuery.of(context).size.height * 0.87,
        snapPoint: 0.6,
        parallaxEnabled: true,
        renderPanelSheet: false,
        panelBuilder: (sc) => TripConfirmedPanel(
          sc: sc,
        ),
        body: const TripConfirmedBody(
          isMapvisible: true,
        ),
      ),
    );
  }
}
