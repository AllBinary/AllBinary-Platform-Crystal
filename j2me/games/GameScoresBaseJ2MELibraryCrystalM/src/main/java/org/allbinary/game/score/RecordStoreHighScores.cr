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

class RecordStoreHighScores < HighScores
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
    @platformRecordIdUtil : PlatformRecordIdUtil? = nil

    def jf_platformRecordIdUtil : PlatformRecordIdUtil?
        @platformRecordIdUtil
    end

    def jf_platformRecordIdUtil=(value : PlatformRecordIdUtil?) : PlatformRecordIdUtil?
        @platformRecordIdUtil = value
    end
    @tsUtil : TsUtil? = nil

    def jf_tsUtil : TsUtil?
        @tsUtil
    end

    def jf_tsUtil=(value : TsUtil?) : TsUtil?
        @tsUtil = value
    end
    @j_RECORD_ID : String = ""

    def jf_RECORD_ID : String
        @j_RECORD_ID
    end

    def jf_RECORD_ID=(value : String) : String
        @j_RECORD_ID = value
    end
    @j_MAXHIGHSCORES : Int32 = 0

    def jf_MAXHIGHSCORES : Int32
        @j_MAXHIGHSCORES
    end

    def jf_MAXHIGHSCORES=(value : Int32) : Int32
        @j_MAXHIGHSCORES = value
    end
    @gameInfo : GameInfo? = nil

    def jf_gameInfo : GameInfo?
        @gameInfo
    end

    def jf_gameInfo=(value : GameInfo?) : GameInfo?
        @gameInfo = value
    end
    @abeClientInformation : AbeClientInformationInterface? = nil

    def jf_abeClientInformation : AbeClientInformationInterface?
        @abeClientInformation
    end

    def jf_abeClientInformation=(value : AbeClientInformationInterface?) : AbeClientInformationInterface?
        @abeClientInformation = value
    end
    @recordComparatorInterface : RecordComparator? = nil

    def jf_recordComparatorInterface : RecordComparator?
        @recordComparatorInterface
    end

    def jf_recordComparatorInterface=(value : RecordComparator?) : RecordComparator?
        @recordComparatorInterface = value
    end

    @@jst_hashTable : ABHashtable? = nil

    def self.jst_hashTable : ABHashtable?
        jclinit
        @@jst_hashTable
    end

    def self.jst_hashTable=(value : ABHashtable?) : ABHashtable?
        jclinit
        @@jst_hashTable = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_hashTable = StdUtil.getInstance().not_nil!.createHashtable()
    end
    

    def self.getInstance(abeClientInformation : AbeClientInformationInterface?, gameInfo : GameInfo?, highScoreName : String, heading : String, columnTwoHeading : String, recordComparatorInterface : RecordComparator?) : HighScores?
        highScoresCanBeNull : JAny = RecordStoreHighScores.jst_hashTable.not_nil!.get(highScoreName)
        if (highScoresCanBeNull).nil?
            highScores : HighScores? = RecordStoreHighScores.new.jinit_RecordStoreHighScores(abeClientInformation, gameInfo, highScoreName, heading, columnTwoHeading, recordComparatorInterface)
            RecordStoreHighScores.jst_hashTable.not_nil!.put(highScores.not_nil!.getName(), highScores)
            return highScores
        end
        return JR.cast(highScoresCanBeNull, HighScores)
    end

    # Java field initializers run after the super constructor
    def jfields_RecordStoreHighScores : Nil
    @logUtil = LogUtil.getInstance()
    @commonStrings = CommonStrings.getInstance()
    @platformRecordIdUtil = PlatformRecordIdUtil.getInstance()
    @tsUtil = TsUtil.getInstance()
    @j_RECORD_ID = "_HS"
    @j_MAXHIGHSCORES = 100
    
    
    
    end
    

    def jinit_RecordStoreHighScores(abeClientInformation : AbeClientInformationInterface?, gameInfo : GameInfo?, name : String, heading : String, columnTwoHeading : String, recordComparatorInterface : RecordComparator?) : self
        jinit_HighScores(name, heading, columnTwoHeading)
        jfields_RecordStoreHighScores()
        @abeClientInformation = JR.cast(abeClientInformation, AbeClientInformationInterface)
        @gameInfo = gameInfo
        @recordComparatorInterface = JR.cast(recordComparatorInterface, RecordComparator)
        self.load()
        self
    end
    

    def getRecordId(abeClientInformation : AbeClientInformationInterface?) : String
        return @platformRecordIdUtil.not_nil!.getRecordId(abeClientInformation, StringMaker.new.jinit_StringMaker().not_nil!.append(CommonSeps.getInstance().not_nil!.jf_UNDERSCORE).not_nil!.append(self.getName()).not_nil!.append(@j_RECORD_ID).not_nil!.toString())
    end
    

    def addHighScore(newHighScore : HighScore?) : Nil
        recordStore : RecordStore? = NullRecordStore.jst_NULL_RECORD_STORE
        begin
            @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append("Adding HighScore: ").not_nil!.appendlong(newHighScore.not_nil!.getScore()).not_nil!.toString(), self, @commonStrings.not_nil!.jf_ADD)
            if self.isTooManyHighScores()
                @logUtil.not_nil!.putF("Removing Lowest Score", self, @commonStrings.not_nil!.jf_ADD)
                self.removeLowestHighScore()
            end
            recordStore = RecordStore.openRecordStore(self.getRecordId(@abeClientInformation), true)
            highScoreBytes : Array(Int8)? = newHighScore.not_nil!.getAsBytes()
            recordId : Int32 = recordStore.not_nil!.addRecord(highScoreBytes, 0, highScoreBytes.not_nil!.size)
            self.load()
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(RecordStoreException)
                e = jex1.as(RecordStoreException)
            @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, @commonStrings.not_nil!.jf_ADD, e)
            elsif jex1.is_a?(JIOException)
                e = jex1.as(JIOException)
            @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, @commonStrings.not_nil!.jf_ADD, e)
            elsif jex1.is_a?(JException)
                e = jex1.as(JException)
            @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, @commonStrings.not_nil!.jf_ADD, e)
            else
                raise jex1
            end
        ensure
            begin
                if !(recordStore).nil?
                    PreLogUtil.put("Closing RecordStore", self, @commonStrings.not_nil!.jf_ADD)
                    recordStore.not_nil!.closeRecordStore()
                end
            rescue jexc2 : ::Exception
                jex2 = JR.jthrowable(jexc2)
                if jex2.is_a?(RecordStoreException)
                    e = jex2.as(RecordStoreException)
                @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, @commonStrings.not_nil!.jf_ADD, e)
                else
                    raise jex2
                end
            end
        end
    end
    

    def removeLowestHighScore : Nil
        recordStore : RecordStore? = NullRecordStore.jst_NULL_RECORD_STORE
        begin
            recordStore = RecordStore.openRecordStore(self.getRecordId(@abeClientInformation), true)
            recordEnum : RecordEnumeration? = recordStore.not_nil!.enumerateRecords(NullRecordFilter.jst_NULL_RECORD_FILTER, NullRecordComparator.jst_NULL_RECORD_COMPARATOR, true)
            scoreComparator : ScoreComparator? = (JR.cast(@recordComparatorInterface, ScoreComparator))
            bestHighScore : HighScore? = HighScore.new.jinit_HighScore(-1, "none", GameInfo.jst_NONE, scoreComparator.not_nil!.getBestScore())
            recordAsBytes : Array(Int8)? = nil
            byteArrayInputStream : JByteArrayInputStream? = nil
            inputStream : JDataInputStream? = nil
            while (recordEnum.not_nil!.hasNextElement()).as(Bool)
                id : Int32 = (recordEnum.not_nil!.nextRecordId()).as(Int32)
                recordAsBytes = @tsUtil.not_nil!.getRecord(recordStore, id)
                if !(recordAsBytes).nil?
                    byteArrayInputStream = JByteArrayInputStream.new.jinit_JByteArrayInputStream(recordAsBytes)
                    inputStream = JDataInputStream.new.jinit_JDataInputStream(byteArrayInputStream)
                    name : String = inputStream.not_nil!.readUTF()
                    nextScore : Int64 = inputStream.not_nil!.readLong()
                    nextCurrentHighScore : HighScore? = HighScore.new.jinit_HighScore(id, name, GameInfo.jst_NONE, nextScore)
                    if (@recordComparatorInterface.not_nil!.compare(nextCurrentHighScore.not_nil!.getAsBytes(), bestHighScore.not_nil!.getAsBytes())).as(Int32) == RecordComparator.jst_FOLLOWS
                        bestHighScore = nextCurrentHighScore
                    end
                end
            end
            if bestHighScore.not_nil!.getId() != -1
                @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append("Removing Lowest HighScore: ").not_nil!.appendlong(bestHighScore.not_nil!.getScore()).not_nil!.toString(), self, @commonStrings.not_nil!.jf_LOAD)
                recordStore.not_nil!.deleteRecord(bestHighScore.not_nil!.getId())
            end
        rescue jexc3 : ::Exception
            jex3 = JR.jthrowable(jexc3)
            if jex3.is_a?(RecordStoreException)
                e = jex3.as(RecordStoreException)
            @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, "removeLowestHighScore", e)
            elsif jex3.is_a?(JException)
                e = jex3.as(JException)
            @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, "removeLowestHighScore", e)
            else
                raise jex3
            end
        ensure
            begin
                if !(recordStore).nil?
                    PreLogUtil.put("Closing RecordStore", self, "removeLowestHighScore")
                    recordStore.not_nil!.closeRecordStore()
                end
            rescue jexc4 : ::Exception
                jex4 = JR.jthrowable(jexc4)
                if jex4.is_a?(RecordStoreException)
                    e = jex4.as(RecordStoreException)
                @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, "removeLowestHighScore", e)
                else
                    raise jex4
                end
            end
        end
    end
    

    def load : Nil
        recordStore : RecordStore? = NullRecordStore.jst_NULL_RECORD_STORE
        begin
            recordStore = RecordStore.openRecordStore(self.getRecordId(@abeClientInformation), true)
            self.setList(BasicArrayListD.new.jinit_BasicArrayListD())
            recordEnum : RecordEnumeration? = recordStore.not_nil!.enumerateRecords(NullRecordFilter.jst_NULL_RECORD_FILTER, NullRecordComparator.jst_NULL_RECORD_COMPARATOR, true)
            recordAsBytes : Array(Int8)? = nil
            byteArrayInputStream : JByteArrayInputStream? = nil
            inputStream : JDataInputStream? = nil
            while (recordEnum.not_nil!.hasNextElement()).as(Bool)
                id : Int32 = (recordEnum.not_nil!.nextRecordId()).as(Int32)
                recordAsBytes = @tsUtil.not_nil!.getRecord(recordStore, id)
                if !(recordAsBytes).nil?
                    byteArrayInputStream = JByteArrayInputStream.new.jinit_JByteArrayInputStream(recordAsBytes)
                    inputStream = JDataInputStream.new.jinit_JDataInputStream(byteArrayInputStream)
                    begin
                        name : String = inputStream.not_nil!.readUTF()
                        score : Int64 = inputStream.not_nil!.readLong()
                        newHighScore : HighScore? = HighScore.new.jinit_HighScore(id, name, GameInfo.jst_NONE, score)
                        list : BasicArrayList? = self.getList()
                        size : Int32 = list.not_nil!.size()
                        lastIndex : Int32 = size
                        index : Int32 = 0
                        jfor1 = false
                        while true
                            if jfor1
                                index &+= 1
                            end
                            jfor1 = true
                            break unless index < size
                            highScore : HighScore? = JR.cast(list.not_nil!.jf_objectArray.not_nil![index], HighScore)
                            if (@recordComparatorInterface.not_nil!.compare(newHighScore.not_nil!.getAsBytes(), highScore.not_nil!.getAsBytes())).as(Int32) == RecordComparator.jst_PRECEDES
                                lastIndex = index
                                break
                            end
                        end
                        list.not_nil!.addAt(lastIndex, newHighScore)
                    rescue jexc7 : ::Exception
                        jex7 = JR.jthrowable(jexc7)
                        if jex7.is_a?(JEOFException)
                            e = jex7.as(JEOFException)
                        @logUtil.not_nil!.put("EOF", self, @commonStrings.not_nil!.jf_LOAD, e)
                        raise (e).not_nil!
                        else
                            raise jex7
                        end
                    end
                end
            end
        rescue jexc5 : ::Exception
            jex5 = JR.jthrowable(jexc5)
            if jex5.is_a?(RecordStoreNotFoundException)
                e = jex5.as(RecordStoreNotFoundException)
            @logUtil.not_nil!.put("No High Scores", self, @commonStrings.not_nil!.jf_LOAD, e)
            elsif jex5.is_a?(RecordStoreException)
                e = jex5.as(RecordStoreException)
            @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_UNKNOWN, self, @commonStrings.not_nil!.jf_LOAD, e)
            elsif jex5.is_a?(JIOException)
                e = jex5.as(JIOException)
            @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_UNKNOWN, self, @commonStrings.not_nil!.jf_LOAD, e)
            elsif jex5.is_a?(JException)
                e = jex5.as(JException)
            @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_UNKNOWN, self, @commonStrings.not_nil!.jf_LOAD, e)
            else
                raise jex5
            end
        ensure
            begin
                if !(recordStore).nil?
                    PreLogUtil.put("Closing RecordStore", self, @commonStrings.not_nil!.jf_LOAD)
                    recordStore.not_nil!.closeRecordStore()
                end
            rescue jexc6 : ::Exception
                jex6 = JR.jthrowable(jexc6)
                if jex6.is_a?(RecordStoreException)
                    e = jex6.as(RecordStoreException)
                @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, @commonStrings.not_nil!.jf_LOAD, e)
                else
                    raise jex6
                end
            end
        end
    end
    

    def isTooManyHighScores : Bool
        if !(self.getList()).nil? && self.getList().not_nil!.size() < @j_MAXHIGHSCORES
            return false
        else
            @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append("HighScores RecordStore Max Reached: ").not_nil!.appendint(@j_MAXHIGHSCORES).not_nil!.toString(), self, "isTooManyHighScores")
            return true
        end
        return false
    end
    

    def isBestScore(newHighScore : HighScore?) : Bool
        begin
            if !self.isTooManyHighScores()
                @logUtil.not_nil!.putF("Slot Available for a High Score", self, "isBestScore")
                return true
            else
                list : BasicArrayList? = self.getList()
                size : Int32 = list.not_nil!.size()
                index : Int32 = 0
                jfor2 = false
                while true
                    if jfor2
                        index &+= 1
                    end
                    jfor2 = true
                    break unless index < size
                    highScore : HighScore? = JR.cast(list.not_nil!.jf_objectArray.not_nil![index], HighScore)
                    if (@recordComparatorInterface.not_nil!.compare(newHighScore.not_nil!.getAsBytes(), highScore.not_nil!.getAsBytes())).as(Int32) == RecordComparator.jst_FOLLOWS
                        @logUtil.not_nil!.putF("Obtained a High Score", self, "isBestScore")
                        return true
                    end
                end
            end
            @logUtil.not_nil!.putF("Not a High Score", self, "isBestScore")
            return false
        rescue jexc8 : ::Exception
            jex8 = JR.jthrowable(jexc8)
            if jex8.is_a?(JException)
                e = jex8.as(JException)
            @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, @commonStrings.not_nil!.jf_ADD, e)
            raise (e).not_nil!
            else
                raise jex8
            end
        end
        return false
    end
    

    def toString : String
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        stringBuffer.not_nil!.append(super())
        list : BasicArrayList? = self.getList()
        size : Int32 = list.not_nil!.size()
        index : Int32 = 0
        jfor3 = false
        while true
            if jfor3
                index &+= 1
            end
            jfor3 = true
            break unless index < size
            highScore : HighScore? = JR.cast(list.not_nil!.jf_objectArray.not_nil![index], HighScore)
            stringBuffer.not_nil!.append(highScore.not_nil!.getScoreString())
            stringBuffer.not_nil!.append(CommonSeps.getInstance().not_nil!.jf_COMMA_SEP)
        end
        return stringBuffer.not_nil!.toString()
    end
end

