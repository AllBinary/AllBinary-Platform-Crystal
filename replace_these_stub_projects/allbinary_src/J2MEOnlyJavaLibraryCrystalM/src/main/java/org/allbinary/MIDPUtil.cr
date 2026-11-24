#
# AllBinary Open License Version 1
# Copyright (c) 2026 AllBinary
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
# package org.allbinary

class MIDPUtil < JObject

    @@jst_instance : MIDPUtil? = nil

    def self.jst_instance : MIDPUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : MIDPUtil?) : MIDPUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = MIDPUtil.new.jinit_MIDPUtil()
    end
    

    def self.getInstance : MIDPUtil?
        return MIDPUtil.jst_instance
    end

    def jinit_MIDPUtil : self
        self
    end
    

    def createImageWH(width : Int, height : Int) : Image?
        width = width.to_i32!
        height = height.to_i32!
        return Image.createImageWH(width, height)
    end
    

    def createImageFromByteArray(imageData : Array(Int8)?, imageOffset : Int, imageLength : Int) : Image?
        imageOffset = imageOffset.to_i32!
        imageLength = imageLength.to_i32!
        return Image.createImageFromByteArray(imageData, imageOffset, imageLength)
    end
    

    def createImageFromInputStream(inputStream : JInputStream?) : Image?
        return Image.createImageFromInputStream(inputStream)
    end
    

    def createPlayerFromInputStream(inputStream : JInputStream?, type_ : String) : Player?
        return JR.cast(Manager.createPlayerFromInputStream(inputStream, type_), Player)
    end
    

    def appendItem(form : Form?, item : Item?) : Int32
        return form.not_nil!.appendItem(item)
    end
end

