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
# package org.allbinary.game.score

class HighScore < JObject
    @id : Int32 = 0

    def jf_id : Int32
        @id
    end

    def jf_id=(value : Int32) : Int32
        @id = value
    end
    @name : String = ""

    def jf_name : String
        @name
    end

    def jf_name=(value : String) : String
        @name = value
    end
    @gameInfo : GameInfo? = nil

    def jf_gameInfo : GameInfo?
        @gameInfo
    end

    def jf_gameInfo=(value : GameInfo?) : GameInfo?
        @gameInfo = value
    end
    @score : Int64 = 0_i64

    def jf_score : Int64
        @score
    end

    def jf_score=(value : Int64) : Int64
        @score = value
    end
    @scoreString : String = ""

    def jf_scoreString : String
        @scoreString
    end

    def jf_scoreString=(value : String) : String
        @scoreString = value
    end
    

    def jinit_HighScore(id : Int, name : String, gameInfo : GameInfo?, score : Int) : self
        id = id.to_i32!
        score = score.to_i64!
        @id = id
        @name = name
        @gameInfo = gameInfo
        @score = score
        @scoreString = JLong.toString(@score)
        self
    end
    

    def getId : Int32
        return @id
    end
    

    def getName : String
        return @name
    end
    

    def getScore : Int64
        return @score
    end
    

    def getAsBytes : Array(Int8)?
        byteArrayOutputStream : JByteArrayOutputStream? = JByteArrayOutputStream.new.jinit_JByteArrayOutputStream()
        outputStream : JDataOutputStream? = JDataOutputStream.new.jinit_JDataOutputStream(byteArrayOutputStream)
        outputStream.not_nil!.writeUTF(self.getName())
        outputStream.not_nil!.writeLong(self.getScore())
        return byteArrayOutputStream.not_nil!.toByteArray()
    end
    

    def getGameInfo : GameInfo?
        return @gameInfo
    end
    

    def getScoreString : String
        return @scoreString
    end
    

    def setName(name : String) : Nil
        @name = name
    end
    

    def toString : String
        commonSeps : CommonSeps? = CommonSeps.getInstance()
        return StringMaker.new.jinit_StringMaker().not_nil!.append(@name).not_nil!.append(commonSeps.not_nil!.jf_COLON).not_nil!.appendlong(@score).not_nil!.append(commonSeps.not_nil!.jf_FORWARD_SLASH).not_nil!.append(@scoreString).not_nil!.toString()
    end
end

