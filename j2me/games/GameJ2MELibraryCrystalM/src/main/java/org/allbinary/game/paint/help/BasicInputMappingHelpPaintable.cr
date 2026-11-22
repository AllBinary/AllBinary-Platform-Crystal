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
# package org.allbinary.game.paint.help

class BasicInputMappingHelpPaintable < HelpPaintable
    @gameInputMappingArray : Array(GameInputMapping?)? = nil

    def jf_gameInputMappingArray : Array(GameInputMapping?)?
        @gameInputMappingArray
    end

    def jf_gameInputMappingArray=(value : Array(GameInputMapping?)?) : Array(GameInputMapping?)?
        @gameInputMappingArray = value
    end
    @j_NONE : GameKey? = nil

    def jf_NONE : GameKey?
        @j_NONE
    end

    def jf_NONE=(value : GameKey?) : GameKey?
        @j_NONE = value
    end

    # Java field initializers run after the super constructor
    def jfields_BasicInputMappingHelpPaintable : Nil
    
    @j_NONE = GameKeyFactory.getInstance().not_nil!.jf_NONE
    end
    

    def jinit_BasicInputMappingHelpPaintable(gameInputMappingArray : Array(GameInputMapping?)?, basicColor : BasicColor?) : self
        jinit_HelpPaintable("Help Screen", BasicColorFactory.getInstance().not_nil!.jf_BLACK, basicColor)
        jfields_BasicInputMappingHelpPaintable()
        @gameInputMappingArray = gameInputMappingArray
        self.update(@j_NONE, @j_NONE)
        self
    end
    

    def update(selectedGameKey : GameKey?, selectedInput : Input?) : Nil
        gameKeyMapping : PersistentInputMapping? = PlatformInputMappingFactory.getInstance().not_nil!.getPersistentInputMappingInstance()
        j_EQUAL : String = " = "
        stringMaker : StringMaker? = StringMaker.new.jinit_StringMaker()
        size : Int32 = @gameInputMappingArray.not_nil!.size
        keyInfo : Array(String)? = Array(String).new(size, "")
        gameInputMapping : GameInputMapping? = nil
        gameKey : GameKey? = nil
        list : BasicArrayList? = nil
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < size
            gameInputMapping = @gameInputMappingArray.not_nil![index]
            gameKey = gameInputMapping.not_nil!.getGameKey()
            list = gameKeyMapping.not_nil!.getInputMapping().not_nil!.getMappedInput(gameKey)
            stringMaker.not_nil!.delete(0, stringMaker.not_nil!.length())
            keyInfo.not_nil![index] = stringMaker.not_nil!.append(gameInputMapping.not_nil!.getName()).not_nil!.append(j_EQUAL).not_nil!.append(self.get(list)).not_nil!.toString()
        end
        setInputInfoP(keyInfo)
    end
    

    def get(keyList : BasicArrayList?) : String
        commonSeps : CommonSeps? = CommonSeps.getInstance()
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        j_AND : String = "and "
        key : Input? = nil
        size : Int32 = keyList.not_nil!.size()
        index : Int32 = 0
        jfor2 = false
        while true
            if jfor2
                index &+= 1
            end
            jfor2 = true
            break unless index < size
            key = JR.cast(keyList.not_nil!.jf_objectArray.not_nil![index], Input)
            stringBuffer.not_nil!.append(key.not_nil!.getName())
            if index &+ 1 < keyList.not_nil!.size()
                if keyList.not_nil!.size() == 2
                    stringBuffer.not_nil!.append(commonSeps.not_nil!.jf_SPACE).not_nil!.append(j_AND)
                else
                    if index &+ 2 == keyList.not_nil!.size()
                        stringBuffer.not_nil!.append(commonSeps.not_nil!.jf_COMMA_SEP)
                        stringBuffer.not_nil!.append(j_AND)
                    else
                        stringBuffer.not_nil!.append(commonSeps.not_nil!.jf_COMMA_SEP)
                    end
                end
            end
        end
        return stringBuffer.not_nil!.toString()
    end
end

