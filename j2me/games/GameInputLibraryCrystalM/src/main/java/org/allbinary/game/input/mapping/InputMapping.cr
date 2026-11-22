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
# package org.allbinary.game.input.mapping

class InputMapping < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @commonStrings : CommonStrings? = nil

    def jf_commonStrings : CommonStrings?
        @commonStrings
    end

    def jf_commonStrings=(value : CommonStrings?) : CommonStrings?
        @commonStrings = value
    end
    @hashtable : ABHashtable? = nil

    def jf_hashtable : ABHashtable?
        @hashtable
    end

    def jf_hashtable=(value : ABHashtable?) : ABHashtable?
        @hashtable = value
    end
    @mappedList : BasicArrayList? = nil

    def jf_mappedList : BasicArrayList?
        @mappedList
    end

    def jf_mappedList=(value : BasicArrayList?) : BasicArrayList?
        @mappedList = value
    end

    # Java field initializers run after the super constructor
    def jfields_InputMapping : Nil
    @logUtil = LogUtil.getInstance()
    @commonStrings = CommonStrings.getInstance()
    @hashtable = StdUtil.getInstance().not_nil!.createHashtable()
    @mappedList = BasicArrayListD.new.jinit_BasicArrayListD()
    end
    

    def jinit_InputMapping : self
        jfields_InputMapping()
        self
    end
    

    def getTotalMapped : Int32
        return @hashtable.not_nil!.size()
    end
    

    def isDefaultNew : Bool
        return false
    end
    

    def getDefault : InputToGameKeyMapping?
        return InputToGameKeyMapping.getNullInstance()
    end
    

    def removeAll : Nil
        @hashtable.not_nil!.clear()
        @mappedList.not_nil!.clear()
    end
    

    def remove(input : Input?, mappedToInput : Input?) : Nil
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        stringUtil : StringUtil? = StringUtil.getInstance()
        stringBuffer.not_nil!.append(CommonLabels.getInstance().not_nil!.jf_START_LABEL)
        stringBuffer.not_nil!.append(stringUtil.not_nil!.toString(input))
        stringBuffer.not_nil!.append(" == ")
        stringBuffer.not_nil!.append(stringUtil.not_nil!.toString(mappedToInput))
        @logUtil.not_nil!.putF(stringBuffer.not_nil!.toString(), self, "InputMapping::remove")
        list : BasicArrayList? = self.getMappedInput(input)
        if list.not_nil!.contains(mappedToInput)
            list.not_nil!.remove(mappedToInput)
            @mappedList.not_nil!.remove(mappedToInput)
            stringBuffer.not_nil!.delete(0, stringBuffer.not_nil!.length())
            stringBuffer.not_nil!.append("Removed: ")
            stringBuffer.not_nil!.append(stringUtil.not_nil!.toString(input))
            stringBuffer.not_nil!.append(" == ")
            stringBuffer.not_nil!.append(stringUtil.not_nil!.toString(mappedToInput))
            @logUtil.not_nil!.putF(stringBuffer.not_nil!.toString(), self, "InputMapping::remove")
        else
            stringBuffer.not_nil!.delete(0, stringBuffer.not_nil!.length())
            stringBuffer.not_nil!.append("Not Deleted: ")
            stringBuffer.not_nil!.append(stringUtil.not_nil!.toString(input))
            stringBuffer.not_nil!.append(" == ")
            stringBuffer.not_nil!.append(stringUtil.not_nil!.toString(mappedToInput))
            @logUtil.not_nil!.putF(stringBuffer.not_nil!.toString(), self, "InputMapping::remove")
        end
    end
    

    def addMapping(inputToGameKeyMapping : InputToGameKeyMapping?) : Nil
        raise (JException.new.jinit_JException(@commonStrings.not_nil!.jf_NOT_IMPLEMENTED)).not_nil!
    end
    

    def add(input : Input?, mappedToInput : Input?) : Nil
        list : BasicArrayList? = self.getMappedInput(input)
        if !list.not_nil!.contains(mappedToInput)
            list.not_nil!.add(mappedToInput)
            @mappedList.not_nil!.add(mappedToInput)
        end
    end
    

    def isMapped(input : Input?) : Bool
        return @mappedList.not_nil!.contains(input)
    end
    

    def getMappedInput(id : Input?) : BasicArrayList?
        mappingInputCanBeNullList : JAny = @hashtable.not_nil!.get(id)
        if (mappingInputCanBeNullList).nil?
            list : BasicArrayList? = BasicArrayListD.new.jinit_BasicArrayListD()
            @hashtable.not_nil!.put(id, list)
            return list
        end
        return JR.cast(mappingInputCanBeNullList, BasicArrayList)
    end
    

    def getHashtable : ABHashtable?
        return @hashtable
    end
end

