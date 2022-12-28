#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(RelatedDigitalHuawei, NSObject)

RCT_EXTERN_METHOD(multiply:(float)a withB:(float)b
                 withResolver:(RCTPromiseResolveBlock)resolve
                 withRejecter:(RCTPromiseRejectBlock)reject)



RCT_EXTERN_METHOD(initialize:(NSString *) organizationId
                  withProfileId:(NSString *) profileId
                  withDataSource:(NSString *) dataSource
                  withAskLocationPermissionAtStart: (BOOL) askLocationPermissionAtStart)


//RCT_EXTERN_METHOD(setIsInAppNotificationEnabled: BOOL)















+ (BOOL)requiresMainQueueSetup
{
  return NO;
}

@end
