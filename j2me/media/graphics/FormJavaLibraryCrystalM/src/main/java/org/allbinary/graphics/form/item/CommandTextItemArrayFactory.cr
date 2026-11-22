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
# package org.allbinary.graphics.form.item

class CommandTextItemArrayFactory < JObject
    @list : BasicArrayList? = nil

    def jf_list : BasicArrayList?
        @list
    end

    def jf_list=(value : BasicArrayList?) : BasicArrayList?
        @list = value
    end
    @visitorInterface : Visitor? = nil

    def jf_visitorInterface : Visitor?
        @visitorInterface
    end

    def jf_visitorInterface=(value : Visitor?) : Visitor?
        @visitorInterface = value
    end

    # Java field initializers run after the super constructor
    def jfields_CommandTextItemArrayFactory : Nil
    @list = BasicArrayListD.new.jinit_BasicArrayListD()
    
    end
    

    def jinit_CommandTextItemArrayFactory(visitorInterface : Visitor?) : self
        jfields_CommandTextItemArrayFactory()
        @visitorInterface = visitorInterface
        self
    end
    

    def getInstance(vector : JAny, backgroundBasicColor : BasicColor?, foregroundBasicColor : BasicColor?) : Array(ABCustomItem?)?
        vectorUtil : VectorUtil? = VectorUtil.getInstance()
        size : Int32 = vectorUtil.not_nil!.getSize(vector)
        @list.not_nil!.clear()
        textItem : CommandTextItem? = nil
        priorityLimit : Int32 = 7
        displayInfo : DisplayInfoSingleton? = DisplayInfoSingleton.getInstance()
        isLargeEnoughDisplayForBigMenu : Bool = (displayInfo.not_nil!.isPortrait() && displayInfo.not_nil!.getLastHeight() >= ScreenInfo.getInstance().not_nil!.jf_MEDIUM_WIDTH) || (!displayInfo.not_nil!.isPortrait() && displayInfo.not_nil!.getLastWidth() >= ScreenInfo.getInstance().not_nil!.jf_MEDIUM_WIDTH)
        if !isLargeEnoughDisplayForBigMenu && size > 3
            priorityLimit = 3
        end
        command : Command? = nil
        index = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < size
            command = JR.cast(vectorUtil.not_nil!.elementAt(vector, index), Command)
            if command.not_nil!.getPriority() < priorityLimit
                aBoolean : JBoolean? = JR.cast(@visitorInterface.not_nil!.visit(command), JBoolean)
                if aBoolean.not_nil!.booleanValue()
                    textItem = CommandTextItem.new.jinit_CommandTextItem(command, ImageItem.jst_LAYOUT_DEFAULT, StringUtil.getInstance().not_nil!.jf_EMPTY_STRING, backgroundBasicColor, foregroundBasicColor)
                    @list.not_nil!.add(textItem)
                end
            end
        end
        textItemArray : Array(ABCustomItem?)? = Array(ABCustomItem?).new(@list.not_nil!.size(), nil)
        size2 : Int32 = textItemArray.not_nil!.size
        index = 0
        jfor2 = false
        while true
            if jfor2
                index &+= 1
            end
            jfor2 = true
            break unless index < size2
            textItemArray.not_nil![index] = JR.cast(@list.not_nil!.jf_objectArray.not_nil![index], ABCustomItem)
        end
        return textItemArray
    end
end

