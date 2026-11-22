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

class FilePathUtil < JObject
    

    def self.adjust(path : String) : String
        abPathData : AbPathData? = AbPathData.getInstance()
        stringValidationUtil : StringValidationUtil? = StringValidationUtil.getInstance()
        filePathData : FilePathData? = FilePathData.getInstance()
        if stringValidationUtil.not_nil!.isEmpty(path)
            return filePathData.not_nil!.jf_PATH_START
        end
        path = path.not_nil!.replace(abPathData.not_nil!.jf_SEPARATORCHAR, filePathData.not_nil!.jf_SEPARATORCHAR)
        return path
    end
    

    def jinit_FilePathUtil : self
        self
    end
end

