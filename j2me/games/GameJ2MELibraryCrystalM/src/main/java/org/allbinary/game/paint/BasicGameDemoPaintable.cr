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

class BasicGameDemoPaintable < StatePaintable
    @mainDemoStatePaintable : Paintable? = nil

    def jf_mainDemoStatePaintable : Paintable?
        @mainDemoStatePaintable
    end

    def jf_mainDemoStatePaintable=(value : Paintable?) : Paintable?
        @mainDemoStatePaintable = value
    end
    @ownershipPaintable : Paintable? = nil

    def jf_ownershipPaintable : Paintable?
        @ownershipPaintable
    end

    def jf_ownershipPaintable=(value : Paintable?) : Paintable?
        @ownershipPaintable = value
    end
    @helpPaintableInterface : Paintable? = nil

    def jf_helpPaintableInterface : Paintable?
        @helpPaintableInterface
    end

    def jf_helpPaintableInterface=(value : Paintable?) : Paintable?
        @helpPaintableInterface = value
    end
    @currentStatePaintable : Paintable? = nil

    def jf_currentStatePaintable : Paintable?
        @currentStatePaintable
    end

    def jf_currentStatePaintable=(value : Paintable?) : Paintable?
        @currentStatePaintable = value
    end

    # Java field initializers run after the super constructor
    def jfields_BasicGameDemoPaintable : Nil
    
    
    
    @currentStatePaintable = NullPaintable.getInstance()
    end
    

    def jinit_BasicGameDemoPaintable(mainDemoStatePaintable : Paintable?, ownershipPaintable : Paintable?, helpPaintableInterface : Paintable?) : self
        jinit_StatePaintable()
        jfields_BasicGameDemoPaintable()
        @mainDemoStatePaintable = mainDemoStatePaintable
        self.setCurrentStatePaintable(NullPaintable.getInstance())
        @ownershipPaintable = ownershipPaintable
        @helpPaintableInterface = helpPaintableInterface
        self
    end
    

    def setState(state : Int) : Nil
        state = state.to_i32!
        if state == 0
            self.setCurrentStatePaintable(self.getMainDemoStatePaintable())
        elsif state == 1
            self.setCurrentStatePaintable(@helpPaintableInterface)
        else
            self.setCurrentStatePaintable(@ownershipPaintable)
        end
    end
    

    def paint(graphics : Graphics?) : Nil
        self.getCurrentStatePaintable().not_nil!.paint(graphics)
    end
    

    def getHelpPaintableInterface : Paintable?
        return @helpPaintableInterface
    end
    

    def setCurrentStatePaintable(currentStatePaintable : Paintable?) : Nil
        @currentStatePaintable = currentStatePaintable
    end
    

    def getCurrentStatePaintable : Paintable?
        return @currentStatePaintable
    end
    

    def getMainDemoStatePaintable : Paintable?
        return @mainDemoStatePaintable
    end
end

