import { registerPlugin } from "@capacitor/core";

export interface WebviewConfiguratorPlugin {
  setBackForwardNavigationGestures(options: { enable: boolean }): Promise<void>;
  getBackForwardNavigationGesturesState(): Promise<{ data: boolean }>;
  setWebviewBounce(options: { enable: boolean }): Promise<void>;
}

export const WebviewConfiguratorPlugin =
  registerPlugin<WebviewConfiguratorPlugin>("WebviewConfiguratorPlugin");

export function setBackForwardNavigationGestures(enable: boolean) {
  try {
    WebviewConfiguratorPlugin.setBackForwardNavigationGestures({ enable });
  } catch (error) {
    console.error("Error setting back forward navigation gestures", error);
  }
}

export async function getBackForwardNavigationGesturesState(): Promise<boolean> {
  try {
    return (
      await WebviewConfiguratorPlugin.getBackForwardNavigationGesturesState()
    ).data;
  } catch (error) {
    console.error(
      "Error getting back forward navigation gestures state",
      error
    );
  }
}

export function setWebviewBounce(enable: boolean) {
  try {
    WebviewConfiguratorPlugin.setWebviewBounce({ enable });
  } catch (error) {
    console.error("Error setting webview bounce", error);
  }
}
