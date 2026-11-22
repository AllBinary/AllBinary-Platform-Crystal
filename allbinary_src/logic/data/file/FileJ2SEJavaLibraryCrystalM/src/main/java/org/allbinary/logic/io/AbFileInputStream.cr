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

class AbFileInputStream < JFileInputStream
    

    def self.createFromAbFile(file : AbFile?) : AbFileInputStream?
        return AbFileInputStream.new.jinit_AbFileInputStream(AbFileNativeUtil.get(file).not_nil!.getPath())
    end
    

    def self.createFromFile(file : JFile?) : AbFileInputStream?
        return AbFileInputStream.new.jinit_AbFileInputStream(file.not_nil!.getPath())
    end
    

    def jinit_AbFileInputStream(name : String) : self
        jinit_JFileInputStream(name)
        self
    end
end

