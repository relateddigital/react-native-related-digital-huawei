import Foundation
import UIKit
import RelatedDigitalIOS

@objc(RelatedDigitalHuawei)
class RelatedDigitalHuawei: NSObject {
    
    @objc(multiply:withB:withResolver:withRejecter:)
    func multiply(a: Float, b: Float, resolve:RCTPromiseResolveBlock,reject:RCTPromiseRejectBlock) -> Void {
        resolve(a*b)
    }
    
    //@objc var launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    
    @objc(initialize:withProfileId:withDataSource:withAskLocationPermissionAtStart:)
    public func initialize(organizationId:NSString,
                           profileId:NSString,
                           dataSource:NSString,
                           askLocationPermissionAtStart: Bool) {
        
        
        
        DispatchQueue.main.async {
            RelatedDigital.initialize(organizationId: organizationId as String,
                                      profileId: profileId as String,
                                      dataSource: dataSource as String,
                                      launchOptions: nil,
                                      askLocationPermmissionAtStart: askLocationPermissionAtStart)
            RelatedDigital.loggingEnabled = true
            RelatedDigital.customEvent("CUSTOMMM", properties: [:])
        }
        
        
    }
    
    /*
    @objc(setIsInAppNotificationEnabled:)
    public func setIsInAppNotificationEnabled(isInAppNotificationEnabled: Bool){
        RelatedDigital.inAppNotificationsEnabled = isInAppNotificationEnabled
    }
    
    public func setIsGeofenceEnabled(isGeofenceEnabled: Bool) {
        RelatedDigital.geofenceEnabled = isGeofenceEnabled
    }
    
    public func setAdvertisingIdentifier(advertisingIdentifier: String) {
        RelatedDigital.setAdvertisingIdentifier(adIdentifier: advertisingIdentifier)
    }
    
    public func signUp(exVisitorId: String, properties: [String: String]) {
        RelatedDigital.signUp(exVisitorId: exVisitorId, properties: properties)
    }
    
    public func login(exVisitorId: String, properties: [String: String]) {
        RelatedDigital.login(exVisitorId: exVisitorId, properties: properties)
    }
    
    public func logout() {
        RelatedDigital.logout()
    }
     */
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
