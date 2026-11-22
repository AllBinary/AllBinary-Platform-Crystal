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
# package org.allbinary.image

class ImageCacheBase < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @imageFactory : ImageFactory? = nil

    def jf_imageFactory : ImageFactory?
        @imageFactory
    end

    def jf_imageFactory=(value : ImageFactory?) : ImageFactory?
        @imageFactory = value
    end
    @hashtable : ABHashtable? = nil

    def jf_hashtable : ABHashtable?
        @hashtable
    end

    def jf_hashtable=(value : ABHashtable?) : ABHashtable?
        @hashtable = value
    end
    @j_SIZE : Int32 = 0

    def jf_SIZE : Int32
        @j_SIZE
    end

    def jf_SIZE=(value : Int32) : Int32
        @j_SIZE = value
    end
    @widths : Array(Int32)? = nil

    def jf_widths : Array(Int32)?
        @widths
    end

    def jf_widths=(value : Array(Int32)?) : Array(Int32)?
        @widths = value
    end
    @heights : Array(Int32)? = nil

    def jf_heights : Array(Int32)?
        @heights
    end

    def jf_heights=(value : Array(Int32)?) : Array(Int32)?
        @heights = value
    end
    @listOfList : Array(BasicArrayList?)? = nil

    def jf_listOfList : Array(BasicArrayList?)?
        @listOfList
    end

    def jf_listOfList=(value : Array(BasicArrayList?)?) : Array(BasicArrayList?)?
        @listOfList = value
    end
    @availableListOfList : Array(BasicArrayList?)? = nil

    def jf_availableListOfList : Array(BasicArrayList?)?
        @availableListOfList
    end

    def jf_availableListOfList=(value : Array(BasicArrayList?)?) : Array(BasicArrayList?)?
        @availableListOfList = value
    end
    @volume : Int32 = 0

    def jf_volume : Int32
        @volume
    end

    def jf_volume=(value : Int32) : Int32
        @volume = value
    end
    @nextIndex : Int32 = 0

    def jf_nextIndex : Int32
        @nextIndex
    end

    def jf_nextIndex=(value : Int32) : Int32
        @nextIndex = value
    end

    # Java field initializers run after the super constructor
    def jfields_ImageCacheBase : Nil
    @logUtil = LogUtil.getInstance()
    @imageFactory = ImageFactory.getInstance()
    @hashtable = StdUtil.getInstance().not_nil!.createHashtable()
    @j_SIZE = 128
    @widths = Array(Int32).new(@j_SIZE, 0)
    @heights = Array(Int32).new(@j_SIZE, 0)
    @listOfList = Array(BasicArrayList?).new(@j_SIZE, nil)
    @availableListOfList = Array(BasicArrayList?).new(@j_SIZE, nil)
    @volume = 0
    @nextIndex = 0
    end
    

    def jinit_ImageCacheBase : self
        jfields_ImageCacheBase()
        index = @listOfList.not_nil!.size &- 1
        jfor1 = false
        while true
            if jfor1
                index &-= 1
            end
            jfor1 = true
            break unless index >= 0
            @listOfList.not_nil![index] = BasicArrayListD.new.jinit_BasicArrayListD()
        end
        index = @availableListOfList.not_nil!.size &- 1
        jfor2 = false
        while true
            if jfor2
                index &-= 1
            end
            jfor2 = true
            break unless index >= 0
            @availableListOfList.not_nil![index] = BasicArrayListD.new.jinit_BasicArrayListD()
        end
        self
    end
    

    def getImage(resourceId : JAny) : Image?
        imageCanBeNull : JAny = @hashtable.not_nil!.get(resourceId)
        if (imageCanBeNull).nil?
            return NullImage.jst_NULL_IMAGE
        end
        return JR.cast(imageCanBeNull, Image)
    end
    

    def releaseAll : Nil
        index : Int32 = @listOfList.not_nil!.size &- 1
        jfor3 = false
        while true
            if jfor3
                index &-= 1
            end
            jfor3 = true
            break unless index >= 0
            @availableListOfList.not_nil![index].not_nil!.clear()
            @availableListOfList.not_nil![index].not_nil!.addAllList(@listOfList.not_nil![index])
        end
        @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append("ImageCache: ").not_nil!.append(self.toString()).not_nil!.toString(), self, "releaseAll")
    end
    

    def getIndexWH(width : Int, height : Int) : Int32
        width = width.to_i32!
        height = height.to_i32!
        foundIndex : Int32 = -1
        size : Int32 = @widths.not_nil!.size
        index : Int32 = 0
        jfor4 = false
        while true
            if jfor4
                index &+= 1
            end
            jfor4 = true
            break unless index < size
            if @widths.not_nil![index] == width && @heights.not_nil![index] == height
                foundIndex = index
                return foundIndex
            end
        end
        return foundIndex
    end
    

    def getFromAvailable(foundIndex : Int, width : Int, height : Int) : Image?
        foundIndex = foundIndex.to_i32!
        width = width.to_i32!
        height = height.to_i32!
        if foundIndex != -1
            if @availableListOfList.not_nil![foundIndex].not_nil!.size() > 0
                list : BasicArrayList? = @availableListOfList.not_nil![foundIndex]
                return JR.cast(list.not_nil!.removeAt(list.not_nil!.size() &- 1), Image)
            end
        end
        return NullImage.jst_NULL_IMAGE
    end
    

    def get(caller : String, width : Int, height : Int) : Image?
        width = width.to_i32!
        height = height.to_i32!
        raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
    end
    

    def getWithKey(key : JAny) : Image?
        raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
    end
    

    def createImage(caller : String, width : Int, height : Int) : Image?
        width = width.to_i32!
        height = height.to_i32!
        return @imageFactory.not_nil!.createImage(caller, width, height)
    end
    

    def createImageFromInputStream(key : JAny, inputStream : JInputStream?) : Image?
        return @imageFactory.not_nil!.createImageFromInputStream(key, inputStream)
    end
    

    def toString : String
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        index : Int32 = @nextIndex &- 1
        jfor5 = false
        while true
            if jfor5
                index &-= 1
            end
            jfor5 = true
            break unless index >= 0
            width : Int32 = @widths.not_nil![index]
            height : Int32 = @heights.not_nil![index]
            total : Int32 = @listOfList.not_nil![index].not_nil!.size()
            totalAvailable : Int32 = @availableListOfList.not_nil![index].not_nil!.size()
            stringBuffer.not_nil!.append(" w: ")
            stringBuffer.not_nil!.appendint(width)
            stringBuffer.not_nil!.append(" h: ")
            stringBuffer.not_nil!.appendint(height)
            stringBuffer.not_nil!.append(CommonSeps.getInstance().not_nil!.jf_SPACE)
            stringBuffer.not_nil!.append(CommonLabels.getInstance().not_nil!.jf_TOTAL_LABEL)
            stringBuffer.not_nil!.appendint(total)
            stringBuffer.not_nil!.append(" available: ")
            stringBuffer.not_nil!.appendint(totalAvailable)
        end
        return stringBuffer.not_nil!.toString()
    end
    

    def getHashtableP : ABHashtable?
        return @hashtable
    end
    

    def init(image : Image?) : Nil
    end
    

    def initProgress : Nil
    end
end

