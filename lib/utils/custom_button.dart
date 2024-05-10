import 'package:flutter/material.dart';
import 'package:malta_taxi/utils/utils.dart';

class CustomButton extends StatefulWidget {
  final bool isLoading;
  final String buttonText;
  final Function() ontap;
  final bool isSuffix;
  final bool isPrefix;
  final String suffixIcon;
  final String prefixIcon;
  final Color buttonColor;
  final Color loaderColor;
  final Color textColor;
  final Color borderColor;
  final double paddding;

  const CustomButton({
    super.key,
    this.isLoading = false,
    required this.buttonText,
    required this.ontap,
    this.isSuffix = false,
    this.isPrefix = false,
    this.suffixIcon = "",
    this.prefixIcon = "",
    this.buttonColor = Colors.white,
    this.loaderColor = Colors.black,
    this.textColor = Colors.black,
    this.borderColor = Colors.transparent,
    this.paddding = AppSizes.p16,
  });

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: !widget.isLoading ? widget.ontap : null,
      child: Container(
        padding: EdgeInsets.all(widget.paddding),
        decoration: BoxDecoration(
          border: Border.all(color: widget.borderColor),
          color: widget.buttonColor,
          borderRadius: BorderRadius.circular(AppSizes.p4),
        ),
        child: widget.isLoading
            ? Center(
                child: SizedBox(
                  height: 23,
                  width: 23,
                  child: CircularProgressIndicator(color: widget.loaderColor),
                ),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (widget.isPrefix) gapW8 else const SizedBox.shrink(),
                  if (widget.isPrefix)
                    Image.asset(
                      widget.prefixIcon,
                      width: 20,
                    )
                  else
                    const SizedBox.shrink(),
                  if (widget.isPrefix) gapW8 else const SizedBox.shrink(),
                  Text(
                    widget.buttonText,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: widget.textColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  if (widget.isSuffix) gapW8 else const SizedBox.shrink(),
                  if (widget.isSuffix)
                    Image.asset(
                      widget.suffixIcon,
                      width: 20,
                    )
                  else
                    const SizedBox.shrink(),
                ],
              ),
      ),
    );
  }
}
