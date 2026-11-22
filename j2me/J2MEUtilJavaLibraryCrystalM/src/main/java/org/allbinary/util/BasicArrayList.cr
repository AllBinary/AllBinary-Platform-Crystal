# Generated Code Do Not Modify
# package org.allbinary.util

class BasicArrayList < JObject
    @arrayUtil : ArrayUtil? = nil

    def jf_arrayUtil : ArrayUtil?
        @arrayUtil
    end

    def jf_arrayUtil=(value : ArrayUtil?) : ArrayUtil?
        @arrayUtil = value
    end
    @objectArray : Array(JAny)? = nil

    def jf_objectArray : Array(JAny)?
        @objectArray
    end

    def jf_objectArray=(value : Array(JAny)?) : Array(JAny)?
        @objectArray = value
    end
    @currentIndex : Int32 = 0

    def jf_currentIndex : Int32
        @currentIndex
    end

    def jf_currentIndex=(value : Int32) : Int32
        @currentIndex = value
    end

    def self.jst_SIZE : String
        ", Size: "
    end

    # Java field initializers run after the super constructor
    def jfields_BasicArrayList : Nil
    @arrayUtil = ArrayUtil.getInstance()
    
    @currentIndex = 0
    end
    

    def jinit_BasicArrayList(objectArray : Array(JAny)?) : self
        jfields_BasicArrayList()
        @objectArray = objectArray
        self
    end
    

    def addAt(index : Int, element : JAny) : Nil
        index = index.to_i32!
        if index > @currentIndex || index < 0
            stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
            stringBuffer.not_nil!.append(CommonLabels.getInstance().not_nil!.jf_INDEX_LABEL)
            stringBuffer.not_nil!.appendint(index)
            stringBuffer.not_nil!.append(BasicArrayList.jst_SIZE)
            stringBuffer.not_nil!.appendint(@currentIndex)
            raise (JIndexOutOfBoundsException.new.jinit_JIndexOutOfBoundsException(stringBuffer.not_nil!.toString())).not_nil!
        end
        self.ensureCapacity(@currentIndex &+ 1)
        JSystem.arraycopy(@objectArray, index, @objectArray, index &+ 1, @currentIndex &- index)
        @objectArray.not_nil![index] = element
        @currentIndex &+= 1
    end
    

    def add(anyType : JAny) : Bool
        self.ensureCapacity(@currentIndex &+ 1)
        @objectArray.not_nil![((@currentIndex &+= 1) &- 1)] = anyType
        return true
    end
    

    def removeAt(index : Int) : JAny
        index = index.to_i32!
        if index >= @currentIndex
            stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
            stringBuffer.not_nil!.append(CommonLabels.getInstance().not_nil!.jf_INDEX_LABEL)
            stringBuffer.not_nil!.appendint(index)
            stringBuffer.not_nil!.append(BasicArrayList.jst_SIZE)
            stringBuffer.not_nil!.appendint(@currentIndex)
            raise (JIndexOutOfBoundsException.new.jinit_JIndexOutOfBoundsException(stringBuffer.not_nil!.toString())).not_nil!
        end
        oldValue : JAny = @objectArray.not_nil![index]
        numMoved : Int32 = @currentIndex &- index &- 1
        if numMoved > 0
            JSystem.arraycopy(@objectArray, index &+ 1, @objectArray, index, numMoved)
        end
        @objectArray.not_nil![(@currentIndex &-= 1)] = nil
        return oldValue
    end
    

    def remove(anyType : JAny) : Bool
        if (anyType).nil?
            index = 0
            jfor2 = false
            while true
                if jfor2
                    index &+= 1
                end
                jfor2 = true
                break unless index < @currentIndex
                if (@objectArray.not_nil![index]).nil?
                    numMoved = @currentIndex &- index &- 1
                    if numMoved > 0
                        JSystem.arraycopy(@objectArray, index &+ 1, @objectArray, index, numMoved)
                    end
                    @objectArray.not_nil![(@currentIndex &-= 1)] = nil
                    return true
                end
            end
        else
            index = 0
            jfor1 = false
            while true
                if jfor1
                    index &+= 1
                end
                jfor1 = true
                break unless index < @currentIndex
                if anyType == @objectArray.not_nil![index] || anyType.not_nil!.equals(@objectArray.not_nil![index])
                    numMoved = @currentIndex &- index &- 1
                    if numMoved > 0
                        JSystem.arraycopy(@objectArray, index &+ 1, @objectArray, index, numMoved)
                    end
                    @objectArray.not_nil![(@currentIndex &-= 1)] = nil
                    return true
                end
            end
        end
        return false
    end
    

    def removeAll2(list : BasicArrayList?) : Bool
        result : Bool = true
        size : Int32 = list.not_nil!.size()
        index : Int32 = 0
        jfor3 = false
        while true
            if jfor3
                index &+= 1
            end
            jfor3 = true
            break unless index < size
            if self.remove(list.not_nil!.get(index))
            else
                result = false
            end
        end
        return result
    end
    

    def addAll2(list : BasicArrayList?) : Bool
        self.ensureCapacity(@currentIndex + list.not_nil!.jf_currentIndex)
        listSize : Int32 = list.not_nil!.jf_currentIndex
        index : Int32 = 0
        jfor4 = false
        while true
            if jfor4
                index &+= 1
            end
            jfor4 = true
            break unless index < listSize
            @objectArray.not_nil![((@currentIndex &+= 1) &- 1)] = list.not_nil!.jf_objectArray.not_nil![index]
        end
        return true
    end
    

    def addAllList(list : BasicArrayList?) : Bool
        newObjectArray : Array(JAny)? = list.not_nil!.toArray()
        return self.addAll(newObjectArray)
    end
    

    def addAll(newObjectArray : Array(JAny)?) : Bool
        numSize : Int32 = newObjectArray.not_nil!.size
        self.ensureCapacity(@currentIndex &+ numSize)
        JSystem.arraycopy(newObjectArray, 0, @objectArray, @currentIndex, numSize)
        @currentIndex &+= numSize
        return numSize != 0
    end
    

    def ensureCapacity(minSize : Int) : Nil
        minSize = minSize.to_i32!
        oldCapacity : Int32 = @objectArray.not_nil!.size
        if minSize > oldCapacity
            newCapacity : Int32 = (JR.shr((oldCapacity &* 3), 1)) &+ 1
            if newCapacity < minSize
                newCapacity = minSize
            end
            @objectArray = @arrayUtil.not_nil!.copyOf(@objectArray, newCapacity)
        end
    end
    

    def trimToSize : Nil
        oldCapacity : Int32 = @objectArray.not_nil!.size
        if @currentIndex < oldCapacity
            @objectArray = @arrayUtil.not_nil!.copyOf(@objectArray, @currentIndex)
        end
    end
    

    def indexOf(anyType : JAny) : Int32
        if (anyType).nil?
            i = 0
            jfor6 = false
            while true
                if jfor6
                    i &+= 1
                end
                jfor6 = true
                break unless i < @currentIndex
                if (@objectArray.not_nil![i]).nil?
                    return i
                end
            end
        else
            i = 0
            jfor5 = false
            while true
                if jfor5
                    i &+= 1
                end
                jfor5 = true
                break unless i < @currentIndex
                if anyType.not_nil!.equals(@objectArray.not_nil![i])
                    return i
                end
            end
        end
        return -1
    end
    

    def lastIndexOf(anyType : JAny) : Int32
        if (anyType).nil?
            i = @currentIndex &- 1
            jfor8 = false
            while true
                if jfor8
                    i &-= 1
                end
                jfor8 = true
                break unless i >= 0
                if (@objectArray.not_nil![i]).nil?
                    return i
                end
            end
        else
            i = @currentIndex &- 1
            jfor7 = false
            while true
                if jfor7
                    i &-= 1
                end
                jfor7 = true
                break unless i >= 0
                if anyType.not_nil!.equals(@objectArray.not_nil![i])
                    return i
                end
            end
        end
        return -1
    end
    

    def get(index : Int) : JAny
        index = index.to_i32!
        if index >= @currentIndex
            stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
            stringBuffer.not_nil!.append(CommonLabels.getInstance().not_nil!.jf_INDEX_LABEL)
            stringBuffer.not_nil!.appendint(index)
            stringBuffer.not_nil!.append(BasicArrayList.jst_SIZE)
            stringBuffer.not_nil!.appendint(@currentIndex)
            raise (JIndexOutOfBoundsException.new.jinit_JIndexOutOfBoundsException(stringBuffer.not_nil!.toString())).not_nil!
        end
        return @objectArray.not_nil![index]
    end
    

    def set(index : Int, element : JAny) : JAny
        index = index.to_i32!
        if index >= @currentIndex
            stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
            stringBuffer.not_nil!.append(CommonLabels.getInstance().not_nil!.jf_INDEX_LABEL)
            stringBuffer.not_nil!.appendint(index)
            stringBuffer.not_nil!.append(BasicArrayList.jst_SIZE)
            stringBuffer.not_nil!.appendint(@currentIndex)
            raise (JIndexOutOfBoundsException.new.jinit_JIndexOutOfBoundsException(stringBuffer.not_nil!.toString())).not_nil!
        end
        oldValue : JAny = @objectArray.not_nil![index]
        @objectArray.not_nil![index] = element
        return oldValue
    end
    

    def clear : Nil
        i : Int32 = 0
        jfor9 = false
        while true
            if jfor9
                i &+= 1
            end
            jfor9 = true
            break unless i < @currentIndex
            @objectArray.not_nil![i] = nil
        end
        @currentIndex = 0
    end
    

    def size : Int32
        return @currentIndex
    end
    

    def isEmpty : Bool
        return @currentIndex == 0
    end
    

    def contains(anyType : JAny) : Bool
        return self.indexOf(anyType) >= 0
    end
    

    def toArray : Array(JAny)?
        return @arrayUtil.not_nil!.copyOf(@objectArray, @currentIndex)
    end
    

    def toArrayType(objectArray : Array(JAny)?) : Array(JAny)?
        if objectArray.not_nil!.size < @currentIndex
            return @arrayUtil.not_nil!.copyOfType(@objectArray, @currentIndex, JR.jclass(objectArray))
        end
        JSystem.arraycopy(@objectArray, 0, objectArray, 0, @currentIndex)
        if objectArray.not_nil!.size > @currentIndex
            objectArray.not_nil![@currentIndex] = nil
        end
        return objectArray
    end
    

    def clone_j : JAny
        size : Int32 = self.size()
        list : BasicArrayList? = BasicArrayListS.new.jinit_BasicArrayListS(size)
        anyType : JAny = nil
        index : Int32 = 0
        jfor10 = false
        while true
            if jfor10
                index &+= 1
            end
            jfor10 = true
            break unless index < size
            anyType = @objectArray.not_nil![index]
            list.not_nil!.add(anyType)
        end
        return list
    end
    

    def toString : String
        j_COMMA_SEP : String = CommonSeps.getInstance().not_nil!.jf_COMMA_SEP
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        index : Int32 = 0
        jfor11 = false
        while true
            if jfor11
                index &+= 1
            end
            jfor11 = true
            break unless index < @currentIndex
            stringBuffer.not_nil!.append(@objectArray.not_nil![index].not_nil!.toString())
            stringBuffer.not_nil!.append(j_COMMA_SEP)
        end
        return stringBuffer.not_nil!.toString()
    end
end

