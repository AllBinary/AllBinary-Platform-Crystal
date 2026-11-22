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

class AbFileOutputStream < JFileOutputStream
    

    def self.createFromAbFile(file : AbFile?) : AbFileOutputStream?
        return AbFileOutputStream.new.jinit_AbFileOutputStream(file.not_nil!.getPath(), false)
    end
    

    def self.createFromAbFileAppend(file : AbFile?, append : Bool) : AbFileOutputStream?
        return AbFileOutputStream.new.jinit_AbFileOutputStream(file.not_nil!.getPath(), append)
    end
    

    def self.createFromFilePath(name : String) : AbFileOutputStream?
        return AbFileOutputStream.new.jinit_AbFileOutputStream(name, false)
    end
    

    def self.createFromFilePathAppend(name : String, append : Bool) : AbFileOutputStream?
        return AbFileOutputStream.new.jinit_AbFileOutputStream(name, append)
    end
    

    def jinit_AbFileOutputStream(name : String, append : Bool) : self
        jinit_JFileOutputStream(name, append)
        self
    end
end

