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
# package org.allbinary.game.input.mapping

class InputToGameKeyMapping < InputMapping
    @gameKeyFactory : GameKeyFactory? = nil

    def jf_gameKeyFactory : GameKeyFactory?
        @gameKeyFactory
    end

    def jf_gameKeyFactory=(value : GameKeyFactory?) : GameKeyFactory?
        @gameKeyFactory = value
    end
    @mappedGameKeys : Array(GameKey?)? = nil

    def jf_mappedGameKeys : Array(GameKey?)?
        @mappedGameKeys
    end

    def jf_mappedGameKeys=(value : Array(GameKey?)?) : Array(GameKey?)?
        @mappedGameKeys = value
    end
    @platformToGameKeyMapping : Array(GameKey?)? = nil

    def jf_platformToGameKeyMapping : Array(GameKey?)?
        @platformToGameKeyMapping
    end

    def jf_platformToGameKeyMapping=(value : Array(GameKey?)?) : Array(GameKey?)?
        @platformToGameKeyMapping = value
    end
    @negativePlatformToGameKeyMapping : Array(GameKey?)? = nil

    def jf_negativePlatformToGameKeyMapping : Array(GameKey?)?
        @negativePlatformToGameKeyMapping
    end

    def jf_negativePlatformToGameKeyMapping=(value : Array(GameKey?)?) : Array(GameKey?)?
        @negativePlatformToGameKeyMapping = value
    end

    @@jst_instance : JAny = nil

    def self.jst_instance : JAny
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : JAny) : JAny
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
    end
    

    def self.getNullInstance : InputToGameKeyMapping?
        if InputToGameKeyMapping.jst_instance == NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
            InputToGameKeyMapping.jst_instance = InputToGameKeyMapping.new.jinit_InputToGameKeyMapping()
        end
        return JR.cast(InputToGameKeyMapping.jst_instance, InputToGameKeyMapping)
    end

    # Java field initializers run after the super constructor
    def jfields_InputToGameKeyMapping : Nil
    @gameKeyFactory = GameKeyFactory.getInstance()
    @mappedGameKeys = [@gameKeyFactory.not_nil!.jf_UP, @gameKeyFactory.not_nil!.jf_DOWN, @gameKeyFactory.not_nil!.jf_LEFT, @gameKeyFactory.not_nil!.jf_RIGHT] of GameKey?
    @platformToGameKeyMapping = Array(GameKey?).new(InputFactory.getInstance().not_nil!.jf_MAX, nil)
    @negativePlatformToGameKeyMapping = Array(GameKey?).new(0, nil)
    end
    

    def jinit_InputToGameKeyMapping : self
        jinit_InputMapping()
        jfields_InputToGameKeyMapping()
        @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_START, self, @commonStrings.not_nil!.jf_CONSTRUCTOR)
        self.clear()
        self
    end
    

    def clear : Nil
        index : Int32 = @platformToGameKeyMapping.not_nil!.size &- 1
        jfor1 = false
        while true
            if jfor1
                index &-= 1
            end
            jfor1 = true
            break unless index >= 0
            @platformToGameKeyMapping.not_nil![index] = @gameKeyFactory.not_nil!.jf_NONE
        end
    end
    

    def removeAll : Nil
        super()
        self.clear()
    end
    

    def addMapping(inputToGameKeyMapping : InputToGameKeyMapping?) : Nil
        index : Int32 = inputToGameKeyMapping.not_nil!.getMaxMappable() &- 1
        jfor2 = false
        while true
            if jfor2
                index &-= 1
            end
            jfor2 = true
            break unless index >= 0
            input : Input? = inputToGameKeyMapping.not_nil!.getInstance(index)
            if input != @gameKeyFactory.not_nil!.jf_NONE
                self.addAll(input, inputToGameKeyMapping.not_nil!.getMappedInput(input))
            end
        end
    end
    

    def addAll(input : Input?, list : BasicArrayList?) : Nil
        index : Int32 = list.not_nil!.size() &- 1
        jfor3 = false
        while true
            if jfor3
                index &-= 1
            end
            jfor3 = true
            break unless index >= 0
            mappedToInput : Input? = JR.cast(list.not_nil!.jf_objectArray.not_nil![index], Input)
            self.add(input, mappedToInput)
        end
    end
    

    def add(input : Input?, mappedToInput : Input?) : Nil
        super(input, mappedToInput)
        self.set(input, mappedToInput)
    end
    

    def remove(input : Input?, mappedToInput : Input?) : Nil
        @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append(CommonLabels.getInstance().not_nil!.jf_START_LABEL).not_nil!.append(StringUtil.getInstance().not_nil!.toString(input)).not_nil!.append(" == ").not_nil!.append(StringUtil.getInstance().not_nil!.toString(mappedToInput)).not_nil!.toString(), self, "InputToGameKeyMapping::remove")
        super(input, mappedToInput)
        self.set(input, @gameKeyFactory.not_nil!.jf_NONE)
    end
    

    def set(input : Input?, mappedToInput : Input?) : Nil
        id : Int32 = mappedToInput.not_nil!.getId()
        if id >= 0 && id < @platformToGameKeyMapping.not_nil!.size
            @platformToGameKeyMapping.not_nil![id] = JR.cast(input, GameKey)
        end
    end
    

    def getMaxMappable : Int32
        return @platformToGameKeyMapping.not_nil!.size
    end
    

    def getReverseInstance(id : Int) : BasicArrayList?
        id = id.to_i32!
        list : BasicArrayList? = BasicArrayListD.new.jinit_BasicArrayListD()
        inputFactory : InputFactory? = InputFactory.getInstance()
        index : Int32 = 0
        jfor4 = false
        while true
            if jfor4
                index &+= 1
            end
            jfor4 = true
            break unless index < @platformToGameKeyMapping.not_nil!.size
            if @platformToGameKeyMapping.not_nil![index].not_nil!.getId() == id
                input : Input? = inputFactory.not_nil!.getInstanceById(index)
                if !(input).nil?
                    list.not_nil!.add(input)
                end
            end
        end
        return list
    end
    

    def initGameKey(canvas : Canvas?, gameKey : GameKey?) : Nil
        key : Int32 = canvas.not_nil!.getKeyCode(gameKey.not_nil!.getId())
        if key < 0 && JR.neg(key) < @negativePlatformToGameKeyMapping.not_nil!.size
            @negativePlatformToGameKeyMapping.not_nil![JR.neg(key)] = gameKey
        elsif key > 0
            if @platformToGameKeyMapping.not_nil![key] == @gameKeyFactory.not_nil!.jf_NONE
                @platformToGameKeyMapping.not_nil![key] = gameKey
            end
        else
            PreLogUtil.putOE(StringMaker.new.jinit_StringMaker().not_nil!.append(gameKey.not_nil!.toString()).not_nil!.append(CommonSeps.getInstance().not_nil!.jf_COLON_SEP).not_nil!.appendint(key).not_nil!.toString(), self, @commonStrings.not_nil!.jf_INIT, JException.new.jinit_JException())
        end
    end
    

    def getSmallestCanvasGameKeyCode(canvas : Canvas?) : Int32
        nextKey : Int32 = 0
        smallestKey : Int32 = 0
        index : Int32 = @mappedGameKeys.not_nil!.size
        jfor5 = false
        while true
            jfor5 = true
            break unless (index &-= 1) >= 0
            nextKey = canvas.not_nil!.getKeyCode(@mappedGameKeys.not_nil![index].not_nil!.getId())
            if nextKey < smallestKey
                smallestKey = nextKey
            end
        end
        return smallestKey
    end
    

    def init(canvas : Canvas?) : Nil
        begin
            negativePlatformToGameKeyMapping : Array(GameKey?)? = Array(GameKey?).new(0, nil)
            smallestKey : Int32 = self.getSmallestCanvasGameKeyCode(canvas)
            if smallestKey < 0
                smallestKey &-= 1
                if smallestKey < -256
                    smallestKey = -256
                end
                negativePlatformToGameKeyMapping = Array(GameKey?).new(JR.neg(smallestKey), nil)
                index = negativePlatformToGameKeyMapping.not_nil!.size
                jfor6 = false
                while true
                    jfor6 = true
                    break unless (index &-= 1) >= 0
                    negativePlatformToGameKeyMapping.not_nil![index] = @gameKeyFactory.not_nil!.jf_NONE
                end
                @negativePlatformToGameKeyMapping = negativePlatformToGameKeyMapping
            end
            index = @mappedGameKeys.not_nil!.size
            jfor7 = false
            while true
                jfor7 = true
                break unless (index &-= 1) >= 0
                self.initGameKey(canvas, @mappedGameKeys.not_nil![index])
            end
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JThrowable)
                t = jex1.as(JThrowable)
            @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, @commonStrings.not_nil!.jf_INIT, t)
            else
                raise jex1
            end
        end
    end
    

    def getInstanceForCanvas(canvas : Canvas?, id : Int) : GameKey?
        id = id.to_i32!
        if id >= 0 && id < @platformToGameKeyMapping.not_nil!.size
            return @platformToGameKeyMapping.not_nil![id]
        elsif id < 0 && JR.neg(id) < @negativePlatformToGameKeyMapping.not_nil!.size
            return @negativePlatformToGameKeyMapping.not_nil![JR.neg(id)]
        else
            return @gameKeyFactory.not_nil!.jf_NONE
        end
        return nil
    end
    

    def getInstance(id : Int) : GameKey?
        id = id.to_i32!
        if id >= 0 && id < @platformToGameKeyMapping.not_nil!.size
            return @platformToGameKeyMapping.not_nil![id]
        elsif id < 0 && JR.neg(id) < @negativePlatformToGameKeyMapping.not_nil!.size
            return @negativePlatformToGameKeyMapping.not_nil![JR.neg(id)]
        else
            return @gameKeyFactory.not_nil!.jf_NONE
        end
        return nil
    end
end

