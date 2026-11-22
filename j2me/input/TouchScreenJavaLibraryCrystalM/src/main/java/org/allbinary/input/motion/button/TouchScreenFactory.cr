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

class TouchScreenFactory < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @touch : Bool = false

    def jf_touch : Bool
        @touch
    end

    def jf_touch=(value : Bool) : Bool
        @touch = value
    end
    @multiTouch : Bool = false

    def jf_multiTouch : Bool
        @multiTouch
    end

    def jf_multiTouch=(value : Bool) : Bool
        @multiTouch = value
    end
    @multiTouchDistinct : Bool = false

    def jf_multiTouchDistinct : Bool
        @multiTouchDistinct
    end

    def jf_multiTouchDistinct=(value : Bool) : Bool
        @multiTouchDistinct = value
    end
    @touchScreenType : TouchScreenType? = nil

    def jf_touchScreenType : TouchScreenType?
        @touchScreenType
    end

    def jf_touchScreenType=(value : TouchScreenType?) : TouchScreenType?
        @touchScreenType = value
    end

    @@jst_SINGLETON : TouchScreenFactory? = nil

    def self.jst_SINGLETON : TouchScreenFactory?
        jclinit
        @@jst_SINGLETON
    end

    def self.jst_SINGLETON=(value : TouchScreenFactory?) : TouchScreenFactory?
        jclinit
        @@jst_SINGLETON = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_SINGLETON = TouchScreenFactory.new.jinit_TouchScreenFactory()
    end
    

    def self.getInstance : TouchScreenFactory?
        return TouchScreenFactory.jst_SINGLETON
    end

    # Java field initializers run after the super constructor
    def jfields_TouchScreenFactory : Nil
    @logUtil = LogUtil.getInstance()
    
    
    
    @touchScreenType = TouchScreenTypesFactory.getInstance().not_nil!.jf_NOTOUCH
    end
    

    def jinit_TouchScreenFactory : self
        jfields_TouchScreenFactory()
        begin
            self.setTouch(true)
            self.setMultiTouch(false)
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            commonStrings : CommonStrings? = CommonStrings.getInstance()
            @logUtil.not_nil!.put(commonStrings.not_nil!.jf_EXCEPTION, TouchScreenFactory.jst_SINGLETON, commonStrings.not_nil!.jf_GET_INSTANCE, e)
            else
                raise jex1
            end
        end
        self
    end
    

    def setMultiTouch(multiTouch : Bool) : Nil
        @multiTouch = multiTouch
    end
    

    def isMultiTouch : Bool
        return @multiTouch
    end
    

    def setTouch(touch : Bool) : Nil
        @touch = touch
    end
    

    def isTouch : Bool
        return @touch
    end
    

    def setMultiTouchDistinct(multiTouchDistinct : Bool) : Nil
        @multiTouchDistinct = multiTouchDistinct
    end
    

    def isMultiTouchDistinct : Bool
        return @multiTouchDistinct
    end
    

    def setTouchScreenType(touchScreenType : TouchScreenType?) : Nil
        @touchScreenType = touchScreenType
    end
    

    def getTouchScreenType : TouchScreenType?
        return @touchScreenType
    end
    

    def toString : String
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        stringBuffer.not_nil!.append("TouchScreen: ")
        stringBuffer.not_nil!.appendboolean(self.isTouch())
        stringBuffer.not_nil!.append(" MultiTouch: ")
        stringBuffer.not_nil!.appendboolean(self.isMultiTouch())
        stringBuffer.not_nil!.append(" Distinct MultiTouch: ")
        stringBuffer.not_nil!.appendboolean(self.isMultiTouchDistinct())
        stringBuffer.not_nil!.append(" TouchScreenType: ")
        stringBuffer.not_nil!.append(StringUtil.getInstance().not_nil!.toString(self.getTouchScreenType()))
        return stringBuffer.not_nil!.toString()
    end
end

