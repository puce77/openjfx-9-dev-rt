/*
 * Copyright (c) 2011, 2015, Oracle and/or its affiliates. All rights reserved.
 */
#include "config.h"

#include <vector>
#include <wtf/text/WTFString.h>

namespace WTF {

// String conversions
String::String(JNIEnv* env, const JLString &s)
{
    if (!s) {
        m_impl = StringImpl::empty();
    } else {
        unsigned int len = env->GetStringLength(s);
        if (!len) {
            m_impl = StringImpl::empty();
        } else {
            const jchar* str = env->GetStringCritical(s, NULL);
            if (str) {
                m_impl = StringImpl::create((const UChar*)str, len);
                env->ReleaseStringCritical(s, str);
            } else {
                m_impl = StringImpl::create(reinterpret_cast<const UChar*>(L"OME"), 3);
            }
        }
    }
}

JLString String::toJavaString(JNIEnv *env) const
{
    if (isNull()) {
        return NULL;
    } else {
        return env->NewStringUTF(utf8().data());
    }
}

} // namespace WTF
