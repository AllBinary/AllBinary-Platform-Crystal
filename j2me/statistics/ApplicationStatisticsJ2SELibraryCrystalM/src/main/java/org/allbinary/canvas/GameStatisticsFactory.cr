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
# package org.allbinary.canvas

class GameStatisticsFactory < BaseGameStatistics
    @stringBuffer : StringMaker? = nil

    def jf_stringBuffer : StringMaker?
        @stringBuffer
    end

    def jf_stringBuffer=(value : StringMaker?) : StringMaker?
        @stringBuffer = value
    end

    @@jst_instance : GameStatisticsFactory? = nil

    def self.jst_instance : GameStatisticsFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : GameStatisticsFactory?) : GameStatisticsFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = GameStatisticsFactory.new.jinit_GameStatisticsFactory()
    end
    

    def self.getInstance : GameStatisticsFactory?
        return GameStatisticsFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_GameStatisticsFactory : Nil
    @stringBuffer = StringMaker.new.jinit_StringMaker()
    end

    def jinit_GameStatisticsFactory : self
        jinit_BaseGameStatistics()
        jfields_GameStatisticsFactory()
        self
    end
    

    def add(string : String) : Nil
        if @stringBuffer.not_nil!.length() > 12000
            @stringBuffer.not_nil!.delete(0, @stringBuffer.not_nil!.length())
            @stringBuffer.not_nil!.append("Old Stats Cleared")
        end
        @stringBuffer.not_nil!.append(string)
    end
    

    def toString : String
        return StringMaker.new.jinit_StringMaker().not_nil!.append(super()).not_nil!.append(@stringBuffer.not_nil!.toString()).not_nil!.toString()
    end
end

