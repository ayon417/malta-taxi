import 'package:flutter/material.dart';
import 'package:malta_taxi/core/core.dart';
import 'package:malta_taxi/data/remote/auth/models/update_user_model.dart';
import 'package:malta_taxi/utils/custom_button.dart';
import 'package:malta_taxi/utils/location_search/location_serach.dart';
import 'package:malta_taxi/utils/utils.dart';
import 'package:malta_taxi/view/screens/basicDetail/basic_detail_view_model.dart';
import 'package:malta_taxi/view/screens/bottomNavigation/trip/location_picker/location_picker_view_model.dart';
import 'package:malta_taxi/view/screens/splash/splash_view_model.dart';

class BasicDetailView extends ConsumerStatefulWidget {
  const BasicDetailView({super.key});

  @override
  ConsumerState<BasicDetailView> createState() => _BasicDetailViewState();
}

class _BasicDetailViewState extends ConsumerState<BasicDetailView>
    with BaseScreenView {
  late BasicUserDetailsViewModel _viewModel;
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  bool isEmailValid = true;
  bool isFirstNameValid = true;
  bool isLastNameValid = true;

  @override
  void initState() {
    super.initState();
    _viewModel = ref.read(basicUserDetailsViewModel)..attachView(this);
  }

  void isValidate() {
    if (firstNameController.text.isEmpty) {
      setState(() {
        isFirstNameValid = false;
      });
    } else {
      setState(() {
        isFirstNameValid = true;
      });
    }
    if (lastNameController.text.isEmpty) {
      setState(() {
        isLastNameValid = false;
      });
    } else {
      setState(() {
        isLastNameValid = true;
      });
    }
    if (emailController.text.isEmpty ||
        !emailController.text.contains(".") ||
        !emailController.text.contains("@") ||
        emailController.text.length < 2) {
      setState(() {
        isEmailValid = false;
      });
    } else {
      setState(() {
        isEmailValid = true;
      });
    }
  }

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
          buttonText: LocaleKeys.submit.tr(),
          ontap: () {
            _viewModel
                .updateUserDetails(
                  UpdateUserRequest(firstName: firstNameController.text,lastName: lastNameController.text,email: emailController.text, image: AppConstants.noimglink),
                  ).then((value) {
                    ref.read(splashViewModelProvider).getUserDetails().then((value) {
                    ref.read(locationPickerViewModelProvider).popularDestination();
                    ref.watch(locationPickerViewModelProvider).setUserCurrentLocation().then((value) {
                      PlaceSearch().fetchLocationSuggestions(ref.watch(locationPickerViewModelProvider).getUserCurrentLocationAddress).then((value) {
                      ref.watch(locationPickerViewModelProvider).setLocationSuggestion(value);
                      });
                    });
                   });
                       });
          },
        ),
      ),
      appBar: AppBar(
        elevation: 1,
        title: Text(
          LocaleKeys.basicDetails.tr(),
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: InkWell(
          onTap: () {
            // Navigator.of(context).pop();
          },
          child: const Icon(Icons.arrow_back),
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
              controller: firstNameController,
              autofocus: true,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                hintText: LocaleKeys.enterFirstName.tr(),
                errorText: isFirstNameValid ? null : "Please enter valid name",
              ),
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
              controller: lastNameController,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                hintText: LocaleKeys.enterLastName.tr(),
                errorText: isLastNameValid ? null : "Please enter valid name",
              ),
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
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              autocorrect: false,
              decoration: InputDecoration(
                errorText: isEmailValid ? null : "Please enter valid email",
                hintText: "example@gmail.com",
              ),
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
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        showCloseIcon: true,
        content: Text(message),
        backgroundColor: color ?? kBlack,
      ),
    );
  }
}
