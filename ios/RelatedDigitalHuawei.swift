import Foundation
import UIKit
import RelatedDigitalIOS

@objc(RelatedDigitalHuawei)
class RelatedDigitalHuawei: NSObject {
    
    @objc var launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    
    @objc(initialize:profileId:dataSource:askLocationPermissionAtStart:launchOptions:)
    public func initialize(organizationId:NSString,
                                          profileId:NSString,
                                          dataSource:NSString,
                                          askLocationPermissionAtStart: Bool,
                                          launchOptions:NSDictionary?) {
        
        RelatedDigital.initialize(organizationId: organizationId as String,
                                  profileId: profileId as String,
                                  dataSource: dataSource as String,
                                  launchOptions: (launchOptions  as! [UIApplication.LaunchOptionsKey : Any]),
                                  askLocationPermmissionAtStart: askLocationPermissionAtStart)
    }
    
    @objc(multiply:withB:withResolver:withRejecter:)
    func multiply(a: Float, b: Float, resolve:RCTPromiseResolveBlock,reject:RCTPromiseRejectBlock) -> Void {
        resolve(a*b)
    }
}
