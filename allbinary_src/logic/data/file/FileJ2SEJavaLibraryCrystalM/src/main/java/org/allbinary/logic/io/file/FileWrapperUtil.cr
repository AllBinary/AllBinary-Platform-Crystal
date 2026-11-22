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
# package org.allbinary.logic.io.file

class FileWrapperUtil < JObject
    

    def self.wrapFiles(files : Array(JAny)?) : Array(AbFile?)?
        begin
            abFileArray : Array(AbFile?)? = Array(AbFile?).new(files.not_nil!.size, nil)
            index : Int32 = files.not_nil!.size &- 1
            jfor1 = false
            while true
                if jfor1
                    index &-= 1
                end
                jfor1 = true
                break unless index >= 0
                abFileArray.not_nil![index] = AbFile.new.jinit_AbFile(JR.cast(files.not_nil![index], JFile))
            end
            return abFileArray
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            PreLogUtil.putSE("Exception Wrapping Files", "FileWrapperUtil", "wrapFiles", e)
            return Array(AbFile?).new(0, nil)
            else
                raise jex1
            end
        end
        return nil
    end
    

    def self.wrapFile(file : JFile?) : AbFile?
        begin
            return AbFile.new.jinit_AbFile(file)
        rescue jexc2 : ::Exception
            jex2 = JR.jthrowable(jexc2)
            if jex2.is_a?(JException)
                e = jex2.as(JException)
            PreLogUtil.putSE("Exception Wrapping File", "FileWrapperUtil", "wrapFile", e)
            return AbFile.jst_NULL_FILE
            else
                raise jex2
            end
        end
        return nil
    end

    def jinit_FileWrapperUtil : self
        self
    end
end

