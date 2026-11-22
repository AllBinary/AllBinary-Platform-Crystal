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
# package org.allbinary.game.part

class MakeCountedPartsSingletonArrayFactory < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @list : BasicArrayList? = nil

    def jf_list : BasicArrayList?
        @list
    end

    def jf_list=(value : BasicArrayList?) : BasicArrayList?
        @list = value
    end

    @@jst_instance : MakeCountedPartsSingletonArrayFactory? = nil

    def self.jst_instance : MakeCountedPartsSingletonArrayFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : MakeCountedPartsSingletonArrayFactory?) : MakeCountedPartsSingletonArrayFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = MakeCountedPartsSingletonArrayFactory.new.jinit_MakeCountedPartsSingletonArrayFactory()
    end
    

    def self.getInstance : MakeCountedPartsSingletonArrayFactory?
        return MakeCountedPartsSingletonArrayFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_MakeCountedPartsSingletonArrayFactory : Nil
    @logUtil = LogUtil.getInstance()
    @list = BasicArrayListUtil.getInstance().not_nil!.getImmutableInstance()
    end

    def jinit_MakeCountedPartsSingletonArrayFactory : self
        jfields_MakeCountedPartsSingletonArrayFactory()
        self
    end
    

    def getUpdated(partInterfaceArray : Array(PartInterface?)?) : Array(PartInterface?)?
        @list = BasicArrayListD.new.jinit_BasicArrayListD()
        index = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < partInterfaceArray.not_nil!.size
            @list.not_nil!.add(partInterfaceArray.not_nil![index])
        end
        countedBasicArrayList : BasicArrayList? = CountedPickedUpLayerInterfaceFactoryPool.getInstance().not_nil!.getList()
        layerInterfaceFactoryInterface : CountedPickedUpLayerInterfaceFactory? = nil
        size : Int32 = countedBasicArrayList.not_nil!.size()
        index = 0
        jfor2 = false
        while true
            if jfor2
                index &+= 1
            end
            jfor2 = true
            break unless index < size
            layerInterfaceFactoryInterface = JR.cast(countedBasicArrayList.not_nil!.jf_objectArray.not_nil![index], CountedPickedUpLayerInterfaceFactory)
            @list.not_nil!.add(CountedLayerInterfaceFactoryPart.new.jinit_CountedLayerInterfaceFactoryPart(0, layerInterfaceFactoryInterface))
        end
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        stringBuffer.not_nil!.append("Total Parts: ")
        stringBuffer.not_nil!.appendint(@list.not_nil!.size())
        stringBuffer.not_nil!.append(" Counted: ")
        stringBuffer.not_nil!.appendint(countedBasicArrayList.not_nil!.size())
        commonStrings : CommonStrings? = CommonStrings.getInstance()
        @logUtil.not_nil!.putF(stringBuffer.not_nil!.toString(), self, commonStrings.not_nil!.jf_GET_INSTANCE)
        newPartInterfaceArray : Array(PartInterface?)? = Array(PartInterface?).new(@list.not_nil!.size(), nil)
        newSize : Int32 = newPartInterfaceArray.not_nil!.size
        index = 0
        jfor3 = false
        while true
            if jfor3
                index &+= 1
            end
            jfor3 = true
            break unless index < newSize
            newPartInterfaceArray.not_nil![index] = JR.cast(@list.not_nil!.get(index), PartInterface)
        end
        return newPartInterfaceArray
    end
end

