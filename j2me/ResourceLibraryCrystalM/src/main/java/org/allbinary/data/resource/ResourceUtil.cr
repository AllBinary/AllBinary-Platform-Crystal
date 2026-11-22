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
# package org.allbinary.data.resource

class ResourceUtil < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end

    @@jst_classLoader : JAny = nil

    def self.jst_classLoader : JAny
        jclinit
        @@jst_classLoader
    end

    def self.jst_classLoader=(value : JAny) : JAny
        jclinit
        @@jst_classLoader = value
    end

    @@jst_instance : ResourceUtil? = nil

    def self.jst_instance : ResourceUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : ResourceUtil?) : ResourceUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_classLoader = NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
        @@jst_instance = ResourceUtil.new.jinit_ResourceUtil()
    end
    

    def self.getInstance : ResourceUtil?
        return ResourceUtil.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_ResourceUtil : Nil
    @logUtil = LogUtil.getInstance()
    end
    

    def jinit_ResourceUtil : self
        jfields_ResourceUtil()
        self
    end
    

    def setLoadingPaths(path : String, ext : String) : Nil
        @logUtil.not_nil!.putF(CommonStrings.getInstance().not_nil!.jf_NOT_IMPLEMENTED, self, "setLoadingPaths")
    end
    

    def setClassLoader(classLoader : JClassLoader?) : Nil
        @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append("Resource Loader: ").not_nil!.append(JR.jclass(classLoader)).not_nil!.toString(), self, "setClassLoader")
        ResourceUtil.jst_classLoader = classLoader
    end
    

    def getResourceAsStream(resource : String) : JInputStream?
        inputStream : JInputStream? = self.getResourceAsStreamAtStart(resource, 2)
        if (inputStream).nil?
            inputStream = self.getResourceAsStreamAtStart(resource, 1)
            if (inputStream).nil?
                raise (JException.new.jinit_JException(StringMaker.new.jinit_StringMaker().not_nil!.append("Unable to obtain: ").not_nil!.append(resource).not_nil!.toString())).not_nil!
            end
        end
        return inputStream
    end
    

    def getResourceAsStreamAtStart(resource : String, startIndex : Int) : JInputStream?
        startIndex = startIndex.to_i32!
        commonSeps : CommonSeps? = CommonSeps.getInstance()
        index : Int32 = resource.not_nil!.indexOf(commonSeps.not_nil!.jf_COLON)
        resourcePath : String = resource.not_nil!.substring(index &+ startIndex)
        inputStream : JInputStream? = JR.getResourceAsStream(resourcePath)
        if !(inputStream).nil?
            return inputStream
        end
        classLoader : JClassLoader? = JR.cast(ResourceUtil.jst_classLoader, JClassLoader)
        inputStream = classLoader.not_nil!.getResourceAsStream(resourcePath)
        if !(inputStream).nil?
            return inputStream
        end
        inputStream = JThread.currentThread().not_nil!.getContextClassLoader().not_nil!.getResourceAsStream(resourcePath)
        if !(inputStream).nil?
            return inputStream
        end
        return inputStream
    end
    

    def addResource(resource : String, value : JInteger?) : Nil
    end
end

