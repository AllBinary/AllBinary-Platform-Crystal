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
# package org.allbinary.game.displayable

class GameLevelDisplayChangeEventListenersFactory < JObject
    @list : BasicArrayList? = nil

    def jf_list : BasicArrayList?
        @list
    end

    def jf_list=(value : BasicArrayList?) : BasicArrayList?
        @list = value
    end

    @@jst_instance : GameLevelDisplayChangeEventListenersFactory? = nil

    def self.jst_instance : GameLevelDisplayChangeEventListenersFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : GameLevelDisplayChangeEventListenersFactory?) : GameLevelDisplayChangeEventListenersFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = GameLevelDisplayChangeEventListenersFactory.new.jinit_GameLevelDisplayChangeEventListenersFactory()
    end
    

    def self.getInstance : GameLevelDisplayChangeEventListenersFactory?
        return GameLevelDisplayChangeEventListenersFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_GameLevelDisplayChangeEventListenersFactory : Nil
    @list = BasicArrayListD.new.jinit_BasicArrayListD()
    end

    def jinit_GameLevelDisplayChangeEventListenersFactory : self
        jfields_GameLevelDisplayChangeEventListenersFactory()
        self
    end
    

    def add(displayChangeEventListener : DisplayChangeEventListener?) : Nil
        @list.not_nil!.add(displayChangeEventListener)
        DisplayChangeEventHandler.getInstance().not_nil!.addListenerInterface(displayChangeEventListener)
    end
    

    def clear : Nil
        displayChangeEventHandler : BasicEventHandler? = DisplayChangeEventHandler.getInstance()
        displayChangeEventListener : DisplayChangeEventListener? = nil
        index : Int32 = @list.not_nil!.size()
        jfor1 = false
        while true
            jfor1 = true
            break unless (index &-= 1) >= 0
            displayChangeEventListener = JR.cast(@list.not_nil!.jf_objectArray.not_nil![index], DisplayChangeEventListener)
            displayChangeEventHandler.not_nil!.removeListener(displayChangeEventListener)
        end
        @list.not_nil!.clear()
    end
end

