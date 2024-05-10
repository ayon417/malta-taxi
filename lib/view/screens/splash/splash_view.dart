import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:malta_taxi/core/core.dart';
import 'package:malta_taxi/services/shared_preference_service.dart';
import 'package:malta_taxi/utils/location_search/location_serach.dart';
import 'package:malta_taxi/utils/utils.dart';
import 'package:malta_taxi/view/screens/bottomNavigation/trip/location_picker/location_picker_view_model.dart';
import 'package:malta_taxi/view/screens/splash/splash_view_model.dart';
import 'package:permission_handler/permission_handler.dart';

class SplashView extends ConsumerStatefulWidget {
  const SplashView({super.key});

  @override
  ConsumerState<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends ConsumerState<SplashView> with BaseScreenView {
  late SplashViewModel _viewModel;
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1)).then((value) => oncheck());
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _viewModel = ref.read(splashViewModelProvider)..attachView(this);
    });
  }

  Future<void> oncheck() async {
    final String? token = SharedPreferenceService.getString('token');
    final String? userId = SharedPreferenceService.getString('userId');
    AppConstants.userId = userId ?? "";
    AppConstants.token = token ?? "";
    print(token);
    print(userId);
    if (token != null) {
      log(token);
      _viewModel.loadCustomMapStyle();
      _viewModel.getUserDetails().then((value) async {
        ref.read(locationPickerViewModelProvider).popularDestination();
        await Permission.location.request();
        ref.watch(locationPickerViewModelProvider).setUserCurrentLocation().then((value) {
        PlaceSearch().fetchLocationSuggestions(ref.watch(locationPickerViewModelProvider).getUserCurrentLocationAddress,).then((valuex) {
          ref.watch(locationPickerViewModelProvider).setLocationSuggestion(valuex);
          });
        });
      });
    } else {
      navigateToScreen(AppRoute.languageSelectorView);
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 0,
      ),
      body: DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/splash_bg.webp"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Image.asset(
            "assets/images/logo.webp",
            height: 150.h,
          ),
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
