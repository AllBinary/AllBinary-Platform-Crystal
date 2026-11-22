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
# package org.allbinary.game.paint

class AboutPaintable < Paintable
    include UpdateMyFontInterface
    @displayInfoSingleton : DisplayInfoSingleton? = nil

    def jf_displayInfoSingleton : DisplayInfoSingleton?
        @displayInfoSingleton
    end

    def jf_displayInfoSingleton=(value : DisplayInfoSingleton?) : DisplayInfoSingleton?
        @displayInfoSingleton = value
    end
    @j_ABOUT : String = ""

    def jf_ABOUT : String
        @j_ABOUT
    end

    def jf_ABOUT=(value : String) : String
        @j_ABOUT = value
    end
    @info : Array(String)? = nil

    def jf_info : Array(String)?
        @info
    end

    def jf_info=(value : Array(String)?) : Array(String)?
        @info = value
    end
    @developers : Array(String)? = nil

    def jf_developers : Array(String)?
        @developers
    end

    def jf_developers=(value : Array(String)?) : Array(String)?
        @developers = value
    end
    @paintableArray : Array(Paintable?)? = nil

    def jf_paintableArray : Array(Paintable?)?
        @paintableArray
    end

    def jf_paintableArray=(value : Array(Paintable?)?) : Array(Paintable?)?
        @paintableArray = value
    end
    @myFontProcessor : MyFontProcessor? = nil

    def jf_myFontProcessor : MyFontProcessor?
        @myFontProcessor
    end

    def jf_myFontProcessor=(value : MyFontProcessor?) : MyFontProcessor?
        @myFontProcessor = value
    end
    @charHeight : Int32 = 0

    def jf_charHeight : Int32
        @charHeight
    end

    def jf_charHeight=(value : Int32) : Int32
        @charHeight = value
    end
    @aboutBeginWidth : Int32 = 0

    def jf_aboutBeginWidth : Int32
        @aboutBeginWidth
    end

    def jf_aboutBeginWidth=(value : Int32) : Int32
        @aboutBeginWidth = value
    end
    @infoBeginWidth : Array(Int32)? = nil

    def jf_infoBeginWidth : Array(Int32)?
        @infoBeginWidth
    end

    def jf_infoBeginWidth=(value : Array(Int32)?) : Array(Int32)?
        @infoBeginWidth = value
    end
    @developersBeginWidth : Array(Int32)? = nil

    def jf_developersBeginWidth : Array(Int32)?
        @developersBeginWidth
    end

    def jf_developersBeginWidth=(value : Array(Int32)?) : Array(Int32)?
        @developersBeginWidth = value
    end
    @anchor : Int32 = 0

    def jf_anchor : Int32
        @anchor
    end

    def jf_anchor=(value : Int32) : Int32
        @anchor = value
    end
    

    def self.getInstance(info : Array(String)?, developers : Array(String)?) : AboutPaintable?
        return AboutPaintable.new.jinit_AboutPaintable(info, developers)
    end

    # Java field initializers run after the super constructor
    def jfields_AboutPaintable : Nil
    @displayInfoSingleton = DisplayInfoSingleton.getInstance()
    @j_ABOUT = CanvasStrings.getInstance().not_nil!.jf_ABOUT
    
    
    @paintableArray = [self] of Paintable?
    @myFontProcessor = UpdateMyFontProcessor.new.jinit_UpdateMyFontProcessor(self)
    
    
    
    
    @anchor = Anchor.jst_TOP_LEFT
    end
    

    def jinit_AboutPaintable(info : Array(String)?, developers : Array(String)?) : self
        jinit_Paintable()
        jfields_AboutPaintable()
        @info = info
        @infoBeginWidth = Array(Int32).new(@info.not_nil!.size, 0)
        @developers = developers
        @developersBeginWidth = Array(Int32).new(@developers.not_nil!.size, 0)
        self
    end
    

    def updateMeasurement(graphics : Graphics?) : Nil
        font : Font? = graphics.not_nil!.getFont()
        @charHeight = font.not_nil!.getHeight()
        @aboutBeginWidth = (JR.shr(font.not_nil!.stringWidth(@j_ABOUT), 1))
        infoSize : Int32 = @info.not_nil!.size
        index = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < infoSize
            @infoBeginWidth.not_nil![index] = (JR.shr(font.not_nil!.stringWidth(@info.not_nil![index]), 1))
        end
        size : Int32 = @developers.not_nil!.size
        index = 0
        jfor2 = false
        while true
            if jfor2
                index &+= 1
            end
            jfor2 = true
            break unless index < size
            @developersBeginWidth.not_nil![index] = (JR.shr(font.not_nil!.stringWidth(@developers.not_nil![index]), 1))
        end
        @myFontProcessor = MyFontProcessor.getInstance()
    end
    

    def getPaintableArrayInstance : Array(Paintable?)?
        return @paintableArray
    end
    

    def paint(graphics : Graphics?) : Nil
        @myFontProcessor.not_nil!.process(graphics)
        halfWidth : Int32 = @displayInfoSingleton.not_nil!.getLastHalfWidth()
        graphics.not_nil!.drawString(@j_ABOUT, halfWidth &- @aboutBeginWidth, 2 &* @charHeight, @anchor)
        infoSize : Int32 = @info.not_nil!.size
        index = 0
        jfor3 = false
        while true
            if jfor3
                index &+= 1
            end
            jfor3 = true
            break unless index < infoSize
            graphics.not_nil!.drawString(@info.not_nil![index], halfWidth &- @infoBeginWidth.not_nil![index], (4 &+ index) &* @charHeight, @anchor)
        end
        size : Int32 = @developers.not_nil!.size
        index = 0
        jfor4 = false
        while true
            if jfor4
                index &+= 1
            end
            jfor4 = true
            break unless index < size
            graphics.not_nil!.drawString(@developers.not_nil![index], halfWidth &- @developersBeginWidth.not_nil![index], (5 &+ infoSize &+ index) &* @charHeight, @anchor)
        end
    end
end

