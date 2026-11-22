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

class TouchButtonFactory < JObject
    @j_LIST : BasicArrayList? = nil

    def jf_LIST : BasicArrayList?
        @j_LIST
    end

    def jf_LIST=(value : BasicArrayList?) : BasicArrayList?
        @j_LIST = value
    end
    @list : BasicArrayList? = nil

    def jf_list : BasicArrayList?
        @list
    end

    def jf_list=(value : BasicArrayList?) : BasicArrayList?
        @list = value
    end
    @savedList : BasicArrayList? = nil

    def jf_savedList : BasicArrayList?
        @savedList
    end

    def jf_savedList=(value : BasicArrayList?) : BasicArrayList?
        @savedList = value
    end
    @saved : Bool = false

    def jf_saved : Bool
        @saved
    end

    def jf_saved=(value : Bool) : Bool
        @saved = value
    end

    @@jst_SINGLETON : TouchButtonFactory? = nil

    def self.jst_SINGLETON : TouchButtonFactory?
        jclinit
        @@jst_SINGLETON
    end

    def self.jst_SINGLETON=(value : TouchButtonFactory?) : TouchButtonFactory?
        jclinit
        @@jst_SINGLETON = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_SINGLETON = TouchButtonFactory.new.jinit_TouchButtonFactory()
    end
    

    def self.getInstance : TouchButtonFactory?
        return TouchButtonFactory.jst_SINGLETON
    end

    # Java field initializers run after the super constructor
    def jfields_TouchButtonFactory : Nil
    @j_LIST = BasicArrayListUtil.getInstance().not_nil!.getImmutableInstance()
    @list = @j_LIST
    @savedList = @j_LIST
    @saved = false
    end
    

    def jinit_TouchButtonFactory : self
        jfields_TouchButtonFactory()
        self
    end
    

    def defaultList : Nil
        @list = @j_LIST
        self.toggle(false, @j_LIST)
    end
    

    def toggle(save : Bool, list : BasicArrayList?) : Nil
        if list != BasicArrayListUtil.getInstance().not_nil!.getImmutableInstance()
            @savedList = list
            if !@saved
                @list = @savedList
            end
        else
            if save
                if !@saved
                    @saved = true
                    @savedList = @list
                    @list = @j_LIST
                else
                end
            else
                @list = @savedList
                @saved = false
            end
        end
    end
    

    def setList(list : BasicArrayList?) : Nil
        if (list).nil?
            raise (JException.new.jinit_JException("Null List")).not_nil!
        end
        @list = list
    end
    

    def getList : BasicArrayList?
        return @list
    end
end

