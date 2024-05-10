import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:malta_taxi/utils/utils.dart';
import 'package:malta_taxi/view/components/appbar/appbar_back.dart';

class YourUpcomingTourView extends ConsumerStatefulWidget {
  const YourUpcomingTourView({super.key});

  @override
  ConsumerState<YourUpcomingTourView> createState() =>
      _YourUpcomingTourViewState();
}

class _YourUpcomingTourViewState extends ConsumerState<YourUpcomingTourView>
    with BaseScreenView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: PaddedColumn(
          children: [
            const AppbarWithBackIcon(
              title: 'Schedule Rides',
            ),
            PaddedColumn(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              children: const [],
            ),
          ],
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
