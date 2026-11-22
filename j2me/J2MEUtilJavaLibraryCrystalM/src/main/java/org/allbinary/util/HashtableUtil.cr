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
# package org.allbinary.util

class HashtableUtil < JObject
    @enumerationUtil : EnumerationUtil? = nil

    def jf_enumerationUtil : EnumerationUtil?
        @enumerationUtil
    end

    def jf_enumerationUtil=(value : EnumerationUtil?) : EnumerationUtil?
        @enumerationUtil = value
    end

    @@jst_instance : HashtableUtil? = nil

    def self.jst_instance : HashtableUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : HashtableUtil?) : HashtableUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = HashtableUtil.new.jinit_HashtableUtil()
    end
    

    def self.getInstance : HashtableUtil?
        return HashtableUtil.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_HashtableUtil : Nil
    @enumerationUtil = EnumerationUtil.getInstance()
    end

    def jinit_HashtableUtil : self
        jfields_HashtableUtil()
        self
    end
    

    def putAll(fromHashtable : ABHashtable?, hashtable : ABHashtable?) : Nil
        enumeration : JEnumeration? = fromHashtable.not_nil!.keys()
        keyCanBeNull : JAny = nil
        valueCanBeNull : JAny = nil
        while @enumerationUtil.not_nil!.hasMoreElements(enumeration)
            keyCanBeNull = @enumerationUtil.not_nil!.nextElement(enumeration)
            valueCanBeNull = hashtable.not_nil!.get(keyCanBeNull)
            if (valueCanBeNull).nil?
            else
                hashtable.not_nil!.put(keyCanBeNull, valueCanBeNull)
            end
        end
    end
    

    def getKeysAsArray(hashtable : ABHashtable?) : Array(JAny)?
        objectArray : Array(JAny)? = Array(JAny).new(hashtable.not_nil!.size(), nil)
        index : Int32 = 0
        enumeration : JEnumeration? = hashtable.not_nil!.keys()
        while @enumerationUtil.not_nil!.hasMoreElements(enumeration)
            objectArray.not_nil![((index &+= 1) &- 1)] = @enumerationUtil.not_nil!.nextElement(enumeration)
        end
        return objectArray
    end
    

    def getKeysAsList(hashtable : ABHashtable?) : BasicArrayList?
        list : BasicArrayList? = BasicArrayListS.new.jinit_BasicArrayListS(hashtable.not_nil!.size())
        enumeration : JEnumeration? = hashtable.not_nil!.keys()
        while @enumerationUtil.not_nil!.hasMoreElements(enumeration)
            list.not_nil!.add(@enumerationUtil.not_nil!.nextElement(enumeration))
        end
        return list
    end
end

