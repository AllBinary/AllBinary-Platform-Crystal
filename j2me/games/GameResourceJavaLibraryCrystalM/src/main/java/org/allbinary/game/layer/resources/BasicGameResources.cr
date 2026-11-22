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
# package org.allbinary.game.layer.resources

class BasicGameResources < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @j_RESOURCE : String = ""

    def jf_RESOURCE : String
        @j_RESOURCE
    end

    def jf_RESOURCE=(value : String) : String
        @j_RESOURCE = value
    end
    @j_RESOURCE_DESTROY : String = ""

    def jf_RESOURCE_DESTROY : String
        @j_RESOURCE_DESTROY
    end

    def jf_RESOURCE_DESTROY=(value : String) : String
        @j_RESOURCE_DESTROY = value
    end

    @@jst_stringBuffer : StringMaker? = nil

    def self.jst_stringBuffer : StringMaker?
        jclinit
        @@jst_stringBuffer
    end

    def self.jst_stringBuffer=(value : StringMaker?) : StringMaker?
        jclinit
        @@jst_stringBuffer = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_stringBuffer = StringMaker.new.jinit_StringMaker()
    end

    # Java field initializers run after the super constructor
    def jfields_BasicGameResources : Nil
    @logUtil = LogUtil.getInstance()
    @j_RESOURCE = StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
    @j_RESOURCE_DESTROY = StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
    end
    

    def jinit_BasicGameResources : self
        jfields_BasicGameResources()
        self
    end
    

    def init(j_ROOT : String, j_SIZE : Array(String)?) : Nil
        begin
            scale : Int32 = GameConfigurationCentral.getInstance().not_nil!.jf_SCALE.not_nil!.getValue().not_nil!.intValue()
            if scale > 1 && scale &- 1 < j_SIZE.not_nil!.size
                self.append(j_ROOT, j_SIZE.not_nil![scale &- 1])
            else
                raise (JException.new.jinit_JException(StringMaker.new.jinit_StringMaker().not_nil!.append("Invalid Value: ").not_nil!.appendint(scale).not_nil!.toString())).not_nil!
            end
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            commonStrings : CommonStrings? = CommonStrings.getInstance()
            @logUtil.not_nil!.put(commonStrings.not_nil!.jf_EXCEPTION, self, commonStrings.not_nil!.jf_INIT, e)
            else
                raise jex1
            end
        end
    end
    

    def append(j_ROOT : String, sizeString : String) : Nil
        j_DESTROY : String = "_destroy"
        string : String = self.getString()
        BasicGameResources.jst_stringBuffer.not_nil!.delete(0, BasicGameResources.jst_stringBuffer.not_nil!.length())
        BasicGameResources.jst_stringBuffer.not_nil!.append(j_ROOT)
        BasicGameResources.jst_stringBuffer.not_nil!.append(string)
        BasicGameResources.jst_stringBuffer.not_nil!.append(sizeString)
        @j_RESOURCE = BasicGameResources.jst_stringBuffer.not_nil!.toString()
        BasicGameResources.jst_stringBuffer.not_nil!.delete(0, BasicGameResources.jst_stringBuffer.not_nil!.length())
        BasicGameResources.jst_stringBuffer.not_nil!.append(j_ROOT)
        BasicGameResources.jst_stringBuffer.not_nil!.append(j_DESTROY)
        BasicGameResources.jst_stringBuffer.not_nil!.append(string)
        BasicGameResources.jst_stringBuffer.not_nil!.append(sizeString)
        @j_RESOURCE_DESTROY = BasicGameResources.jst_stringBuffer.not_nil!.toString()
    end
    

    def getString : String
        return GameGraphicsResourceUtil.getInstance().not_nil!.getName()
    end
end

