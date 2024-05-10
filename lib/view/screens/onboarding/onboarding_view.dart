import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:malta_taxi/utils/custom_button.dart';
import 'package:malta_taxi/utils/utils.dart';
import 'package:malta_taxi/view/screens/auth/login/login_view.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> with BaseScreenView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              gapH60,
              Hero(
                tag: "logo",
                child: Container(
                  height: 91.h,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(12.w),
                    child:
                        Center(child: Image.asset("assets/images/logo.webp")),
                  ),
                ),
              ),
              gapH40,
              Image.asset(
                height: 270.h,
                "assets/images/onboarding.webp",
              ),
              gapH60,
              Text(
                LocaleKeys.startYourJourney.tr(),
                style: TextStyle(
                  fontSize: 20.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
              gapH24,
              CustomButton(
                ontap: () => navigateToScreen(AppRoute.loginView),
                isSuffix: true,
                suffixIcon: "assets/icons/forward_arrow.png",
                buttonText: LocaleKeys.getStarted.tr(),
              ).animate().slideY(
                    delay: 200.ms,
                    duration: 500.ms,
                    begin: 2.6,
                    end: 0,
                    curve: Curves.easeInOutBack,
                  ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    Navigator.of(context).push<void>(
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) {
          return const LoginView();
        },
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
        transitionDuration:
            const Duration(milliseconds: 600), // Adjust as needed
      ),
    );

    // context.pushNamed(appRoute.name);
  }

  @override
  void showSnackbar(String message, {Color? color}) {}
}
