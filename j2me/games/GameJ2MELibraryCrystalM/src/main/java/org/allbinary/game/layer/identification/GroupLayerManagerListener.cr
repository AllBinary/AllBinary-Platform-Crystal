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
# package org.allbinary.game.layer.identification

class GroupLayerManagerListener < LayerManagerEventListener
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

    @@jst_SINGLETON : GroupLayerManagerListener? = nil

    def self.jst_SINGLETON : GroupLayerManagerListener?
        jclinit
        @@jst_SINGLETON
    end

    def self.jst_SINGLETON=(value : GroupLayerManagerListener?) : GroupLayerManagerListener?
        jclinit
        @@jst_SINGLETON = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_SINGLETON = GroupLayerManagerListener.new.jinit_GroupLayerManagerListener()
    end
    

    def self.getInstance : GroupLayerManagerListener?
        return GroupLayerManagerListener.jst_SINGLETON
    end

    # Java field initializers run after the super constructor
    def jfields_GroupLayerManagerListener : Nil
    @logUtil = LogUtil.getInstance()
    @list = BasicArrayListD.new.jinit_BasicArrayListD()
    end
    

    def jinit_GroupLayerManagerListener : self
        jinit_LayerManagerEventListener()
        jfields_GroupLayerManagerListener()
        LayerManagerEventHandler.getInstance().not_nil!.addListener(self)
        self
    end
    

    def clear : Nil
        groupList : BasicArrayList? = nil
        size : Int32 = @list.not_nil!.size()
        index : Int32 = size &- 1
        jfor1 = false
        while true
            if jfor1
                index &-= 1
            end
            jfor1 = true
            break unless index >= 0
            groupList = JR.cast(@list.not_nil!.jf_objectArray.not_nil![index], BasicArrayList)
            groupList.not_nil!.clear()
        end
    end
    

    def getGroupSizeFromInterface(groupInterfaceCompositeInterface : GroupInterfaceCompositeInterface?) : Int32
        groupInterfaceArray : Array(Group?)? = groupInterfaceCompositeInterface.not_nil!.getGroupInterface()
        return self.getGroupSize(groupInterfaceArray.not_nil![0])
    end
    

    def getGroupSize(groupInterface : Group?) : Int32
        id : Int32 = (groupInterface.not_nil!.getGroupId()).to_i32!
        return self.getGroupSizeById(id)
    end
    

    def getList(groupInterface : Group?) : BasicArrayList?
        id : Int32 = (groupInterface.not_nil!.getGroupId()).to_i32!
        return self.getListById(id)
    end
    

    def getListById(groupId : Int) : BasicArrayList?
        groupId = groupId.to_i32!
        groupList : BasicArrayList? = JR.cast(@list.not_nil!.jf_objectArray.not_nil![groupId], BasicArrayList)
        return groupList
    end
    

    def getGroupSizeById(groupId : Int) : Int32
        groupId = groupId.to_i32!
        groupList : BasicArrayList? = JR.cast(@list.not_nil!.jf_objectArray.not_nil![groupId], BasicArrayList)
        size : Int32 = groupList.not_nil!.size()
        return size
    end
    

    def areAllOtherGroupsEmpty(groupInterface : Group?) : Bool
        id : Int32 = (groupInterface.not_nil!.getGroupId()).to_i32!
        size : Int32 = @list.not_nil!.size()
        index : Int32 = size &- 1
        jfor2 = false
        while true
            if jfor2
                index &-= 1
            end
            jfor2 = true
            break unless index >= 0
            if id != index
                groupSize : Int32 = self.getGroupSizeById(index)
                if groupSize != 0
                    @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append("Group Size: ").not_nil!.appendint(groupSize).not_nil!.toString(), self, "areAllOtherGroupsEmpty")
                    return false
                end
            end
        end
        return true
    end
    

    def isIdInList(id : Int, excludeGroupList : BasicArrayList?) : Bool
        id = id.to_i32!
        size : Int32 = excludeGroupList.not_nil!.size()
        groupInterfaceArray : Array(Group?)? = nil
        groupInterface : Group? = nil
        groupId : Int32 = 0
        index : Int32 = size &- 1
        jfor3 = false
        while true
            if jfor3
                index &-= 1
            end
            jfor3 = true
            break unless index >= 0
            groupInterfaceArray = JR.unbox(excludeGroupList.not_nil!.jf_objectArray.not_nil![index], Array(Group?))
            size2 : Int32 = groupInterfaceArray.not_nil!.size
            index2 : Int32 = 0
            jfor4 = false
            while true
                if jfor4
                    index2 &+= 1
                end
                jfor4 = true
                break unless index2 < size2
                groupInterface = groupInterfaceArray.not_nil![index2]
                groupId = (groupInterface.not_nil!.getGroupId()).to_i32!
                if groupId == id
                    return true
                end
            end
        end
        return false
    end
    

    def areAllOtherGroupsLessThan(excludeGroupList : BasicArrayList?, maxSize : Int) : Bool
        maxSize = maxSize.to_i32!
        size : Int32 = @list.not_nil!.size()
        index : Int32 = size &- 1
        jfor5 = false
        while true
            if jfor5
                index &-= 1
            end
            jfor5 = true
            break unless index >= 0
            if !self.isIdInList(index, excludeGroupList)
                groupSize : Int32 = self.getGroupSizeById(index)
                if groupSize >= maxSize
                    return false
                end
            end
        end
        return true
    end
    

    def init(total : Int) : Nil
        total = total.to_i32!
        while @list.not_nil!.size() <= total &+ 1
            @list.not_nil!.add(BasicArrayListD.new.jinit_BasicArrayListD())
        end
    end
    

    def onEvent(eventObject : AllBinaryEventObject?) : Nil
        ForcedLogUtil.log(EventStrings.getInstance().not_nil!.jf_PERFORMANCE_MESSAGE, self)
    end
    

    def onCreateLayerManagerEvent(layerManagerEvent : LayerManagerEvent?) : Nil
        layerInterface : AllBinaryLayer? = layerManagerEvent.not_nil!.getLayerInterface()
        groupInterfaceArray : Array(Group?)? = layerInterface.not_nil!.getGroupInterface()
        size : Int32 = groupInterfaceArray.not_nil!.size
        id : Int32 = 0
        groupList : BasicArrayList? = nil
        index : Int32 = 0
        jfor6 = false
        while true
            if jfor6
                index &+= 1
            end
            jfor6 = true
            break unless index < size
            id = (groupInterfaceArray.not_nil![index].not_nil!.getGroupId()).to_i32!
            groupList = JR.cast(@list.not_nil!.jf_objectArray.not_nil![id], BasicArrayList)
            if (groupList).nil?
                @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append("id: ").not_nil!.appendint(id).not_nil!.toString(), self, "onCreateLayerManagerEvent")
            end
            if !groupList.not_nil!.contains(layerInterface)
                groupList.not_nil!.add(layerInterface)
            else
            end
        end
    end
    

    def onDeleteLayerManagerEvent(layerManagerEvent : LayerManagerEvent?) : Nil
        layerInterface : AllBinaryLayer? = layerManagerEvent.not_nil!.getLayerInterface()
        groupInterfaceArray : Array(Group?)? = layerInterface.not_nil!.getGroupInterface()
        size : Int32 = groupInterfaceArray.not_nil!.size
        id : Int32 = 0
        groupList : BasicArrayList? = nil
        index : Int32 = 0
        jfor7 = false
        while true
            if jfor7
                index &+= 1
            end
            jfor7 = true
            break unless index < size
            id = (groupInterfaceArray.not_nil![index].not_nil!.getGroupId()).to_i32!
            groupList = JR.cast(@list.not_nil!.jf_objectArray.not_nil![id], BasicArrayList)
            groupList.not_nil!.remove(layerInterface)
        end
    end
    

    def log : Nil
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        j_GROUP : String = "Group: "
        j_SPACE : String = CommonSeps.getInstance().not_nil!.jf_SPACE
        j_TOTAL_LABEL : String = CommonLabels.getInstance().not_nil!.jf_TOTAL_LABEL
        size : Int32 = @list.not_nil!.size()
        index : Int32 = size &- 1
        jfor8 = false
        while true
            if jfor8
                index &-= 1
            end
            jfor8 = true
            break unless index >= 0
            groupList : BasicArrayList? = JR.cast(@list.not_nil!.jf_objectArray.not_nil![index], BasicArrayList)
            stringBuffer.not_nil!.append(j_GROUP)
            stringBuffer.not_nil!.appendint(index)
            stringBuffer.not_nil!.append(j_SPACE)
            stringBuffer.not_nil!.append(j_TOTAL_LABEL)
            stringBuffer.not_nil!.appendint(groupList.not_nil!.size())
            stringBuffer.not_nil!.append(j_SPACE)
        end
        @logUtil.not_nil!.putF(stringBuffer.not_nil!.toString(), self, "log")
    end
end

