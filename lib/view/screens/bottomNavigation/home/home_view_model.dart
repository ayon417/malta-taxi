import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:malta_taxi/core/core.dart';
import 'package:malta_taxi/helpers/base_screen_view.dart';
import 'package:malta_taxi/helpers/base_view_model.dart';

final homeViewModelProvider = ChangeNotifierProvider((ref) => HomeViewModel());

class HomeViewModel extends BaseViewModel<BaseScreenView> {
  double _panelPosition = 0.0;
  double get panelPosition => _panelPosition;
  void setPanelPosition(double slidebarposition) {
    _panelPosition = slidebarposition;
    notifyListeners();
  }

  AppState _appState = AppState.initial;
  AppState get appState => _appState;

  void setAppState(AppState appState) {
    debugPrint("appState: $appState");
    _appState = appState;
    notifyListeners();
  }
}
