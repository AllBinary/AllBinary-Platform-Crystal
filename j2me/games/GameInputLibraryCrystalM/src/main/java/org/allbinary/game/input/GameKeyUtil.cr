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
# package org.allbinary.game.input

class GameKeyUtil < JObject

    @@jst_instance : GameKeyUtil? = nil

    def self.jst_instance : GameKeyUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : GameKeyUtil?) : GameKeyUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = GameKeyUtil.new.jinit_GameKeyUtil()
    end
    

    def self.getInstance : GameKeyUtil?
        return GameKeyUtil.jst_instance
    end

    def jinit_GameKeyUtil : self
        self
    end
    

    def isDirectionKey(key : Int) : Bool
        key = key.to_i32!
        if key == Canvas.jst_UP || key == Canvas.jst_DOWN || key == Canvas.jst_LEFT || key == Canvas.jst_RIGHT
            return true
        else
            return false
        end
        return false
    end
end

