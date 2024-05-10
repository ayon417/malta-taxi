// ignore_for_file: constant_pattern_never_matches_value_type

import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:malta_taxi/core/constants.dart';
import 'package:malta_taxi/services/shared_preference_service.dart';
import 'package:malta_taxi/utils/custom_button.dart';
import 'package:malta_taxi/utils/utils.dart';
import 'package:malta_taxi/view/components/banner/banner.dart';
import 'package:malta_taxi/view/components/comingsoon/comingsoon_widget.dart';
import 'package:malta_taxi/view/screens/bottomNavigation/profile/profile_view_model.dart';
import 'package:malta_taxi/view/screens/splash/splash_view_model.dart';

class ProfileView extends ConsumerStatefulWidget {
  const ProfileView({super.key});

  @override
  ConsumerState<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends ConsumerState<ProfileView> with BaseScreenView {
  late ProfileViewModel _viewModel;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _viewModel = ref.read(profileViewModelProvider);
    _viewModel.attachView(this);
  }

  @override
  Widget build(BuildContext context) {
    final List<String> featureList = [
      'Account info',
      'Language',
      'Your Up Coming Tour',
      'Past Rides',
      'Privacy Policy',
      'Terms & Condition',
      'Delete Account',
      'Logout',
    ];
    final List<IconData> iconList = [
      IconlyBold.profile,
      Icons.g_translate_sharp,
      IconlyBold.calendar,
      Icons.history,
      Icons.safety_check_sharp,
      IconlyBold.document,
      IconlyBold.delete,
      IconlyBold.logout,
    ];
    Future<void> navigation(String feature) async {
      switch (feature) {
        case 'Account info':
          navigateToScreen(AppRoute.acountInfoView);
          break;
        case 'Language':
          navigateToScreen(AppRoute.editLanguageView);
          break;
        case 'Your Up Coming Tour':
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text(
                "Coming soon",
                style: TextStyle(color: kWhite),
              ),
            ),
          );
          // navigateToScreen(AppRoute.yourUpcomingTourView);
          break;
        case 'Past Rides':
          navigateToScreen(AppRoute.pastRidesView);
          break;
        case 'Privacy Policy':
          navigateToScreen(AppRoute.privacyPolicyView);
          break;

        case 'Terms & Condition':
          navigateToScreen(AppRoute.termsAndConditionView);
          break;
        case 'Delete Account':
          {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                surfaceTintColor: kWhite,
                title: const Text("Delete Account"),
                content: const Text(
                  "would you really want to delete this Account ?",
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      context.pop();
                    },
                    child: const Text(
                      "No",
                      style: TextStyle(color: primaryColor),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      _viewModel
                          .deleteAccount(AppConstants.userId)
                          .then((value) {
                        context.pop();
                        context.goNamed(AppRoute.loginView.name);
                        SharedPreferenceService.clearAll();
                      });
                    },
                    child: const Text(
                      "Yes",
                      style: TextStyle(color: primaryColor),
                    ),
                  ),
                ],
              ),
            );
          }
          break;
        case 'Logout':
          {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                surfaceTintColor: kWhite,
                title: const Text("Logout"),
                content: const Text(
                    "would you really want to log out from the App ?",),
                actions: [
                  TextButton(
                    onPressed: () {
                      context.pop();
                    },
                    child: const Text(
                      "No",
                      style: TextStyle(color: primaryColor),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      context.pop();
                      context.goNamed(AppRoute.loginView.name);
                      SharedPreferenceService.clearAll();
                    },
                    child: const Text(
                      "Yes",
                      style: TextStyle(color: primaryColor),
                    ),
                  ),
                ],
              ),
            );
            // context.goNamed(AppRoute.loginView.name);
            // SharedPreferenceService.clearAll();
          }
          break;
        default:
      }
    }

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "${ref.watch(splashViewModelProvider).userDetailsResponse?.data?.firstName ?? ""} ${ref.watch(splashViewModelProvider).userDetailsResponse?.data?.lastName ?? ""}",
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
            color: Colors.black,
            fontFamily: 'Plus Jakarta Sans',
          ),
        ),
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          CircleAvatar(
            radius: 23.w,
            backgroundColor: const Color.fromARGB(74, 101, 100, 100),
            backgroundImage: NetworkImage(
              ref
                      .watch(splashViewModelProvider)
                      .userDetailsResponse
                      ?.data
                      ?.image ??
                  AppConstants.noimglink,
            ),
          ),
          gapW10,
        ],
      ),
      body: SingleChildScrollView(
        child: PaddedColumn(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          children: [
            gapH12,
            InkWell(
              onTap: () {},
              child: ComingSoonWidget(
                height: 30.h,
                alignment: AlignmentDirectional.bottomCenter,
                child: BannerWidget(
                  backgroundImg: "assets/banner/your_wallet_lg.webp",
                  children: [
                    Text(
                      'Your Wallet',
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontFamily: 'Plus Jakarta Sans',
                      ),
                    ),
                    gapH5,
                    Text(
                      '€00.00',
                      style: TextStyle(
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontFamily: 'Plus Jakarta Sans',
                      ),
                    ),
                    gapH10,
                    SizedBox(
                      width: 135.w,
                      height: 30.h,
                      child: CustomButton(
                        prefixIcon: "assets/icons/add.png",
                        isPrefix: true,
                        buttonText: "Add Money",
                        textColor: primaryColor,
                        ontap: () {},
                        paddding: AppSizes.p1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            gapH20,
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {},
                    child: ComingSoonWidget(
                      height: 30.h,
                      alignment: AlignmentDirectional.bottomCenter,
                      child: BannerWidget(
                        backgroundImg: "assets/banner/schedule_rides_sm.webp",
                        children: [
                          Text(
                            'Schedule Rides',
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                              color: kBlack,
                              fontFamily: 'Plus Jakarta Sans',
                            ),
                          ),
                          gapH5,
                          Text(
                            'Plan, schedule, and explore Malta.',
                            style: TextStyle(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFF616161),
                              fontFamily: 'Plus Jakarta Sans',
                            ),
                          ),
                          gapH60,
                        ],
                      ),
                    ),
                  ),
                ),
                gapW10,
                Expanded(
                  child: ComingSoonWidget(
                    height: 30.h,
                    alignment: AlignmentDirectional.bottomCenter,
                    child: BannerWidget(
                      backgroundImg: "assets/banner/payment_methods_sm.webp",
                      children: [
                        Text(
                          'Payment Methods',
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontFamily: 'Plus Jakarta Sans',
                          ),
                        ),
                        gapH5,
                        Text(
                          'Choose your preferred way to pay seamlessly.',
                          style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF616161),
                            fontFamily: 'Plus Jakarta Sans',
                          ),
                        ),
                        gapH60,
                      ],
                    ),
                  ),
                ),
              ],
            ),
            gapH12,
            ...List.generate(
              featureList.length,
              (index) => Opacity(
                opacity: index == 2 ? AppConstants.opacity : 1,
                child: ListTile(
                  onTap: () => navigation(
                    featureList[index],
                  ),
                  dense: true,
                  contentPadding: EdgeInsets.zero,
                  leading: Icon(
                    iconList[index],
                    color: kGrey,
                  ),
                  title: Text(
                    featureList[index],
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF616161),
                      fontFamily: 'Plus Jakarta Sans',
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: kGrey,
                    size: 16.sp,
                  ),
                ),
              ),
            ),
            gapH12,
          ],
        ),
      ),
    );
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('AlertDialog Title'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('This is a demo alert dialog.'),
                Text('Would you like to approve of this message?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Approve'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    context.pushNamed(appRoute.name);
  }

  @override
  void showSnackbar(String message, {Color? color}) {}
}
