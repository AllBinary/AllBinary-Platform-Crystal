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

class HighScoresPaintable < Paintable
    include ColorChangeListener
    include UpdateMyFontInterface
    @displayInfoSingleton : DisplayInfoSingleton? = nil

    def jf_displayInfoSingleton : DisplayInfoSingleton?
        @displayInfoSingleton
    end

    def jf_displayInfoSingleton=(value : DisplayInfoSingleton?) : DisplayInfoSingleton?
        @displayInfoSingleton = value
    end
    @myFontProcessor : MyFontProcessor? = nil

    def jf_myFontProcessor : MyFontProcessor?
        @myFontProcessor
    end

    def jf_myFontProcessor=(value : MyFontProcessor?) : MyFontProcessor?
        @myFontProcessor = value
    end
    @basicColor : BasicColor? = nil

    def jf_basicColor : BasicColor?
        @basicColor
    end

    def jf_basicColor=(value : BasicColor?) : BasicColor?
        @basicColor = value
    end
    @highScores : HighScores? = nil

    def jf_highScores : HighScores?
        @highScores
    end

    def jf_highScores=(value : HighScores?) : HighScores?
        @highScores = value
    end
    @anchor : Int32 = 0

    def jf_anchor : Int32
        @anchor
    end

    def jf_anchor=(value : Int32) : Int32
        @anchor = value
    end
    @charHeight : Int32 = 0

    def jf_charHeight : Int32
        @charHeight
    end

    def jf_charHeight=(value : Int32) : Int32
        @charHeight = value
    end

    # Java field initializers run after the super constructor
    def jfields_HighScoresPaintable : Nil
    @displayInfoSingleton = DisplayInfoSingleton.getInstance()
    @myFontProcessor = UpdateMyFontProcessor.new.jinit_UpdateMyFontProcessor(self)
    @basicColor = BasicColorFactory.getInstance().not_nil!.jf_WHITE
    @highScores = NullHighScoresSingletonFactory.getInstance()
    @anchor = Anchor.jst_TOP_LEFT
    
    end
    

    def jinit_HighScoresPaintable : self
        jinit_Paintable()
        jfields_HighScoresPaintable()
        self
    end
    

    def updateMeasurement(graphics : Graphics?) : Nil
        font : Font? = graphics.not_nil!.getFont()
        @charHeight = font.not_nil!.getHeight()
        @myFontProcessor = MyFontProcessor.getInstance()
    end
    

    def onEvent(eventObject : AllBinaryEventObject?) : Nil
        colorChangeEvent : ColorChangeEvent? = JR.cast(eventObject, ColorChangeEvent)
        @basicColor = colorChangeEvent.not_nil!.getBasicColorP()
    end
    

    def paint(graphics : Graphics?) : Nil
        @myFontProcessor.not_nil!.process(graphics)
        width : Int32 = @displayInfoSingleton.not_nil!.getLastWidth()
        height : Int32 = @displayInfoSingleton.not_nil!.getLastHeight()
        graphics.not_nil!.setColor(self.getBasicColorP().not_nil!.intValue())
        heading : String = @highScores.not_nil!.getHeading()
        topScoresWidth : Int32 = (JR.shr(graphics.not_nil!.getFont().not_nil!.stringWidth(heading), 1))
        charHeight : Int32 = @charHeight
        graphics.not_nil!.drawString(heading, (JR.shr(width, 1)) &- topScoresWidth, charHeight, @anchor)
        graphics.not_nil!.drawString(@highScores.not_nil!.getColumnOneHeading(), 10, charHeight &* 3, @anchor)
        columnTwoHeading : String = @highScores.not_nil!.getColumnTwoHeading()
        columnTwoHeadingWidth : Int32 = graphics.not_nil!.getFont().not_nil!.stringWidth(columnTwoHeading)
        graphics.not_nil!.drawString(columnTwoHeading, width &- 10 &- columnTwoHeadingWidth, charHeight &* 3, @anchor)
        index : Int32 = 4
        largestSecondColumnWidth : Int32 = columnTwoHeadingWidth
        list : BasicArrayList? = @highScores.not_nil!.getList()
        size : Int32 = list.not_nil!.size()
        vectorIndex : Int32 = 0
        highScore : HighScore? = nil
        while vectorIndex < size && charHeight &* index < height &- (charHeight &* 2)
            highScore = JR.cast(list.not_nil!.jf_objectArray.not_nil![vectorIndex], HighScore)
            nextScoreWidth : Int32 = graphics.not_nil!.getFont().not_nil!.stringWidth(highScore.not_nil!.getScoreString())
            if nextScoreWidth > largestSecondColumnWidth
                largestSecondColumnWidth = nextScoreWidth
            end
            vectorIndex &+= 1
        end
        vectorIndex = 0
        while vectorIndex < size && charHeight &* index < height &- (charHeight &* 2)
            highScore = JR.cast(list.not_nil!.jf_objectArray.not_nil![vectorIndex], HighScore)
            graphics.not_nil!.drawString(highScore.not_nil!.getName(), 10, charHeight &* index, @anchor)
            graphics.not_nil!.drawString(highScore.not_nil!.getScoreString(), width &- 10 &- largestSecondColumnWidth, charHeight &* index, @anchor)
            index &+= 1
            vectorIndex &+= 1
        end
    end
    

    def setBasicColorP(basicColor : BasicColor?) : Nil
        @basicColor = basicColor
    end
    

    def getBasicColorP : BasicColor?
        return @basicColor
    end
    

    def setHighScores(highScores : HighScores?) : Nil
        @highScores = highScores
    end
end

