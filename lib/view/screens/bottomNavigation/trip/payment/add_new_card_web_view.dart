// ignore_for_file: must_be_immutable

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:malta_taxi/utils/time_formart.dart';
import 'package:malta_taxi/utils/utils.dart';
import 'package:malta_taxi/view/screens/bottomNavigation/trip/trip_confirmed/trip_confirmed_view_model.dart';
import 'package:malta_taxi/view/screens/splash/splash_view_model.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AddNewCardWebView extends ConsumerStatefulWidget {
  String? addNewCardUrl;
  AddNewCardWebView({super.key, required this.addNewCardUrl});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AddNewCardWebViewState();
}

class _AddNewCardWebViewState extends ConsumerState<AddNewCardWebView> {
  late WebViewController _controller;
  double percentValue = 0;
  late Timer _timer;

  @override
  void initState() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        percentValue++;
      });
      // Logger.printSuccess(percentValue.toString());
      if (percentValue == 300) {
        timer.cancel();
        Navigator.pop(context);
      }
    });

    _controller = WebViewController()
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
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
          onUrlChange: (change) async {
            Logger.printWarning(change.url.toString());
            if (change.url?.contains( "users/ride/payment/save-card/success") ?? false) {
               ref.read(tripConfirmedViewModelProvider).clearResponseModels();
               ref.watch(splashViewModelProvider).getSavedCards().whenComplete(() =>  Navigator.pop(context));
             

              // context.goNamed(AppRoute.bottomNavigationView.name);
              // {{BASE_URL}}/users/ride/payment-success?session_idvscode-file://vscode-app/Applications/Visual%20Studio%20Code.app/Contents/Resources/app/out/vs/code/electron-sandbox/workbench/workbench.html
              // String csId = change.url?.split("session_id=")[1] ?? "";
              // final Response response = await ApiClient().get("${change.url}");
              // Logger.printError(response.data.toString());
            }else if(change.url?.contains( "users/ride/payment-cancel") ?? false){
              Navigator.pop(context);
            }
          },
        ),
      )
      ..loadRequest(Uri.parse('${widget.addNewCardUrl}'));

    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        _timer.cancel();
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: kWhite,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LinearPercentIndicator(
                width: MediaQuery.of(context).size.width / 1.8,
                barRadius: const Radius.circular(10),
                lineHeight: 8.0,
                percent: percentValue / 300,
                progressColor: Colors.red,
              ),
              Text(formatTime((300 - percentValue).toInt())),
            ],
          ),
        ),
        body: WebViewWidget(controller: _controller),
      ),
    );
  }
}
