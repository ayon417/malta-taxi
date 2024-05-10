import 'package:cached_network_image/cached_network_image.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:malta_taxi/core/core.dart';
import 'package:malta_taxi/data/remote/auth/models/update_user_model.dart';
import 'package:malta_taxi/utils/custom_button.dart';
import 'package:malta_taxi/utils/file_picker.dart';
import 'package:malta_taxi/utils/utils.dart';
import 'package:malta_taxi/view/components/appbar/appbar_back.dart';
import 'package:malta_taxi/view/screens/bottomNavigation/profile_setting/account_info/account_info_view_model.dart';
import 'package:malta_taxi/view/screens/splash/splash_view_model.dart';

class AccountInfoView extends ConsumerStatefulWidget {
  const AccountInfoView({super.key});

  @override
  ConsumerState<AccountInfoView> createState() => _AccountInfoViewState();
}

class _AccountInfoViewState extends ConsumerState<AccountInfoView>
    with BaseScreenView {
  late SplashViewModel _splashViewModel;
  String noimglink = AppConstants.noimglink;
  String? imglink;
  late TextEditingController firstNameController;
  late TextEditingController lastNameController;
  late TextEditingController emailController;
  late TextEditingController phoneNumberController;

  @override
  void initState() {
    super.initState();
    _splashViewModel = ref.read(splashViewModelProvider);
    _splashViewModel.attachView(this);

    firstNameController = TextEditingController(
      text: _splashViewModel.userDetailsResponse?.data?.firstName ?? "",
    );
    lastNameController = TextEditingController(
      text: _splashViewModel.userDetailsResponse?.data?.lastName ?? "",
    );
    emailController = TextEditingController(
      text: _splashViewModel.userDetailsResponse?.data?.email ?? "",
    );
    phoneNumberController = TextEditingController(
      text: _splashViewModel.userDetailsResponse?.data?.mobile!.split(" ").last ?? "",
    );
    imglink = _splashViewModel.userDetailsResponse?.data?.image ?? noimglink;
  }

  @override
  Widget build(BuildContext context) {
    _splashViewModel = ref.watch(splashViewModelProvider);
    final accountInfoViewModel = ref.watch(accountInfoViewModelProvider);
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 30.h,
        ),
        child: SizedBox(
          height: 60,
          child: CustomButton(
            buttonColor: primaryColor,
            textColor: Colors.white,
            buttonText: "Update",
            loaderColor: kWhite,
            isLoading: accountInfoViewModel.loading,
            ontap: () {
              accountInfoViewModel.updateUserDetails(
                context,
                UpdateUserRequest(
                  email: emailController.text,
                  firstName: firstNameController.text,
                  lastName: lastNameController.text,
                  image: imglink ?? noimglink,
                ),
              );
            },
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const AppbarWithBackIcon(
              title: 'Account information',
            ),
            PaddedColumn(
              crossAxisAlignment: CrossAxisAlignment.start,
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              children: [
                gapH16,
                Stack(
                  children: [
                    CircleAvatar(
                      backgroundColor: const Color.fromARGB(48, 124, 124, 124),
                      radius: 40.r,
                      backgroundImage: CachedNetworkImageProvider(
                        imglink ?? noimglink,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: InkWell(
                        onTap: () {
                          openPickImageModalSheet(context).then((value) async {
                            imglink = await uploadImage(value);

                            setState(() {});
                          });
                        },
                        child: const CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 13,
                            backgroundColor: primaryColor,
                            child: Icon(
                              Icons.edit,
                              color: Colors.white,
                              size: 15,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                gapH16,
                Text(
                  LocaleKeys.firstName.tr(),
                  style: const TextStyle(
                    color: Color(0xFF9F9F9F),
                    fontSize: 14,
                    fontFamily: 'Plus Jakarta Sans',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
                gapH5,
                TextFormField(
                  keyboardType: TextInputType.name,
                  controller: firstNameController,
                  decoration:
                      InputDecoration(hintText: LocaleKeys.enterFirstName.tr()),
                ),
                gapH16,
                Text(
                  LocaleKeys.lastName.tr(),
                  style: const TextStyle(
                    color: Color(0xFF9F9F9F),
                    fontSize: 14,
                    fontFamily: 'Plus Jakarta Sans',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
                gapH5,
                TextFormField(
                  keyboardType: TextInputType.name,
                  controller: lastNameController,
                  decoration:
                      InputDecoration(hintText: LocaleKeys.enterLastName.tr()),
                ),
                gapH16,
                Text(
                  LocaleKeys.emailAddress.tr(),
                  style: const TextStyle(
                    color: Color(0xFF9F9F9F),
                    fontSize: 14,
                    fontFamily: 'Plus Jakarta Sans',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
                gapH5,
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  decoration:
                      const InputDecoration(hintText: "example@gmail.com"),
                ),
                gapH16,
                const Text(
                  "Phone number",
                  style: TextStyle(
                    color: Color(0xFF9F9F9F),
                    fontSize: 14,
                    fontFamily: 'Plus Jakarta Sans',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
                gapH5,
                TextFormField(
                readOnly: true,
                controller: phoneNumberController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: LocaleKeys.enterMobileNumber.tr(),
                  prefixIcon: CountryCodePicker(
                    enabled: false,
                    favorite: const ["+356"],
                    barrierColor: Colors.black.withOpacity(0.5),
                    initialSelection: "+${_splashViewModel.userDetailsResponse?.data?.mobile!.split(" ").first}",
                    boxDecoration: BoxDecoration(
                      color: kWhite,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
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
    context.pop();
  }

  @override
  void showSnackbar(String message, {Color? color}) {
    // implement showSnackbar
  }
}
