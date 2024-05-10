import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:malta_taxi/utils/utils.dart';

class AppbarWithBackIcon extends StatelessWidget {
  final String? title;
  final void Function()? onPressed;
  const AppbarWithBackIcon({
    super.key,
    this.title,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: kBlack.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: AppBar(
        centerTitle: false,
        backgroundColor: kWhite,
        leading: IconButton(
          icon: const Icon(
            IconlyLight.arrow_left,
            color: kBlack,
          ),
          onPressed: onPressed ??
              () {
                context.pop();
              },
        ),
        toolbarHeight: 42.h,
        title: Text(
          title ?? "",
          style: TextStyle(
            color: kBlack,
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
