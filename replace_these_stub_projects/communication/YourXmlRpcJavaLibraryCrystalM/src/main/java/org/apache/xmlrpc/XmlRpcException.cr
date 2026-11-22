# Generated Code Do Not Modify
# package org.apache.xmlrpc

class XmlRpcException < JException
    

    def jinit_XmlRpcException(code : Int, message : String) : self
        code = code.to_i32!
        jinit_JException(message)
        self
    end
end

