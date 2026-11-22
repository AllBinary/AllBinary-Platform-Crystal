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
# package org.allbinary.input.motion.button

class BaseTouchInput < JObject
    @commonStrings : CommonStrings? = nil

    def jf_commonStrings : CommonStrings?
        @commonStrings
    end

    def jf_commonStrings=(value : CommonStrings?) : CommonStrings?
        @commonStrings = value
    end
    @basicArrayListUtil : BasicArrayListUtil? = nil

    def jf_basicArrayListUtil : BasicArrayListUtil?
        @basicArrayListUtil
    end

    def jf_basicArrayListUtil=(value : BasicArrayListUtil?) : BasicArrayListUtil?
        @basicArrayListUtil = value
    end

    # Java field initializers run after the super constructor
    def jfields_BaseTouchInput : Nil
    @commonStrings = CommonStrings.getInstance()
    @basicArrayListUtil = BasicArrayListUtil.getInstance()
    end
    

    def jinit_BaseTouchInput : self
        jfields_BaseTouchInput()
        self
    end
    

    def getList : BasicArrayList?
        return @basicArrayListUtil.not_nil!.getImmutableInstance()
    end
    

    def toString : String
        return JR.jclass(self)
    end
end

