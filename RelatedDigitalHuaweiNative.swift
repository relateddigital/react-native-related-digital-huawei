//
//  RelatedDigitalHuaweiNative.swift
//  react-native-related-digital-huawei
//
//  Created by Egemen Gülkılık on 30.12.2022.
//

import Foundation
import React
import RelatedDigitalIOS
import UIKit

@objc(RelatedDigitalHuaweiHelper)
public class RelatedDigitalHuaweiNative: NSObject {
    @objc public static let staticInstance: RelatedDigitalHuaweiNative = RelatedDigitalHuaweiNative()
    
    @objc var integerationKey: String?
    @objc var launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    
    
    @objc(initialize:withProfileId:withDataSource:withAskLocationPermissionAtStart:launchOptions:)
    public func initRelatedDigital(organizationId:NSString,
                                   profileId:NSString,
                                   dataSource:NSString,
                                   askLocationPermissionAtStart: DarwinBoolean,
                                   launchOptions:NSDictionary?) {
        
        let askLocation = askLocationPermissionAtStart.boolValue
        let launchOpt = launchOptions as? [UIApplication.LaunchOptionsKey : Any]
        
        
        DispatchQueue.main.async {
            RelatedDigital.initialize(organizationId: organizationId as String,
                                      profileId: profileId as String,
                                      dataSource: dataSource as String,
                                      launchOptions: launchOpt,
                                      askLocationPermmissionAtStart: askLocation)
        }
    }
    
    @objc(registerToken:)
    public func registerToken(deviceToken: Data) {
        RelatedDigital.registerToken(tokenData: deviceToken)
    }
    
    
    
}

