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
# package org.allbinary.game.input

class KeyFactoryInitializer < Init
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end

    # Java field initializers run after the super constructor
    def jfields_KeyFactoryInitializer : Nil
    @logUtil = LogUtil.getInstance()
    end

    def jinit_KeyFactoryInitializer : self
        jinit_Init()
        jfields_KeyFactoryInitializer()
        self
    end
    

    def init : Nil
        @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_START, self, @commonStrings.not_nil!.jf_INIT)
        SmallIntegerSingletonFactory.getInstance().not_nil!.initWithRange(0x2D0, 6)
    end
end

