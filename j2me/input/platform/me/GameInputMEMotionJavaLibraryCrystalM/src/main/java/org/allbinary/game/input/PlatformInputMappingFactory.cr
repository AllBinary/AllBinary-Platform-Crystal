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

class PlatformInputMappingFactory < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @inputToGameKeyMapping : PersistentInputMapping? = nil

    def jf_inputToGameKeyMapping : PersistentInputMapping?
        @inputToGameKeyMapping
    end

    def jf_inputToGameKeyMapping=(value : PersistentInputMapping?) : PersistentInputMapping?
        @inputToGameKeyMapping = value
    end

    @@jst_instance : PlatformInputMappingFactory? = nil

    def self.jst_instance : PlatformInputMappingFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : PlatformInputMappingFactory?) : PlatformInputMappingFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = PlatformInputMappingFactory.new.jinit_PlatformInputMappingFactory()
    end
    

    def self.getInstance : PlatformInputMappingFactory?
        return PlatformInputMappingFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_PlatformInputMappingFactory : Nil
    @logUtil = LogUtil.getInstance()
    @inputToGameKeyMapping = PersistentInputMapping.getNullInstance()
    end

    def jinit_PlatformInputMappingFactory : self
        jfields_PlatformInputMappingFactory()
        self
    end
    

    def getPersistentInputMappingInstance : PersistentInputMapping?
        begin
            if @inputToGameKeyMapping == PersistentInputMapping.getNullInstance()
                @inputToGameKeyMapping = MotionJ2MEGameInputMapping.new.jinit_MotionJ2MEGameInputMapping()
            end
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            commonStrings : CommonStrings? = CommonStrings.getInstance()
            @logUtil.not_nil!.put(commonStrings.not_nil!.jf_EXCEPTION, self, commonStrings.not_nil!.jf_GET_INSTANCE, e)
            else
                raise jex1
            end
        end
        return @inputToGameKeyMapping
    end
end

