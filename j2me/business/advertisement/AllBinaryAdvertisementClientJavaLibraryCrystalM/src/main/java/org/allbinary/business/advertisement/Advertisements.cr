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
# package org.allbinary.business.advertisement

class Advertisements < JObject
    @bannerList : BasicArrayList? = nil

    def jf_bannerList : BasicArrayList?
        @bannerList
    end

    def jf_bannerList=(value : BasicArrayList?) : BasicArrayList?
        @bannerList = value
    end
    @pageList : BasicArrayList? = nil

    def jf_pageList : BasicArrayList?
        @pageList
    end

    def jf_pageList=(value : BasicArrayList?) : BasicArrayList?
        @pageList = value
    end
    @myRandomFactory : MyRandomFactory? = nil

    def jf_myRandomFactory : MyRandomFactory?
        @myRandomFactory
    end

    def jf_myRandomFactory=(value : MyRandomFactory?) : MyRandomFactory?
        @myRandomFactory = value
    end

    # Java field initializers run after the super constructor
    def jfields_Advertisements : Nil
    @bannerList = BasicArrayListD.new.jinit_BasicArrayListD()
    @pageList = BasicArrayListD.new.jinit_BasicArrayListD()
    @myRandomFactory = MyRandomFactory.getInstance()
    end

    def jinit_Advertisements : self
        jfields_Advertisements()
        self
    end
    

    def addPage(advertisementProcessorInterface : AdvertisementProcessorInterface?) : Nil
        if !@pageList.not_nil!.contains(advertisementProcessorInterface)
            @pageList.not_nil!.add(advertisementProcessorInterface)
        end
    end
    

    def startRandomPage : Nil
        size : Int32 = @pageList.not_nil!.size()
        if size > 0
            random : Int32 = @myRandomFactory.not_nil!.getAbsoluteNextInt(size)
            advertisementProcessorInterface : AdvertisementProcessorInterface? = JR.cast(@pageList.not_nil!.jf_objectArray.not_nil![random], AdvertisementProcessorInterface)
            advertisementProcessorInterface.not_nil!.start()
        end
    end
    

    def processRandomPage : Nil
        if LockedUtil.getInstance().not_nil!.isLocked()
            size : Int32 = @pageList.not_nil!.size()
            if size > 0
                random : Int32 = @myRandomFactory.not_nil!.getAbsoluteNextInt(size)
                advertisementProcessorInterface : AdvertisementProcessorInterface? = JR.cast(@pageList.not_nil!.jf_objectArray.not_nil![random], AdvertisementProcessorInterface)
                advertisementProcessorInterface.not_nil!.process()
            end
        end
    end
    

    def stopAllPage : Nil
        index : Int32 = @pageList.not_nil!.size()
        jfor1 = false
        while true
            jfor1 = true
            break unless (index &-= 1) >= 0
            advertisementProcessorInterface : AdvertisementProcessorInterface? = JR.cast(@pageList.not_nil!.jf_objectArray.not_nil![index], AdvertisementProcessorInterface)
            advertisementProcessorInterface.not_nil!.stop()
        end
    end
    

    def addBanner(advertisementProcessorInterface : AdvertisementProcessorInterface?) : Nil
        if !@bannerList.not_nil!.contains(advertisementProcessorInterface)
            @bannerList.not_nil!.add(advertisementProcessorInterface)
        end
    end
    

    def startAll : Nil
        index : Int32 = @bannerList.not_nil!.size()
        jfor2 = false
        while true
            jfor2 = true
            break unless (index &-= 1) >= 0
            advertisementProcessorInterface : AdvertisementProcessorInterface? = JR.cast(@bannerList.not_nil!.jf_objectArray.not_nil![index], AdvertisementProcessorInterface)
            advertisementProcessorInterface.not_nil!.start()
        end
    end
    

    def stopAllBanner : Nil
        index : Int32 = @bannerList.not_nil!.size()
        jfor3 = false
        while true
            jfor3 = true
            break unless (index &-= 1) >= 0
            advertisementProcessorInterface : AdvertisementProcessorInterface? = JR.cast(@bannerList.not_nil!.jf_objectArray.not_nil![index], AdvertisementProcessorInterface)
            advertisementProcessorInterface.not_nil!.stop()
        end
    end
    

    def getBanner(index : Int) : AdvertisementProcessorInterface?
        index = index.to_i32!
        advertisementProcessorInterface : AdvertisementProcessorInterface? = JR.cast(@bannerList.not_nil!.jf_objectArray.not_nil![index], AdvertisementProcessorInterface)
        return advertisementProcessorInterface
    end
    

    def stopAll : Nil
        self.stopAllBanner()
        self.stopAllPage()
    end
end

