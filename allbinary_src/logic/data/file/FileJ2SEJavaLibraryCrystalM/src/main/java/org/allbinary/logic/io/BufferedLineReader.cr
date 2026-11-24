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

class BufferedLineReader < JObject
    @tmpIn : JBufferedReader? = nil

    def jf_tmpIn : JBufferedReader?
        @tmpIn
    end

    def jf_tmpIn=(value : JBufferedReader?) : JBufferedReader?
        @tmpIn = value
    end
    

    def jinit_BufferedLineReader(file : AbFile?) : self
        @tmpIn = JBufferedReader.new.jinit_JBufferedReader(JFileReader.new.jinit_JFileReader(AbFileNativeUtil.get(file)))
        self
    end
    

    def readUpToLines(readAheadIndex : Int) : Nil
        readAheadIndex = readAheadIndex.to_i64!
    end
    

    def readLine : String?
        return @tmpIn.not_nil!.readLine()
    end
    

    def ready : Bool
        return @tmpIn.not_nil!.ready()
    end
    

    def getSize : Int64
        return 0_i64
    end
    

    def getCurrent : Int32
        return 0
    end
end

