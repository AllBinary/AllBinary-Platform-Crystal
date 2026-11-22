# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
#  
# By agreeing to this license you and any business entity you represent are 
# legally bound to the AllBinary Open License Version 1 legal agreement. 
#  
# You may obtain the AllBinary Open License Version 1 legal agreement from 
# AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
#  
# Created By: Travis Berthelot 
#   
# Generated Code Do Not Modify
# package org.apache.xmlrpc

class NullXmlRpcHandler < JObject
    include XmlRpcHandler

    @@jst_NULL_XML_RPC_HANDLER : NullXmlRpcHandler? = nil

    def self.jst_NULL_XML_RPC_HANDLER : NullXmlRpcHandler?
        jclinit
        @@jst_NULL_XML_RPC_HANDLER
    end

    def self.jst_NULL_XML_RPC_HANDLER=(value : NullXmlRpcHandler?) : NullXmlRpcHandler?
        jclinit
        @@jst_NULL_XML_RPC_HANDLER = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_XML_RPC_HANDLER = NullXmlRpcHandler.new.jinit_NullXmlRpcHandler()
    end

    def jinit_NullXmlRpcHandler : self
        self
    end
    

    def execute(method : String, params : BasicArrayList?) : JAny
        return NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
    end
end

