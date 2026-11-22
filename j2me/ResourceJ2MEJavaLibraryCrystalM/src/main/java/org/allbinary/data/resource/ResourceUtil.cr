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
    

    def getResourceAsStream(resource : String) : JInputStream?
        inputStream : JInputStream? = JR.getResourceAsStream(resource)
        if (inputStream).nil?
            inputStream = self.getResourceAsStreamAtStart(resource, 2)
            if (inputStream).nil?
                inputStream = self.getResourceAsStreamAtStart(resource, 1)
                if (inputStream).nil?
                    stringMaker : StringMaker? = StringMaker.new.jinit_StringMaker()
                    index : Int32 = resource.not_nil!.lastIndexOf('/'.ord.to_u16)
                    resourcePath : String = resource.not_nil!.substring(index &+ 1)
                    inputStream = JR.getResourceAsStream(resourcePath)
                    if (inputStream).nil?
                        resourcePath = resource.not_nil!.substring(index)
                        inputStream = JR.getResourceAsStream(resourcePath)
                        if (inputStream).nil?
                            j_RES : String = "res"
                            resourcePath = stringMaker.not_nil!.append(j_RES).not_nil!.append(resource.not_nil!.substring(index)).not_nil!.toString()
                            inputStream = JR.getResourceAsStream(resourcePath)
                            if (inputStream).nil?
                                stringMaker.not_nil!.delete(0, stringMaker.not_nil!.length())
                                resourcePath = stringMaker.not_nil!.append("/").not_nil!.append(j_RES).not_nil!.append(resource.not_nil!.substring(index)).not_nil!.toString()
                                inputStream = JR.getResourceAsStream(resourcePath)
                                j_COLON : String = CommonSeps.getInstance().not_nil!.jf_COLON
                                if (inputStream).nil?
                                    stringMaker.not_nil!.delete(0, stringMaker.not_nil!.length())
                                    resourcePath = stringMaker.not_nil!.append(j_RES).not_nil!.append(j_COLON).not_nil!.append(resource.not_nil!.substring(index)).not_nil!.toString()
                                    inputStream = JR.getResourceAsStream(resourcePath)
                                    if (inputStream).nil?
                                        stringMaker.not_nil!.delete(0, stringMaker.not_nil!.length())
                                        resourcePath = stringMaker.not_nil!.append(j_RES).not_nil!.append(j_COLON).not_nil!.append(resource.not_nil!.substring(index &+ 1)).not_nil!.toString()
                                        inputStream = JR.getResourceAsStream(resourcePath)
                                        if (inputStream).nil?
                                            j_RESOURCE_STRING : String = "resource"
                                            stringMaker.not_nil!.delete(0, stringMaker.not_nil!.length())
                                            resourcePath = stringMaker.not_nil!.append(j_RESOURCE_STRING).not_nil!.append(j_COLON).not_nil!.append(resource.not_nil!.substring(index)).not_nil!.toString()
                                            inputStream = JR.getResourceAsStream(resourcePath)
                                            if (inputStream).nil?
                                                stringMaker.not_nil!.delete(0, stringMaker.not_nil!.length())
                                                resourcePath = stringMaker.not_nil!.append(j_RESOURCE_STRING).not_nil!.append(j_COLON).not_nil!.append(resource.not_nil!.substring(index &+ 1)).not_nil!.toString()
                                                inputStream = JR.getResourceAsStream(resourcePath)
                                                if (inputStream).nil?
                                                    stringMaker.not_nil!.delete(0, stringMaker.not_nil!.length())
                                                    raise (JException.new.jinit_JException(stringMaker.not_nil!.append("Unable to obtain: ").not_nil!.append(resource).not_nil!.toString())).not_nil!
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
        return inputStream
    end
    

    def getResourceAsStreamAtStart(resource : String, startIndex : Int) : JInputStream?
        startIndex = startIndex.to_i32!
        stringMaker : StringMaker? = StringMaker.new.jinit_StringMaker()
        index : Int32 = resource.not_nil!.indexOf(CommonSeps.getInstance().not_nil!.jf_COLON)
        resourcePath : String = resource.not_nil!.substring(index &+ startIndex)
        inputStream : JInputStream? = JR.getResourceAsStream(resourcePath)
        if !(inputStream).nil?
            return inputStream
        end
        return inputStream
    end
    

    def addResource(resource : String, value : JInteger?) : Nil
    end
end

