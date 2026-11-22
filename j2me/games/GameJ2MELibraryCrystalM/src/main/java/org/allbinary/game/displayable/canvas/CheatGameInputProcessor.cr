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
# package org.allbinary.game.displayable.canvas

class CheatGameInputProcessor < PlayerGameInput
    @j_PROCESS_GAME : String = ""

    def jf_PROCESS_GAME : String
        @j_PROCESS_GAME
    end

    def jf_PROCESS_GAME=(value : String) : String
        @j_PROCESS_GAME = value
    end
    @gameCanvas : AllBinaryGameCanvas? = nil

    def jf_gameCanvas : AllBinaryGameCanvas?
        @gameCanvas
    end

    def jf_gameCanvas=(value : AllBinaryGameCanvas?) : AllBinaryGameCanvas?
        @gameCanvas = value
    end
    @gameKeyFactory : GameKeyFactory? = nil

    def jf_gameKeyFactory : GameKeyFactory?
        @gameKeyFactory
    end

    def jf_gameKeyFactory=(value : GameKeyFactory?) : GameKeyFactory?
        @gameKeyFactory = value
    end

    @@jst_inputProcessor : SpecialGameInputInterface? = nil

    def self.jst_inputProcessor : SpecialGameInputInterface?
        jclinit
        @@jst_inputProcessor
    end

    def self.jst_inputProcessor=(value : SpecialGameInputInterface?) : SpecialGameInputInterface?
        jclinit
        @@jst_inputProcessor = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_inputProcessor = SpecialGameInputFactory.jst_NO_SPECIAL_GAME_INPUT
    end

    # Java field initializers run after the super constructor
    def jfields_CheatGameInputProcessor : Nil
    @j_PROCESS_GAME = "processGame"
    
    @gameKeyFactory = GameKeyFactory.getInstance()
    end
    

    def jinit_CheatGameInputProcessor(gameCanvas : AllBinaryGameCanvas?) : self
        jinit_PlayerGameInput(BasicArrayListD.new.jinit_BasicArrayListD(), BasicArrayListD.new.jinit_BasicArrayListD(), -1)
        jfields_CheatGameInputProcessor()
        @gameCanvas = gameCanvas
        self
    end
    

    def update : Nil
        begin
            gameLayerManager : AllBinaryGameLayerManager? = @gameCanvas.not_nil!.getLayerManager()
            list : BasicArrayList? = self.getGameKeyEventList()
            size : Int32 = list.not_nil!.size()
            index : Int32 = 0
            jfor1 = false
            while true
                if jfor1
                    index &+= 1
                end
                jfor1 = true
                break unless index < size
                anyType : JAny = list.not_nil!.jf_objectArray.not_nil![index]
                key : Int32 = GameKeyEventUtil.getKey(anyType)
                if key == @gameKeyFactory.not_nil!.jf_LEVEL_DOWN.not_nil!.getId()
                    CheatGameInputProcessor.jst_inputProcessor.not_nil!.strafeLeft()
                    break
                elsif key == @gameKeyFactory.not_nil!.jf_LEVEL_UP.not_nil!.getId()
                    CheatGameInputProcessor.jst_inputProcessor.not_nil!.strafeRight()
                    break
                end
                if key == @gameKeyFactory.not_nil!.jf_LEFT.not_nil!.getId()
                    CheatGameInputProcessor.jst_inputProcessor.not_nil!.left()
                    break
                elsif key == @gameKeyFactory.not_nil!.jf_RIGHT.not_nil!.getId()
                    CheatGameInputProcessor.jst_inputProcessor.not_nil!.right()
                    break
                elsif key == @gameKeyFactory.not_nil!.jf_UP.not_nil!.getId()
                    CheatGameInputProcessor.jst_inputProcessor.not_nil!.up()
                    break
                elsif key == @gameKeyFactory.not_nil!.jf_DOWN.not_nil!.getId()
                    CheatGameInputProcessor.jst_inputProcessor.not_nil!.down()
                    break
                elsif key == @gameKeyFactory.not_nil!.jf_KEY_NUM1.not_nil!.getId()
                    CheatGameInputProcessor.jst_inputProcessor.not_nil!.special1(gameLayerManager, GameKeyEvent.jst_NONE)
                    break
                elsif key == @gameKeyFactory.not_nil!.jf_KEY_NUM3.not_nil!.getId()
                    CheatGameInputProcessor.jst_inputProcessor.not_nil!.special2(gameLayerManager, GameKeyEvent.jst_NONE)
                    break
                end
            end
            list.not_nil!.clear()
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, @commonStrings.not_nil!.jf_UPDATE, e)
            else
                raise jex1
            end
        end
    end
end

