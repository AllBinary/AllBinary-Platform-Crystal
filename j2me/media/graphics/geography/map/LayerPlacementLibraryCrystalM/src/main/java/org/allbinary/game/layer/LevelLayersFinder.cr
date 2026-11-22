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
# package org.allbinary.game.layer

class LevelLayersFinder < JObject
    @enumerationUtil : EnumerationUtil? = nil

    def jf_enumerationUtil : EnumerationUtil?
        @enumerationUtil
    end

    def jf_enumerationUtil=(value : EnumerationUtil?) : EnumerationUtil?
        @enumerationUtil = value
    end

    @@jst_instance : LevelLayersFinder? = nil

    def self.jst_instance : LevelLayersFinder?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : LevelLayersFinder?) : LevelLayersFinder?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = LevelLayersFinder.new.jinit_LevelLayersFinder()
    end
    

    def self.getInstance : LevelLayersFinder?
        return LevelLayersFinder.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_LevelLayersFinder : Nil
    @enumerationUtil = EnumerationUtil.getInstance()
    end

    def jinit_LevelLayersFinder : self
        jfields_LevelLayersFinder()
        self
    end
    

    def get(hashtable : ABHashtable?) : BasicArrayList?
        smallIntegerSingletonFactory : SmallIntegerSingletonFactory? = SmallIntegerSingletonFactory.getInstance()
        list : BasicArrayList? = BasicArrayListD.new.jinit_BasicArrayListD()
        enumeration : JEnumeration? = hashtable.not_nil!.keys()
        layerHashtableCanBeNull : ABHashtable? = nil
        integerCanBeNull : JInteger? = nil
        cachedIntegerCanBeNull : JInteger? = nil
        while @enumerationUtil.not_nil!.hasMoreElements(enumeration)
            layerHashtableCanBeNull = JR.cast(hashtable.not_nil!.get(@enumerationUtil.not_nil!.nextElement(enumeration)), ABHashtable)
            integerCanBeNull = JR.cast(layerHashtableCanBeNull.not_nil!.get(ABLayer.jst_ID), JInteger)
            cachedIntegerCanBeNull = smallIntegerSingletonFactory.not_nil!.getAt(integerCanBeNull.not_nil!.intValue())
            if !list.not_nil!.contains(cachedIntegerCanBeNull)
                list.not_nil!.add(cachedIntegerCanBeNull)
            end
        end
        return list
    end
end

