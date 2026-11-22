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
# package org.allbinary.game.ai

class BasicAI < ArtificialIntelligence
    include GameKeyEventSourceInterface
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
    @gameKeyEventFactory : GameKeyEventFactory? = nil

    def jf_gameKeyEventFactory : GameKeyEventFactory?
        @gameKeyEventFactory
    end

    def jf_gameKeyEventFactory=(value : GameKeyEventFactory?) : GameKeyEventFactory?
        @gameKeyEventFactory = value
    end
    @ownerLayerInterface : AllBinaryLayer? = nil

    def jf_ownerLayerInterface : AllBinaryLayer?
        @ownerLayerInterface
    end

    def jf_ownerLayerInterface=(value : AllBinaryLayer?) : AllBinaryLayer?
        @ownerLayerInterface = value
    end
    @gameInput : GameInput? = nil

    def jf_gameInput : GameInput?
        @gameInput
    end

    def jf_gameInput=(value : GameInput?) : GameInput?
        @gameInput = value
    end
    @lastKey : Int32 = 0

    def jf_lastKey : Int32
        @lastKey
    end

    def jf_lastKey=(value : Int32) : Int32
        @lastKey = value
    end

    @@jst_AI_VISITOR : JInteger? = nil

    def self.jst_AI_VISITOR : JInteger?
        jclinit
        @@jst_AI_VISITOR
    end

    def self.jst_AI_VISITOR=(value : JInteger?) : JInteger?
        jclinit
        @@jst_AI_VISITOR = value
    end

    @@jst_ID : JInteger? = nil

    def self.jst_ID : JInteger?
        jclinit
        @@jst_ID
    end

    def self.jst_ID=(value : JInteger?) : JInteger?
        jclinit
        @@jst_ID = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_AI_VISITOR = SmallIntegerSingletonFactory.getInstance().not_nil!.getAt(2)
        @@jst_ID = SmallIntegerSingletonFactory.getInstance().not_nil!.getAt(1)
    end

    # Java field initializers run after the super constructor
    def jfields_BasicAI : Nil
    @logUtil = LogUtil.getInstance()
    @commonStrings = CommonStrings.getInstance()
    @gameKeyEventFactory = GameKeyEventFactory.getInstance()
    
    
    @lastKey = -1
    end
    

    def jinit_BasicAI(ownerLayerInterface : AllBinaryLayer?, gameInput : GameInput?) : self
        jinit_ArtificialIntelligence()
        jfields_BasicAI()
        @ownerLayerInterface = ownerLayerInterface
        @gameInput = gameInput
        self
    end
    

    def processAI(allBinaryLayerManager : AllBinaryLayerManager?) : Nil
        raise (JException.new.jinit_JException(@commonStrings.not_nil!.jf_NOT_IMPLEMENTED)).not_nil!
    end
    

    def processKeyAI(key : Int) : Nil
        key = key.to_i32!
        if key != -1
            @gameInput.not_nil!.add(@gameKeyEventFactory.not_nil!.getInstanceForKey(self, key))
        end
    end
    

    def setLastKey(lastKey : Int) : Nil
        lastKey = lastKey.to_i32!
        @lastKey = lastKey
    end
    

    def getLastKey : Int32
        return @lastKey
    end
    

    def getOwnerLayerInterface : AllBinaryLayer?
        return @ownerLayerInterface
    end
    

    def getGameInput : GameInput?
        return @gameInput
    end
    

    def getName : String
        return JR.jclass(self)
    end
    

    def toString : String
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        stringBuffer.not_nil!.append(CommonSeps.getInstance().not_nil!.jf_NEW_LINE)
        stringBuffer.not_nil!.append(self.getName())
        stringBuffer.not_nil!.append(" LastKey: ")
        stringBuffer.not_nil!.append(CanvasUtil.getKeyName(self.getLastKey()))
        return stringBuffer.not_nil!.toString()
    end
    

    def getSourceId : Int32
        return 1
    end
end

