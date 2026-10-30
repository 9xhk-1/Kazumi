import Flutter
import UIKit

// On iPadOS 26/27 Stage Manager, the default windowing control style draws the
// window buttons directly over the scene's top content, and no safe-area inset
// is reported for the controls, so buttons in the app's top bar get covered
// (see https://github.com/flutter/flutter/issues/170461).
// `.minimal` moves the window controls into a separate bar above the content.
class SceneDelegate: FlutterSceneDelegate {
  @available(iOS 26.0, *)
  override func preferredWindowingControlStyle(
    for windowScene: UIWindowScene
  ) -> UIWindowScene.WindowingControlStyle {
    return .minimal
  }
}
