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
# package org.allbinary.game.score

class HighScoreNamePersistanceSingleton < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @tsUtil : TsUtil? = nil

    def jf_tsUtil : TsUtil?
        @tsUtil
    end

    def jf_tsUtil=(value : TsUtil?) : TsUtil?
        @tsUtil = value
    end
    @commonStrings : CommonStrings? = nil

    def jf_commonStrings : CommonStrings?
        @commonStrings
    end

    def jf_commonStrings=(value : CommonStrings?) : CommonStrings?
        @commonStrings = value
    end
    @platformRecordIdUtil : PlatformRecordIdUtil? = nil

    def jf_platformRecordIdUtil : PlatformRecordIdUtil?
        @platformRecordIdUtil
    end

    def jf_platformRecordIdUtil=(value : PlatformRecordIdUtil?) : PlatformRecordIdUtil?
        @platformRecordIdUtil = value
    end
    @j_RECORD_ID : String = ""

    def jf_RECORD_ID : String
        @j_RECORD_ID
    end

    def jf_RECORD_ID=(value : String) : String
        @j_RECORD_ID = value
    end
    @name : String = ""

    def jf_name : String
        @name
    end

    def jf_name=(value : String) : String
        @name = value
    end
    @nameBasicArrayList : BasicArrayList? = nil

    def jf_nameBasicArrayList : BasicArrayList?
        @nameBasicArrayList
    end

    def jf_nameBasicArrayList=(value : BasicArrayList?) : BasicArrayList?
        @nameBasicArrayList = value
    end

    @@jst_SINGLETON : HighScoreNamePersistanceSingleton? = nil

    def self.jst_SINGLETON : HighScoreNamePersistanceSingleton?
        jclinit
        @@jst_SINGLETON
    end

    def self.jst_SINGLETON=(value : HighScoreNamePersistanceSingleton?) : HighScoreNamePersistanceSingleton?
        jclinit
        @@jst_SINGLETON = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_SINGLETON = HighScoreNamePersistanceSingleton.new.jinit_HighScoreNamePersistanceSingleton()
    end
    

    def self.getInstance : HighScoreNamePersistanceSingleton?
        return HighScoreNamePersistanceSingleton.jst_SINGLETON
    end

    # Java field initializers run after the super constructor
    def jfields_HighScoreNamePersistanceSingleton : Nil
    @logUtil = LogUtil.getInstance()
    @tsUtil = TsUtil.getInstance()
    @commonStrings = CommonStrings.getInstance()
    @platformRecordIdUtil = PlatformRecordIdUtil.getInstance()
    @j_RECORD_ID = "_SN"
    @name = StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
    @nameBasicArrayList = BasicArrayListD.new.jinit_BasicArrayListD()
    end

    def jinit_HighScoreNamePersistanceSingleton : self
        jfields_HighScoreNamePersistanceSingleton()
        self
    end
    

    def clear : Nil
        @name = StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
    end
    

    def deleteAll(abeClientInformation : AbeClientInformationInterface?, gameInfo : GameInfo?) : Nil
        size : Int32 = @nameBasicArrayList.not_nil!.size()
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < size
            integer : JInteger? = JR.cast(@nameBasicArrayList.not_nil!.jf_objectArray.not_nil![index], JInteger)
            self.delete(abeClientInformation, gameInfo, integer.not_nil!.intValue())
        end
        self.clear()
    end
    

    def getRecordId(abeClientInformation : AbeClientInformationInterface?) : String
        return @platformRecordIdUtil.not_nil!.getRecordId(abeClientInformation, @j_RECORD_ID)
    end
    

    def delete(abeClientInformation : AbeClientInformationInterface?, gameInfo : GameInfo?, deleteId : Int) : Nil
        deleteId = deleteId.to_i32!
        recordStore : RecordStore? = NullRecordStore.jst_NULL_RECORD_STORE
        begin
            @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append("Deleting: ").not_nil!.appendint(deleteId).not_nil!.toString(), self, @commonStrings.not_nil!.jf_delete)
            recordStore = RecordStore.openRecordStore(self.getRecordId(abeClientInformation), true)
            recordStore.not_nil!.deleteRecord(deleteId)
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
                PreLogUtil.put("Closing RecordStore", self, @commonStrings.not_nil!.jf_delete)
                recordStore.not_nil!.closeRecordStore()
            end
        end
    end
    

    def getIds : BasicArrayList?
        return @nameBasicArrayList
    end
    

    def load(abeClientInformation : AbeClientInformationInterface?, gameInfo : GameInfo?) : String
        recordStore : RecordStore? = NullRecordStore.jst_NULL_RECORD_STORE
        begin
            if @name == StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
                j_LOADING_ID : String = "Loading id: "
                recordStore = RecordStore.openRecordStore(self.getRecordId(abeClientInformation), true)
                recordEnum : RecordEnumeration? = recordStore.not_nil!.enumerateRecords(NullRecordFilter.jst_NULL_RECORD_FILTER, NullRecordComparator.jst_NULL_RECORD_COMPARATOR, true)
                smallIntegerSingletonFactory : SmallIntegerSingletonFactory? = SmallIntegerSingletonFactory.getInstance()
                recordAsBytes : Array(Int8)? = nil
                byteArrayInputStream : JByteArrayInputStream? = nil
                inputStream : JDataInputStream? = nil
                while (recordEnum.not_nil!.hasNextElement()).as(Bool)
                    id : Int32 = (recordEnum.not_nil!.nextRecordId()).as(Int32)
                    @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append(j_LOADING_ID).not_nil!.appendint(id).not_nil!.toString(), self, @commonStrings.not_nil!.jf_LOAD)
                    recordAsBytes = @tsUtil.not_nil!.getRecord(recordStore, id)
                    byteArrayInputStream = JByteArrayInputStream.new.jinit_JByteArrayInputStream(recordAsBytes)
                    inputStream = JDataInputStream.new.jinit_JDataInputStream(byteArrayInputStream)
                    while inputStream.not_nil!.available() > 0
                        @name = inputStream.not_nil!.readUTF()
                    end
                    @nameBasicArrayList.not_nil!.add(smallIntegerSingletonFactory.not_nil!.getAt(id))
                end
            end
        rescue jexc2 : ::Exception
            jex2 = JR.jthrowable(jexc2)
            if jex2.is_a?(JException)
                e = jex2.as(JException)
            self.save(abeClientInformation, gameInfo, @name)
            @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append(@commonStrings.not_nil!.jf_EXCEPTION_LABEL).not_nil!.append(ExceptionUtil.getInstance().not_nil!.getStackTrace(e)).not_nil!.toString(), self, @commonStrings.not_nil!.jf_LOAD)
            else
                raise jex2
            end
        ensure
            begin
                if !(recordStore).nil?
                    PreLogUtil.put("Closing RecordStore", self, @commonStrings.not_nil!.jf_LOAD)
                    recordStore.not_nil!.closeRecordStore()
                end
            rescue jexc3 : ::Exception
                jex3 = JR.jthrowable(jexc3)
                if jex3.is_a?(RecordStoreException)
                    e = jex3.as(RecordStoreException)
                @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, @commonStrings.not_nil!.jf_LOAD, e)
                else
                    raise jex3
                end
            end
        end
        return @name
    end
    

    def save(abeClientInformation : AbeClientInformationInterface?, gameInfo : GameInfo?, name : String) : Nil
        recordStore : RecordStore? = NullRecordStore.jst_NULL_RECORD_STORE
        begin
            @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append("Saving: ").not_nil!.append(name).not_nil!.toString(), self, @commonStrings.not_nil!.jf_SAVE)
            recordStore = RecordStore.openRecordStore(self.getRecordId(abeClientInformation), true)
            byteArrayOutputStream : JByteArrayOutputStream? = JByteArrayOutputStream.new.jinit_JByteArrayOutputStream()
            outputStream : JDataOutputStream? = JDataOutputStream.new.jinit_JDataOutputStream(byteArrayOutputStream)
            outputStream.not_nil!.writeUTF(name)
            savedGameBytes : Array(Int8)? = byteArrayOutputStream.not_nil!.toByteArray()
            recordStore.not_nil!.addRecord(savedGameBytes, 0, savedGameBytes.not_nil!.size)
            @name = name
        rescue jexc4 : ::Exception
            jex4 = JR.jthrowable(jexc4)
            if jex4.is_a?(JException)
                e = jex4.as(JException)
            @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, @commonStrings.not_nil!.jf_SAVE, e)
            else
                raise jex4
            end
        ensure
            begin
                if !(recordStore).nil?
                    PreLogUtil.put("Closing RecordStore", self, @commonStrings.not_nil!.jf_SAVE)
                    recordStore.not_nil!.closeRecordStore()
                end
            rescue jexc5 : ::Exception
                jex5 = JR.jthrowable(jexc5)
                if jex5.is_a?(RecordStoreException)
                    e = jex5.as(RecordStoreException)
                @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, @commonStrings.not_nil!.jf_SAVE, e)
                else
                    raise jex5
                end
            end
        end
    end
end

