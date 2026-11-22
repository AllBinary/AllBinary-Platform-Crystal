# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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

class NullDemoPaintable < JObject
    include DemoPaintableInterface

    @@jst_NULL_DEMO_PAINTABLE : NullDemoPaintable? = nil

    def self.jst_NULL_DEMO_PAINTABLE : NullDemoPaintable?
        jclinit
        @@jst_NULL_DEMO_PAINTABLE
    end

    def self.jst_NULL_DEMO_PAINTABLE=(value : NullDemoPaintable?) : NullDemoPaintable?
        jclinit
        @@jst_NULL_DEMO_PAINTABLE = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_DEMO_PAINTABLE = NullDemoPaintable.new.jinit_NullDemoPaintable()
    end

    def jinit_NullDemoPaintable : self
        self
    end
    

    def showGamePaintable : Nil
    end
end

