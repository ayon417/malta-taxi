import 'package:flutter/material.dart';
import 'package:malta_taxi/utils/utils.dart';

class ComingSoonWidget extends StatelessWidget {
  final Widget child;
  final double height;
  final AlignmentDirectional alignment;
  const ComingSoonWidget({
    super.key,
    required this.child,
    required this.height,
    required this.alignment,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Opacity(
          opacity: 1,
          child: child,
        ),
        Container(
          height: height,
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color.fromARGB(213, 133, 131, 131),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(3.r),
              bottomRight: Radius.circular(3.r),
            ),
          ),
          child: Center(
            child: Text(
              "Coming soon",
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
                color: Colors.white,
                fontFamily: 'Plus Jakarta Sans',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
