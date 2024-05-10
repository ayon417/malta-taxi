import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:iconly/iconly.dart';
import 'package:malta_taxi/utils/location_search/location_serach.dart';
import 'package:malta_taxi/utils/utils.dart';
import 'package:malta_taxi/view/components/comingsoon/comingsoon_widget.dart';
import 'package:malta_taxi/view/screens/bottomNavigation/trip/location_picker/location_picker_view_model.dart';
import 'package:malta_taxi/view/screens/splash/splash_view_model.dart';

class HomePanel extends ConsumerStatefulWidget {
  final ScrollController scrollController;
  final void Function() onSearch;
  const HomePanel({
    super.key,
    required this.scrollController,
    required this.onSearch,
  });

  @override
  _HomePanelState createState() => _HomePanelState();
}

class _HomePanelState extends ConsumerState<HomePanel> with BaseScreenView {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
    // ref.read(splashViewModelProvider).getUserDetails().then((value) {
    // ref.read(locationPickerViewModelProvider).popularDestination();
    ref.watch(locationPickerViewModelProvider).setUserCurrentLocation().then((value) {
    PlaceSearch().fetchLocationSuggestions(ref.watch(locationPickerViewModelProvider).getUserCurrentLocationAddress).then((value) {
        ref.watch(locationPickerViewModelProvider).setLocationSuggestion(value);
      });
    });
    // });
      ref.watch(splashViewModelProvider).getSavedCards();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(10.r),
        ),
      ),
      child: SingleChildScrollView(
        controller: widget.scrollController,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              gapH20,
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    gapH10,
                    DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        color: ktextfield,
                      ),
                      child: ListTile(
                        onTap: () {
                          ref
                              .watch(locationPickerViewModelProvider)
                              .dropAddController
                              .text = "";
                          widget.onSearch();
                        },
                        dense: true,
                        contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
                        leading: const Icon(
                          IconlyLight.search,
                          color: primaryColor,
                        ),
                        title: Text(
                          LocaleKeys.searchDestination.tr(),
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Plus Jakarta Sans',
                            color: kGrey,
                          ),
                        ),
                      ),
                    ),
                    gapH2,
                    ...List.generate(
                      (ref
                                      .watch(locationPickerViewModelProvider)
                                      .popularDestinationResponse
                                      .data
                                      ?.length ??
                                  0) >
                              3
                          ? 3
                          : (ref
                                  .watch(locationPickerViewModelProvider)
                                  .popularDestinationResponse
                                  .data
                                  ?.length ??
                              0),
                      (index) => ListTile(
                        onTap: () {
                          ref
                              .watch(locationPickerViewModelProvider)
                              .dropAddController
                              .text = ref
                                  .watch(locationPickerViewModelProvider)
                                  .popularDestinationResponse
                                  .data?[index] ??
                              "";
                          ref.read(locationPickerViewModelProvider).setDropFinal(ref.watch(locationPickerViewModelProvider).popularDestinationResponse.data?[index] ?? "");
                          ref.read(locationPickerViewModelProvider).setDropTyping(false);
                          widget.onSearch();
                        },
                        visualDensity: VisualDensity.compact,
                        dense: true,
                        contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
                        leading: const Icon(
                          Icons.history,
                          color: kGrey,
                        ),
                        title: Text(
                          ref
                                  .watch(locationPickerViewModelProvider)
                                  .popularDestinationResponse
                                  .data?[index] ??
                              "",
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Plus Jakarta Sans',
                            color: kBlack,
                          ),
                        ),
                      ),
                    ).animate().fadeIn(),
                    gapH10,
                  ],
                ),
              ),
              gapH20,
              Row(
                children: [
                  Expanded(
                    child: ComingSoonWidget(
                      height: 30.h,
                      alignment: AlignmentDirectional.bottomCenter,
                      child: Image.asset(
                        'assets/images/tourist.png',
                      ),
                    ),
                  ),
                  gapW16,
                  Expanded(
                    child: InkWell(
                      child: ComingSoonWidget(
                        height: 30.h,
                        alignment: AlignmentDirectional.bottomCenter,
                        child: Image.asset(
                          'assets/images/tour.png',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void showSnackbar(String message, {Color? color}) {
    // implement showSnackbar
  }

  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {}
}
