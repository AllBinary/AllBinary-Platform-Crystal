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

class HighScoresCanvasLevelChangeInputProcessor < HighScoresCanvasInputProcessor
    include UpdateMyFontInterface
    @displayInfoSingleton : DisplayInfoSingleton? = nil

    def jf_displayInfoSingleton : DisplayInfoSingleton?
        @displayInfoSingleton
    end

    def jf_displayInfoSingleton=(value : DisplayInfoSingleton?) : DisplayInfoSingleton?
        @displayInfoSingleton = value
    end
    @j_INSTRUCTIONS : String = ""

    def jf_INSTRUCTIONS : String
        @j_INSTRUCTIONS
    end

    def jf_INSTRUCTIONS=(value : String) : String
        @j_INSTRUCTIONS = value
    end
    @myFontProcessor : MyFontProcessor? = nil

    def jf_myFontProcessor : MyFontProcessor?
        @myFontProcessor
    end

    def jf_myFontProcessor=(value : MyFontProcessor?) : MyFontProcessor?
        @myFontProcessor = value
    end
    @anchor : Int32 = 0

    def jf_anchor : Int32
        @anchor
    end

    def jf_anchor=(value : Int32) : Int32
        @anchor = value
    end
    @fontHeight : Int32 = 0

    def jf_fontHeight : Int32
        @fontHeight
    end

    def jf_fontHeight=(value : Int32) : Int32
        @fontHeight = value
    end

    # Java field initializers run after the super constructor
    def jfields_HighScoresCanvasLevelChangeInputProcessor : Nil
    @displayInfoSingleton = DisplayInfoSingleton.getInstance()
    @j_INSTRUCTIONS = "(Right = Next Track, Left = Previous Track)"
    @myFontProcessor = UpdateMyFontProcessor.new.jinit_UpdateMyFontProcessor(self)
    @anchor = Anchor.jst_TOP_LEFT
    @fontHeight = 0
    end
    

    def jinit_HighScoresCanvasLevelChangeInputProcessor(highScoresCanvas : HighScoresCanvas?) : self
        jinit_HighScoresCanvasInputProcessor(highScoresCanvas)
        jfields_HighScoresCanvasLevelChangeInputProcessor()
        self
    end
    

    def updateMeasurement(graphics : Graphics?) : Nil
        font : Font? = graphics.not_nil!.getFont()
        @fontHeight = font.not_nil!.getHeight()
        @myFontProcessor = MyFontProcessor.getInstance()
    end
    

    def open : Nil
        GameKeyEventHandler.getInstance().not_nil!.addListener(self)
    end
    

    def close : Nil
        GameKeyEventHandler.getInstance().not_nil!.removeListener(self)
    end
    

    def update : Nil
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
            if key == Canvas.jst_RIGHT
                self.getHighScoresCanvas().not_nil!.getGameInfo().not_nil!.nextGameLevel()
            elsif key == Canvas.jst_LEFT
                self.getHighScoresCanvas().not_nil!.getGameInfo().not_nil!.previousGameLevel()
            end
            self.getHighScoresCanvas().not_nil!.executeUpdate()
        end
        list.not_nil!.clear()
    end
    

    def paint(graphics : Graphics?) : Nil
        @myFontProcessor.not_nil!.process(graphics)
        width : Int32 = @displayInfoSingleton.not_nil!.getLastWidth()
        topScoresWidth : Int32 = (JR.shr(graphics.not_nil!.getFont().not_nil!.stringWidth(@j_INSTRUCTIONS), 1))
        graphics.not_nil!.drawString(@j_INSTRUCTIONS, (JR.shr(width, 1)) &- topScoresWidth, @fontHeight &* 2, @anchor)
    end
end

