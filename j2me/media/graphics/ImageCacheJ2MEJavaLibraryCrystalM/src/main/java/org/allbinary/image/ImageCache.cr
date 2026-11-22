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

class ImageCache < ImageCacheBase
    @commonStrings : CommonStrings? = nil

    def jf_commonStrings : CommonStrings?
        @commonStrings
    end

    def jf_commonStrings=(value : CommonStrings?) : CommonStrings?
        @commonStrings = value
    end
    @tsUtil : TsUtil? = nil

    def jf_tsUtil : TsUtil?
        @tsUtil
    end

    def jf_tsUtil=(value : TsUtil?) : TsUtil?
        @tsUtil = value
    end

    @@jst_NULL_IMAGE_CACHE : ImageCache? = nil

    def self.jst_NULL_IMAGE_CACHE : ImageCache?
        jclinit
        @@jst_NULL_IMAGE_CACHE
    end

    def self.jst_NULL_IMAGE_CACHE=(value : ImageCache?) : ImageCache?
        jclinit
        @@jst_NULL_IMAGE_CACHE = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_IMAGE_CACHE = ImageCache.new.jinit_ImageCache()
    end

    # Java field initializers run after the super constructor
    def jfields_ImageCache : Nil
    @commonStrings = CommonStrings.getInstance()
    @tsUtil = TsUtil.getInstance()
    end
    

    def jinit_ImageCache : self
        jinit_ImageCacheBase()
        jfields_ImageCache()
        self
    end
    

    def addListener(renderer : JAny) : Nil
    end
    

    def getIndex(key : JAny) : Int32
        gdResources : GDResources? = GDResources.getInstance()
        resourceStringArray : Array(String)? = gdResources.not_nil!.jf_resourceStringArray
        size : Int32 = resourceStringArray.not_nil!.size
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < size
            if resourceStringArray.not_nil![index] == key
                return index
            end
        end
        @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append("unable to find key: ").not_nil!.append(StringUtil.getInstance().not_nil!.toString(key)).not_nil!.toString(), self, @commonStrings.not_nil!.jf_RUN)
        raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
    end
    

    def get(caller : String, width : Int, height : Int) : Image?
        width = width.to_i32!
        height = height.to_i32!
        foundIndex : Int32 = self.getIndexWH(width, height)
        image : Image? = self.getFromAvailable(foundIndex, width, height)
        if image == NullImage.jst_NULL_IMAGE
            @volume += width &* height
            if @volume > 32000
                @tsUtil.not_nil!.gc()
                @volume = 0
            end
            image = self.createImage(caller, width, height)
            widths : Array(Int32)? = @widths
            if @nextIndex > widths.not_nil!.size &- 1
                if foundIndex == -1
                    foundIndex = @nextIndex
                    widths.not_nil![@nextIndex] = width
                    @heights.not_nil![@nextIndex] = height
                    @nextIndex &+= 1
                end
                @listOfList.not_nil![foundIndex].not_nil!.add(image)
            end
        end
        return image
    end
    

    def getWithKey(key : JAny) : Image?
        image : Image? = self.getImage(key)
        if image == NullImage.jst_NULL_IMAGE
            resourceUtil : ResourceUtil? = ResourceUtil.getInstance()
            resourceInputStream : JInputStream? = resourceUtil.not_nil!.getResourceAsStream(JR.castString(key))
            if (resourceInputStream).nil?
                raise (JRuntimeException.new.jinit_JRuntimeException(StringMaker.new.jinit_StringMaker().not_nil!.append("Image resource is not available for key: ").not_nil!.append(StringUtil.getInstance().not_nil!.toString(key)).not_nil!.toString())).not_nil!
            end
            begin
                image = self.createImageFromInputStream(key, resourceInputStream)
            rescue jexc1 : ::Exception
                jex1 = JR.jthrowable(jexc1)
                if jex1.is_a?(JException)
                    e = jex1.as(JException)
                @logUtil.not_nil!.put("Exception: Trying Again After GC", self, @commonStrings.not_nil!.jf_GET, e)
                @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append("InputStream: ").not_nil!.append(StringUtil.getInstance().not_nil!.toString(resourceInputStream)).not_nil!.toString(), self, @commonStrings.not_nil!.jf_GET)
                @tsUtil.not_nil!.gc()
                @tsUtil.not_nil!.gc()
                @logUtil.not_nil!.putF(Memory.getInfo(), self, @commonStrings.not_nil!.jf_GET)
                JThread.sleep_j(100)
                image = self.createImageFromInputStream(key, resourceInputStream)
                else
                    raise jex1
                end
            end
            if J2MEUtil.isHTML()
            else
                resourceInputStream.not_nil!.close()
            end
            @hashtable.not_nil!.put(key, image)
        end
        return image
    end
    

    def loadImageForAnimation : Nil
    end
    

    def progressEnded : Nil
    end
    

    def runTask : Nil
    end
    

    def isLazy : Bool
        return false
    end
end

