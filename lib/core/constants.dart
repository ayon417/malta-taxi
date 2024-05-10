class AppConstants {
  // prod -> https://5fh7it34mt.eu-central-1.awsapprunner.com/v1/
  // dev -> https://8qfmm73bju.eu-central-1.awsapprunner.com/v1/
  static const String baseUrl =
      "https://8qfmm73bju.eu-central-1.awsapprunner.com/v1/";
  static const userIdPref = 'userId';
  static const isOnboardingViewed = 'onboardingViewed';
  static const authToken = 'authtoken';
  static String userId = "";
  static String token = "";
  static const double opacity = 0.5;
  static const String googleMapKey = "AIzaSyAjdNnw06XH3bUkAB6VZBU3w7ynnvk1b5I";
  static const String noimglink =
      "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png";

  static const String entertainment = "entertainment";
  static const String privacy = "https://www.maltataxi.mt/privacy-policy";
  static const String terms = "https://www.maltataxi.mt/terms-conditions";

  static const List<String> chipNames = ["Google", "Apple", "Facebook"];
  static const List<String> chipIcons = [
    "assets/icons/google.png",
    "assets/icons/apple.png",
    "assets/icons/facebook.png",
  ];
  // static String userCurrentLocationAddress = "";
  // static String userCurrentLocationLat = "";
  // static String userCurrentLocationLng = "";

  //api end points
}

List<Map<String, dynamic>> countryLanguages = [
  {"icon": "assets/flag/usa_flag.png", "name": "English"},
  {"icon": "assets/flag/german_flag.png", "name": "Deutsch"},
  {"icon": "assets/flag/france_flag.png", "name": "Français"},
  {"icon": "assets/flag/italy_flag.png", "name": "Italiana"},
  {"icon": "assets/flag/spain_flag.png", "name": "Española"},
  {"icon": "assets/flag/arabia_flag.png", "name": "عربي"},
  {"icon": "assets/flag/russia_flag.png", "name": "Русский"},
  {"icon": "assets/flag/china_flag.png", "name": "中国人"},
];

enum AppState { initial, pending, dispose }

String formatTime(int? secs) {
  final Duration duration = Duration(seconds: secs!);
  final String minutes = (duration.inMinutes % 60).toString().padLeft(2, '0');
  final String seconds = (duration.inSeconds % 60).toString().padLeft(2, '0');
  return '$minutes:$seconds';
}
