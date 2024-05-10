import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconly/iconly.dart';
import 'package:malta_taxi/utils/utils.dart';
import 'package:malta_taxi/view/screens/bottomNavigation/home/home_view.dart';
import 'package:malta_taxi/view/screens/bottomNavigation/profile/profile_view.dart';
import 'package:malta_taxi/view/screens/bottomNavigation/trip/trip_confirmed/trip_confirmed_view_model.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class BottomNavigationView extends ConsumerStatefulWidget {
  const BottomNavigationView({super.key});

  @override
  ConsumerState<BottomNavigationView> createState() =>
      _BottomNavigationViewState();
}

class _BottomNavigationViewState extends ConsumerState<BottomNavigationView>
    with BaseScreenView {
  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        activeColorPrimary: primaryColor,
        iconSize: 25.sp,
        icon: const Icon(IconlyBold.home),
        title: LocaleKeys.home.tr(),
        inactiveColorPrimary: CupertinoColors.systemGrey,
        textStyle: TextStyle(
          color: Colors.black,
          fontSize: 10.sp,
          fontFamily: 'Plus Jakarta Sans',
        ),
      ),
      PersistentBottomNavBarItem(
        activeColorPrimary: primaryColor,
        iconSize: 25.sp,
        icon: const Icon(IconlyBold.profile),
        title: LocaleKeys.profile.tr(),
        inactiveColorPrimary: CupertinoColors.systemGrey,
        textStyle: TextStyle(
          color: Colors.black,
          fontSize: 10.sp,
          fontFamily: 'Plus Jakarta Sans',
        ),
      ),
    ];
  }

  @override
  void initState() {
    super.initState();
    checkStatus();
  }

  void checkStatus() {
    Future.delayed(const Duration(milliseconds: 5), () async {
      ref
          .read(tripConfirmedViewModelProvider)
          .checkRideStatus(context, isHomePage: true);
    });
  }

  List<Widget> _buildScreens() {
    return [
      const HomeView(),
      const ProfileView(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      navBarHeight: 75.h,
      padding: NavBarPadding.symmetric(vertical: 13.w),
      onItemSelected: (index) {
        HapticFeedback.lightImpact();
      },
      screens: _buildScreens(),
      items: _navBarsItems(),
      navBarStyle: NavBarStyle.style8,
      resizeToAvoidBottomInset: true,
      decoration: NavBarDecoration(
        boxShadow: [const BoxShadow(color: Colors.black12, blurRadius: 10)],
        borderRadius: BorderRadius.circular(10),
      ),
      itemAnimationProperties: const ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        animateTabTransition: true,
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
