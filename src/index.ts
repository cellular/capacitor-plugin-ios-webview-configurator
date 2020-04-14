import { Plugins } from "@capacitor/core";

const { WebviewConfiguratorPlugin } = Plugins;

export function setBackForwardNavigationGestures(enable: boolean) {
  try {
    WebviewConfiguratorPlugin.setBackForwardNavigationGestures({ enable });
  } catch (error) {}
}

export async function getBackForwardNavigationGesturesState(): Promise<
  boolean
> {
  try {
    return await WebviewConfiguratorPlugin.getBackForwardNavigationGesturesState()
      .data;
  } catch (error) {}
}

export function setWebviewBounce(enable: boolean) {
  try {
    WebviewConfiguratorPlugin.setWebviewBounce({ enable });
  } catch (error) {}
}
