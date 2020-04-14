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
            self.bridge.getWebView()?.allowsBackForwardNavigationGestures = call.getBool("enable") ?? false;
            call.resolve();
        }
    }
    
    @objc func getBackForwardNavigationGesturesState(_ call: CAPPluginCall) {
        call.resolve(["data":  self.bridge.getWebView()?.allowsBackForwardNavigationGestures ?? false]);
    }

    @objc func setWebviewBounce(_ call: CAPPluginCall) {
        DispatchQueue.main.async {
            self.bridge.getWebView()?.scrollView.bounces = call.getBool("enable") ?? false;
            call.resolve();
        }
    }
    
}
