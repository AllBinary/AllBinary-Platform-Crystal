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
# package org.allbinary.game.input

class InputPersistance < BasicPersitance
    @hashtableUtil : HashtableUtil? = nil

    def jf_hashtableUtil : HashtableUtil?
        @hashtableUtil
    end

    def jf_hashtableUtil=(value : HashtableUtil?) : HashtableUtil?
        @hashtableUtil = value
    end

    # Java field initializers run after the super constructor
    def jfields_InputPersistance : Nil
    @hashtableUtil = HashtableUtil.getInstance()
    end
    

    def jinit_InputPersistance(name : String) : self
        jinit_BasicPersitance(name)
        jfields_InputPersistance()
        self
    end
    

    def loadAll(abeClientInformation : AbeClientInformationInterface?) : Nil
        recordStore : RecordStore? = RecordStore.openRecordStore(self.getRecordId(abeClientInformation), true)
        recordEnum : RecordEnumeration? = recordStore.not_nil!.enumerateRecords(NullRecordFilter.jst_NULL_RECORD_FILTER, NullRecordComparator.jst_NULL_RECORD_COMPARATOR, true)
        hashtable : ABHashtable? = nil
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        smallIntegerSingletonFactory : SmallIntegerSingletonFactory? = SmallIntegerSingletonFactory.getInstance()
        id : Int32 = 0
        while (recordEnum.not_nil!.hasNextElement()).as(Bool)
            id = (recordEnum.not_nil!.nextRecordId()).as(Int32)
            stringBuffer.not_nil!.delete(0, stringBuffer.not_nil!.length())
            @logUtil.not_nil!.putF(stringBuffer.not_nil!.append(@persistanceStrings.not_nil!.jf_LOADING_ID).not_nil!.appendint(id).not_nil!.toString(), self, @persistanceStrings.not_nil!.jf_LOAD_ALL)
            hashtable = StdUtil.getInstance().not_nil!.createHashtable()
            @valueList.not_nil!.add(hashtable)
            @idList.not_nil!.add(smallIntegerSingletonFactory.not_nil!.getAt(id))
        end
        recordStore.not_nil!.closeRecordStore()
    end
    

    def save(abeClientInformation : AbeClientInformationInterface?, hashtable : ABHashtable?) : Nil
        PreLogUtil.put(StringMaker.new.jinit_StringMaker().not_nil!.append(@persistanceStrings.not_nil!.jf_NOT_SAVING).not_nil!.append(StringUtil.getInstance().not_nil!.toString(hashtable)).not_nil!.toString(), self, @commonStrings.not_nil!.jf_SAVE)
        recordStore : RecordStore? = RecordStore.openRecordStore(self.getRecordId(abeClientInformation), true)
        gameActionInput : Input? = nil
        list : BasicArrayList? = nil
        input : Input? = nil
        inputObjectArray : Array(JAny)? = @hashtableUtil.not_nil!.getKeysAsArray(hashtable)
        size : Int32 = inputObjectArray.not_nil!.size
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < size
            gameActionInput = JR.cast(inputObjectArray.not_nil![index], Input)
            list = JR.cast(hashtable.not_nil!.get(inputObjectArray.not_nil![index]), BasicArrayList)
            index2 : Int32 = 0
            jfor2 = false
            while true
                if jfor2
                    index2 &+= 1
                end
                jfor2 = true
                break unless index2 < list.not_nil!.size()
                input = JR.cast(list.not_nil!.get(index2), Input)
            end
        end
        recordStore.not_nil!.closeRecordStore()
    end
end

