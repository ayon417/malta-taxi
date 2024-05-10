import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:iconly/iconly.dart';
import 'package:malta_taxi/utils/utils.dart';
import 'package:malta_taxi/view/screens/bottomNavigation/trip/trip_proceed/component/trip_proceed_body.dart';
import 'package:malta_taxi/view/screens/bottomNavigation/trip/trip_proceed/component/trip_proceed_bottombar.dart';
import 'package:malta_taxi/view/screens/bottomNavigation/trip/trip_proceed/component/trip_proceed_panel.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class TripProceedView extends ConsumerStatefulWidget {
  const TripProceedView({super.key});

  @override
  ConsumerState<TripProceedView> createState() => _TripProceedViewState();
}

class _TripProceedViewState extends ConsumerState<TripProceedView>
    with BaseScreenView {
  PanelController pc = PanelController();
  bool isVisibleMap = false;
  
  @override
  void initState() {
    openAnimation();
    super.initState();
  }

  void openAnimation() {
    Future.delayed(const Duration(milliseconds: 300), () {
      isVisibleMap = true;
      setState(() {});
      pc.animatePanelToPosition(
        1,
        curve: Curves.easeInOutCubic,
        duration: 500.ms,
      );
    });
  }

  void disposeAnimation() {
    setState(() {
      isVisibleMap = false;
    });
    pc.close().then((value) {
      context.pop();
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        disposeAnimation();
        return false;
      },
      child: Scaffold(
        bottomNavigationBar: TripProceedBottombar(isvisible: isVisibleMap),
        floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
        floatingActionButton: FloatingActionButton(
          onPressed: () => disposeAnimation(),
          backgroundColor: kWhite,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(50.0)),
          ),
          child: const Icon(
            IconlyLight.arrow_left,
            color: kBlack,
          ),
        ),
        body: SlidingUpPanel(
          controller: pc,
          minHeight: MediaQuery.of(context).size.height * 0.17,
          maxHeight: MediaQuery.of(context).size.height * 0.75,
          parallaxEnabled: true,
          renderPanelSheet: false,
          panelBuilder: (sc) => TripProceedPanel(sc),
          body: TripProceedBody(isVisible: isVisibleMap),
        ),
      ),
    );
  }

  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    context.goNamed(appRoute.name);
  }

  @override
  void showSnackbar(String message, {Color? color}) {
    // implement showSnackbar
  }
}
