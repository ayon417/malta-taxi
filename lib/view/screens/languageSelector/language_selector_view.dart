import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:malta_taxi/core/constants.dart';
import 'package:malta_taxi/utils/custom_button.dart';
import 'package:malta_taxi/utils/utils.dart';
import 'package:malta_taxi/view/screens/onboarding/onboarding_view.dart';

class LanguageSelectorView extends StatefulWidget {
  const LanguageSelectorView({super.key});

  @override
  State<LanguageSelectorView> createState() => _LanguageSelectorViewState();
}

class _LanguageSelectorViewState extends State<LanguageSelectorView>
    with BaseScreenView {
  int isSelectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SingleChildScrollView(
        child: PaddedColumn(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            gapH60,
            Hero(
              tag: "logo",
              child: Container(
                height: 80.h,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: EdgeInsets.all(12.w),
                  child: Center(child: Image.asset("assets/images/logo.webp")),
                ),
              ),
            ),
            gapH24,
            Text(
              LocaleKeys.chooseLanguage.tr(),
              style: TextStyle(
                fontSize: 21.sp,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
            gapH24,
            Column(
              children: [
                ...List.generate(
                  countryLanguages.length,
                  (index) => Opacity(
                    opacity:
                        isSelectedIndex == index ? 1 : AppConstants.opacity,
                    child: ListTile(
                      splashColor: primaryColor,
                      onTap: () {
                        // HapticFeedback.lightImpact();
                        // setState(() => isSelectedIndex = index);
                      },
                      contentPadding: EdgeInsets.zero,
                      leading: Image.asset(
                        countryLanguages[index]["icon"],
                        height: 32.h,
                      ),
                      title: Text(
                        countryLanguages[index]["name"],
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      trailing: isSelectedIndex == index
                          ? Image.asset(
                              "assets/icons/selected.png",
                              height: 20.h,
                            )
                          : null,
                    ).animate().fadeIn(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn,
                        ),
                  ),
                ),
                gapH48,
                CustomButton(
                  ontap: () => navigateToScreen(AppRoute.onboardingView),
                  isSuffix: true,
                  suffixIcon: "assets/icons/forward_arrow.png",
                  buttonText: LocaleKeys.proceed.tr(),
                ).animate().slideY(
                      duration: 500.ms,
                      begin: 2,
                      end: 0,
                      curve: Curves.easeInOutBack,
                    ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    Navigator.of(context).push<void>(
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) {
          return const OnboardingView();
        },
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
        transitionDuration:
            const Duration(milliseconds: 400), // Adjust as needed
      ),
    );
  }

  @override
  void showSnackbar(String message, {Color? color}) {
    // TODO: implement showSnackbar
  }
}
