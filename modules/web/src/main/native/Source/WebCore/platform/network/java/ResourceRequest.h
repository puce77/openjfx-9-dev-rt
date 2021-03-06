/*
 * Copyright (c) 2012, 2015, Oracle and/or its affiliates. All rights reserved.
 */

#ifndef ResourceRequest_h
#define ResourceRequest_h

#include "ResourceRequestBase.h"

namespace WebCore {

    class ResourceRequest : public ResourceRequestBase {
    public:
        ResourceRequest(const String& url)
            : ResourceRequestBase(URL(ParsedURLString, url), UseProtocolCachePolicy)
        {
        }

        ResourceRequest(const URL& url)
            : ResourceRequestBase(url, UseProtocolCachePolicy)
        {
        }

        ResourceRequest(const URL& url, const String& referrer, ResourceRequestCachePolicy policy = UseProtocolCachePolicy)
            : ResourceRequestBase(url, policy)
        {
            setHTTPReferrer(referrer);
        }

        ResourceRequest()
            : ResourceRequestBase(URL(), UseProtocolCachePolicy)
        {
        }

        void doUpdatePlatformRequest() {}
        void doUpdateResourceRequest() {}
        void doUpdatePlatformHTTPBody() { }
        void doUpdateResourceHTTPBody() { }

    private:
        friend class ResourceRequestBase;

        std::unique_ptr<CrossThreadResourceRequestData> doPlatformCopyData(std::unique_ptr<CrossThreadResourceRequestData> data) const { return data; }
        void doPlatformAdopt(std::unique_ptr<CrossThreadResourceRequestData>) { }
    };

    struct CrossThreadResourceRequestData : public CrossThreadResourceRequestDataBase {
    };

} // namespace WebCore

#endif // ResourceRequest_h
