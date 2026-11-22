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
# package org.allbinary.media.audio

class PlayerQueue < JObject
    @commonStrings : CommonStrings? = nil

    def jf_commonStrings : CommonStrings?
        @commonStrings
    end

    def jf_commonStrings=(value : CommonStrings?) : CommonStrings?
        @commonStrings = value
    end
    @list : BasicArrayList? = nil

    def jf_list : BasicArrayList?
        @list
    end

    def jf_list=(value : BasicArrayList?) : BasicArrayList?
        @list = value
    end
    @max : Int32 = 0

    def jf_max : Int32
        @max
    end

    def jf_max=(value : Int32) : Int32
        @max = value
    end

    def self.jst_TOTAL : String
        "Sounds In Queue: "
    end

    # Java field initializers run after the super constructor
    def jfields_PlayerQueue : Nil
    @commonStrings = CommonStrings.getInstance()
    @list = BasicArrayListD.new.jinit_BasicArrayListD()
    
    end
    

    def jinit_PlayerQueue(max : Int) : self
        max = max.to_i32!
        jfields_PlayerQueue()
        @max = max
        self
    end
    

    def add(sound : Sound?) : Nil
        begin
            if !@list.not_nil!.contains(sound)
                @list.not_nil!.add(sound)
            end
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            PreLogUtil.put(@commonStrings.not_nil!.jf_EXCEPTION, self, @commonStrings.not_nil!.jf_ADD)
            else
                raise jex1
            end
        end
    end
    

    def process : Bool
        sound : Sound? = NoSound.getInstance()
        begin
            played : Bool = false
            if @list.not_nil!.size() > 0
                sound = JR.cast(@list.not_nil!.removeAt(0), Sound)
                if !(sound).nil?
                    sound.not_nil!.getPlayerP().not_nil!.start()
                end
                while @list.not_nil!.size() > @max
                    @list.not_nil!.removeAt(0)
                end
                played = true
            end
            return played
        rescue jexc2 : ::Exception
            jex2 = JR.jthrowable(jexc2)
            if jex2.is_a?(JException)
                e = jex2.as(JException)
            resource : String = StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
            if !(sound).nil?
                resource = sound.not_nil!.getResource()
            end
            PreLogUtil.put(StringMaker.new.jinit_StringMaker().not_nil!.append(@commonStrings.not_nil!.jf_EXCEPTION_LABEL).not_nil!.append(resource).not_nil!.toString(), self, @commonStrings.not_nil!.jf_PROCESS)
            return false
            else
                raise jex2
            end
        end
        return false
    end
    

    def clear : Nil
        @list.not_nil!.clear()
    end
    

    def toString : String
        return StringMaker.new.jinit_StringMaker().not_nil!.append(PlayerQueue.jst_TOTAL).not_nil!.appendint(@list.not_nil!.size()).not_nil!.toString()
    end
end

