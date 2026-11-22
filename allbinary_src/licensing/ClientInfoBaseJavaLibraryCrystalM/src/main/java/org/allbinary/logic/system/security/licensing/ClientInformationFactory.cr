# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.logic.system.security.licensing

class ClientInformationFactory < JObject

    def jinit_ClientInformationFactory : self
        self
    end
    

    def getInstance : ClientInformation?
        logUtil : LogUtil? = LogUtil.getInstance()
        commonStrings : CommonStrings? = CommonStrings.getInstance()
        logUtil.not_nil!.putF(commonStrings.not_nil!.jf_NOT_IMPLEMENTED, self, commonStrings.not_nil!.jf_GET_INSTANCE)
        stringUtil : StringUtil? = StringUtil.getInstance()
        return ClientInformation.new.jinit_ClientInformation(stringUtil.not_nil!.jf_NULL_STRING, stringUtil.not_nil!.jf_NULL_STRING, stringUtil.not_nil!.jf_NULL_STRING, stringUtil.not_nil!.jf_NULL_STRING)
    end
end

