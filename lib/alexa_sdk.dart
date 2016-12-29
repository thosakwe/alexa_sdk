@JS()
library alexa_sdk;

import "package:js/js.dart";
import "package:func/func.dart";

/// Type definitions for Alexa SDK for Node.js v1.0.3
/// Project: https://github.com/alexa/alexa-skills-kit-sdk-for-nodejs
/// Definitions by: Pete Beegle <https://github.com/petebeegle>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped
@JS()
external AlexaObject handler(RequestBody event, Context context,
    [Function callback]);
@JS()
external dynamic CreateStateHandler(String state, dynamic obj);
@JS()
external String get StateString;
@JS()
external set StateString(String v);

@anonymous
@JS()
abstract class AlexaObject {
  external dynamic get JS$_event;
  external set JS$_event(dynamic v);
  external dynamic get JS$_context;
  external set JS$_context(dynamic v);
  external dynamic get JS$_callback;
  external set JS$_callback(dynamic v);
  external dynamic get state;
  external set state(dynamic v);
  external dynamic get appId;
  external set appId(dynamic v);
  external dynamic get response;
  external set response(dynamic v);
  external dynamic get dynamoDBTableName;
  external set dynamoDBTableName(dynamic v);
  external bool get saveBeforeResponse;
  external set saveBeforeResponse(bool v);
  external Function /*(...handlers: Handlers[]) => any*/ get registerHandlers;
  external set registerHandlers(
      Function /*(...handlers: Handlers[]) => any*/ v);
  external VoidFunc0 get execute;
  external set execute(VoidFunc0 v);
  external factory AlexaObject(
      {dynamic JS$_event,
      dynamic JS$_context,
      dynamic JS$_callback,
      dynamic state,
      dynamic appId,
      dynamic response,
      dynamic dynamoDBTableName,
      bool saveBeforeResponse,
      Function /*(...handlers: Handlers[]) => any*/ registerHandlers,
      VoidFunc0 execute});
}

@anonymous
@JS()
abstract class Handlers {
  /* Index signature is not yet supported by JavaScript interop. */
}

@anonymous
@JS()
abstract class Handler {
  external dynamic get on;
  external set on(dynamic v);
  external bool emit(String event,
      [dynamic args1,
      dynamic args2,
      dynamic args3,
      dynamic args4,
      dynamic args5]);
  external dynamic get emitWithState;
  external set emitWithState(dynamic v);
  external dynamic get state;
  external set state(dynamic v);
  external dynamic get handler;
  external set handler(dynamic v);
  external RequestBody get event;
  external set event(RequestBody v);
  external dynamic get attributes;
  external set attributes(dynamic v);
  external dynamic get context;
  external set context(dynamic v);
  external dynamic get name;
  external set name(dynamic v);
  external dynamic get isOverriden;
  external set isOverriden(dynamic v);
}

@anonymous
@JS()
abstract class Context {
  external bool get callbackWaitsForEmptyEventLoop;
  external set callbackWaitsForEmptyEventLoop(bool v);
  external String get logGroupName;
  external set logGroupName(String v);
  external String get logStreamName;
  external set logStreamName(String v);
  external String get functionName;
  external set functionName(String v);
  external String get memoryLimitInMB;
  external set memoryLimitInMB(String v);
  external String get functionVersion;
  external set functionVersion(String v);
  external String get invokeid;
  external set invokeid(String v);
  external String get awsRequestId;
  external set awsRequestId(String v);
  external factory Context(
      {bool callbackWaitsForEmptyEventLoop,
      String logGroupName,
      String logStreamName,
      String functionName,
      String memoryLimitInMB,
      String functionVersion,
      String invokeid,
      String awsRequestId});
}

@anonymous
@JS()
abstract class RequestBody {
  external String get version;
  external set version(String v);
  external Session get session;
  external set session(Session v);
  external dynamic /*LaunchRequest|IntentRequest|SessionEndedRequest*/ get request;
  external set request(
      dynamic /*LaunchRequest|IntentRequest|SessionEndedRequest*/ v);
  external factory RequestBody(
      {String version,
      Session session,
      dynamic /*LaunchRequest|IntentRequest|SessionEndedRequest*/ request});
}

@anonymous
@JS()
abstract class Session {
  external bool get JS$new;
  external set JS$new(bool v);
  external String get sessionId;
  external set sessionId(String v);
  external dynamic get attributes;
  external set attributes(dynamic v);
  external SessionApplication get application;
  external set application(SessionApplication v);
  external SessionUser get user;
  external set user(SessionUser v);
  external factory Session(
      {bool JS$new,
      String sessionId,
      dynamic attributes,
      SessionApplication application,
      SessionUser user});
}

@anonymous
@JS()
abstract class SessionApplication {
  external String get applicationId;
  external set applicationId(String v);
  external factory SessionApplication({String applicationId});
}

@anonymous
@JS()
abstract class SessionUser {
  external String get userId;
  external set userId(String v);
  external String get accessToken;
  external set accessToken(String v);
  external factory SessionUser({String userId, String accessToken});
}

@anonymous
@JS()
abstract class LaunchRequest implements IRequest {
  external factory LaunchRequest(
      {String /*'LaunchRequest'|'IntentRequest'|'SessionEndedRequest'*/ type,
      String requestId,
      String timeStamp});
}

@anonymous
@JS()
abstract class IntentRequest implements IRequest {
  external Intent get intent;
  external set intent(Intent v);
  external factory IntentRequest(
      {Intent intent,
      String /*'LaunchRequest'|'IntentRequest'|'SessionEndedRequest'*/ type,
      String requestId,
      String timeStamp});
}

@anonymous
@JS()
abstract class Intent {
  external String get name;
  external set name(String v);
  external dynamic get slots;
  external set slots(dynamic v);
  external factory Intent({String name, dynamic slots});
}

@anonymous
@JS()
abstract class SessionEndedRequest implements IRequest {
  external String get reason;
  external set reason(String v);
  external factory SessionEndedRequest(
      {String reason,
      String /*'LaunchRequest'|'IntentRequest'|'SessionEndedRequest'*/ type,
      String requestId,
      String timeStamp});
}

@anonymous
@JS()
abstract class IRequest {
  external String /*'LaunchRequest'|'IntentRequest'|'SessionEndedRequest'*/ get type;
  external set type(
      String /*'LaunchRequest'|'IntentRequest'|'SessionEndedRequest'*/ v);
  external String get requestId;
  external set requestId(String v);
  external String get timeStamp;
  external set timeStamp(String v);
  external factory IRequest(
      {String /*'LaunchRequest'|'IntentRequest'|'SessionEndedRequest'*/ type,
      String requestId,
      String timeStamp});
}

@anonymous
@JS()
abstract class ResponseBody {
  external String get version;
  external set version(String v);
  external dynamic get sessionAttributes;
  external set sessionAttributes(dynamic v);
  external Response get response;
  external set response(Response v);
  external factory ResponseBody(
      {String version, dynamic sessionAttributes, Response response});
}

@anonymous
@JS()
abstract class Response {
  external OutputSpeech get outputSpeech;
  external set outputSpeech(OutputSpeech v);
  external Card get card;
  external set card(Card v);
  external Reprompt get reprompt;
  external set reprompt(Reprompt v);
  external bool get shouldEndSession;
  external set shouldEndSession(bool v);
  external factory Response(
      {OutputSpeech outputSpeech,
      Card card,
      Reprompt reprompt,
      bool shouldEndSession});
}

@anonymous
@JS()
abstract class OutputSpeech {
  external String /*'PlainText'|'SSML'*/ get type;
  external set type(String /*'PlainText'|'SSML'*/ v);
  external String get text;
  external set text(String v);
  external String get ssml;
  external set ssml(String v);
  external factory OutputSpeech(
      {String /*'PlainText'|'SSML'*/ type, String text, String ssml});
}

@anonymous
@JS()
abstract class Card {
  external String /*'Simple'|'Standard'|'LinkAccount'*/ get type;
  external set type(String /*'Simple'|'Standard'|'LinkAccount'*/ v);
  external String get title;
  external set title(String v);
  external String get content;
  external set content(String v);
  external String get text;
  external set text(String v);
  external Image get image;
  external set image(Image v);
  external factory Card(
      {String /*'Simple'|'Standard'|'LinkAccount'*/ type,
      String title,
      String content,
      String text,
      Image image});
}

@anonymous
@JS()
abstract class Image {
  external String get smallImageUrl;
  external set smallImageUrl(String v);
  external String get largeImageUrl;
  external set largeImageUrl(String v);
  external factory Image({String smallImageUrl, String largeImageUrl});
}

@anonymous
@JS()
abstract class Reprompt {
  external OutputSpeech get outputSpeech;
  external set outputSpeech(OutputSpeech v);
  external factory Reprompt({OutputSpeech outputSpeech});
}

