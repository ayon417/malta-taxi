// ignore_for_file: must_be_immutable

import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:malta_taxi/core/core.dart';
import 'package:malta_taxi/utils/utils.dart';
import 'package:malta_taxi/view/screens/bottomNavigation/trip/trip_confirmed/trip_confirmed_view_model.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PaymentWebView extends ConsumerStatefulWidget {
  String? paymentUrl;
  PaymentWebView({super.key, required this.paymentUrl});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PaymentWebViewState();
}

class _PaymentWebViewState extends ConsumerState<PaymentWebView> {

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
      if(percentValue == 300) {
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
            if(change.url?.contains("users/ride/payment-success") ?? false) {
              ref.read(tripConfirmedViewModelProvider).clearResponseModels();

              Navigator.pop(context);

              // context.goNamed(AppRoute.bottomNavigationView.name);
              // {{BASE_URL}}/users/ride/payment-success?session_id
              // String csId = change.url?.split("session_id=")[1] ?? "";
              final Response response = await ApiClient().get("${change.url}");
              Logger.printError(response.data.toString());
            }
          },
        ),
      )
      ..loadRequest(Uri.parse('${widget.paymentUrl}'));

    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kWhite,
        title: Row(
          children: [
            LinearPercentIndicator(
              width: MediaQuery.of(context).size.width / 1.6,
              barRadius: const Radius.circular(10),
              lineHeight: 8.0,
              percent: percentValue / 300,
              progressColor: Colors.red,
            ),
            Text("${(300 - percentValue).toStringAsFixed(0)}s"),
          ],
        ),
      ),
      body: WebViewWidget(controller: _controller),
    );
  }
}