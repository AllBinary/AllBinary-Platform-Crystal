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
# package org.allbinary.game.input.event

class GameKeyEvent < AllBinaryEventObject
    @sourceId : Int32 = 0

    def jf_sourceId : Int32
        @sourceId
    end

    def jf_sourceId=(value : Int32) : Int32
        @sourceId = value
    end
    @repeated : Bool = false

    def jf_repeated : Bool
        @repeated
    end

    def jf_repeated=(value : Bool) : Bool
        @repeated = value
    end
    @key : Int32 = 0

    def jf_key : Int32
        @key
    end

    def jf_key=(value : Int32) : Int32
        @key = value
    end
    @gameActionKey : Int32 = 0

    def jf_gameActionKey : Int32
        @gameActionKey
    end

    def jf_gameActionKey=(value : Int32) : Int32
        @gameActionKey = value
    end
    @originalKey : Int32 = 0

    def jf_originalKey : Int32
        @originalKey
    end

    def jf_originalKey=(value : Int32) : Int32
        @originalKey = value
    end

    @@jst_NONE : GameKeyEvent? = nil

    def self.jst_NONE : GameKeyEvent?
        jclinit
        @@jst_NONE
    end

    def self.jst_NONE=(value : GameKeyEvent?) : GameKeyEvent?
        jclinit
        @@jst_NONE = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NONE = GameKeyEvent.new.jinit_GameKeyEvent(NullUtil.getInstance().not_nil!.jf_NULL_OBJECT, -1, -1, -1, -1, false)
    end
    

    def self.createEvent(anyType : JAny, sourceId : Int, key : Int) : GameKeyEvent?
        sourceId = sourceId.to_i32!
        key = key.to_i32!
        return GameKeyEvent.new.jinit_GameKeyEvent(anyType, sourceId, 0, 0, key, false)
    end
    

    def jinit_GameKeyEvent(anyType : JAny, sourceId : Int, originalKey : Int, gameActionKey : Int, key : Int, repeated : Bool) : self
        sourceId = sourceId.to_i32!
        originalKey = originalKey.to_i32!
        gameActionKey = gameActionKey.to_i32!
        key = key.to_i32!
        jinit_AllBinaryEventObject(anyType)
        @sourceId = sourceId
        self.setOriginalKey(originalKey)
        @key = key
        self.setGameActionKey(gameActionKey)
        self.setRepeatEvents(repeated)
        self
    end
    

    def init(anyType : JAny) : Nil
        self.setSource(anyType)
    end
    

    def setRepeatEvents(repeated : Bool) : Nil
        @repeated = repeated
    end
    

    def hasRepeatEvents : Bool
        return @repeated
    end
    

    def getKey : Int32
        return @key
    end
    

    def toString : String
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        stringBuffer.not_nil!.append("\nKey: ")
        stringBuffer.not_nil!.appendint(self.getKey())
        return stringBuffer.not_nil!.toString()
    end
    

    def getOriginalKey : Int32
        return @originalKey
    end
    

    def setOriginalKey(originalKey : Int) : Nil
        originalKey = originalKey.to_i32!
        @originalKey = originalKey
    end
    

    def getGameActionKey : Int32
        return @gameActionKey
    end
    

    def setGameActionKey(gameActionKey : Int) : Nil
        gameActionKey = gameActionKey.to_i32!
        @gameActionKey = gameActionKey
    end
    

    def getSourceId : Int32
        return @sourceId
    end
end

