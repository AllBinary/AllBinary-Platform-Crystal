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
# package org.allbinary.game.configuration.persistance

class KeyValuePersistance < BasicPersitance
    @tsUtil : TsUtil? = nil

    def jf_tsUtil : TsUtil?
        @tsUtil
    end

    def jf_tsUtil=(value : TsUtil?) : TsUtil?
        @tsUtil = value
    end

    # Java field initializers run after the super constructor
    def jfields_KeyValuePersistance : Nil
    @tsUtil = TsUtil.getInstance()
    end
    

    def jinit_KeyValuePersistance(recordId : String) : self
        jinit_BasicPersitance(recordId)
        jfields_KeyValuePersistance()
        self
    end
    

    def loadAll(abeClientInformation : AbeClientInformationInterface?) : Nil
        self.loadAllSize(abeClientInformation, 1)
    end
    

    def loadAllSize(abeClientInformation : AbeClientInformationInterface?, size : Int) : Nil
        size = size.to_i32!
        recordStore : RecordStore? = NullRecordStore.jst_NULL_RECORD_STORE
        begin
            recordStore = RecordStore.openRecordStore(self.getRecordId(abeClientInformation), true)
            recordEnum : RecordEnumeration? = recordStore.not_nil!.enumerateRecords(NullRecordFilter.jst_NULL_RECORD_FILTER, NullRecordComparator.jst_NULL_RECORD_COMPARATOR, true)
            hashtable : ABHashtable? = nil
            name : String = ""
            value : String = ""
            smallIntegerSingletonFactory : SmallIntegerSingletonFactory? = SmallIntegerSingletonFactory.getInstance()
            stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
            recordAsBytes : Array(Int8)? = nil
            byteArrayInputStream : JByteArrayInputStream? = nil
            inputStream : JDataInputStream? = nil
            while recordEnum.not_nil!.hasNextElement()
                id : Int32 = recordEnum.not_nil!.nextRecordId()
                stringBuffer.not_nil!.delete(0, stringBuffer.not_nil!.length())
                @logUtil.not_nil!.putF(stringBuffer.not_nil!.append(@persistanceStrings.not_nil!.jf_LOADING_ID).not_nil!.appendint(id).not_nil!.toString(), self, @persistanceStrings.not_nil!.jf_LOAD_ALL)
                recordAsBytes = @tsUtil.not_nil!.getRecord(recordStore, id)
                if !(recordAsBytes).nil?
                    byteArrayInputStream = JByteArrayInputStream.new.jinit_JByteArrayInputStream(recordAsBytes)
                    inputStream = JDataInputStream.new.jinit_JDataInputStream(byteArrayInputStream)
                    hashtable = ABHashtable.new.jinit_ABHashtable()
                    index : Int32 = 0
                    jfor1 = false
                    while true
                        if jfor1
                            index &+= 1
                        end
                        jfor1 = true
                        break unless index < size
                        name = inputStream.not_nil!.readUTF()
                        inputStream.not_nil!.readUTF()
                        value = inputStream.not_nil!.readUTF()
                        hashtable.not_nil!.put(name, value)
                    end
                    @valueList.not_nil!.add(hashtable)
                    @idList.not_nil!.add(smallIntegerSingletonFactory.not_nil!.getAt(id))
                end
            end
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            raise (e).not_nil!
            else
                raise jex1
            end
        ensure
            if !(recordStore).nil?
                PreLogUtil.put(@persistanceStrings.not_nil!.jf_CLOSING_RECORDSTORE, self, @persistanceStrings.not_nil!.jf_LOAD_ALL)
                recordStore.not_nil!.closeRecordStore()
            end
        end
    end
    

    def save(abeClientInformation : AbeClientInformationInterface?, hashtable : ABHashtable?) : Nil
        recordStore : RecordStore? = NullRecordStore.jst_NULL_RECORD_STORE
        begin
            @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append(@persistanceStrings.not_nil!.jf_SAVING).not_nil!.append(StringUtil.getInstance().not_nil!.toString(hashtable)).not_nil!.toString(), self, @commonStrings.not_nil!.jf_SAVE)
            recordStore = RecordStore.openRecordStore(self.getRecordId(abeClientInformation), true)
            byteArrayOutputStream : JByteArrayOutputStream? = JByteArrayOutputStream.new.jinit_JByteArrayOutputStream()
            outputStream : JDataOutputStream? = JDataOutputStream.new.jinit_JDataOutputStream(byteArrayOutputStream)
            value : String = ""
            commonSeps : CommonSeps? = CommonSeps.getInstance()
            objectArray : Array(JAny)? = HashtableUtil.getInstance().not_nil!.getKeysAsArray(hashtable)
            anyType : JAny = nil
            size : Int32 = objectArray.not_nil!.size
            index : Int32 = 0
            jfor2 = false
            while true
                if jfor2
                    index &+= 1
                end
                jfor2 = true
                break unless index < size
                outputStream.not_nil!.writeUTF(JR.castString(objectArray.not_nil![index]))
                outputStream.not_nil!.writeUTF(commonSeps.not_nil!.jf_EQUALS)
                anyType = objectArray.not_nil![index]
                value = JR.castString(hashtable.not_nil!.get(anyType))
                outputStream.not_nil!.writeUTF(value)
            end
            tsUtil : TsUtil? = TsUtil.getInstance()
            savedGameBytes : Array(Int8)? = tsUtil.not_nil!.getByteArray(byteArrayOutputStream.not_nil!.toString())
            recordStore.not_nil!.addRecord(savedGameBytes, 0, savedGameBytes.not_nil!.size)
        rescue jexc2 : ::Exception
            jex2 = JR.jthrowable(jexc2)
            if jex2.is_a?(JException)
                e = jex2.as(JException)
            raise (e).not_nil!
            else
                raise jex2
            end
        ensure
            if !(recordStore).nil?
                PreLogUtil.put(@persistanceStrings.not_nil!.jf_CLOSING_RECORDSTORE, self, @commonStrings.not_nil!.jf_SAVE)
                recordStore.not_nil!.closeRecordStore()
            end
        end
    end
    

    def get(index : Int) : ABHashtable?
        index = index.to_i32!
        hashtable : ABHashtable? = JR.cast(@valueList.not_nil!.jf_objectArray.not_nil![index], ABHashtable)
        return hashtable
    end
end

