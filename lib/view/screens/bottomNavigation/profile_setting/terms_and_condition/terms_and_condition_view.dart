import 'package:flutter/material.dart';
import 'package:malta_taxi/core/constants.dart';
import 'package:malta_taxi/utils/utils.dart';
import 'package:malta_taxi/view/components/appbar/appbar_back.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TermsAndConditionView extends ConsumerStatefulWidget {
  const TermsAndConditionView({super.key});

  @override
  ConsumerState<TermsAndConditionView> createState() =>
      _TermsAndConditionViewState();
}

class _TermsAndConditionViewState extends ConsumerState<TermsAndConditionView>
    with BaseScreenView {
  WebViewController webViewController = WebViewController();
  bool isLoding = true;
  @override
  void initState() {
    webViewController
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onWebResourceError: (WebResourceError error) {},
        ),
      )
      ..loadRequest(Uri.parse(AppConstants.terms));
    offLoading();

    super.initState();
  }

  void offLoading(){
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        isLoding = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppbarWithBackIcon(
          title: 'Terms & Condition',
        ),
      ),
      body: isLoding? const Align(child: CircularProgressIndicator(color: kBlack,)):
      WebViewWidget(
        controller: webViewController,
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
