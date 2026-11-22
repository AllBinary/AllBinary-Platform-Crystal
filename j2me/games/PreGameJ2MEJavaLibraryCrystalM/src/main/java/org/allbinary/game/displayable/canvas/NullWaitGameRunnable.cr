# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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

class NullWaitGameRunnable < GameRunnable

    @@jst_instance : GameRunnable? = nil

    def self.jst_instance : GameRunnable?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : GameRunnable?) : GameRunnable?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = NullWaitGameRunnable.new.jinit_NullWaitGameRunnable()
    end
    

    def self.getInstance : GameRunnable?
        return NullWaitGameRunnable.jst_instance
    end

    def jinit_NullWaitGameRunnable : self
        jinit_GameRunnable()
        self
    end
end

