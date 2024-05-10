import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:malta_taxi/utils/utils.dart';

class BannerWidget extends StatelessWidget {
  final String backgroundImg;
  final double padding;
  final double width;
  final List<Widget> children;

  const BannerWidget({
    super.key,
    required this.backgroundImg,
    this.padding = 16,
    this.width = double.infinity,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: EdgeInsets.symmetric(vertical: padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        image: DecorationImage(
          image: AssetImage(
            backgroundImg,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: PaddedColumn(
        crossAxisAlignment: CrossAxisAlignment.start,
        padding: EdgeInsets.only(left: 16.w),
        children: children,
      ),
    );
  }
}
