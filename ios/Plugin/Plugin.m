#import <Foundation/Foundation.h>
#import <Capacitor/Capacitor.h>

// Define the plugin using the CAP_PLUGIN Macro, and
// each method the plugin supports using the CAP_PLUGIN_METHOD macro.
CAP_PLUGIN(WebviewConfiguratorPlugin, "WebviewConfiguratorPlugin",
           CAP_PLUGIN_METHOD(setBackForwardNavigationGestures, CAPPluginReturnPromise);
           CAP_PLUGIN_METHOD(getBackForwardNavigationGesturesState, CAPPluginReturnPromise);    
           CAP_PLUGIN_METHOD(setWebviewBounce, CAPPluginReturnPromise);
)
