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

class GameInputMappingInstructionsCanvas < GameCommandCanvas
    @drawStringUtil : DrawStringUtil? = nil

    def jf_drawStringUtil : DrawStringUtil?
        @drawStringUtil
    end

    def jf_drawStringUtil=(value : DrawStringUtil?) : DrawStringUtil?
        @drawStringUtil = value
    end
    @j_TITLE : String = ""

    def jf_TITLE : String
        @j_TITLE
    end

    def jf_TITLE=(value : String) : String
        @j_TITLE = value
    end
    @instructions : Array(String)? = nil

    def jf_instructions : Array(String)?
        @instructions
    end

    def jf_instructions=(value : Array(String)?) : Array(String)?
        @instructions = value
    end
    @colorFillPaintable : ColorFillBasePaintable? = nil

    def jf_colorFillPaintable : ColorFillBasePaintable?
        @colorFillPaintable
    end

    def jf_colorFillPaintable=(value : ColorFillBasePaintable?) : ColorFillBasePaintable?
        @colorFillPaintable = value
    end
    @anchor : Int32 = 0

    def jf_anchor : Int32
        @anchor
    end

    def jf_anchor=(value : Int32) : Int32
        @anchor = value
    end

    @@jst_DISPLAY : Command? = nil

    def self.jst_DISPLAY : Command?
        jclinit
        @@jst_DISPLAY
    end

    def self.jst_DISPLAY=(value : Command?) : Command?
        jclinit
        @@jst_DISPLAY = value
    end

    @@jst_CLOSE : Command? = nil

    def self.jst_CLOSE : Command?
        jclinit
        @@jst_CLOSE
    end

    def self.jst_CLOSE=(value : Command?) : Command?
        jclinit
        @@jst_CLOSE = value
    end

    def self.jst_NAME : String
        "GameInputMappingInstructionsCanvas"
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_DISPLAY = Command.new.jinit_Command("Help", StringUtil.getInstance().not_nil!.jf_EMPTY_STRING, Command.jst_SCREEN, 1)
        @@jst_CLOSE = Command.new.jinit_Command("Close", StringUtil.getInstance().not_nil!.jf_EMPTY_STRING, Command.jst_SCREEN, 1)
        
    end

    # Java field initializers run after the super constructor
    def jfields_GameInputMappingInstructionsCanvas : Nil
    @drawStringUtil = DrawStringUtil.getInstance()
    @j_TITLE = "Input Instructions"
    @instructions = ["Add Input Mapping:", "1. Select the desired action by generating a currently defined input for a given action.", "(Example: Press the '1' key to select the Fire action)", "2. Make the newly desired input for the selected action.", "(Example: Press 'f' to add it to the selected action)", "Note: If the input is already mapped to another action then it will not be added. You", "will need to deleted from the other action before adding it to another.", "Warning: Not all keys map for a given platform and show as Unknown.", StringUtil.getInstance().not_nil!.jf_EMPTY_STRING, "Remove Input Mapping:", "1. Select the desired action by generating a currently defined input for a given action.", "(Example: Press the key '1' to select the Fire action)", "2. Select a mapped input for the selected action.", "(Example: Press the key '1' to select the '1' key input for the selected Fire action)", "3. Press the Delete Key."] of String
    
    @anchor = Anchor.jst_TOP_LEFT
    end
    

    def jinit_GameInputMappingInstructionsCanvas(commandListener : CommandListener?, allBinaryGameLayerManager : AllBinaryGameLayerManager?) : self
        jinit_GameCommandCanvas(commandListener, GameInputMappingInstructionsCanvas.jst_NAME, allBinaryGameLayerManager.not_nil!.getBackgroundBasicColor(), allBinaryGameLayerManager.not_nil!.getForegroundBasicColor())
        jfields_GameInputMappingInstructionsCanvas()
        @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_START, self, @commonStrings.not_nil!.jf_CONSTRUCTOR)
        @colorFillPaintable = ColorFillPaintableFactory.getInstance().not_nil!.getInstance(allBinaryGameLayerManager.not_nil!.getBackgroundBasicColor(), false)
        self
    end
    

    def initCommands(cmdListener : CommandListener?) : Nil
        self.removeAllCommands()
        self.addCommand(GameInputMappingInstructionsCanvas.jst_CLOSE)
        self.setCommandListener(cmdListener)
    end
    

    def paint(graphics : Graphics?) : Nil
        @myFontProcessor.not_nil!.process(graphics)
        @colorFillPaintable.not_nil!.paint(graphics)
        halfWidth : Int32 = @displayInfo.not_nil!.getLastHalfWidth()
        beginWidth : Int32 = (JR.shr(graphics.not_nil!.getFont().not_nil!.stringWidth(@j_TITLE), 1))
        graphics.not_nil!.setColor(@foregroundColor)
        graphics.not_nil!.drawString(@j_TITLE, halfWidth &- beginWidth, @fontHeight, @anchor)
        @drawStringUtil.not_nil!.drawCenterStrings(graphics, @instructions, @displayInfo.not_nil!.getLastWidth(), @fontHeight, halfWidth, 3 * @fontHeight)
        super(graphics)
    end
end

