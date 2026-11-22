#
# AllBinary Open License Version 1
# Copyright (c) 2011 AllBinary
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
# package org.allbinary.logic.communication.log

class ForcedLogUtil < JObject
    

    def self.log(message : String, anyType : JAny) : Nil
        begin
            raise (JException.new.jinit_JException(message)).not_nil!
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            PreLogUtil.putOE(CommonStrings.getInstance().not_nil!.jf_EXCEPTION, anyType, "log", e)
            else
                raise jex1
            end
        end
    end

    def jinit_ForcedLogUtil : self
        self
    end
end

