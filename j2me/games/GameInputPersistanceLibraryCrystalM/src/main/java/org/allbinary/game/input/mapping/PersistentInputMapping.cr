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

class PersistentInputMapping < JObject
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
    @enumerationUtil : EnumerationUtil? = nil

    def jf_enumerationUtil : EnumerationUtil?
        @enumerationUtil
    end

    def jf_enumerationUtil=(value : EnumerationUtil?) : EnumerationUtil?
        @enumerationUtil = value
    end
    @inputMapping : InputToGameKeyMapping? = nil

    def jf_inputMapping : InputToGameKeyMapping?
        @inputMapping
    end

    def jf_inputMapping=(value : InputToGameKeyMapping?) : InputToGameKeyMapping?
        @inputMapping = value
    end
    @inputMappingEventListenerInterface : InputMappingEventListenerInterface? = nil

    def jf_inputMappingEventListenerInterface : InputMappingEventListenerInterface?
        @inputMappingEventListenerInterface
    end

    def jf_inputMappingEventListenerInterface=(value : InputMappingEventListenerInterface?) : InputMappingEventListenerInterface?
        @inputMappingEventListenerInterface = value
    end
    @inputPersistance : InputPersistance? = nil

    def jf_inputPersistance : InputPersistance?
        @inputPersistance
    end

    def jf_inputPersistance=(value : InputPersistance?) : InputPersistance?
        @inputPersistance = value
    end
    @inputMappingEvent : InputMappingEvent? = nil

    def jf_inputMappingEvent : InputMappingEvent?
        @inputMappingEvent
    end

    def jf_inputMappingEvent=(value : InputMappingEvent?) : InputMappingEvent?
        @inputMappingEvent = value
    end

    @@jst_instance : JAny = nil

    def self.jst_instance : JAny
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : JAny) : JAny
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
    end
    

    def self.getNullInstance : PersistentInputMapping?
        if PersistentInputMapping.jst_instance == NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
            PersistentInputMapping.jst_instance = PersistentInputMapping.new.jinit_PersistentInputMapping(GamePersistanceStrings.getInstance().not_nil!.jf_SAVED_INPUT_CONFIGURATION_RECORD_ID)
        end
        return JR.cast(PersistentInputMapping.jst_instance, PersistentInputMapping)
    end

    # Java field initializers run after the super constructor
    def jfields_PersistentInputMapping : Nil
    @logUtil = LogUtil.getInstance()
    @commonStrings = CommonStrings.getInstance()
    @enumerationUtil = EnumerationUtil.getInstance()
    @inputMapping = InputToGameKeyMapping.new.jinit_InputToGameKeyMapping()
    @inputMappingEventListenerInterface = NullInputMappingEventListener.jst_NULL_INPUT_MAPPING_EVENT_LISTENER
    
    @inputMappingEvent = InputMappingEvent.new.jinit_InputMappingEvent(self)
    end
    

    def jinit_PersistentInputMapping(name : String) : self
        jfields_PersistentInputMapping()
        @inputPersistance = InputPersistance.new.jinit_InputPersistance(name)
        self
    end
    

    def getTotalMapped : Int32
        return self.getInputMapping().not_nil!.getHashtable().not_nil!.size()
    end
    

    def isDefaultNew : Bool
        return false
    end
    

    def getDefault : InputToGameKeyMapping?
        return InputToGameKeyMapping.getNullInstance()
    end
    

    def setDefault(abeClientInformation : AbeClientInformationInterface?) : Nil
        self.getInputMapping().not_nil!.removeAll()
        self.getInputMapping().not_nil!.addMapping(self.getDefault())
        self.save(abeClientInformation)
    end
    

    def update(abeClientInformation : AbeClientInformationInterface?) : Nil
        @inputPersistance.not_nil!.deleteAll(abeClientInformation)
        self.save(abeClientInformation)
    end
    

    def save(abeClientInformation : AbeClientInformationInterface?) : Nil
        @inputPersistance.not_nil!.save(abeClientInformation, self.getInputMapping().not_nil!.getHashtable())
        @inputMappingEvent.not_nil!.setInputToGameKeyMapping(self.getInputMapping())
        if !(self.getInputMappingEventListenerInterface()).nil?
            self.getInputMappingEventListenerInterface().not_nil!.onInputMappingEvent(@inputMappingEvent)
        end
    end
    

    def init(abeClientInformation : AbeClientInformationInterface?) : Nil
        @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_START, self, @commonStrings.not_nil!.jf_INIT)
        begin
            @inputPersistance.not_nil!.loadAll(abeClientInformation)
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            PreLogUtil.putOE(@commonStrings.not_nil!.jf_EXCEPTION, self, @commonStrings.not_nil!.jf_INIT, e)
            @inputPersistance.not_nil!.deleteRecoreStore(abeClientInformation)
            self.setDefault(abeClientInformation)
            @inputPersistance.not_nil!.loadAll(abeClientInformation)
            else
                raise jex1
            end
        end
        list : BasicArrayList? = @inputPersistance.not_nil!.getList()
        totalMappedTo : Int32 = 0
        size : Int32 = list.not_nil!.size()
        hashtable : ABHashtable? = nil
        enumeration : JEnumeration? = nil
        mappedToInput : Input? = nil
        gameActionInput : Input? = nil
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < size
            hashtable = JR.cast(list.not_nil!.jf_objectArray.not_nil![index], ABHashtable)
            enumeration = hashtable.not_nil!.keys()
            while @enumerationUtil.not_nil!.hasMoreElements(enumeration)
                mappedToInput = JR.cast(@enumerationUtil.not_nil!.nextElement(enumeration), Input)
                gameActionInput = JR.cast(hashtable.not_nil!.get(mappedToInput), Input)
                totalMappedTo &+= 1
                self.getInputMapping().not_nil!.add(gameActionInput, mappedToInput)
            end
        end
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        stringBuffer.not_nil!.append("End - Total Loaded Keys Mapped: ")
        stringBuffer.not_nil!.appendint(self.getTotalMapped())
        stringBuffer.not_nil!.append(" to: ")
        stringBuffer.not_nil!.appendint(totalMappedTo)
        @logUtil.not_nil!.putF(stringBuffer.not_nil!.toString(), self, @commonStrings.not_nil!.jf_INIT)
    end
    

    def setInputMappingEventListenerInterface(inputMappingEventListenerInterface : InputMappingEventListenerInterface?) : Nil
        @inputMappingEventListenerInterface = inputMappingEventListenerInterface
    end
    

    def getInputMappingEventListenerInterface : InputMappingEventListenerInterface?
        return @inputMappingEventListenerInterface
    end
    

    def getInputMapping : InputToGameKeyMapping?
        return @inputMapping
    end
    

    def isDelete(input : Input?) : Bool
        raise (JException.new.jinit_JException(@commonStrings.not_nil!.jf_NOT_IMPLEMENTED)).not_nil!
    end
    

    def isSystemInput(input : Input?) : Bool
        raise (JException.new.jinit_JException(@commonStrings.not_nil!.jf_NOT_IMPLEMENTED)).not_nil!
    end
end

