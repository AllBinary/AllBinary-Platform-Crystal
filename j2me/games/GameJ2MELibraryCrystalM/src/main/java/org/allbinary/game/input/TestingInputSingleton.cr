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

class TestingInputSingleton < AllBinaryGameLayer
    include GameInputInterface
    @inputProcessorArray : Array(GameInputProcessor?)? = nil

    def jf_inputProcessorArray : Array(GameInputProcessor?)?
        @inputProcessorArray
    end

    def jf_inputProcessorArray=(value : Array(GameInputProcessor?)?) : Array(GameInputProcessor?)?
        @inputProcessorArray = value
    end
    @testInputPaintable : PaintableInterface? = nil

    def jf_testInputPaintable : PaintableInterface?
        @testInputPaintable
    end

    def jf_testInputPaintable=(value : PaintableInterface?) : PaintableInterface?
        @testInputPaintable = value
    end

    @@jst_instance : TestingInputSingleton? = nil

    def self.jst_instance : TestingInputSingleton?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : TestingInputSingleton?) : TestingInputSingleton?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = TestingInputSingleton.new.jinit_TestingInputSingleton()
    end
    

    def self.getInstance : TestingInputSingleton?
        return TestingInputSingleton.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_TestingInputSingleton : Nil
    @inputProcessorArray = Array(GameInputProcessor?).new(InputFactory.getInstance().not_nil!.jf_MAX, nil)
    @testInputPaintable = NullPaintable.getInstance()
    end
    

    def jinit_TestingInputSingleton : self
        jinit_AllBinaryGameLayer(StringUtil.getInstance().not_nil!.jf_EMPTY_STRING, RectangleFactory.jst_SINGLETON, ViewPosition.getInstanceD())
        jfields_TestingInputSingleton()
        GameInputProcessorUtil.init(@inputProcessorArray)
        self
    end
    

    def initInputProcessors : Nil
    end
    

    def initInputProcessorsForTestInput(aTestInputInterface : TestInputInterface?) : Nil
        testInputInterface : TestInputInterface? = aTestInputInterface
        @testInputPaintable = JR.cast(testInputInterface, PaintableInterface)
        @inputProcessorArray.not_nil![Canvas.jst_UP] = TestingInputSingleton_j1.new.jinit_TestingInputSingleton_j1(self, testInputInterface)
        @inputProcessorArray.not_nil![Canvas.jst_DOWN] = TestingInputSingleton_j2.new.jinit_TestingInputSingleton_j2(self, testInputInterface)
        @inputProcessorArray.not_nil![Canvas.jst_LEFT] = TestingInputSingleton_j3.new.jinit_TestingInputSingleton_j3(self, testInputInterface)
        @inputProcessorArray.not_nil![Canvas.jst_RIGHT] = TestingInputSingleton_j4.new.jinit_TestingInputSingleton_j4(self, testInputInterface)
        @inputProcessorArray.not_nil![Canvas.jst_KEY_NUM7] = TestingInputSingleton_j5.new.jinit_TestingInputSingleton_j5(self, testInputInterface)
        @inputProcessorArray.not_nil![Canvas.jst_KEY_NUM9] = TestingInputSingleton_j6.new.jinit_TestingInputSingleton_j6(self, testInputInterface)
        GameInputProcessorUtil.init(@inputProcessorArray)
    end
    

    def processInputList(allbinaryLayerManager : AllBinaryLayerManager?, list : BasicArrayList?) : Nil
        key : Int32 = 0
        gameKeyEvent : GameKeyEvent? = nil
        size : Int32 = list.not_nil!.size()
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < size
            gameKeyEvent = (JR.cast(list.not_nil!.jf_objectArray.not_nil![index], GameKeyEvent))
            key = gameKeyEvent.not_nil!.getKey()
            @inputProcessorArray.not_nil![key].not_nil!.processEvent(allbinaryLayerManager, GameKeyEvent.jst_NONE)
        end
    end
    

    def processInput(allbinaryLayerManager : AllBinaryLayerManager?) : Nil
        self.processInputList(allbinaryLayerManager, self.getGameKeyEventList())
        self.getGameKeyEventList().not_nil!.clear()
    end
    

    def paint(graphics : Graphics?) : Nil
        @testInputPaintable.not_nil!.paint(graphics)
    end
    

    def implmentsGameInputInterface : Bool
        return true
    end
end

class TestingInputSingleton_j1 < GameInputProcessor
    @jouter : TestingInputSingleton? = nil
    @testInputInterface : TestInputInterface? = nil

    def jinit_TestingInputSingleton_j1(jouter : TestingInputSingleton?, testInputInterface : TestInputInterface?) : self
        @jouter = jouter
        @testInputInterface = testInputInterface
        jinit_GameInputProcessor()
        self
    end


            def processEvent(allbinaryLayerManager : AllBinaryLayerManager?, gameKeyEvent : GameKeyEvent?) : Nil
                @testInputInterface.not_nil!.up()
            end
end

class TestingInputSingleton_j2 < GameInputProcessor
    @jouter : TestingInputSingleton? = nil
    @testInputInterface : TestInputInterface? = nil

    def jinit_TestingInputSingleton_j2(jouter : TestingInputSingleton?, testInputInterface : TestInputInterface?) : self
        @jouter = jouter
        @testInputInterface = testInputInterface
        jinit_GameInputProcessor()
        self
    end


            def processEvent(allbinaryLayerManager : AllBinaryLayerManager?, gameKeyEvent : GameKeyEvent?) : Nil
                @testInputInterface.not_nil!.down()
            end
end

class TestingInputSingleton_j3 < GameInputProcessor
    @jouter : TestingInputSingleton? = nil
    @testInputInterface : TestInputInterface? = nil

    def jinit_TestingInputSingleton_j3(jouter : TestingInputSingleton?, testInputInterface : TestInputInterface?) : self
        @jouter = jouter
        @testInputInterface = testInputInterface
        jinit_GameInputProcessor()
        self
    end


            def processEvent(allbinaryLayerManager : AllBinaryLayerManager?, gameKeyEvent : GameKeyEvent?) : Nil
                @testInputInterface.not_nil!.left()
            end
end

class TestingInputSingleton_j4 < GameInputProcessor
    @jouter : TestingInputSingleton? = nil
    @testInputInterface : TestInputInterface? = nil

    def jinit_TestingInputSingleton_j4(jouter : TestingInputSingleton?, testInputInterface : TestInputInterface?) : self
        @jouter = jouter
        @testInputInterface = testInputInterface
        jinit_GameInputProcessor()
        self
    end


            def processEvent(allbinaryLayerManager : AllBinaryLayerManager?, gameKeyEvent : GameKeyEvent?) : Nil
                @testInputInterface.not_nil!.right()
            end
end

class TestingInputSingleton_j5 < GameInputProcessor
    @jouter : TestingInputSingleton? = nil
    @testInputInterface : TestInputInterface? = nil

    def jinit_TestingInputSingleton_j5(jouter : TestingInputSingleton?, testInputInterface : TestInputInterface?) : self
        @jouter = jouter
        @testInputInterface = testInputInterface
        jinit_GameInputProcessor()
        self
    end


            def processEvent(allbinaryLayerManager : AllBinaryLayerManager?, gameKeyEvent : GameKeyEvent?) : Nil
                @testInputInterface.not_nil!.strafeLeft()
            end
end

class TestingInputSingleton_j6 < GameInputProcessor
    @jouter : TestingInputSingleton? = nil
    @testInputInterface : TestInputInterface? = nil

    def jinit_TestingInputSingleton_j6(jouter : TestingInputSingleton?, testInputInterface : TestInputInterface?) : self
        @jouter = jouter
        @testInputInterface = testInputInterface
        jinit_GameInputProcessor()
        self
    end


            def processEvent(allbinaryLayerManager : AllBinaryLayerManager?, gameKeyEvent : GameKeyEvent?) : Nil
                @testInputInterface.not_nil!.strafeRight()
            end
end

