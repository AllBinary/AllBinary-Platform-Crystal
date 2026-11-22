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
# package org.allbinary.logic.io

class BufferedWriterUtil < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @commonStrings : CommonStrings? = nil

    def jf_commonStrings : CommonStrings?
        @commonStrings
    end

    def jf_commonStrings=(value : CommonStrings?) : CommonStrings?
        @commonStrings = value
    end
    @commonLabels : CommonLabels? = nil

    def jf_commonLabels : CommonLabels?
        @commonLabels
    end

    def jf_commonLabels=(value : CommonLabels?) : CommonLabels?
        @commonLabels = value
    end
    @j_REMOVING_OLD : String = ""

    def jf_REMOVING_OLD : String
        @j_REMOVING_OLD
    end

    def jf_REMOVING_OLD=(value : String) : String
        @j_REMOVING_OLD = value
    end

    @@jst_instance : BufferedWriterUtil? = nil

    def self.jst_instance : BufferedWriterUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : BufferedWriterUtil?) : BufferedWriterUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = BufferedWriterUtil.new.jinit_BufferedWriterUtil()
    end
    

    def self.getInstance : BufferedWriterUtil?
        return BufferedWriterUtil.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_BufferedWriterUtil : Nil
    @logUtil = LogUtil.getInstance()
    @commonStrings = CommonStrings.getInstance()
    @commonLabels = CommonLabels.getInstance()
    @j_REMOVING_OLD = "Remove old for overwriting: "
    end

    def jinit_BufferedWriterUtil : self
        jfields_BufferedWriterUtil()
        self
    end
    

    def overwrite(path : String, data : String) : Nil
        abFile : AbFile? = AbFile.createAbFile(path)
        if abFile.not_nil!.exists()
            @logUtil.not_nil!.putF(@j_REMOVING_OLD + path, self, @commonStrings.not_nil!.jf_CREATE)
            abFile.not_nil!.delete()
        else
            name : String = AbPathData.getInstance().not_nil!.removeNameFromPath(path)
            abFileDirectory : AbFile? = AbFile.createAbFile(name)
            if abFileDirectory.not_nil!.exists()
            else
                stringBuilder : StringMaker? = StringMaker.new.jinit_StringMaker()
                @logUtil.not_nil!.putF(stringBuilder.not_nil!.append(@commonStrings.not_nil!.jf_CREATE).not_nil!.append(@commonLabels.not_nil!.jf_COLON_SEP).not_nil!.append(name).not_nil!.toString(), self, @commonStrings.not_nil!.jf_CREATE)
                result : Bool = abFileDirectory.not_nil!.mkdirs()
                stringBuilder.not_nil!.delete(0, stringBuilder.not_nil!.length())
                @logUtil.not_nil!.putF(stringBuilder.not_nil!.append(@commonLabels.not_nil!.jf_RESULT_).not_nil!.appendboolean(result).not_nil!.toString(), self, @commonStrings.not_nil!.jf_CREATE)
            end
        end
        self.write(abFile, data)
    end
    

    def overwrite(abFile : AbFile?, data : String) : Nil
        if abFile.not_nil!.exists()
            @logUtil.not_nil!.putF(@j_REMOVING_OLD + abFile.not_nil!.getPath(), self, @commonStrings.not_nil!.jf_CREATE)
            abFile.not_nil!.delete()
        else
            name : String = AbPathData.getInstance().not_nil!.removeNameFromPath(abFile.not_nil!.getAbsolutePath())
            abFileDirectory : AbFile? = AbFile.createAbFile(name)
            if abFileDirectory.not_nil!.exists()
            else
                stringBuilder : StringMaker? = StringMaker.new.jinit_StringMaker()
                @logUtil.not_nil!.putF(stringBuilder.not_nil!.append(@commonStrings.not_nil!.jf_CREATE).not_nil!.append(@commonLabels.not_nil!.jf_COLON_SEP).not_nil!.append(name).not_nil!.toString(), self, @commonStrings.not_nil!.jf_CREATE)
                result : Bool = abFileDirectory.not_nil!.mkdirs()
                stringBuilder.not_nil!.delete(0, stringBuilder.not_nil!.length())
                @logUtil.not_nil!.putF(stringBuilder.not_nil!.append(@commonLabels.not_nil!.jf_RESULT_).not_nil!.appendboolean(result).not_nil!.toString(), self, @commonStrings.not_nil!.jf_CREATE)
            end
        end
        self.write(abFile, data)
    end
    

    def write(abFile : AbFile?, data : String) : Nil
        fileOut : JBufferedWriter? = JBufferedWriter.new.jinit_JBufferedWriter(JFileWriter.new.jinit_JFileWriter(AbFileNativeUtil.get(abFile)))
        fileOut.not_nil!.write(data, 0, data.not_nil!.length())
        fileOut.not_nil!.newLine()
        fileOut.not_nil!.flush()
    end
end

