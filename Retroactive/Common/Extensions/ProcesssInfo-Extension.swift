import Cocoa

let osFullVersion = ProcessInfo.processInfo.operatingSystemVersion
let osMajorVersion = osFullVersion.majorVersion
let osMinorVersion = osFullVersion.minorVersion

extension ProcessInfo {
    static var versionString: String {
        let patchVersion = osFullVersion.patchVersion
        var patchString = ""
        if (patchVersion > 0) {
            patchString = ".\(patchVersion)"
        }
        return "macOS \(osMinorVersion).\(osMinorVersion)\(patchString)"
    }
    
    static var versionName: String {
        if (osMinorVersion == 13) {
            return "macOS High Sierra"
        }
        if (osMinorVersion == 14) {
            return "macOS Mojave"
        }
        if (osMinorVersion == 15) {
            return "macOS Catalina"
        }
        return ProcessInfo.versionString
    }
}
