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
# package org.allbinary.graphics.color

class BasicColorCacheFactory < JObject
    @hashtable : ABHashtable? = nil

    def jf_hashtable : ABHashtable?
        @hashtable
    end

    def jf_hashtable=(value : ABHashtable?) : ABHashtable?
        @hashtable = value
    end

    @@jst_instance : BasicColorCacheFactory? = nil

    def self.jst_instance : BasicColorCacheFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : BasicColorCacheFactory?) : BasicColorCacheFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = BasicColorCacheFactory.new.jinit_BasicColorCacheFactory()
    end
    

    def self.getInstance : BasicColorCacheFactory?
        return BasicColorCacheFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_BasicColorCacheFactory : Nil
    @hashtable = StdUtil.getInstance().not_nil!.createHashtable()
    end
    

    def jinit_BasicColorCacheFactory : self
        jfields_BasicColorCacheFactory()
        self
    end
    

    def add(basicDefaultColor : BasicColor?) : Nil
        @hashtable.not_nil!.put(JInteger.new.jinit_JInteger(basicDefaultColor.not_nil!.intValue()), basicDefaultColor)
    end
    

    def getAndOrCreate(integer : JInteger?) : BasicColor?
        basicColor : BasicColor? = JR.cast(@hashtable.not_nil!.get(integer), BasicColor)
        if (basicColor).nil?
            basicColor = BasicColorFactory.getInstance().not_nil!.createInstance(integer.not_nil!.intValue())
            @hashtable.not_nil!.put(integer, basicColor)
        end
        return basicColor
    end
end

