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
# package org.allbinary.media.audio

class PlayerStateUtil < JObject
    @commonStrings : CommonStrings? = nil

    def jf_commonStrings : CommonStrings?
        @commonStrings
    end

    def jf_commonStrings=(value : CommonStrings?) : CommonStrings?
        @commonStrings = value
    end
    @j_UNREALIZED : String = ""

    def jf_UNREALIZED : String
        @j_UNREALIZED
    end

    def jf_UNREALIZED=(value : String) : String
        @j_UNREALIZED = value
    end
    @j_REALIZED : String = ""

    def jf_REALIZED : String
        @j_REALIZED
    end

    def jf_REALIZED=(value : String) : String
        @j_REALIZED = value
    end
    @j_PREFETCHED : String = ""

    def jf_PREFETCHED : String
        @j_PREFETCHED
    end

    def jf_PREFETCHED=(value : String) : String
        @j_PREFETCHED = value
    end
    @j_STARTED : String = ""

    def jf_STARTED : String
        @j_STARTED
    end

    def jf_STARTED=(value : String) : String
        @j_STARTED = value
    end
    @j_CLOSED : String = ""

    def jf_CLOSED : String
        @j_CLOSED
    end

    def jf_CLOSED=(value : String) : String
        @j_CLOSED = value
    end

    @@jst_instance : PlayerStateUtil? = nil

    def self.jst_instance : PlayerStateUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : PlayerStateUtil?) : PlayerStateUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = PlayerStateUtil.new.jinit_PlayerStateUtil()
    end
    

    def self.getInstance : PlayerStateUtil?
        return PlayerStateUtil.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_PlayerStateUtil : Nil
    @commonStrings = CommonStrings.getInstance()
    @j_UNREALIZED = "UNREALIZED"
    @j_REALIZED = "REALIZED"
    @j_PREFETCHED = "PREFETCHED"
    @j_STARTED = "STARTED"
    @j_CLOSED = "CLOSED"
    end

    def jinit_PlayerStateUtil : self
        jfields_PlayerStateUtil()
        self
    end
    

    def convert(state : Int) : String
        state = state.to_i32!
        if state == Player.jst_UNREALIZED
            return @j_UNREALIZED
        elsif state == Player.jst_REALIZED
            return @j_REALIZED
        elsif state == Player.jst_PREFETCHED
            return @j_PREFETCHED
        elsif state == Player.jst_STARTED
            return @j_STARTED
        elsif state == Player.jst_CLOSED
            return @j_CLOSED
        end
        return @commonStrings.not_nil!.jf_UNKNOWN
    end
end

