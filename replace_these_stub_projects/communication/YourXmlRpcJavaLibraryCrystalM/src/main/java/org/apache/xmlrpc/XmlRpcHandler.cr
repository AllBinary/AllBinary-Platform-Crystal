# Generated Code Do Not Modify
# package org.apache.xmlrpc

module XmlRpcHandler
    include JObjectI
end

module JObjectI
    def execute(*jargs) : NoReturn
        raise JR.abstractMethod("execute")
    end
end

