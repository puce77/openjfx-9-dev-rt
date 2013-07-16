/*
 * This file is part of the WebKit open source project.
 * This file has been generated by generate-bindings.pl. DO NOT MODIFY!
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY APPLE COMPUTER, INC. ``AS IS'' AND ANY
 * EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL APPLE COMPUTER, INC. OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
 * PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY
 * OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE. 
 */

#import "config.h"
#import "DOMInternal.h"

#import "DOMTestObj.h"

#import "DOMBlobInternal.h"
#import "DOMCSSRuleInternal.h"
#import "DOMCSSValueInternal.h"
#import "DOMDictionaryInternal.h"
#import "DOMDocumentInternal.h"
#import "DOMEventInternal.h"
#import "DOMNodeInternal.h"
#import "DOMSVGDocumentInternal.h"
#import "DOMSVGPointInternal.h"
#import "DOMStyleSheetInternal.h"
#import "DOMTestEnumTypeInternal.h"
#import "DOMTestNodeInternal.h"
#import "DOMTestObjInternal.h"
#import "DOMTestObjectAConstructorInternal.h"
#import "DOMTestObjectBConstructorInternal.h"
#import "DOMTestObjectCConstructorInternal.h"
#import "DOManyInternal.h"
#import "DOMboolInternal.h"
#import "Dictionary.h"
#import "Document.h"
#import "EventListener.h"
#import "ExceptionHandlers.h"
#import "HTMLNames.h"
#import "JSMainThreadExecState.h"
#import "KURL.h"
#import "Node.h"
#import "ObjCEventListener.h"
#import "SVGDocument.h"
#import "SVGStaticPropertyTearOff.h"
#import "SerializedScriptValue.h"
#import "TestEnumType.h"
#import "TestNode.h"
#import "TestObj.h"
#import "TestObjectAConstructor.h"
#import "TestObjectBConstructor.h"
#import "TestObjectCConstructor.h"
#import "ThreadCheck.h"
#import "WebCoreObjCExtras.h"
#import "WebScriptObjectPrivate.h"
#import "any.h"
#import "bool.h"
#import <wtf/GetPtr.h>

#define IMPL reinterpret_cast<WebCore::TestObj*>(_internal)

@implementation DOMTestObj

- (void)dealloc
{
    if (WebCoreObjCScheduleDeallocateOnMainThread([DOMTestObj class], self))
        return;

    if (_internal)
        IMPL->deref();
    [super dealloc];
}

- (void)finalize
{
    if (_internal)
        IMPL->deref();
    [super finalize];
}

- (int)readOnlyLongAttr
{
    WebCore::JSMainThreadNullState state;
    return IMPL->readOnlyLongAttr();
}

- (NSString *)readOnlyStringAttr
{
    WebCore::JSMainThreadNullState state;
    return IMPL->readOnlyStringAttr();
}

- (DOMTestObj *)readOnlyTestObjAttr
{
    WebCore::JSMainThreadNullState state;
    return kit(WTF::getPtr(IMPL->readOnlyTestObjAttr()));
}

- (short)shortAttr
{
    WebCore::JSMainThreadNullState state;
    return IMPL->shortAttr();
}

- (void)setShortAttr:(short)newShortAttr
{
    WebCore::JSMainThreadNullState state;
    IMPL->setShortAttr(newShortAttr);
}

- (unsigned short)unsignedShortAttr
{
    WebCore::JSMainThreadNullState state;
    return IMPL->unsignedShortAttr();
}

- (void)setUnsignedShortAttr:(unsigned short)newUnsignedShortAttr
{
    WebCore::JSMainThreadNullState state;
    IMPL->setUnsignedShortAttr(newUnsignedShortAttr);
}

- (int)longAttr
{
    WebCore::JSMainThreadNullState state;
    return IMPL->longAttr();
}

- (void)setLongAttr:(int)newLongAttr
{
    WebCore::JSMainThreadNullState state;
    IMPL->setLongAttr(newLongAttr);
}

- (long long)longLongAttr
{
    WebCore::JSMainThreadNullState state;
    return IMPL->longLongAttr();
}

- (void)setLongLongAttr:(long long)newLongLongAttr
{
    WebCore::JSMainThreadNullState state;
    IMPL->setLongLongAttr(newLongLongAttr);
}

- (unsigned long long)unsignedLongLongAttr
{
    WebCore::JSMainThreadNullState state;
    return IMPL->unsignedLongLongAttr();
}

- (void)setUnsignedLongLongAttr:(unsigned long long)newUnsignedLongLongAttr
{
    WebCore::JSMainThreadNullState state;
    IMPL->setUnsignedLongLongAttr(newUnsignedLongLongAttr);
}

- (NSString *)stringAttr
{
    WebCore::JSMainThreadNullState state;
    return IMPL->stringAttr();
}

- (void)setStringAttr:(NSString *)newStringAttr
{
    WebCore::JSMainThreadNullState state;
    IMPL->setStringAttr(newStringAttr);
}

- (DOMTestObj *)testObjAttr
{
    WebCore::JSMainThreadNullState state;
    return kit(WTF::getPtr(IMPL->testObjAttr()));
}

- (void)setTestObjAttr:(DOMTestObj *)newTestObjAttr
{
    WebCore::JSMainThreadNullState state;
    ASSERT(newTestObjAttr);

    IMPL->setTestObjAttr(core(newTestObjAttr));
}

- (DOMTestObj *)XMLObjAttr
{
    WebCore::JSMainThreadNullState state;
    return kit(WTF::getPtr(IMPL->xmlObjAttr()));
}

- (void)setXMLObjAttr:(DOMTestObj *)newXMLObjAttr
{
    WebCore::JSMainThreadNullState state;
    ASSERT(newXMLObjAttr);

    IMPL->setXMLObjAttr(core(newXMLObjAttr));
}

- (BOOL)create
{
    WebCore::JSMainThreadNullState state;
    return IMPL->isCreate();
}

- (void)setCreate:(BOOL)newCreate
{
    WebCore::JSMainThreadNullState state;
    IMPL->setCreate(newCreate);
}

- (NSString *)reflectedStringAttr
{
    WebCore::JSMainThreadNullState state;
    return IMPL->fastGetAttribute(WebCore::HTMLNames::reflectedstringattrAttr);
}

- (void)setReflectedStringAttr:(NSString *)newReflectedStringAttr
{
    WebCore::JSMainThreadNullState state;
    IMPL->setAttribute(WebCore::HTMLNames::reflectedstringattrAttr, newReflectedStringAttr);
}

- (int)reflectedIntegralAttr
{
    WebCore::JSMainThreadNullState state;
    return IMPL->getIntegralAttribute(WebCore::HTMLNames::reflectedintegralattrAttr);
}

- (void)setReflectedIntegralAttr:(int)newReflectedIntegralAttr
{
    WebCore::JSMainThreadNullState state;
    IMPL->setIntegralAttribute(WebCore::HTMLNames::reflectedintegralattrAttr, newReflectedIntegralAttr);
}

- (unsigned)reflectedUnsignedIntegralAttr
{
    WebCore::JSMainThreadNullState state;
    return IMPL->getUnsignedIntegralAttribute(WebCore::HTMLNames::reflectedunsignedintegralattrAttr);
}

- (void)setReflectedUnsignedIntegralAttr:(unsigned)newReflectedUnsignedIntegralAttr
{
    WebCore::JSMainThreadNullState state;
    IMPL->setUnsignedIntegralAttribute(WebCore::HTMLNames::reflectedunsignedintegralattrAttr, newReflectedUnsignedIntegralAttr);
}

- (BOOL)reflectedBooleanAttr
{
    WebCore::JSMainThreadNullState state;
    return IMPL->fastHasAttribute(WebCore::HTMLNames::reflectedbooleanattrAttr);
}

- (void)setReflectedBooleanAttr:(BOOL)newReflectedBooleanAttr
{
    WebCore::JSMainThreadNullState state;
    IMPL->setBooleanAttribute(WebCore::HTMLNames::reflectedbooleanattrAttr, newReflectedBooleanAttr);
}

- (NSString *)reflectedURLAttr
{
    WebCore::JSMainThreadNullState state;
    return IMPL->getURLAttribute(WebCore::HTMLNames::reflectedurlattrAttr);
}

- (void)setReflectedURLAttr:(NSString *)newReflectedURLAttr
{
    WebCore::JSMainThreadNullState state;
    IMPL->setAttribute(WebCore::HTMLNames::reflectedurlattrAttr, newReflectedURLAttr);
}

- (NSString *)reflectedStringAttr
{
    WebCore::JSMainThreadNullState state;
    return IMPL->fastGetAttribute(WebCore::HTMLNames::customContentStringAttrAttr);
}

- (void)setReflectedStringAttr:(NSString *)newReflectedStringAttr
{
    WebCore::JSMainThreadNullState state;
    IMPL->setAttribute(WebCore::HTMLNames::customContentStringAttrAttr, newReflectedStringAttr);
}

- (int)reflectedCustomIntegralAttr
{
    WebCore::JSMainThreadNullState state;
    return IMPL->getIntegralAttribute(WebCore::HTMLNames::customContentIntegralAttrAttr);
}

- (void)setReflectedCustomIntegralAttr:(int)newReflectedCustomIntegralAttr
{
    WebCore::JSMainThreadNullState state;
    IMPL->setIntegralAttribute(WebCore::HTMLNames::customContentIntegralAttrAttr, newReflectedCustomIntegralAttr);
}

- (BOOL)reflectedCustomBooleanAttr
{
    WebCore::JSMainThreadNullState state;
    return IMPL->fastHasAttribute(WebCore::HTMLNames::customContentBooleanAttrAttr);
}

- (void)setReflectedCustomBooleanAttr:(BOOL)newReflectedCustomBooleanAttr
{
    WebCore::JSMainThreadNullState state;
    IMPL->setBooleanAttribute(WebCore::HTMLNames::customContentBooleanAttrAttr, newReflectedCustomBooleanAttr);
}

- (NSString *)reflectedCustomURLAttr
{
    WebCore::JSMainThreadNullState state;
    return IMPL->getURLAttribute(WebCore::HTMLNames::customContentURLAttrAttr);
}

- (void)setReflectedCustomURLAttr:(NSString *)newReflectedCustomURLAttr
{
    WebCore::JSMainThreadNullState state;
    IMPL->setAttribute(WebCore::HTMLNames::customContentURLAttrAttr, newReflectedCustomURLAttr);
}

- (int)attrWithGetterException
{
    WebCore::JSMainThreadNullState state;
    WebCore::ExceptionCode ec = 0;
    int result = IMPL->attrWithGetterException(ec);
    WebCore::raiseOnDOMError(ec);
    return result;
}

- (void)setAttrWithGetterException:(int)newAttrWithGetterException
{
    WebCore::JSMainThreadNullState state;
    IMPL->setAttrWithGetterException(newAttrWithGetterException);
}

- (int)attrWithSetterException
{
    WebCore::JSMainThreadNullState state;
    return IMPL->attrWithSetterException();
}

- (void)setAttrWithSetterException:(int)newAttrWithSetterException
{
    WebCore::JSMainThreadNullState state;
    WebCore::ExceptionCode ec = 0;
    IMPL->setAttrWithSetterException(newAttrWithSetterException, ec);
    WebCore::raiseOnDOMError(ec);
}

- (NSString *)stringAttrWithGetterException
{
    WebCore::JSMainThreadNullState state;
    WebCore::ExceptionCode ec = 0;
    NSString *result = IMPL->stringAttrWithGetterException(ec);
    WebCore::raiseOnDOMError(ec);
    return result;
}

- (void)setStringAttrWithGetterException:(NSString *)newStringAttrWithGetterException
{
    WebCore::JSMainThreadNullState state;
    IMPL->setStringAttrWithGetterException(newStringAttrWithGetterException);
}

- (NSString *)stringAttrWithSetterException
{
    WebCore::JSMainThreadNullState state;
    return IMPL->stringAttrWithSetterException();
}

- (void)setStringAttrWithSetterException:(NSString *)newStringAttrWithSetterException
{
    WebCore::JSMainThreadNullState state;
    WebCore::ExceptionCode ec = 0;
    IMPL->setStringAttrWithSetterException(newStringAttrWithSetterException, ec);
    WebCore::raiseOnDOMError(ec);
}

- (int)customAttr
{
    WebCore::JSMainThreadNullState state;
    return IMPL->customAttr();
}

- (void)setCustomAttr:(int)newCustomAttr
{
    WebCore::JSMainThreadNullState state;
    IMPL->setCustomAttr(newCustomAttr);
}

- (int)withScriptStateAttribute
{
    WebCore::JSMainThreadNullState state;
    return IMPL->withScriptStateAttribute();
}

- (void)setWithScriptStateAttribute:(int)newWithScriptStateAttribute
{
    WebCore::JSMainThreadNullState state;
    IMPL->setWithScriptStateAttribute(newWithScriptStateAttribute);
}

- (DOMTestObj *)withScriptExecutionContextAttribute
{
    WebCore::JSMainThreadNullState state;
    return kit(WTF::getPtr(IMPL->withScriptExecutionContextAttribute()));
}

- (void)setWithScriptExecutionContextAttribute:(DOMTestObj *)newWithScriptExecutionContextAttribute
{
    WebCore::JSMainThreadNullState state;
    ASSERT(newWithScriptExecutionContextAttribute);

    IMPL->setWithScriptExecutionContextAttribute(core(newWithScriptExecutionContextAttribute));
}

- (DOMTestObj *)withScriptStateAttributeRaises
{
    WebCore::JSMainThreadNullState state;
    WebCore::ExceptionCode ec = 0;
    DOMTestObj *result = kit(WTF::getPtr(IMPL->withScriptStateAttributeRaises(ec)));
    WebCore::raiseOnDOMError(ec);
    return result;
}

- (void)setWithScriptStateAttributeRaises:(DOMTestObj *)newWithScriptStateAttributeRaises
{
    WebCore::JSMainThreadNullState state;
    ASSERT(newWithScriptStateAttributeRaises);

    IMPL->setWithScriptStateAttributeRaises(core(newWithScriptStateAttributeRaises));
}

- (DOMTestObj *)withScriptExecutionContextAttributeRaises
{
    WebCore::JSMainThreadNullState state;
    WebCore::ExceptionCode ec = 0;
    DOMTestObj *result = kit(WTF::getPtr(IMPL->withScriptExecutionContextAttributeRaises(ec)));
    WebCore::raiseOnDOMError(ec);
    return result;
}

- (void)setWithScriptExecutionContextAttributeRaises:(DOMTestObj *)newWithScriptExecutionContextAttributeRaises
{
    WebCore::JSMainThreadNullState state;
    ASSERT(newWithScriptExecutionContextAttributeRaises);

    IMPL->setWithScriptExecutionContextAttributeRaises(core(newWithScriptExecutionContextAttributeRaises));
}

- (DOMTestObj *)withScriptExecutionContextAndScriptStateAttribute
{
    WebCore::JSMainThreadNullState state;
    return kit(WTF::getPtr(IMPL->withScriptExecutionContextAndScriptStateAttribute()));
}

- (void)setWithScriptExecutionContextAndScriptStateAttribute:(DOMTestObj *)newWithScriptExecutionContextAndScriptStateAttribute
{
    WebCore::JSMainThreadNullState state;
    ASSERT(newWithScriptExecutionContextAndScriptStateAttribute);

    IMPL->setWithScriptExecutionContextAndScriptStateAttribute(core(newWithScriptExecutionContextAndScriptStateAttribute));
}

- (DOMTestObj *)withScriptExecutionContextAndScriptStateAttributeRaises
{
    WebCore::JSMainThreadNullState state;
    WebCore::ExceptionCode ec = 0;
    DOMTestObj *result = kit(WTF::getPtr(IMPL->withScriptExecutionContextAndScriptStateAttributeRaises(ec)));
    WebCore::raiseOnDOMError(ec);
    return result;
}

- (void)setWithScriptExecutionContextAndScriptStateAttributeRaises:(DOMTestObj *)newWithScriptExecutionContextAndScriptStateAttributeRaises
{
    WebCore::JSMainThreadNullState state;
    ASSERT(newWithScriptExecutionContextAndScriptStateAttributeRaises);

    IMPL->setWithScriptExecutionContextAndScriptStateAttributeRaises(core(newWithScriptExecutionContextAndScriptStateAttributeRaises));
}

- (DOMTestObj *)withScriptExecutionContextAndScriptStateWithSpacesAttribute
{
    WebCore::JSMainThreadNullState state;
    return kit(WTF::getPtr(IMPL->withScriptExecutionContextAndScriptStateWithSpacesAttribute()));
}

- (void)setWithScriptExecutionContextAndScriptStateWithSpacesAttribute:(DOMTestObj *)newWithScriptExecutionContextAndScriptStateWithSpacesAttribute
{
    WebCore::JSMainThreadNullState state;
    ASSERT(newWithScriptExecutionContextAndScriptStateWithSpacesAttribute);

    IMPL->setWithScriptExecutionContextAndScriptStateWithSpacesAttribute(core(newWithScriptExecutionContextAndScriptStateWithSpacesAttribute));
}

- (DOMTestObj *)withScriptArgumentsAndCallStackAttribute
{
    WebCore::JSMainThreadNullState state;
    return kit(WTF::getPtr(IMPL->withScriptArgumentsAndCallStackAttribute()));
}

- (void)setWithScriptArgumentsAndCallStackAttribute:(DOMTestObj *)newWithScriptArgumentsAndCallStackAttribute
{
    WebCore::JSMainThreadNullState state;
    ASSERT(newWithScriptArgumentsAndCallStackAttribute);

    IMPL->setWithScriptArgumentsAndCallStackAttribute(core(newWithScriptArgumentsAndCallStackAttribute));
}

#if ENABLE(Condition1)
- (int)conditionalAttr1
{
    WebCore::JSMainThreadNullState state;
    return IMPL->conditionalAttr1();
}

- (void)setConditionalAttr1:(int)newConditionalAttr1
{
    WebCore::JSMainThreadNullState state;
    IMPL->setConditionalAttr1(newConditionalAttr1);
}
#endif

#if ENABLE(Condition1) && ENABLE(Condition2)
- (int)conditionalAttr2
{
    WebCore::JSMainThreadNullState state;
    return IMPL->conditionalAttr2();
}

- (void)setConditionalAttr2:(int)newConditionalAttr2
{
    WebCore::JSMainThreadNullState state;
    IMPL->setConditionalAttr2(newConditionalAttr2);
}
#endif

#if ENABLE(Condition1) || ENABLE(Condition2)
- (int)conditionalAttr3
{
    WebCore::JSMainThreadNullState state;
    return IMPL->conditionalAttr3();
}

- (void)setConditionalAttr3:(int)newConditionalAttr3
{
    WebCore::JSMainThreadNullState state;
    IMPL->setConditionalAttr3(newConditionalAttr3);
}
#endif

#if ENABLE(Condition1)
- (DOMTestObjectAConstructor *)conditionalAttr4
{
    WebCore::JSMainThreadNullState state;
    return kit(WTF::getPtr(IMPL->conditionalAttr4()));
}

- (void)setConditionalAttr4:(DOMTestObjectAConstructor *)newConditionalAttr4
{
    WebCore::JSMainThreadNullState state;
    ASSERT(newConditionalAttr4);

    IMPL->setConditionalAttr4(core(newConditionalAttr4));
}
#endif

#if ENABLE(Condition1) && ENABLE(Condition2)
- (DOMTestObjectBConstructor *)conditionalAttr5
{
    WebCore::JSMainThreadNullState state;
    return kit(WTF::getPtr(IMPL->conditionalAttr5()));
}

- (void)setConditionalAttr5:(DOMTestObjectBConstructor *)newConditionalAttr5
{
    WebCore::JSMainThreadNullState state;
    ASSERT(newConditionalAttr5);

    IMPL->setConditionalAttr5(core(newConditionalAttr5));
}
#endif

#if ENABLE(Condition1) || ENABLE(Condition2)
- (DOMTestObjectCConstructor *)conditionalAttr6
{
    WebCore::JSMainThreadNullState state;
    return kit(WTF::getPtr(IMPL->conditionalAttr6()));
}

- (void)setConditionalAttr6:(DOMTestObjectCConstructor *)newConditionalAttr6
{
    WebCore::JSMainThreadNullState state;
    ASSERT(newConditionalAttr6);

    IMPL->setConditionalAttr6(core(newConditionalAttr6));
}
#endif

- (DOMany *)anyAttribute
{
    WebCore::JSMainThreadNullState state;
    return kit(WTF::getPtr(IMPL->anyAttribute()));
}

- (void)setAnyAttribute:(DOMany *)newAnyAttribute
{
    WebCore::JSMainThreadNullState state;
    ASSERT(newAnyAttribute);

    IMPL->setAnyAttribute(core(newAnyAttribute));
}

- (DOMDocument *)contentDocument
{
    WebCore::JSMainThreadNullState state;
    return kit(WTF::getPtr(IMPL->contentDocument()));
}

- (DOMSVGPoint *)mutablePoint
{
    WebCore::JSMainThreadNullState state;
    return kit(WTF::getPtr(WebCore::SVGStaticPropertyTearOff<WebCore::TestObj, WebCore::FloatPoint>::create(IMPL, IMPL->mutablePoint(), &WebCore::TestObj::updateMutablePoint)));
}

- (void)setMutablePoint:(DOMSVGPoint *)newMutablePoint
{
    WebCore::JSMainThreadNullState state;
    ASSERT(newMutablePoint);

    IMPL->setMutablePoint(core(newMutablePoint));
}

- (DOMSVGPoint *)immutablePoint
{
    WebCore::JSMainThreadNullState state;
    return kit(WTF::getPtr(WebCore::SVGPropertyTearOff<WebCore::FloatPoint>::create(IMPL->immutablePoint())));
}

- (void)setImmutablePoint:(DOMSVGPoint *)newImmutablePoint
{
    WebCore::JSMainThreadNullState state;
    ASSERT(newImmutablePoint);

    IMPL->setImmutablePoint(core(newImmutablePoint));
}

- (int)strawberry
{
    WebCore::JSMainThreadNullState state;
    return IMPL->blueberry();
}

- (void)setStrawberry:(int)newStrawberry
{
    WebCore::JSMainThreadNullState state;
    IMPL->setBlueberry(newStrawberry);
}

- (float)strictFloat
{
    WebCore::JSMainThreadNullState state;
    return IMPL->strictFloat();
}

- (void)setStrictFloat:(float)newStrictFloat
{
    WebCore::JSMainThreadNullState state;
    IMPL->setStrictFloat(newStrictFloat);
}

- (int)descriptionName
{
    WebCore::JSMainThreadNullState state;
    return IMPL->description();
}

- (int)idName
{
    WebCore::JSMainThreadNullState state;
    return IMPL->id();
}

- (void)setIdName:(int)newIdName
{
    WebCore::JSMainThreadNullState state;
    IMPL->setId(newIdName);
}

- (NSString *)hashName
{
    WebCore::JSMainThreadNullState state;
    return IMPL->hash();
}

- (int)replaceableAttribute
{
    WebCore::JSMainThreadNullState state;
    return IMPL->replaceableAttribute();
}

- (double)nullableDoubleAttribute
{
    WebCore::JSMainThreadNullState state;
    return IMPL->nullableDoubleAttribute(isNull);
}

- (int)nullableLongAttribute
{
    WebCore::JSMainThreadNullState state;
    return IMPL->nullableLongAttribute(isNull);
}

- (BOOL)nullableBooleanAttribute
{
    WebCore::JSMainThreadNullState state;
    return IMPL->nullableBooleanAttribute(isNull);
}

- (NSString *)nullableStringAttribute
{
    WebCore::JSMainThreadNullState state;
    return IMPL->nullableStringAttribute(isNull);
}

- (int)nullableLongSettableAttribute
{
    WebCore::JSMainThreadNullState state;
    return IMPL->nullableLongSettableAttribute(isNull);
}

- (void)setNullableLongSettableAttribute:(int)newNullableLongSettableAttribute
{
    WebCore::JSMainThreadNullState state;
    IMPL->setNullableLongSettableAttribute(newNullableLongSettableAttribute);
}

- (int)nullableStringValue
{
    WebCore::JSMainThreadNullState state;
    WebCore::ExceptionCode ec = 0;
    int result = IMPL->nullableStringValue(isNull, ec);
    WebCore::raiseOnDOMError(ec);
    return result;
}

- (void)setNullableStringValue:(int)newNullableStringValue
{
    WebCore::JSMainThreadNullState state;
    IMPL->setNullableStringValue(newNullableStringValue);
}

- (void)voidMethod
{
    WebCore::JSMainThreadNullState state;
    IMPL->voidMethod();
}

- (void)voidMethodWithArgs:(int)longArg strArg:(NSString *)strArg objArg:(DOMTestObj *)objArg
{
    WebCore::JSMainThreadNullState state;
    IMPL->voidMethodWithArgs(longArg, strArg, core(objArg));
}

- (int)longMethod
{
    WebCore::JSMainThreadNullState state;
    return IMPL->longMethod();
}

- (int)longMethodWithArgs:(int)longArg strArg:(NSString *)strArg objArg:(DOMTestObj *)objArg
{
    WebCore::JSMainThreadNullState state;
    return IMPL->longMethodWithArgs(longArg, strArg, core(objArg));
}

- (DOMTestObj *)objMethod
{
    WebCore::JSMainThreadNullState state;
    return kit(WTF::getPtr(IMPL->objMethod()));
}

- (DOMTestObj *)objMethodWithArgs:(int)longArg strArg:(NSString *)strArg objArg:(DOMTestObj *)objArg
{
    WebCore::JSMainThreadNullState state;
    return kit(WTF::getPtr(IMPL->objMethodWithArgs(longArg, strArg, core(objArg))));
}

- (void)methodWithEnumArg:(DOMTestEnumType *)enumArg
{
    WebCore::JSMainThreadNullState state;
    IMPL->methodWithEnumArg(core(enumArg));
}

- (DOMTestObj *)methodThatRequiresAllArgsAndThrows:(NSString *)strArg objArg:(DOMTestObj *)objArg
{
    WebCore::JSMainThreadNullState state;
    WebCore::ExceptionCode ec = 0;
    DOMTestObj *result = kit(WTF::getPtr(IMPL->methodThatRequiresAllArgsAndThrows(strArg, core(objArg), ec)));
    WebCore::raiseOnDOMError(ec);
    return result;
}

- (void)serializedValue:(NSString *)serializedArg
{
    WebCore::JSMainThreadNullState state;
    IMPL->serializedValue(WebCore::SerializedScriptValue::create(WTF::String(serializedArg)));
}

- (void)optionsObject:(DOMDictionary *)oo ooo:(DOMDictionary *)ooo
{
    WebCore::JSMainThreadNullState state;
    IMPL->optionsObject(core(oo), core(ooo));
}

- (void)methodWithException
{
    WebCore::JSMainThreadNullState state;
    WebCore::ExceptionCode ec = 0;
    IMPL->methodWithException(ec);
    WebCore::raiseOnDOMError(ec);
}

- (void)customMethod
{
    WebCore::JSMainThreadNullState state;
    IMPL->customMethod();
}

- (void)customMethodWithArgs:(int)longArg strArg:(NSString *)strArg objArg:(DOMTestObj *)objArg
{
    WebCore::JSMainThreadNullState state;
    IMPL->customMethodWithArgs(longArg, strArg, core(objArg));
}

- (void)addEventListener:(NSString *)type listener:(id <DOMEventListener>)listener useCapture:(BOOL)useCapture
{
    WebCore::JSMainThreadNullState state;
    RefPtr<WebCore::EventListener> nativeEventListener = WebCore::ObjCEventListener::wrap(listener);
    IMPL->addEventListener(type, WTF::getPtr(nativeEventListener), useCapture);
}

- (void)removeEventListener:(NSString *)type listener:(id <DOMEventListener>)listener useCapture:(BOOL)useCapture
{
    WebCore::JSMainThreadNullState state;
    RefPtr<WebCore::EventListener> nativeEventListener = WebCore::ObjCEventListener::wrap(listener);
    IMPL->removeEventListener(type, WTF::getPtr(nativeEventListener), useCapture);
}

- (void)withScriptStateVoid
{
    WebCore::JSMainThreadNullState state;
    IMPL->withScriptStateVoid();
}

- (DOMTestObj *)withScriptStateObj
{
    WebCore::JSMainThreadNullState state;
    return kit(WTF::getPtr(IMPL->withScriptStateObj()));
}

- (void)withScriptStateVoidException
{
    WebCore::JSMainThreadNullState state;
    WebCore::ExceptionCode ec = 0;
    IMPL->withScriptStateVoidException(ec);
    WebCore::raiseOnDOMError(ec);
}

- (DOMTestObj *)withScriptStateObjException
{
    WebCore::JSMainThreadNullState state;
    WebCore::ExceptionCode ec = 0;
    DOMTestObj *result = kit(WTF::getPtr(IMPL->withScriptStateObjException(ec)));
    WebCore::raiseOnDOMError(ec);
    return result;
}

- (void)withScriptExecutionContext
{
    WebCore::JSMainThreadNullState state;
    IMPL->withScriptExecutionContext();
}

- (void)withScriptExecutionContextAndScriptState
{
    WebCore::JSMainThreadNullState state;
    IMPL->withScriptExecutionContextAndScriptState();
}

- (DOMTestObj *)withScriptExecutionContextAndScriptStateObjException
{
    WebCore::JSMainThreadNullState state;
    WebCore::ExceptionCode ec = 0;
    DOMTestObj *result = kit(WTF::getPtr(IMPL->withScriptExecutionContextAndScriptStateObjException(ec)));
    WebCore::raiseOnDOMError(ec);
    return result;
}

- (DOMTestObj *)withScriptExecutionContextAndScriptStateWithSpaces
{
    WebCore::JSMainThreadNullState state;
    return kit(WTF::getPtr(IMPL->withScriptExecutionContextAndScriptStateWithSpaces()));
}

- (void)withScriptArgumentsAndCallStack
{
    WebCore::JSMainThreadNullState state;
    IMPL->withScriptArgumentsAndCallStack();
}

- (void)methodWithOptionalArg:(int)opt
{
    WebCore::JSMainThreadNullState state;
    IMPL->methodWithOptionalArg(opt);
}

- (void)methodWithNonOptionalArgAndOptionalArg:(int)nonOpt opt:(int)opt
{
    WebCore::JSMainThreadNullState state;
    IMPL->methodWithNonOptionalArgAndOptionalArg(nonOpt, opt);
}

- (void)methodWithNonOptionalArgAndTwoOptionalArgs:(int)nonOpt opt1:(int)opt1 opt2:(int)opt2
{
    WebCore::JSMainThreadNullState state;
    IMPL->methodWithNonOptionalArgAndTwoOptionalArgs(nonOpt, opt1, opt2);
}

- (void)methodWithOptionalString:(NSString *)str
{
    WebCore::JSMainThreadNullState state;
    IMPL->methodWithOptionalString(str);
}

- (void)methodWithOptionalStringIsUndefined:(NSString *)str
{
    WebCore::JSMainThreadNullState state;
    IMPL->methodWithOptionalStringIsUndefined(str);
}

- (void)methodWithOptionalStringIsNullString:(NSString *)str
{
    WebCore::JSMainThreadNullState state;
    IMPL->methodWithOptionalStringIsNullString(str);
}


#if ENABLE(Condition1)
- (NSString *)conditionalMethod1
{
    WebCore::JSMainThreadNullState state;
    return IMPL->conditionalMethod1();
}

#endif


#if ENABLE(Condition1) && ENABLE(Condition2)
- (void)conditionalMethod2
{
    WebCore::JSMainThreadNullState state;
    IMPL->conditionalMethod2();
}

#endif


#if ENABLE(Condition1) || ENABLE(Condition2)
- (void)conditionalMethod3
{
    WebCore::JSMainThreadNullState state;
    IMPL->conditionalMethod3();
}

#endif

- (void)classMethod
{
    WebCore::JSMainThreadNullState state;
    IMPL->classMethod();
}

- (int)classMethodWithOptional:(int)arg
{
    WebCore::JSMainThreadNullState state;
    return IMPL->classMethodWithOptional(arg);
}

- (void)classMethod2:(int)arg
{
    WebCore::JSMainThreadNullState state;
    IMPL->classMethod2(arg);
}


#if ENABLE(Condition1)
- (void)overloadedMethod1:(int)arg
{
    WebCore::JSMainThreadNullState state;
    IMPL->overloadedMethod1(arg);
}

#endif


#if ENABLE(Condition1)
- (void)overloadedMethod1:(NSString *)type
{
    WebCore::JSMainThreadNullState state;
    IMPL->overloadedMethod1(type);
}

#endif

- (DOMSVGDocument *)getSVGDocument
{
    WebCore::JSMainThreadNullState state;
    WebCore::ExceptionCode ec = 0;
    DOMSVGDocument *result = kit(WTF::getPtr(IMPL->getSVGDocument(ec)));
    WebCore::raiseOnDOMError(ec);
    return result;
}

- (void)convert1:(DOMTestNode *)value
{
    WebCore::JSMainThreadNullState state;
    IMPL->convert1(core(value));
}

- (void)convert2:(DOMTestNode *)value
{
    WebCore::JSMainThreadNullState state;
    IMPL->convert2(core(value));
}

- (void)convert4:(DOMTestNode *)value
{
    WebCore::JSMainThreadNullState state;
    IMPL->convert4(core(value));
}

- (void)convert5:(DOMTestNode *)value
{
    WebCore::JSMainThreadNullState state;
    IMPL->convert5(core(value));
}

- (DOMSVGPoint *)mutablePointFunction
{
    WebCore::JSMainThreadNullState state;
    return kit(WTF::getPtr(WebCore::SVGPropertyTearOff<WebCore::FloatPoint>::create(IMPL->mutablePointFunction())));
}

- (DOMSVGPoint *)immutablePointFunction
{
    WebCore::JSMainThreadNullState state;
    return kit(WTF::getPtr(WebCore::SVGPropertyTearOff<WebCore::FloatPoint>::create(IMPL->immutablePointFunction())));
}

- (void)orange
{
    WebCore::JSMainThreadNullState state;
    IMPL->orange();
}

- (DOMbool *)strictFunction:(NSString *)str a:(float)a b:(int)b
{
    WebCore::JSMainThreadNullState state;
    WebCore::ExceptionCode ec = 0;
    DOMbool *result = kit(WTF::getPtr(IMPL->strictFunction(str, a, b, ec)));
    WebCore::raiseOnDOMError(ec);
    return result;
}

- (void)variadicStringMethod:(NSString *)head tail:(NSString *)tail
{
    WebCore::JSMainThreadNullState state;
    IMPL->variadicStringMethod(head, tail);
}

- (void)variadicDoubleMethod:(double)head tail:(double)tail
{
    WebCore::JSMainThreadNullState state;
    IMPL->variadicDoubleMethod(head, tail);
}

- (void)variadicNodeMethod:(DOMNode *)head tail:(DOMNode *)tail
{
    WebCore::JSMainThreadNullState state;
    IMPL->variadicNodeMethod(core(head), core(tail));
}

@end

WebCore::TestObj* core(DOMTestObj *wrapper)
{
    return wrapper ? reinterpret_cast<WebCore::TestObj*>(wrapper->_internal) : 0;
}

DOMTestObj *kit(WebCore::TestObj* value)
{
    { DOM_ASSERT_MAIN_THREAD(); WebCoreThreadViolationCheckRoundOne(); };
    if (!value)
        return nil;
    if (DOMTestObj *wrapper = getDOMWrapper(value))
        return [[wrapper retain] autorelease];
    DOMTestObj *wrapper = [[DOMTestObj alloc] _init];
    wrapper->_internal = reinterpret_cast<DOMObjectInternal*>(value);
    value->ref();
    addDOMWrapper(wrapper, value);
    return [wrapper autorelease];
}
