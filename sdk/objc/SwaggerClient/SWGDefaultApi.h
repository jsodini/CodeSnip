#import <Foundation/Foundation.h>
#import "SWGCodeSnippet.h"
#import "SWGCodeSnippetList.h"
#import "SWGObject.h"
#import "SWGApiClient.h"


/**
 * NOTE: This class is auto generated by the swagger code generator program. 
 * https://github.com/swagger-api/swagger-codegen 
 * Do not edit the class manually.
 */

@interface SWGDefaultApi: NSObject

@property(nonatomic, assign)SWGApiClient *apiClient;

-(instancetype) initWithApiClient:(SWGApiClient *)apiClient;
-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(SWGDefaultApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(SWGDefaultApi*) sharedAPI;
///
///
/// Creates a code snippet.
/// Creates a code snippet in the specified language.
///
/// @param codeSnippetBody Code snippet object.
/// 
///
/// @return 
-(NSNumber*) snipPostWithCodeSnippetBody: (SWGCodeSnippet*) codeSnippetBody
    completionHandler: (void (^)(NSError* error)) handler;


///
///
/// Retrieves the specified code snippet.
/// Retrieves the specified code snippet.
///
/// @param codeSnippetUuid Code snippet unique identifier.
/// 
///
/// @return SWGCodeSnippet*
-(NSNumber*) snipCodeSnippetUuidGetWithCodeSnippetUuid: (NSString*) codeSnippetUuid
    completionHandler: (void (^)(SWGCodeSnippet* output, NSError* error)) handler;


///
///
/// Updates a code snippet.
/// Updates a code snippet changes.
///
/// @param codeSnippetUuid Code snippet unique identifier.
/// @param codeSnippetBody Code snippet object.
/// 
///
/// @return 
-(NSNumber*) snipCodeSnippetUuidPutWithCodeSnippetUuid: (NSString*) codeSnippetUuid
    codeSnippetBody: (SWGCodeSnippet*) codeSnippetBody
    completionHandler: (void (^)(NSError* error)) handler;


///
///
/// Deletes the specified code snippet.
/// Deletes the specified code snippet.
///
/// @param codeSnippetUuid Code snippet unique identifier.
/// 
///
/// @return 
-(NSNumber*) snipCodeSnippetUuidDeleteWithCodeSnippetUuid: (NSString*) codeSnippetUuid
    completionHandler: (void (^)(NSError* error)) handler;


///
///
/// Retrieves all code snippets.
/// 
///
/// 
///
/// @return SWGCodeSnippetList*
-(NSNumber*) snipsGetWithCompletionHandler: 
    (void (^)(SWGCodeSnippetList* output, NSError* error)) handler;



@end
