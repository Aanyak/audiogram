// Generated by Apple Swift version 4.0.1 effective-3.2.1 (swiftlang-900.0.68 clang-900.0.38)
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wgcc-compat"

#if !defined(__has_include)
# define __has_include(x) 0
#endif
#if !defined(__has_attribute)
# define __has_attribute(x) 0
#endif
#if !defined(__has_feature)
# define __has_feature(x) 0
#endif
#if !defined(__has_warning)
# define __has_warning(x) 0
#endif

#if __has_attribute(external_source_symbol)
# define SWIFT_STRINGIFY(str) #str
# define SWIFT_MODULE_NAMESPACE_PUSH(module_name) _Pragma(SWIFT_STRINGIFY(clang attribute push(__attribute__((external_source_symbol(language="Swift", defined_in=module_name, generated_declaration))), apply_to=any(function, enum, objc_interface, objc_category, objc_protocol))))
# define SWIFT_MODULE_NAMESPACE_POP _Pragma("clang attribute pop")
#else
# define SWIFT_MODULE_NAMESPACE_PUSH(module_name)
# define SWIFT_MODULE_NAMESPACE_POP
#endif

#if __has_include(<swift/objc-prologue.h>)
# include <swift/objc-prologue.h>
#endif

#pragma clang diagnostic ignored "-Wauto-import"
#include <objc/NSObject.h>
#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>

#if !defined(SWIFT_TYPEDEFS)
# define SWIFT_TYPEDEFS 1
# if __has_include(<uchar.h>)
#  include <uchar.h>
# elif !defined(__cplusplus) || __cplusplus < 201103L
typedef uint_least16_t char16_t;
typedef uint_least32_t char32_t;
# endif
typedef float swift_float2  __attribute__((__ext_vector_type__(2)));
typedef float swift_float3  __attribute__((__ext_vector_type__(3)));
typedef float swift_float4  __attribute__((__ext_vector_type__(4)));
typedef double swift_double2  __attribute__((__ext_vector_type__(2)));
typedef double swift_double3  __attribute__((__ext_vector_type__(3)));
typedef double swift_double4  __attribute__((__ext_vector_type__(4)));
typedef int swift_int2  __attribute__((__ext_vector_type__(2)));
typedef int swift_int3  __attribute__((__ext_vector_type__(3)));
typedef int swift_int4  __attribute__((__ext_vector_type__(4)));
typedef unsigned int swift_uint2  __attribute__((__ext_vector_type__(2)));
typedef unsigned int swift_uint3  __attribute__((__ext_vector_type__(3)));
typedef unsigned int swift_uint4  __attribute__((__ext_vector_type__(4)));
#endif

#if !defined(SWIFT_PASTE)
# define SWIFT_PASTE_HELPER(x, y) x##y
# define SWIFT_PASTE(x, y) SWIFT_PASTE_HELPER(x, y)
#endif
#if !defined(SWIFT_METATYPE)
# define SWIFT_METATYPE(X) Class
#endif
#if !defined(SWIFT_CLASS_PROPERTY)
# if __has_feature(objc_class_property)
#  define SWIFT_CLASS_PROPERTY(...) __VA_ARGS__
# else
#  define SWIFT_CLASS_PROPERTY(...)
# endif
#endif

#if __has_attribute(objc_runtime_name)
# define SWIFT_RUNTIME_NAME(X) __attribute__((objc_runtime_name(X)))
#else
# define SWIFT_RUNTIME_NAME(X)
#endif
#if __has_attribute(swift_name)
# define SWIFT_COMPILE_NAME(X) __attribute__((swift_name(X)))
#else
# define SWIFT_COMPILE_NAME(X)
#endif
#if __has_attribute(objc_method_family)
# define SWIFT_METHOD_FAMILY(X) __attribute__((objc_method_family(X)))
#else
# define SWIFT_METHOD_FAMILY(X)
#endif
#if __has_attribute(noescape)
# define SWIFT_NOESCAPE __attribute__((noescape))
#else
# define SWIFT_NOESCAPE
#endif
#if __has_attribute(warn_unused_result)
# define SWIFT_WARN_UNUSED_RESULT __attribute__((warn_unused_result))
#else
# define SWIFT_WARN_UNUSED_RESULT
#endif
#if __has_attribute(noreturn)
# define SWIFT_NORETURN __attribute__((noreturn))
#else
# define SWIFT_NORETURN
#endif
#if !defined(SWIFT_CLASS_EXTRA)
# define SWIFT_CLASS_EXTRA
#endif
#if !defined(SWIFT_PROTOCOL_EXTRA)
# define SWIFT_PROTOCOL_EXTRA
#endif
#if !defined(SWIFT_ENUM_EXTRA)
# define SWIFT_ENUM_EXTRA
#endif
#if !defined(SWIFT_CLASS)
# if __has_attribute(objc_subclassing_restricted)
#  define SWIFT_CLASS(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) __attribute__((objc_subclassing_restricted)) SWIFT_CLASS_EXTRA
#  define SWIFT_CLASS_NAMED(SWIFT_NAME) __attribute__((objc_subclassing_restricted)) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
# else
#  define SWIFT_CLASS(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
#  define SWIFT_CLASS_NAMED(SWIFT_NAME) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
# endif
#endif

#if !defined(SWIFT_PROTOCOL)
# define SWIFT_PROTOCOL(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) SWIFT_PROTOCOL_EXTRA
# define SWIFT_PROTOCOL_NAMED(SWIFT_NAME) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_PROTOCOL_EXTRA
#endif

#if !defined(SWIFT_EXTENSION)
# define SWIFT_EXTENSION(M) SWIFT_PASTE(M##_Swift_, __LINE__)
#endif

#if !defined(OBJC_DESIGNATED_INITIALIZER)
# if __has_attribute(objc_designated_initializer)
#  define OBJC_DESIGNATED_INITIALIZER __attribute__((objc_designated_initializer))
# else
#  define OBJC_DESIGNATED_INITIALIZER
# endif
#endif
#if !defined(SWIFT_ENUM_ATTR)
# if defined(__has_attribute) && __has_attribute(enum_extensibility)
#  define SWIFT_ENUM_ATTR __attribute__((enum_extensibility(open)))
# else
#  define SWIFT_ENUM_ATTR
# endif
#endif
#if !defined(SWIFT_ENUM)
# define SWIFT_ENUM(_type, _name) enum _name : _type _name; enum SWIFT_ENUM_ATTR SWIFT_ENUM_EXTRA _name : _type
# if __has_feature(generalized_swift_name)
#  define SWIFT_ENUM_NAMED(_type, _name, SWIFT_NAME) enum _name : _type _name SWIFT_COMPILE_NAME(SWIFT_NAME); enum SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_ENUM_ATTR SWIFT_ENUM_EXTRA _name : _type
# else
#  define SWIFT_ENUM_NAMED(_type, _name, SWIFT_NAME) SWIFT_ENUM(_type, _name)
# endif
#endif
#if !defined(SWIFT_UNAVAILABLE)
# define SWIFT_UNAVAILABLE __attribute__((unavailable))
#endif
#if !defined(SWIFT_UNAVAILABLE_MSG)
# define SWIFT_UNAVAILABLE_MSG(msg) __attribute__((unavailable(msg)))
#endif
#if !defined(SWIFT_AVAILABILITY)
# define SWIFT_AVAILABILITY(plat, ...) __attribute__((availability(plat, __VA_ARGS__)))
#endif
#if !defined(SWIFT_DEPRECATED)
# define SWIFT_DEPRECATED __attribute__((deprecated))
#endif
#if !defined(SWIFT_DEPRECATED_MSG)
# define SWIFT_DEPRECATED_MSG(...) __attribute__((deprecated(__VA_ARGS__)))
#endif
#if __has_feature(attribute_diagnose_if_objc)
# define SWIFT_DEPRECATED_OBJC(Msg) __attribute__((diagnose_if(1, Msg, "warning")))
#else
# define SWIFT_DEPRECATED_OBJC(Msg) SWIFT_DEPRECATED_MSG(Msg)
#endif
#if __has_feature(modules)
@import UIKit;
@import ObjectiveC;
@import CoreBluetooth;
@import Foundation;
#endif

#pragma clang diagnostic ignored "-Wproperty-attribute-mismatch"
#pragma clang diagnostic ignored "-Wduplicate-method-arg"
#if __has_warning("-Wpragma-clang-attribute")
# pragma clang diagnostic ignored "-Wpragma-clang-attribute"
#endif
#pragma clang diagnostic ignored "-Wunknown-pragmas"
#pragma clang diagnostic ignored "-Wnullability"

SWIFT_MODULE_NAMESPACE_PUSH("LAM2Framework")
@class UIWindow;
@class UIApplication;

SWIFT_CLASS("_TtC13LAM2Framework11AppDelegate")
@interface AppDelegate : UIResponder <UIApplicationDelegate>
@property (nonatomic, strong) UIWindow * _Nullable window;
- (BOOL)application:(UIApplication * _Nonnull)application didFinishLaunchingWithOptions:(NSDictionary<UIApplicationLaunchOptionsKey, id> * _Nullable)launchOptions SWIFT_WARN_UNUSED_RESULT;
- (void)applicationWillResignActive:(UIApplication * _Nonnull)application;
- (void)applicationDidEnterBackground:(UIApplication * _Nonnull)application;
- (void)applicationWillEnterForeground:(UIApplication * _Nonnull)application;
- (void)applicationDidBecomeActive:(UIApplication * _Nonnull)application;
- (void)applicationWillTerminate:(UIApplication * _Nonnull)application;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end

@class CBCentralManager;
@class CBPeripheral;
@class CBUUID;
@class CBCharacteristic;
@class NSNumber;
@class CBService;

SWIFT_CLASS("_TtC13LAM2Framework20BleSessionController")
@interface BleSessionController : NSObject <CBCentralManagerDelegate, CBPeripheralDelegate>
@property (nonatomic, strong) CBCentralManager * _Nullable centralMan;
@property (nonatomic, copy) NSDictionary<NSString *, CBPeripheral *> * _Nonnull discPeripheral;
@property (nonatomic, strong) CBPeripheral * _Nullable selectedPeripheral;
@property (nonatomic, readonly, strong) CBUUID * _Nonnull LAM2Uuid;
@property (nonatomic, readonly, strong) CBUUID * _Nonnull lam2Service;
@property (nonatomic, readonly, strong) CBUUID * _Nonnull accryInfo;
@property (nonatomic, readonly, strong) CBUUID * _Nonnull writePipe;
@property (nonatomic, readonly, strong) CBUUID * _Nonnull readPipe;
@property (nonatomic, readonly, strong) CBUUID * _Nonnull notifyPipe;
@property (nonatomic, readonly, strong) CBUUID * _Nonnull flashPipe;
@property (nonatomic, readonly) NSNotificationName _Nonnull dataReceivedNotification;
@property (nonatomic, readonly) NSNotificationName _Nonnull bleReadyNotification;
@property (nonatomic, readonly) NSNotificationName _Nonnull streamsDownNotification;
@property (nonatomic, readonly) NSNotificationName _Nonnull bleDataNotification;
@property (nonatomic, strong) CBCharacteristic * _Nullable infoChannel;
@property (nonatomic, strong) CBCharacteristic * _Nullable writeChannel;
@property (nonatomic, strong) CBCharacteristic * _Nullable readChannel;
@property (nonatomic, strong) CBCharacteristic * _Nullable notifyChannel;
@property (nonatomic, strong) CBCharacteristic * _Nullable flashChannel;
@property (nonatomic, copy) NSString * _Nonnull preferredAccessory;
@property (nonatomic) BOOL inited;
@property (nonatomic) BOOL startScan;
@property (nonatomic) uint32_t mtu;
@property (nonatomic, copy) NSData * _Nonnull fwData;
- (void)initBle:(NSString * _Nonnull)pref SWIFT_METHOD_FAMILY(none);
- (void)centralManagerDidUpdateState:(CBCentralManager * _Nonnull)central;
- (BOOL)startDiscovery SWIFT_WARN_UNUSED_RESULT;
- (void)centralManager:(CBCentralManager * _Nonnull)central didDiscoverPeripheral:(CBPeripheral * _Nonnull)peripheral advertisementData:(NSDictionary<NSString *, id> * _Nonnull)advertisementData RSSI:(NSNumber * _Nonnull)RSSI;
- (NSArray<NSString *> * _Nonnull)getDiscoveredperipherals SWIFT_WARN_UNUSED_RESULT;
- (void)selectPeripheral:(NSString * _Nonnull)name;
- (void)centralManager:(CBCentralManager * _Nonnull)central didDisconnectPeripheral:(CBPeripheral * _Nonnull)peripheral error:(NSError * _Nullable)error;
- (void)centralManager:(CBCentralManager * _Nonnull)central didConnectPeripheral:(CBPeripheral * _Nonnull)peripheral;
- (void)centralManager:(CBCentralManager * _Nonnull)central didFailToConnectPeripheral:(CBPeripheral * _Nonnull)peripheral error:(NSError * _Nullable)error;
- (void)peripheral:(CBPeripheral * _Nonnull)peripheral didDiscoverServices:(NSError * _Nullable)error;
- (void)peripheral:(CBPeripheral * _Nonnull)peripheral didDiscoverCharacteristicsForService:(CBService * _Nonnull)service error:(NSError * _Nullable)error;
- (void)readCharacteristic:(CBPeripheral * _Nonnull)peripheral charc:(CBCharacteristic * _Nonnull)charc;
- (void)peripheral:(CBPeripheral * _Nonnull)peripheral didUpdateValueForCharacteristic:(CBCharacteristic * _Nonnull)characteristic error:(NSError * _Nullable)error;
- (void)handleResponse:(NSData * _Nonnull)buffer;
- (void)handleNotification:(NSData * _Nonnull)buffer;
- (void)processInfoResponse:(NSData * _Nonnull)buffer;
- (void)getMtu:(NSData * _Nonnull)buffer;
- (void)handleDeviceInfo:(NSData * _Nonnull)buffer;
- (void)writeCharacteristic:(CBPeripheral * _Nonnull)peripheral charc:(CBCharacteristic * _Nonnull)charc value:(NSData * _Nonnull)value;
- (void)peripheral:(CBPeripheral * _Nonnull)peripheral didWriteValueForCharacteristic:(CBCharacteristic * _Nonnull)characteristic error:(NSError * _Nullable)error;
- (void)peripheral:(CBPeripheral * _Nonnull)peripheral didUpdateNotificationStateForCharacteristic:(CBCharacteristic * _Nonnull)characteristic error:(NSError * _Nullable)error;
- (void)decodeDevInfo:(NSString * _Nonnull)data;
- (void)update;
- (void)updateNextBlockWithBegin:(BOOL)begin;
- (void)write:(NSData * _Nonnull)command;
- (void)sendCommand:(NSString * _Nonnull)cmd;
- (uint32_t)data2UInt32:(NSData * _Nonnull)data SWIFT_WARN_UNUSED_RESULT;
- (NSData * _Nonnull)openfile SWIFT_WARN_UNUSED_RESULT;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end

SWIFT_MODULE_NAMESPACE_POP
#pragma clang diagnostic pop