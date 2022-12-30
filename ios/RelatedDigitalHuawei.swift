import Foundation
import UIKit
import RelatedDigitalIOS

@objc(RelatedDigitalHuawei)
class RelatedDigitalHuawei: RCTEventEmitter {
    
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
        }
        
        
    }
    
    
    @objc(setIsInAppNotificationEnabled:)
    public func setIsInAppNotificationEnabled(isInAppNotificationEnabled: Bool){
        RelatedDigital.inAppNotificationsEnabled = isInAppNotificationEnabled
    }
    
    @objc(setIsGeofenceEnabled:)
    public func setIsGeofenceEnabled(isGeofenceEnabled: Bool) {
        RelatedDigital.geofenceEnabled = isGeofenceEnabled
    }
    
    @objc(setAdvertisingIdentifier:)
    public func setAdvertisingIdentifier(advertisingIdentifier: String) {
        RelatedDigital.setAdvertisingIdentifier(adIdentifier: advertisingIdentifier)
    }
    
    @objc(signUp:withProperties:)
    public func signUp(exVisitorId: String, properties: [String: String]) {
        RelatedDigital.signUp(exVisitorId: exVisitorId, properties: properties)
    }
    
    @objc(login:withProperties:)
    public func login(exVisitorId: String, properties: [String: String]) {
        RelatedDigital.login(exVisitorId: exVisitorId, properties: properties)
    }
    
    @objc(logout)
    public func logout() {
        RelatedDigital.logout()
    }
    
    @objc(customEvent:withParameters:)
    public func customEvent(pageName: String, parameters: [String: String]) {
        RelatedDigital.customEvent(pageName, properties: parameters)
    }
    
    @objc(setIsPushNotificationEnabled:withAppAlias:withDeliveredBadge:)
    public func setIsPushNotificationEnabled(isPushNotificationEnabled: Bool,
                                             appAlias: String,
                                             deliveredBadge: Bool) {
        if isPushNotificationEnabled {
            RelatedDigital.enablePushNotifications(appAlias: appAlias,
                                                   launchOptions: nil,
                                                   deliveredBadge: deliveredBadge)
            RelatedDigital.setPushNotification(permission: true)
        } else {
            RelatedDigital.setPushNotification(permission: false)
        }
    }
    
    @objc(setEmail:withPermission:)
    public func setEmail(email: String, permission: Bool) {
        RelatedDigital.setEmail(email: email, permission: permission)
    }
    
    @objc(sendCampaignParameters:)
    public func sendCampaignParameters(parameters: [String: String]) {
        RelatedDigital.sendCampaignParameters(properties: parameters)
    }
    
    @objc(setTwitterId:)
    public func setTwitterId(twitterId: String) {
        RelatedDigital.setTwitterId(twitterId: twitterId)
        RelatedDigital.sync()
    }
    
    @objc(setFacebookId:)
    public func setFacebookId(facebookId: String) {
        RelatedDigital.setFacebook(facebookId: facebookId)
        RelatedDigital.sync()
    }
    
    @objc(setRelatedDigitalUserId:)
    public func setRelatedDigitalUserId(relatedDigitalUserId: String) {
        RelatedDigital.setEuroUserId(userKey: relatedDigitalUserId)
        RelatedDigital.sync()
    }
    
    @objc(setNotificationLoginId:)
    public func setNotificationLoginId(notificationLoginId: String) {
        RelatedDigital.setNotificationLoginID(notificationLoginID: notificationLoginId)
    }
    
    @objc(setPhoneNumber:withPermission:)
    public func setPhoneNumber(msisdn: String, permission: Bool) {
        RelatedDigital.setPhoneNumber(msisdn: msisdn, permission: permission)
        RelatedDigital.sync()
    }
    
    @objc(setUserProperty:withValue:)
    public func setUserProperty(key: String, value: String) {
        RelatedDigital.setUserProperty(key: key, value: value)
        RelatedDigital.sync()
    }
    
    @objc(removeUserProperty:)
    public func removeUserProperty(key: String) {
        RelatedDigital.removeUserProperty(key: key)
        RelatedDigital.sync()
    }
    
    
}
