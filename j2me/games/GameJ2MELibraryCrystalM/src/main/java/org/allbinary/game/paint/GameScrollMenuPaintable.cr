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

class GameScrollMenuPaintable < BasicGameDemoPaintable
    include ColorChangeListener
    

    def jinit_GameScrollMenuPaintable(mainDemoStatePaintable : Paintable?, ownershipPaintable : Paintable?, helpPaintableInterface : Paintable?, basicColor : BasicColor?) : self
        jinit_BasicGameDemoPaintable(mainDemoStatePaintable, ownershipPaintable, helpPaintableInterface)
        self.setColor(basicColor)
        ColorChangeEventHandler.getInstance().not_nil!.addListenerInterface(self)
        self
    end
    

    def setState(state : Int) : Nil
        state = state.to_i32!
        self.setCurrentStatePaintable(self.getMainDemoStatePaintable())
    end
    

    def onEvent(eventObject : AllBinaryEventObject?) : Nil
    end
    

    def setColor(basicColor : BasicColor?) : Nil
        mainGameDemoStatePaintable : MainGameDemoStatePaintable? = JR.cast(self.getMainDemoStatePaintable(), MainGameDemoStatePaintable)
        formPaintable : FormPaintable? = JR.cast(mainGameDemoStatePaintable.not_nil!.getMenuPaintableInterface(), FormPaintable)
        scrollSelectionForm : ScrollSelectionForm? = JR.cast(formPaintable.not_nil!.getForm(), ScrollSelectionForm)
        mainGameDemoStatePaintable.not_nil!.getOwnershipPaintableInterface().not_nil!.setBasicColorP(basicColor)
        scrollSelectionForm.not_nil!.setButtonBasicColor(basicColor)
        item : ABTextItem? = nil
        stringComponent : ABStringComponent? = nil
        index : Int32 = scrollSelectionForm.not_nil!.size() &- 1
        jfor1 = false
        while true
            if jfor1
                index &-= 1
            end
            jfor1 = true
            break unless index >= 0
            item = JR.cast(scrollSelectionForm.not_nil!.get(index), ABTextItem)
            stringComponent = item.not_nil!.getLabelStringComponent()
            if !(stringComponent).nil?
                stringComponent.not_nil!.setForegroundBasicColor(basicColor)
            end
        end
    end
end

