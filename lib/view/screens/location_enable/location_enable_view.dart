import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:malta_taxi/utils/custom_button.dart';
import 'package:malta_taxi/utils/utils.dart';
import 'package:permission_handler/permission_handler.dart';

class LocationEnableView extends ConsumerStatefulWidget {
  const LocationEnableView({super.key});

  @override
  ConsumerState<LocationEnableView> createState() => _LocationEnableViewState();
}

class _LocationEnableViewState extends ConsumerState<LocationEnableView>
    with BaseScreenView {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/enable_location.png",
                height: 300.h,
              ),
              gapH10,
              Text(
                LocaleKeys.noLocationYet.tr(),
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              gapH10,
              Text(
                LocaleKeys.setLocationToStartExploring.tr(),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 14,
                  color: Color(0xFF9F9F9F),
                ),
              ),
              gapH20,
              CustomButton(
                prefixIcon: "assets/icons/my_location.png",
                isPrefix: true,
                isLoading: isLoading,
                loaderColor: Colors.white,
                buttonColor: primaryColor,
                textColor: Colors.white,
                buttonText: LocaleKeys.enableDeviceLocation.tr(),
                ontap: () async {
                  isLoading = true;
                  setState(() {});
                  HapticFeedback.lightImpact();
                  final status = await Permission.location.request();
                  if (status.isGranted) {
                    navigateToScreen(AppRoute.bottomNavigationView);
                  }
                  isLoading = false;
                  setState(() {});
                },
              ),
            ],
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
