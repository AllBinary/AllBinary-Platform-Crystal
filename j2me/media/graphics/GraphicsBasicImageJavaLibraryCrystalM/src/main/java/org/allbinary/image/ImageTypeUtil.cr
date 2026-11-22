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

class ImageTypeUtil < JObject
    @j_PNG : String = ""

    def jf_PNG : String
        @j_PNG
    end

    def jf_PNG=(value : String) : String
        @j_PNG = value
    end
    @j_JPG : String = ""

    def jf_JPG : String
        @j_JPG
    end

    def jf_JPG=(value : String) : String
        @j_JPG = value
    end
    @j_GIF : String = ""

    def jf_GIF : String
        @j_GIF
    end

    def jf_GIF=(value : String) : String
        @j_GIF = value
    end
    @list : BasicArrayList? = nil

    def jf_list : BasicArrayList?
        @list
    end

    def jf_list=(value : BasicArrayList?) : BasicArrayList?
        @list = value
    end

    @@jst_SINGLETON : ImageTypeUtil? = nil

    def self.jst_SINGLETON : ImageTypeUtil?
        jclinit
        @@jst_SINGLETON
    end

    def self.jst_SINGLETON=(value : ImageTypeUtil?) : ImageTypeUtil?
        jclinit
        @@jst_SINGLETON = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_SINGLETON = ImageTypeUtil.new.jinit_ImageTypeUtil()
    end
    

    def self.getInstance : ImageTypeUtil?
        return ImageTypeUtil.jst_SINGLETON
    end

    # Java field initializers run after the super constructor
    def jfields_ImageTypeUtil : Nil
    @j_PNG = "png"
    @j_JPG = "jpg"
    @j_GIF = "gif"
    @list = BasicArrayListD.new.jinit_BasicArrayListD()
    end
    

    def jinit_ImageTypeUtil : self
        jfields_ImageTypeUtil()
        @list.not_nil!.add(@j_JPG)
        @list.not_nil!.add(@j_GIF)
        @list.not_nil!.add(@j_PNG)
        self
    end
    

    def isSupported(mediaFileType : String) : Bool
        mediaFileType = mediaFileType.not_nil!.toLowerCase()
        index : Int32 = @list.not_nil!.size() &- 1
        jfor1 = false
        while true
            if jfor1
                index &-= 1
            end
            jfor1 = true
            break unless index >= 0
            name : String = JR.castString(@list.not_nil!.get(index))
            if mediaFileType.not_nil!.compareTo(name) == 0
                return true
            end
        end
        return false
    end
end

