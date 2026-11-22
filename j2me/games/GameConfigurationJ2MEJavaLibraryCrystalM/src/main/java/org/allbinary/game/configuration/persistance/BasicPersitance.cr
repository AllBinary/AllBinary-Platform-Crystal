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

class BasicPersitance < JObject
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
    @persistanceStrings : PersistanceStrings? = nil

    def jf_persistanceStrings : PersistanceStrings?
        @persistanceStrings
    end

    def jf_persistanceStrings=(value : PersistanceStrings?) : PersistanceStrings?
        @persistanceStrings = value
    end
    @platformRecordIdUtil : PlatformRecordIdUtil? = nil

    def jf_platformRecordIdUtil : PlatformRecordIdUtil?
        @platformRecordIdUtil
    end

    def jf_platformRecordIdUtil=(value : PlatformRecordIdUtil?) : PlatformRecordIdUtil?
        @platformRecordIdUtil = value
    end
    @recordId : String = ""

    def jf_recordId : String
        @recordId
    end

    def jf_recordId=(value : String) : String
        @recordId = value
    end
    @valueList : BasicArrayList? = nil

    def jf_valueList : BasicArrayList?
        @valueList
    end

    def jf_valueList=(value : BasicArrayList?) : BasicArrayList?
        @valueList = value
    end
    @idList : BasicArrayList? = nil

    def jf_idList : BasicArrayList?
        @idList
    end

    def jf_idList=(value : BasicArrayList?) : BasicArrayList?
        @idList = value
    end

    # Java field initializers run after the super constructor
    def jfields_BasicPersitance : Nil
    @logUtil = LogUtil.getInstance()
    @commonStrings = CommonStrings.getInstance()
    @persistanceStrings = PersistanceStrings.getInstance()
    @platformRecordIdUtil = PlatformRecordIdUtil.getInstance()
    
    @valueList = BasicArrayListD.new.jinit_BasicArrayListD()
    @idList = BasicArrayListD.new.jinit_BasicArrayListD()
    end
    

    def jinit_BasicPersitance(recordId : String) : self
        jfields_BasicPersitance()
        @recordId = recordId
        self
    end
    

    def deleteRecoreStore(abeClientInformation : AbeClientInformationInterface?) : Nil
        RecordStore.deleteRecordStore(self.getRecordId(abeClientInformation))
    end
    

    def deleteAll(abeClientInformation : AbeClientInformationInterface?) : Nil
        size : Int32 = @idList.not_nil!.size()
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < size
            integer : JInteger? = JR.cast(@idList.not_nil!.jf_objectArray.not_nil![index], JInteger)
            self.delete(abeClientInformation, integer.not_nil!.intValue())
        end
        self.clear()
    end
    

    def delete(abeClientInformation : AbeClientInformationInterface?, deleteId : Int) : Nil
        deleteId = deleteId.to_i32!
        recordStore : RecordStore? = NullRecordStore.jst_NULL_RECORD_STORE
        begin
            @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append(@persistanceStrings.not_nil!.jf_DELETING_WITH_ID).not_nil!.appendint(deleteId).not_nil!.toString(), self, @commonStrings.not_nil!.jf_delete)
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
                PreLogUtil.put(@persistanceStrings.not_nil!.jf_CLOSING_RECORDSTORE, self, @commonStrings.not_nil!.jf_delete)
                recordStore.not_nil!.closeRecordStore()
            end
        end
    end
    

    def getRecordId(abeClientInformation : AbeClientInformationInterface?) : String
        return @platformRecordIdUtil.not_nil!.getRecordId(abeClientInformation, @recordId)
    end
    

    def getList : BasicArrayList?
        return @valueList
    end
    

    def getIds : BasicArrayList?
        return @idList
    end
    

    def clear : Nil
        @valueList.not_nil!.clear()
        @idList.not_nil!.clear()
    end
end

