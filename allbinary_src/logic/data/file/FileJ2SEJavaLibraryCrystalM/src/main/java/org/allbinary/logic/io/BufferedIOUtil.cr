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

class BufferedIOUtil < JObject
    

    def self.copy(backupFile : AbFile?, backupFileBak : AbFile?) : Nil
        line : String = StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
        tmpOut : JBufferedWriter? = JBufferedWriter.new.jinit_JBufferedWriter(JFileWriter.new.jinit_JFileWriter(AbFileNativeUtil.get(backupFileBak)))
        tmpIn : JBufferedReader? = JBufferedReader.new.jinit_JBufferedReader(JFileReader.new.jinit_JFileReader(AbFileNativeUtil.get(backupFile)))
        while tmpIn.not_nil!.ready()
            line = tmpIn.not_nil!.readLine()
            tmpOut.not_nil!.write(line, 0, line.not_nil!.length())
            tmpOut.not_nil!.newLine()
        end
        tmpOut.not_nil!.flush()
    end

    def jinit_BufferedIOUtil : self
        self
    end
end

