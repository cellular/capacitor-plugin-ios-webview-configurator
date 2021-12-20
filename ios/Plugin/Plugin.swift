import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitor.ionicframework.com/docs/plugins/ios
 */
@objc(WebviewConfiguratorPlugin)
public class WebviewConfiguratorPlugin: CAPPlugin {

    @objc func setBackForwardNavigationGestures(_ call: CAPPluginCall) {
        DispatchQueue.main.async {
            self.bridge?.webView?.allowsBackForwardNavigationGestures = call.getBool("enable") ?? false;
            call.resolve();
        }
    }

    @objc func getBackForwardNavigationGesturesState(_ call: CAPPluginCall) {
        DispatchQueue.main.async {
                    call.resolve(["data": self.bridge?.webView?.allowsBackForwardNavigationGestures ?? false]);
               }
    }

    @objc func setWebviewBounce(_ call: CAPPluginCall) {
        DispatchQueue.main.async {
            self.bridge?.webView?.scrollView.bounces = call.getBool("enable") ?? false;
            call.resolve();
        }
    }

}
