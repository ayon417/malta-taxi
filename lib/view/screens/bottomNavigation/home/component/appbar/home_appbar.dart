import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:malta_taxi/utils/utils.dart';
import 'package:malta_taxi/view/screens/bottomNavigation/home/home_view_model.dart';

class HomeAppBar extends ConsumerWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: ref.watch(homeViewModelProvider).panelPosition > 0.99
          ? kWhiteLilac
          : Colors.transparent,
      child: Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
          left: 16.w,
          right: 16.w,
          bottom: 10.h,
        ),
        child: Container(
          padding: EdgeInsets.only(
            left: 16.w,
            right: 8.w,
          ),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: kWhite,
            border: Border.all(
              color: kGrey,
              width: 0.3,
            ),
          ),
          child: ListTile(
            dense: true,
            contentPadding: EdgeInsets.zero,
            leading: const Icon(
              IconlyLight.search,
              color: kBlack,
            ),
            title: Row(
              children: [
                Image.asset(
                  'assets/icons/pickup_pin.png',
                  width: 20.w,
                  height: 20.h,
                ),
                gapW10,
                Text(
                  'Your Current Location',
                  style: TextStyle(
                    color: kBlack,
                    fontSize: 12.sp,
                    fontFamily: 'Plus Jakarta Sans',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            trailing: Container(
              padding: EdgeInsets.all(4.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0),
                color: kWhite,
                boxShadow: [
                  BoxShadow(
                    color: ktextfield.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: const Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
              child: const Icon(
                IconlyLight.time_circle,
                color: kBlack,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
