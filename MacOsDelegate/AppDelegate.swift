
import Cocoa
import AppCenter
import AppCenterAnalytics
import AppCenterCrashes

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate, NSPageControllerDelegate {

  @IBOutlet weak var window: NSWindow!
  @IBOutlet weak var pageController: NSPageController!

  private var services: [String] = [ "Welcome", "Build", "Test", "Crashes", "Analytics", "Push"]

  func applicationDidFinishLaunching(_ aNotification: Notification) {
    // Start App Center
    AppCenter.start(withAppSecret: "06cd0e95-1e90-4ea7-a201-c00da0043134", services: [
      Analytics.self,
      Crashes.self,
    ])

  }

  func applicationWillTerminate(_ aNotification: Notification) {
    
  }

}

