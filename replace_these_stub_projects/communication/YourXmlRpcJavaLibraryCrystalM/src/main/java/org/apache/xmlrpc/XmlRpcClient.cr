# Generated Code Do Not Modify
# package org.apache.xmlrpc

class XmlRpcClient < JObject
    include XmlRpcHandler
    @url : JURL? = nil

    def jf_url : JURL?
        @url
    end

    def jf_url=(value : JURL?) : JURL?
        @url = value
    end
    

    def jinit_XmlRpcClient(url : String) : self
        @url = JURL.new.jinit_JURL(url)
        self
    end
    

    def getURL : JURL?
        return @url
    end
    

    def setBasicAuthentication(user : String, password : String) : Nil
    end
    

    def execute(method : String, params : BasicArrayList?) : JAny
        return NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
    end
    

    def executeWithCrypt(method : String, params : BasicArrayList?, cryptInterface : CryptInterface?) : JAny
        return NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
    end
end

