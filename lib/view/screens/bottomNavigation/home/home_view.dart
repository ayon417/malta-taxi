// ignore_for_file: unnecessary_statements

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:malta_taxi/core/core.dart';
import 'package:malta_taxi/utils/utils.dart';
import 'package:malta_taxi/view/screens/bottomNavigation/home/component/appbar/home_appbar.dart';
import 'package:malta_taxi/view/screens/bottomNavigation/home/component/body/home_body.dart';
import 'package:malta_taxi/view/screens/bottomNavigation/home/component/panel/home_panel.dart';
import 'package:malta_taxi/view/screens/bottomNavigation/home/home_view_model.dart';
import 'package:malta_taxi/view/screens/bottomNavigation/trip/location_picker/location_picker_view_model.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class HomeView extends ConsumerStatefulWidget {
  const HomeView({super.key});

  @override
  ConsumerState<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView> with BaseScreenView {
  final PanelController _pc = PanelController();
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 300), () {
      ref.watch(homeViewModelProvider).setAppState(AppState.initial);
      _pc.animatePanelToSnapPoint(
        curve: Curves.easeInOutCubic,
        duration: 600.ms,
      );
    });


    super.initState();
  }

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(110.h),
        child: InkWell(
          onTap: () {
            ref
                .watch(locationPickerViewModelProvider)
                .setisPickupLocationShowCursor(true);
            navigateToScreen(
              AppRoute.locationPicker,
              extra: true,
            );
          },
          child: ref.watch(homeViewModelProvider).appState == AppState.dispose
              ? const HomeAppBar().animate().slideY(
                    duration: 300.ms,
                    curve: Curves.easeInOutCubic,
                    begin: 0.0,
                    end: -2,
                  )
              : const HomeAppBar().animate().slideY(
                    duration: 650.ms,
                    curve: Curves.easeInOutCubic,
                    end: 0.0,
                    begin: -2,
                  ),
        ),
      ),
      body: SlidingUpPanel(
        controller: _pc,
        snapPoint: 0.6,
        onPanelSlide: (position) {
          ref.watch(homeViewModelProvider).setPanelPosition(position);
          if (position <= 0.0) {
            ref.watch(homeViewModelProvider).appState != AppState.dispose
                ? _pc.animatePanelToSnapPoint()
                : null;
          }
        },
        minHeight: MediaQuery.of(context).size.height * 0.0,
        maxHeight: MediaQuery.of(context).size.height * 0.8,
        parallaxEnabled: true,
        renderPanelSheet: false,
        panelBuilder: (sc) => HomePanel(
          scrollController: sc,
          onSearch: () {
            ref
                .watch(locationPickerViewModelProvider)
                .setisPickupLocationShowCursor(false);
            navigateToScreen(
              AppRoute.locationPicker,
            );
          },
        ),
        body: const HomeBody(),
      ),
    );
  }

  @override
  void navigateToScreen(
    AppRoute appRoute, {
    Map<String, String>? params,
    Object? extra,
  }) {
    ref.watch(homeViewModelProvider).setAppState(AppState.dispose);
    _pc.animatePanelToPosition(0, duration: 300.ms);
    Future.delayed(const Duration(milliseconds: 300), () {
      context.pushNamed(appRoute.name, extra: extra).then((value) {
        _pc.animatePanelToSnapPoint(
          curve: Curves.easeInOutCubic,
          duration: 650.ms,
        );
        Future.delayed(const Duration(milliseconds: 60), () {
          ref.watch(homeViewModelProvider).setAppState(AppState.pending);
        });
      });
    });
  }

  @override
  void showSnackbar(String message, {Color? color}) {
    // implement showSnackbar
  }
}
