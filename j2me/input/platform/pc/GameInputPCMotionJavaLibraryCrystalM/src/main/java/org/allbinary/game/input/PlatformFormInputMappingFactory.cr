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

class PlatformFormInputMappingFactory < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @inputToGameKeyMapping : InputToGameKeyMapping? = nil

    def jf_inputToGameKeyMapping : InputToGameKeyMapping?
        @inputToGameKeyMapping
    end

    def jf_inputToGameKeyMapping=(value : InputToGameKeyMapping?) : InputToGameKeyMapping?
        @inputToGameKeyMapping = value
    end

    @@jst_instance : JAny = nil

    def self.jst_instance : JAny
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : JAny) : JAny
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
    end
    

    def self.getInstance : PlatformFormInputMappingFactory?
        if PlatformFormInputMappingFactory.jst_instance == NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
            PlatformFormInputMappingFactory.jst_instance = PlatformFormInputMappingFactory.new.jinit_PlatformFormInputMappingFactory()
        end
        return JR.cast(PlatformFormInputMappingFactory.jst_instance, PlatformFormInputMappingFactory)
    end

    # Java field initializers run after the super constructor
    def jfields_PlatformFormInputMappingFactory : Nil
    @logUtil = LogUtil.getInstance()
    @inputToGameKeyMapping = InputToGameKeyMapping.getNullInstance()
    end

    def jinit_PlatformFormInputMappingFactory : self
        jfields_PlatformFormInputMappingFactory()
        self
    end
    

    def getOrCreate : InputToGameKeyMapping?
        begin
            if @inputToGameKeyMapping == InputToGameKeyMapping.getNullInstance()
                pcKeyFactory : PCKeyFactory? = PCKeyFactory.getInstance()
                inputToGameKeyMapping : InputToGameKeyMapping? = InputToGameKeyMapping.new.jinit_InputToGameKeyMapping()
                gameKeyFactory : GameKeyFactory? = GameKeyFactory.getInstance()
                basicTouchInputFactory : BasicTouchInputFactory? = BasicTouchInputFactory.getInstance()
                inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_UP, pcKeyFactory.not_nil!.jf_DPAD_UP)
                inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_DOWN, pcKeyFactory.not_nil!.jf_DPAD_DOWN)
                inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_LEFT, pcKeyFactory.not_nil!.jf_DPAD_LEFT)
                inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_RIGHT, pcKeyFactory.not_nil!.jf_DPAD_RIGHT)
                inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_KEY_NUM1, pcKeyFactory.not_nil!.jf_ENTER)
                inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_UP, basicTouchInputFactory.not_nil!.jf_UP)
                inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_LEFT, basicTouchInputFactory.not_nil!.jf_LEFT)
                inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_RIGHT, basicTouchInputFactory.not_nil!.jf_RIGHT)
                inputToGameKeyMapping.not_nil!.add(gameKeyFactory.not_nil!.jf_DOWN, basicTouchInputFactory.not_nil!.jf_DOWN)
                @inputToGameKeyMapping = inputToGameKeyMapping
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

