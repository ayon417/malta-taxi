import 'dart:async';

import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:malta_taxi/core/constants.dart';
import 'package:malta_taxi/utils/custom_button.dart';
import 'package:malta_taxi/utils/utils.dart';
import 'package:malta_taxi/view/components/appbar/appbar_back.dart';

class EditLanguageView extends ConsumerStatefulWidget {
  const EditLanguageView({super.key});

  @override
  ConsumerState<EditLanguageView> createState() => _EditLanguageViewState();
}

class _EditLanguageViewState extends ConsumerState<EditLanguageView>
    with BaseScreenView {
  int isSelectedIndex = 0;
  bool ignorePointer = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 30.h,
        ),
        child: CustomButton(
          buttonColor: primaryColor,
          textColor: Colors.white,
          buttonText: "Save",
          ontap: () {
            context.pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppbarWithBackIcon(
              title: 'Select Language',
            ),
            PaddedColumn(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              children: [
                gapH20,
                ...List.generate(
                  countryLanguages.length,
                  (index) => IgnorePointer(
                    ignoring: ignorePointer,
                    child: ListTile(
                      onTap: () {
                        HapticFeedback.lightImpact();
                        setState(() {
                          ignorePointer = true;
                          if (index < 1) {
                            isSelectedIndex = index;
                          } else {
                            Timer.periodic(const Duration(seconds: 4), (timer) { setState(() {
                             ignorePointer = false; 
                              timer.cancel();
                   
                            }); });
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                  "this feature is not available",
                                  style: TextStyle(color: kWhite),
                                ),
                              ),
                            );
                          }
                        });
                      },
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 3.h,
                      ),
                      leading: Image.asset(
                        countryLanguages[index]["icon"],
                        height: 32.h,
                      ),
                      title: Text(
                        countryLanguages[index]["name"],
                        style: TextStyle(
                          color: index == 0 ? kBlack : kGrey,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      trailing: isSelectedIndex == index
                          ? const ImageIcon(
                              AssetImage(
                                "assets/icons/selected.png",
                              ),
                              color: primaryColor,
                            )
                          : null,
                    ).animate().fadeIn(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn,
                        ),
                  ),
                ),
                gapH48,
              ],
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
