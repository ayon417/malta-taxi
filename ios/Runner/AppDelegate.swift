import UIKit
import Flutter
import GoogleMaps

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
      
//    GMSPlacesClient.provideAPIKey("Your key")
    GMSServices.provideAPIKey("AIzaSyAjdNnw06XH3bUkAB6VZBU3w7ynnvk1b5I")
      
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
