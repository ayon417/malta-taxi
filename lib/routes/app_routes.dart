import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:malta_taxi/view/screens/auth/login/login_view.dart';
import 'package:malta_taxi/view/screens/auth/otpVerify/otp_verify_view.dart';
import 'package:malta_taxi/view/screens/basicDetail/basic_detail_view.dart';
import 'package:malta_taxi/view/screens/bottomNavigation/bottom_navigation/bottom_navigation_view.dart';
import 'package:malta_taxi/view/screens/bottomNavigation/profile_setting/account_info/account_info_view.dart';
import 'package:malta_taxi/view/screens/bottomNavigation/profile_setting/edit_language/edit_language_view.dart';
import 'package:malta_taxi/view/screens/bottomNavigation/profile_setting/past_rides/past_rides_view.dart';
import 'package:malta_taxi/view/screens/bottomNavigation/profile_setting/privacy_policy/privacy_policy_view.dart';
import 'package:malta_taxi/view/screens/bottomNavigation/profile_setting/terms_and_condition/terms_and_condition_view.dart';
import 'package:malta_taxi/view/screens/bottomNavigation/profile_setting/your_upcoming_tour/your_upcoming_tour_view.dart';
import 'package:malta_taxi/view/screens/bottomNavigation/trip/location_picker/location_picker_view.dart';
import 'package:malta_taxi/view/screens/bottomNavigation/trip/trip_completed/trip_completed_view.dart';
import 'package:malta_taxi/view/screens/bottomNavigation/trip/trip_confirmed/trip_confirmed_view.dart';
import 'package:malta_taxi/view/screens/bottomNavigation/trip/trip_proceed/trip_proceed_view.dart';
import 'package:malta_taxi/view/screens/languageSelector/language_selector_view.dart';
import 'package:malta_taxi/view/screens/location_enable/location_enable_view.dart';
import 'package:malta_taxi/view/screens/onboarding/onboarding_view.dart';
import 'package:malta_taxi/view/screens/splash/splash_view.dart';

enum AppRoute {
  splash,
  languageSelectorView,
  onboardingView,
  loginView,
  otpVerifyView,
  basicDetailView,
  locationEnableView,
  bottomNavigationView,
  // tripView,
  locationPicker,
  tripProceedView,
  tripConfirmedView,
  tripCompletedView,
  // profile setting
  editLanguageView,
  privacyPolicyView,
  termsAndConditionView,
  pastRidesView,
  yourUpcomingTourView,
  acountInfoView
}

// flutter packages pub run build_runner build --delete-conflicting-outputs
final routers = [
  GoRoute(
    path: '/',
    name: AppRoute.splash.name,
    builder: (context, state) => const SplashView(),
  ),
  GoRoute(
    path: '/languageSelectorView',
    name: AppRoute.languageSelectorView.name,
    builder: (context, state) => const LanguageSelectorView(),
  ),
  GoRoute(
    path: '/onboardingView',
    name: AppRoute.onboardingView.name,
    builder: (context, state) => const OnboardingView(),
  ),
  GoRoute(
    path: '/loginView',
    name: AppRoute.loginView.name,
    builder: (context, state) => const LoginView(),
  ),
  GoRoute(
    path: '/otpVerifyView/:phone',
    name: AppRoute.otpVerifyView.name,
    builder: (context, state) =>
        OTPVerifyView(state.pathParameters['phone'].toString()),
  ),
  GoRoute(
    path: '/basicDetailView',
    name: AppRoute.basicDetailView.name,
    builder: (context, state) => const BasicDetailView(),
  ),
  GoRoute(
    path: '/locationEnableView',
    name: AppRoute.locationEnableView.name,
    builder: (context, state) => const LocationEnableView(),
  ),
  GoRoute(
    path: '/bottomNavigationView',
    name: AppRoute.bottomNavigationView.name,
    builder: (context, state) => const BottomNavigationView(),
  ),
  GoRoute(
    path: '/locationPicker',
    name: AppRoute.locationPicker.name,
    pageBuilder: (context, state) => CustomTransitionPage<void>(
      key: state.pageKey,
      child: LocationPickerView(
        isPicupLocationShowCursor:
            state.extra != null ? state.extra! as bool : false,
      ),
      transitionsBuilder: (context, animation, secondaryAnimation, child) =>
          FadeTransition(opacity: animation, child: child),
    ),
  ),
  GoRoute(
    path: '/tripProceedView',
    name: AppRoute.tripProceedView.name,
    pageBuilder: (context, state) {
      // Map<String, TextEditingController> args = state.extra as Map<String, TextEditingController>;
      return CustomTransitionPage<void>(
        key: state.pageKey,
        child: const TripProceedView(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(opacity: animation, child: child),
      );
    },
  ),
  GoRoute(
    path: '/tripConfirmedView',
    name: AppRoute.tripConfirmedView.name,
    pageBuilder: (context, state) => CustomTransitionPage<void>(
      key: state.pageKey,
      child: const TripConfirmedView(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) =>
          FadeTransition(opacity: animation, child: child),
    ),
  ),
  GoRoute(
    path: '/tripCompletedView',
    name: AppRoute.tripCompletedView.name,
    pageBuilder: (context, state) => CustomTransitionPage<void>(
      key: state.pageKey,
      child: const TripCompletedView(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) =>
          FadeTransition(opacity: animation, child: child),
    ),
  ),
  // profile setting
  GoRoute(
    path: '/editLanguageView',
    name: AppRoute.editLanguageView.name,
    builder: (context, state) => const EditLanguageView(),
  ),
  GoRoute(
    path: '/privacyPolicyView',
    name: AppRoute.privacyPolicyView.name,
    builder: (context, state) => const PrivacyPolicyView(),
  ),
  GoRoute(
    path: '/termsAndConditionView',
    name: AppRoute.termsAndConditionView.name,
    builder: (context, state) => const TermsAndConditionView(),
  ),
  GoRoute(
    path: '/pastRidesView',
    name: AppRoute.pastRidesView.name,
    builder: (context, state) => const PastRidesView(),
  ),
  GoRoute(
    path: '/yourUpcomingTourView',
    name: AppRoute.yourUpcomingTourView.name,
    builder: (context, state) => const YourUpcomingTourView(),
  ),
  GoRoute(
    path: '/acountInfoView',
    name: AppRoute.acountInfoView.name,
    builder: (context, state) => const AccountInfoView(),
  ),
];
