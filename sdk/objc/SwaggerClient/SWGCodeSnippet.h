#import <Foundation/Foundation.h>
#import "SWGObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol SWGCodeSnippet
@end

@interface SWGCodeSnippet : SWGObject

/* Code snippet unique identifier. [optional]
 */
@property(nonatomic) NSString* uuid;
/* Base64 encoded code snippet to store. [optional]
 */
@property(nonatomic) NSString* data;
/* Expiration time in seconds since epoch (0 will live forever). [optional]
 */
@property(nonatomic) NSNumber* expires;

@end
