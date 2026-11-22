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
# package org.allbinary.canvas

class SpecialMessageUtil < JObject

    @@jst_SINGLETON : SpecialMessageUtil? = nil

    def self.jst_SINGLETON : SpecialMessageUtil?
        jclinit
        @@jst_SINGLETON
    end

    def self.jst_SINGLETON=(value : SpecialMessageUtil?) : SpecialMessageUtil?
        jclinit
        @@jst_SINGLETON = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_SINGLETON = SpecialMessageUtil.new.jinit_SpecialMessageUtil()
    end
    

    def self.getInstance : SpecialMessageUtil?
        return SpecialMessageUtil.jst_SINGLETON
    end

    def jinit_SpecialMessageUtil : self
        self
    end
    

    def get : String
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        stringBuffer.not_nil!.append(Memory.getInfo())
        stringBuffer.not_nil!.append(CommonSeps.getInstance().not_nil!.jf_SPACE)
        stringBuffer.not_nil!.append(GameStatisticsFactory.getInstance().not_nil!.toString())
        stringBuffer.not_nil!.append(CommonSeps.getInstance().not_nil!.jf_SPACE)
        stringBuffer.not_nil!.append(" Option: ")
        if Features.getInstance().not_nil!.isDefault(OpenGLFeatureFactory.getInstance().not_nil!.jf_OPENGL_AUTO_SELECT)
            stringBuffer.not_nil!.append(OpenGLFeatureFactory.getInstance().not_nil!.jf_OPENGL_AUTO_SELECT.not_nil!.getName())
        else
            stringBuffer.not_nil!.append(OpenGLFeatureFactory.getInstance().not_nil!.jf_OPENGL_MINIMUM.not_nil!.getName())
        end
        return stringBuffer.not_nil!.toString()
    end
end

