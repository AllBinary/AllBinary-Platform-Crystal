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
# package org.allbinary.input.motion.button

class CurrentlyPressedTouchButtonSingleton < JObject
    @list : BasicArrayList? = nil

    def jf_list : BasicArrayList?
        @list
    end

    def jf_list=(value : BasicArrayList?) : BasicArrayList?
        @list = value
    end

    @@jst_instance : CurrentlyPressedTouchButtonSingleton? = nil

    def self.jst_instance : CurrentlyPressedTouchButtonSingleton?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : CurrentlyPressedTouchButtonSingleton?) : CurrentlyPressedTouchButtonSingleton?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = CurrentlyPressedTouchButtonSingleton.new.jinit_CurrentlyPressedTouchButtonSingleton()
    end
    

    def self.getInstance : CurrentlyPressedTouchButtonSingleton?
        return CurrentlyPressedTouchButtonSingleton.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_CurrentlyPressedTouchButtonSingleton : Nil
    @list = BasicArrayListD.new.jinit_BasicArrayListD()
    end
    

    def jinit_CurrentlyPressedTouchButtonSingleton : self
        jfields_CurrentlyPressedTouchButtonSingleton()
        self
    end
    

    def size : Int32
        return @list.not_nil!.size()
    end
    

    def removeAt(index : Int) : TouchButtonInput?
        index = index.to_i32!
        return JR.cast(@list.not_nil!.removeAt(index), TouchButtonInput)
    end
    

    def remove(touchButtonInput : TouchButtonInput?) : Bool
        return @list.not_nil!.remove(touchButtonInput)
    end
    

    def get(index : Int) : TouchButtonInput?
        index = index.to_i32!
        return JR.cast(@list.not_nil!.jf_objectArray.not_nil![index], TouchButtonInput)
    end
    

    def contains(touchButtonInput : TouchButtonInput?) : Bool
        return @list.not_nil!.contains(touchButtonInput)
    end
    

    def add(touchButtonInput : TouchButtonInput?) : Nil
        @list.not_nil!.add(touchButtonInput)
    end
end

