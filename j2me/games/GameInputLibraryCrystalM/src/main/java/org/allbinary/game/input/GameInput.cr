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
# package org.allbinary.game.input

class GameInput < JObject
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
    @gameKeyEventList : BasicArrayList? = nil

    def jf_gameKeyEventList : BasicArrayList?
        @gameKeyEventList
    end

    def jf_gameKeyEventList=(value : BasicArrayList?) : BasicArrayList?
        @gameKeyEventList = value
    end
    @removalGameKeyEventList : BasicArrayList? = nil

    def jf_removalGameKeyEventList : BasicArrayList?
        @removalGameKeyEventList
    end

    def jf_removalGameKeyEventList=(value : BasicArrayList?) : BasicArrayList?
        @removalGameKeyEventList = value
    end
    @isRemoveDuplicateKeyPresses : Bool = false

    def jf_isRemoveDuplicateKeyPresses : Bool
        @isRemoveDuplicateKeyPresses
    end

    def jf_isRemoveDuplicateKeyPresses=(value : Bool) : Bool
        @isRemoveDuplicateKeyPresses = value
    end

    # Java field initializers run after the super constructor
    def jfields_GameInput : Nil
    @logUtil = LogUtil.getInstance()
    @commonStrings = CommonStrings.getInstance()
    
    
    
    end
    

    def jinit_GameInput(gameKeyEventList : BasicArrayList?, removalGameKeyEventList : BasicArrayList?) : self
        jfields_GameInput()
        @gameKeyEventList = gameKeyEventList
        @removalGameKeyEventList = removalGameKeyEventList
        @isRemoveDuplicateKeyPresses = Features.getInstance().not_nil!.isFeature(InputFeatureFactory.getInstance().not_nil!.jf_REMOVE_DUPLICATE_KEY_PRESSES)
        self
    end
    

    def add(gameKeyEvent : GameKeyEvent?) : Nil
        if @isRemoveDuplicateKeyPresses && @gameKeyEventList.not_nil!.contains(gameKeyEvent)
            return
        end
        if !(gameKeyEvent).nil?
            @gameKeyEventList.not_nil!.add(gameKeyEvent)
        else
            @logUtil.not_nil!.putF("Danger Passed Null GameKeyEvent", self, @commonStrings.not_nil!.jf_ADD)
        end
    end
    

    def addForRemoval(gameKeyEvent : GameKeyEvent?) : Nil
        @removalGameKeyEventList.not_nil!.add(gameKeyEvent)
    end
    

    def isForRemoval(gameKeyEvent : GameKeyEvent?) : Bool
        return @removalGameKeyEventList.not_nil!.contains(gameKeyEvent)
    end
    

    def clear : Nil
        @gameKeyEventList.not_nil!.clear()
    end
    

    def removeNonAIInputGameKeyEvents : Nil
        list : BasicArrayList? = @gameKeyEventList
        gameKeyEvent : GameKeyEvent? = nil
        index : Int32 = list.not_nil!.size()
        jfor1 = false
        while true
            jfor1 = true
            break unless (index &-= 1) >= 0
            gameKeyEvent = JR.cast(list.not_nil!.jf_objectArray.not_nil![index], GameKeyEvent)
            if gameKeyEvent.not_nil!.getSourceId() != 1
                list.not_nil!.removeAt(index)
            end
        end
    end
    

    def update : Nil
        removeList : BasicArrayList? = @removalGameKeyEventList
        list : BasicArrayList? = @gameKeyEventList
        size : Int32 = removeList.not_nil!.size()
        index : Int32 = 0
        jfor2 = false
        while true
            if jfor2
                index &+= 1
            end
            jfor2 = true
            break unless index < size
            anyType : JAny = removeList.not_nil!.jf_objectArray.not_nil![index]
            index2 : Int32 = list.not_nil!.size()
            jfor3 = false
            while true
                jfor3 = true
                break unless (index2 &-= 1) >= 0
                if list.not_nil!.jf_objectArray.not_nil![index2] == anyType
                    list.not_nil!.removeAt(index2)
                end
            end
        end
        removeList.not_nil!.clear()
    end
    

    def getRemovalGameKeyEventList : BasicArrayList?
        return @removalGameKeyEventList
    end
    

    def getGameKeyEventList : BasicArrayList?
        return @gameKeyEventList
    end
end

