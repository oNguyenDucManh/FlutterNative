import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
    private var mainCoordinator: AppCoordinator?
    override func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        //
        let flutterViewController: FlutterViewController = window?.rootViewController as! FlutterViewController
        let tstChannel = FlutterMethodChannel(name:   "com.manhnd.testnative/navToLogin",binaryMessenger: flutterViewController.binaryMessenger)
        tstChannel.setMethodCallHandler({(call: FlutterMethodCall, result:   FlutterResult) -> Void in
            guard call.method == "goToLogin" else {
                result(FlutterMethodNotImplemented)
                return
            }
            self.mainCoordinator?.start()
        })
        //
        GeneratedPluginRegistrant.register(with: self)
        let navigationController = UINavigationController(rootViewController: flutterViewController)
        navigationController.isNavigationBarHidden = true
        window?.rootViewController = navigationController
        mainCoordinator = AppCoordinator(navigationController: navigationController)
        window?.makeKeyAndVisible()
        
        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }
}
