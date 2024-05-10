import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:malta_taxi/data/remote/auth/models/login_model.dart';
import 'package:malta_taxi/utils/custom_button.dart';
import 'package:malta_taxi/utils/utils.dart';
import 'package:malta_taxi/view/screens/auth/login/login_view_model.dart';

class LoginView extends ConsumerStatefulWidget {
  const LoginView({super.key});

  @override
  ConsumerState<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends ConsumerState<LoginView> with BaseScreenView {
  late LoginViewModel _viewModel;
  List<String> social = [
    "assets/icons/google.png",
    "assets/icons/facebook.png",
    "assets/icons/email.png",
  ];
  String countryCode = "+356";
  String mobileNumber = "";
  bool isValidation = true;
  @override
  void initState() {
    _viewModel = ref.read(loginViewModel)..attachView(this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _viewModel = ref.watch(loginViewModel);
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(16.w),
        child: Text.rich(
          TextSpan(
            text:
                'By continuing, you agree that you have read and accepted our ',
            style: TextStyle(fontSize: 10.sp),
            children: [
              TextSpan(
                text: 'T&C',
                style: const TextStyle(fontSize: 10, color: Colors.blue),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    context.pushNamed(AppRoute.termsAndConditionView.name);
                  },
              ),
              TextSpan(text: ' and', style: TextStyle(fontSize: 10.sp)),
              TextSpan(
                text: ' Privacy Policy.',
                style: TextStyle(fontSize: 10.sp, color: Colors.blue),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    context.pushNamed(AppRoute.privacyPolicyView.name);
                  },
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 220.h,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: primaryColor,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/images/login_bg.png"),
                ),
              ),
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 16,
                      top: 50,
                    ),
                    child: Hero(
                      tag: "logo",
                      child: CircleAvatar(
                        radius: 30.r,
                        backgroundColor: kWhite,
                        child: Padding(
                          padding: EdgeInsets.all(7.w),
                          child: Center(
                            child: Image.asset(
                              "assets/images/logo.webp",
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            gapH24,
            Text(
              LocaleKeys.welcomeToMaltaTaxi.tr(),
              style: const TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w700,
              ),
            ),
            gapH32,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 1,
                      width: double.infinity,
                      decoration: const BoxDecoration(color: Color(0xFFCFCFCF)),
                    ),
                  ),
                  gapW16,
                  Text(
                    LocaleKeys.loginOrSignUp.tr(),
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  gapW16,
                  Expanded(
                    child: Container(
                      height: 1,
                      width: double.infinity,
                      decoration: const BoxDecoration(color: Color(0xFFCFCFCF)),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.w),
              child: TextFormField(
                autofocus: true,
                keyboardType: TextInputType.number,
                onChanged: (phoneNumber) {
                  mobileNumber = phoneNumber;
                  setState(() {});
                },
                decoration: InputDecoration(
                  errorText:
                      isValidation ? null : "Please enter valid mobile number",
                  hintText: LocaleKeys.enterMobileNumber.tr(),
                  prefixIcon: CountryCodePicker(
                    favorite: const ["+356"],
                    barrierColor: Colors.black.withOpacity(0.5),
                    onChanged: (contryCode) {
                      countryCode = contryCode.dialCode!;
                      setState(() {});
                    },
                    initialSelection: countryCode,
                    boxDecoration: BoxDecoration(
                      color: kWhite,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
            ),
            gapH8,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: CustomButton(
                isLoading: _viewModel.isLoginLoading,
                buttonColor: primaryColor,
                textColor: Colors.white,
                loaderColor: kWhite,
                buttonText: LocaleKeys.continueText.tr(),
                ontap: () {
                  if (mobileNumber.length >= 7 && mobileNumber.length <= 10) {
                    isValidation = true;

                    _viewModel.loginRequest = LoginRequest(
                      mobile:
                          "${countryCode.substring(1)} ${mobileNumber.trim()}",
                      role: "user",
                    );
                    _viewModel.login(
                      _viewModel.loginRequest,
                      "${countryCode.substring(1)} ${mobileNumber.trim()}",
                    );
                  } else {
                    isValidation = false;
                  }
                  setState(() {});
                },
              ),
            ),
            gapH16,
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 16),
            //   child: Row(
            //     children: [
            //       Expanded(
            //         child: Container(
            //           height: 1,
            //           width: double.infinity,
            //           decoration: const BoxDecoration(color: Color(0xFFCFCFCF)),
            //         ),
            //       ),
            //       gapW16,
            //       Text(
            //         LocaleKeys.orText.tr(),
            //         style: const TextStyle(
            //           fontSize: 12,
            //           fontWeight: FontWeight.w500,
            //         ),
            //       ),
            //       gapW16,
            //       Expanded(
            //         child: Container(
            //           height: 1,
            //           width: double.infinity,
            //           decoration: const BoxDecoration(color: Color(0xFFCFCFCF)),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            gapH16,
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     ...List.generate(
            //       social.length,
            //       (index) => Padding(
            //         padding: const EdgeInsets.symmetric(horizontal: 8.0),
            //         child: Image.asset(
            //           social[index],
            //           height: 30,
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }

  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    context.pushNamed(
      appRoute.name,
      pathParameters: {
        'phone': params!['phone']!,
      },
    );
  }

  @override
  void showSnackbar(String message, {Color? color}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: color ?? kBlack,
        showCloseIcon: true,
      ),
    );
  }
}
