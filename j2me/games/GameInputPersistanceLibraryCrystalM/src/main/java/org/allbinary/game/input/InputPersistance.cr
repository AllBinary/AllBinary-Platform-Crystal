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
    @tsUtil : TsUtil? = nil

    def jf_tsUtil : TsUtil?
        @tsUtil
    end

    def jf_tsUtil=(value : TsUtil?) : TsUtil?
        @tsUtil = value
    end
    @hashtableUtil : HashtableUtil? = nil

    def jf_hashtableUtil : HashtableUtil?
        @hashtableUtil
    end

    def jf_hashtableUtil=(value : HashtableUtil?) : HashtableUtil?
        @hashtableUtil = value
    end

    # Java field initializers run after the super constructor
    def jfields_InputPersistance : Nil
    @tsUtil = TsUtil.getInstance()
    @hashtableUtil = HashtableUtil.getInstance()
    end
    

    def jinit_InputPersistance(name : String) : self
        jinit_BasicPersitance(name)
        jfields_InputPersistance()
        self
    end
    

    def loadAll(abeClientInformation : AbeClientInformationInterface?) : Nil
        recordStore : RecordStore? = NullRecordStore.jst_NULL_RECORD_STORE
        begin
            recordStore = RecordStore.openRecordStore(self.getRecordId(abeClientInformation), true)
            recordEnum : RecordEnumeration? = recordStore.not_nil!.enumerateRecords(NullRecordFilter.jst_NULL_RECORD_FILTER, NullRecordComparator.jst_NULL_RECORD_COMPARATOR, true)
            gameActionInputId : Int64 = 0_i64
            inputId : Int64 = 0_i64
            gameActionInput : Input? = nil
            input : Input? = nil
            hashtable : ABHashtable? = nil
            gameKeyFactory : GameKeyMappingFactory? = GameKeyMappingFactory.getInstance()
            stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
            inputFactory : InputFactory? = InputFactory.getInstance()
            smallIntegerSingletonFactory : SmallIntegerSingletonFactory? = SmallIntegerSingletonFactory.getInstance()
            stdUtil : StdUtil? = StdUtil.getInstance()
            recordAsBytes : Array(Int8)? = nil
            byteArrayInputStream : JByteArrayInputStream? = nil
            inputStream : JDataInputStream? = nil
            while (recordEnum.not_nil!.hasNextElement()).as(Bool)
                id : Int32 = (recordEnum.not_nil!.nextRecordId()).as(Int32)
                stringBuffer.not_nil!.delete(0, stringBuffer.not_nil!.length())
                @logUtil.not_nil!.putF(stringBuffer.not_nil!.append(@persistanceStrings.not_nil!.jf_LOADING_ID).not_nil!.appendint(id).not_nil!.toString(), self, @persistanceStrings.not_nil!.jf_LOAD_ALL)
                recordAsBytes = @tsUtil.not_nil!.getRecord(recordStore, id)
                if !(recordAsBytes).nil?
                    byteArrayInputStream = JByteArrayInputStream.new.jinit_JByteArrayInputStream(recordAsBytes)
                    inputStream = JDataInputStream.new.jinit_JDataInputStream(byteArrayInputStream)
                    hashtable = stdUtil.not_nil!.createHashtable()
                    value : Int32 = 0
                    while inputStream.not_nil!.available() > 0
                        gameActionInputIdAsString : String = inputStream.not_nil!.readUTF()
                        value = JInteger.parseInt(gameActionInputIdAsString)
                        gameActionInputId = (value).to_i64!
                        inputStream.not_nil!.readUTF()
                        value = JInteger.parseInt(inputStream.not_nil!.readUTF())
                        inputId = (value).to_i64!
                        gameActionInput = gameKeyFactory.not_nil!.getGameKey((gameActionInputId).to_i32!)
                        input = inputFactory.not_nil!.getInstanceById((inputId).to_i32!)
                        if input == inputFactory.not_nil!.jf_NO_INPUT || (gameActionInput).nil?
                            stringBuffer.not_nil!.delete(0, stringBuffer.not_nil!.length())
                            if input == inputFactory.not_nil!.jf_NO_INPUT
                                stringBuffer.not_nil!.append(@persistanceStrings.not_nil!.jf_ERROR_LOADING_ID)
                                stringBuffer.not_nil!.appendlong(inputId)
                                stringBuffer.not_nil!.append(@persistanceStrings.not_nil!.jf_GAME_ACTION_INPUT)
                                stringBuffer.not_nil!.appendlong(gameActionInputId)
                                PreLogUtil.put(stringBuffer.not_nil!.toString(), self, @persistanceStrings.not_nil!.jf_LOAD_ALL)
                            end
                            if (gameActionInput).nil?
                                stringBuffer.not_nil!.delete(0, stringBuffer.not_nil!.length())
                                stringBuffer.not_nil!.append(@persistanceStrings.not_nil!.jf_ERROR_LOADING)
                                stringBuffer.not_nil!.appendlong(gameActionInputId)
                                stringBuffer.not_nil!.append(@persistanceStrings.not_nil!.jf_ID)
                                stringBuffer.not_nil!.appendlong(inputId)
                                PreLogUtil.put(stringBuffer.not_nil!.toString(), self, @persistanceStrings.not_nil!.jf_LOAD_ALL)
                            end
                        else
                        end
                        hashtable.not_nil!.put(input, gameActionInput)
                    end
                    @valueList.not_nil!.add(hashtable)
                    @idList.not_nil!.add(smallIntegerSingletonFactory.not_nil!.getAt(id))
                else
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
            stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
            PreLogUtil.put(stringBuffer.not_nil!.append(@persistanceStrings.not_nil!.jf_SAVING).not_nil!.append(StringUtil.getInstance().not_nil!.toString(hashtable)).not_nil!.toString(), self, @commonStrings.not_nil!.jf_SAVE)
            recordStore = RecordStore.openRecordStore(self.getRecordId(abeClientInformation), true)
            byteArrayOutputStream : JByteArrayOutputStream? = JByteArrayOutputStream.new.jinit_JByteArrayOutputStream()
            outputStream : JDataOutputStream? = JDataOutputStream.new.jinit_JDataOutputStream(byteArrayOutputStream)
            gameActionInput : Input? = nil
            list : BasicArrayList? = nil
            input : Input? = nil
            savedGameBytes : Array(Int8)? = nil
            commonSeps : CommonSeps? = CommonSeps.getInstance()
            smallIntegerSingletonFactory : SmallIntegerSingletonFactory? = SmallIntegerSingletonFactory.getInstance()
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
                    gameActionInputIdAsString : String = smallIntegerSingletonFactory.not_nil!.getAt(gameActionInput.not_nil!.getId()).not_nil!.toString()
                    outputStream.not_nil!.writeUTF(gameActionInputIdAsString)
                    outputStream.not_nil!.writeUTF(commonSeps.not_nil!.jf_EQUALS)
                    input = JR.cast(list.not_nil!.jf_objectArray.not_nil![index2], Input)
                    inputIdAsString : String = smallIntegerSingletonFactory.not_nil!.getAt(input.not_nil!.getId()).not_nil!.toString()
                    outputStream.not_nil!.writeUTF(inputIdAsString)
                end
            end
            savedGameBytes = byteArrayOutputStream.not_nil!.toByteArray()
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
end

