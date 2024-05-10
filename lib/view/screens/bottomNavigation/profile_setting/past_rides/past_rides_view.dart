import 'package:cached_network_image/cached_network_image.dart';
import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:malta_taxi/utils/utils.dart';
import 'package:malta_taxi/view/components/appbar/appbar_back.dart';
import 'package:malta_taxi/view/screens/bottomNavigation/profile_setting/past_rides/past_rides_view_model.dart';

class PastRidesView extends ConsumerStatefulWidget {
  const PastRidesView({super.key});

  @override
  ConsumerState<PastRidesView> createState() => _PastRidesViewState();
}

class _PastRidesViewState extends ConsumerState<PastRidesView>
    with BaseScreenView {
  late PastRidesViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _viewModel = ref.read(pastRidesViewModelProvider);
      _viewModel.attachView(this);
      _viewModel.getPastRides();
    });
  }

  @override
  Widget build(BuildContext context) {
    _viewModel = ref.watch(pastRidesViewModelProvider);
    return Scaffold(
      body: _viewModel.loading
          ? const Center(
              child: CircularProgressIndicator(
                color: kBlack,
              ),
            )
          : SingleChildScrollView(
              child: PaddedColumn(
                children: [
                  const AppbarWithBackIcon(
                    title: 'Past Rides',
                  ),
                  if ((_viewModel.pastRidesResponseModel.data?.length ?? -1 ) == 0 )  Column(
                   children: [
                      SizedBox(height: 250.h,),
                    const Text("You don't have any past ride."),
                   ],)
                     else PaddedColumn(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    children: [
                      ...List.generate(
                        _viewModel.pastRidesResponseModel.data?.length ?? 0,
                        (index) => Column(
                          children: [
                            ListTile(
                              visualDensity: VisualDensity.compact,
                              enableFeedback: true,
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 3.h,
                              ),
                              leading: SizedBox(
                                width: 52.w,
                                child: CachedNetworkImage(
                                  imageUrl:
                                      "${_viewModel.pastRidesResponseModel.data?[index].carImage}",
                                ),
                              ),
                              title: Text(
                                "${_viewModel.pastRidesResponseModel.data?[index].carNumber} ${_viewModel.pastRidesResponseModel.data?[index].driverFirstName} ${_viewModel.pastRidesResponseModel.data?[index].driverLastName}",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              subtitle: Text(
                               "${_viewModel.pastRidesResponseModel.data?[index].date ?? 0}",
                                style: TextStyle(
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              trailing: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "€ ${_viewModel.pastRidesResponseModel.data?[index].price ?? 0}",
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Visibility(
                              visible: (_viewModel.pastRidesResponseModel.data?[index].cancellationAmount ?? 0) > 0,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text("Previous Cancellation Charges", style: TextStyle(fontSize: 12),),
                                      Text(
                                        "€${_viewModel.pastRidesResponseModel.data?[index].cancellationAmount ?? 0}",
                                        style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                  gapH10,
                                ],
                              ),
                            ),
                            Container(  padding: EdgeInsets.symmetric( horizontal: 0.w, vertical: 10.h ),   decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
                                  color: kWhite,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 0.5,
                                      blurRadius: 7,
                                      offset: const Offset( 0,3,
                                      ), // changes position of shadow
                                    ),
                                  ],
                                ),
                               child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [ ListTile(
                                dense: true,
                                visualDensity: VisualDensity.compact,
                                minVerticalPadding: 0,
                                leading: Image.asset(
                                  "assets/icons/pickup_pin.png",
                                  height: 20.h,
                                ),
                                title: Text(
                                  _viewModel.pastRidesResponseModel.data?[index].pickupLocation?.pickupLocationName ?? "",
                                   
                                  style: TextStyle(
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                 ),
                                const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16),
                                child: Divider(color: kGrey, thickness: 0.2), ),
                                  ListTile(
                                dense: true,
                                visualDensity: VisualDensity.compact,
                                minVerticalPadding: 0,
                                leading: Image.asset(
                                  "assets/icons/destination_pin.png",
                                  height: 20.h,
                                ),
                                title: Text(
                                   _viewModel.pastRidesResponseModel.data?[index].destinationLocation?.destinationLocationName ?? "",
                                  style: TextStyle(
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                 ),
                             
                                   gapH10,
                                     ],
                                     ),
                             ),
                             gapH12,
                            Divider(
                              thickness: 2.h,
                              color: const Color(0xFFF3F3F3),
                            ),
                          ],
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
    context.goNamed(appRoute.name);
  }

  @override
  void showSnackbar(String message, {Color? color}) {
    // implement showSnackbar
  }
}
