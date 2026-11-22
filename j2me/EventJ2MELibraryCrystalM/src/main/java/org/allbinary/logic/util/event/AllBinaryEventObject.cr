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
# package org.allbinary.logic.util.event

class AllBinaryEventObject < JObject
    @source : JAny = nil

    def jf_source : JAny
        @source
    end

    def jf_source=(value : JAny) : JAny
        @source = value
    end

    @@jst_NULL_EVENT : AllBinaryEventObject? = nil

    def self.jst_NULL_EVENT : AllBinaryEventObject?
        jclinit
        @@jst_NULL_EVENT
    end

    def self.jst_NULL_EVENT=(value : AllBinaryEventObject?) : AllBinaryEventObject?
        jclinit
        @@jst_NULL_EVENT = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_EVENT = AllBinaryEventObject.new.jinit_AllBinaryEventObject(NullUtil.getInstance().not_nil!.jf_NULL_OBJECT)
    end
    

    def jinit_AllBinaryEventObject(anyType : JAny) : self
        @source = anyType
        self
    end
    

    def getSource : JAny
        return @source
    end
    

    def setSource(source : JAny) : Nil
        @source = source
    end
end

