# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package javax.microedition.lcdui

class ChoiceGroupImageFactory < JObject
    @multiOff : Array(Int8)? = nil

    def jf_multiOff : Array(Int8)?
        @multiOff
    end

    def jf_multiOff=(value : Array(Int8)?) : Array(Int8)?
        @multiOff = value
    end
    @multiOn : Array(Int8)? = nil

    def jf_multiOn : Array(Int8)?
        @multiOn
    end

    def jf_multiOn=(value : Array(Int8)?) : Array(Int8)?
        @multiOn = value
    end
    @radioOff : Array(Int8)? = nil

    def jf_radioOff : Array(Int8)?
        @radioOff
    end

    def jf_radioOff=(value : Array(Int8)?) : Array(Int8)?
        @radioOff = value
    end
    @radioOn : Array(Int8)? = nil

    def jf_radioOn : Array(Int8)?
        @radioOn
    end

    def jf_radioOn=(value : Array(Int8)?) : Array(Int8)?
        @radioOn = value
    end
    @midpUtil : MIDPUtil? = nil

    def jf_midpUtil : MIDPUtil?
        @midpUtil
    end

    def jf_midpUtil=(value : MIDPUtil?) : MIDPUtil?
        @midpUtil = value
    end
    @imgMultiOffO : Image? = nil

    def jf_imgMultiOffO : Image?
        @imgMultiOffO
    end

    def jf_imgMultiOffO=(value : Image?) : Image?
        @imgMultiOffO = value
    end
    @imgMultiOnO : Image? = nil

    def jf_imgMultiOnO : Image?
        @imgMultiOnO
    end

    def jf_imgMultiOnO=(value : Image?) : Image?
        @imgMultiOnO = value
    end
    @imgRadioOffO : Image? = nil

    def jf_imgRadioOffO : Image?
        @imgRadioOffO
    end

    def jf_imgRadioOffO=(value : Image?) : Image?
        @imgRadioOffO = value
    end
    @imgRadioOnO : Image? = nil

    def jf_imgRadioOnO : Image?
        @imgRadioOnO
    end

    def jf_imgRadioOnO=(value : Image?) : Image?
        @imgRadioOnO = value
    end
    @imgMultiOff : Image? = nil

    def jf_imgMultiOff : Image?
        @imgMultiOff
    end

    def jf_imgMultiOff=(value : Image?) : Image?
        @imgMultiOff = value
    end
    @imgMultiOn : Image? = nil

    def jf_imgMultiOn : Image?
        @imgMultiOn
    end

    def jf_imgMultiOn=(value : Image?) : Image?
        @imgMultiOn = value
    end
    @imgRadioOff : Image? = nil

    def jf_imgRadioOff : Image?
        @imgRadioOff
    end

    def jf_imgRadioOff=(value : Image?) : Image?
        @imgRadioOff = value
    end
    @imgRadioOn : Image? = nil

    def jf_imgRadioOn : Image?
        @imgRadioOn
    end

    def jf_imgRadioOn=(value : Image?) : Image?
        @imgRadioOn = value
    end
    @imageArray : Array(Image?)? = nil

    def jf_imageArray : Array(Image?)?
        @imageArray
    end

    def jf_imageArray=(value : Array(Image?)?) : Array(Image?)?
        @imageArray = value
    end

    @@jst_instance : ChoiceGroupImageFactory? = nil

    def self.jst_instance : ChoiceGroupImageFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : ChoiceGroupImageFactory?) : ChoiceGroupImageFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = ChoiceGroupImageFactory.new.jinit_ChoiceGroupImageFactory()
    end
    

    def self.getInstance : ChoiceGroupImageFactory?
        return ChoiceGroupImageFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_ChoiceGroupImageFactory : Nil
    @multiOff = [(-119).to_i8!, 80_i8, 78_i8, 71_i8, 13_i8, 10_i8, 26_i8, 10_i8, 0_i8, 0_i8, 0_i8, 13_i8, 73_i8, 72_i8, 68_i8, 82_i8, 0_i8, 0_i8, 0_i8, 10_i8, 0_i8, 0_i8, 0_i8, 11_i8, 2_i8, 3_i8, 0_i8, 0_i8, 0_i8, 59_i8, 0_i8, (-12).to_i8!, (-117).to_i8!, 0_i8, 0_i8, 0_i8, 6_i8, 80_i8, 76_i8, 84_i8, 69_i8, (-1).to_i8!, (-1).to_i8!, (-1).to_i8!, (-69).to_i8!, (-69).to_i8!, (-69).to_i8!, (-57).to_i8!, 75_i8, (-33).to_i8!, (-8).to_i8!, 0_i8, 0_i8, 0_i8, 30_i8, 73_i8, 68_i8, 65_i8, 84_i8, 120_i8, (-38).to_i8!, 99_i8, 96_i8, 96_i8, 96_i8, 96_i8, 12_i8, 101_i8, (-8).to_i8!, (-51).to_i8!, (-32).to_i8!, (-64).to_i8!, 32_i8, (-64).to_i8!, (-60).to_i8!, (-64).to_i8!, (-64).to_i8!, (-128).to_i8!, 11_i8, 51_i8, (-122).to_i8!, 50_i8, (-4).to_i8!, 6_i8, 0_i8, 63_i8, 116_i8, 3_i8, 1_i8, 53_i8, (-108).to_i8!, 39_i8, (-26).to_i8!, 0_i8, 0_i8, 0_i8, 0_i8, 73_i8, 69_i8, 78_i8, 68_i8, (-82).to_i8!, 66_i8, 96_i8, (-126).to_i8!] of Int8
    @multiOn = [(-119).to_i8!, 80_i8, 78_i8, 71_i8, 13_i8, 10_i8, 26_i8, 10_i8, 0_i8, 0_i8, 0_i8, 13_i8, 73_i8, 72_i8, 68_i8, 82_i8, 0_i8, 0_i8, 0_i8, 10_i8, 0_i8, 0_i8, 0_i8, 11_i8, 2_i8, 3_i8, 0_i8, 0_i8, 0_i8, 59_i8, 0_i8, (-12).to_i8!, (-117).to_i8!, 0_i8, 0_i8, 0_i8, 12_i8, 80_i8, 76_i8, 84_i8, 69_i8, (-1).to_i8!, (-1).to_i8!, (-1).to_i8!, (-69).to_i8!, (-69).to_i8!, (-69).to_i8!, 106_i8, 106_i8, 106_i8, 2_i8, 2_i8, 2_i8, 106_i8, (-103).to_i8!, 14_i8, (-47).to_i8!, 0_i8, 0_i8, 0_i8, 53_i8, 73_i8, 68_i8, 65_i8, 84_i8, 120_i8, (-38).to_i8!, 99_i8, 96_i8, 96_i8, 124_i8, (-64).to_i8!, (-16).to_i8!, (-1).to_i8!, (-77).to_i8!, 3_i8, (-45).to_i8!, 65_i8, (-111).to_i8!, 15_i8, 76_i8, 12_i8, 108_i8, 12_i8, 76_i8, 12_i8, (-4).to_i8!, 12_i8, 76_i8, 12_i8, 18_i8, 12_i8, 76_i8, (-68).to_i8!, 127_i8, 24_i8, (-104).to_i8!, 126_i8, 45_i8, 96_i8, 96_i8, (-7).to_i8!, (-11).to_i8!, (-109).to_i8!, (-127).to_i8!, (-23).to_i8!, (-65).to_i8!, 3_i8, 3_i8, (-29).to_i8!, 127_i8, (-122).to_i8!, (-113).to_i8!, 0_i8, 5_i8, 37_i8, 12_i8, (-34).to_i8!, 1_i8, (-99).to_i8!, (-83).to_i8!, 100_i8, 0_i8, 0_i8, 0_i8, 0_i8, 73_i8, 69_i8, 78_i8, 68_i8, (-82).to_i8!, 66_i8, 96_i8, (-126).to_i8!] of Int8
    @radioOff = [(-119).to_i8!, 80_i8, 78_i8, 71_i8, 13_i8, 10_i8, 26_i8, 10_i8, 0_i8, 0_i8, 0_i8, 13_i8, 73_i8, 72_i8, 68_i8, 82_i8, 0_i8, 0_i8, 0_i8, 11_i8, 0_i8, 0_i8, 0_i8, 11_i8, 2_i8, 3_i8, 0_i8, 0_i8, 0_i8, (-44).to_i8!, (-62).to_i8!, (-97).to_i8!, (-75).to_i8!, 0_i8, 0_i8, 0_i8, 9_i8, 80_i8, 76_i8, 84_i8, 69_i8, (-1).to_i8!, (-1).to_i8!, (-1).to_i8!, (-69).to_i8!, (-69).to_i8!, (-69).to_i8!, 106_i8, 106_i8, 106_i8, (-44).to_i8!, 13_i8, (-1).to_i8!, (-24).to_i8!, 0_i8, 0_i8, 0_i8, 42_i8, 73_i8, 68_i8, 65_i8, 84_i8, 120_i8, (-38).to_i8!, 99_i8, 96_i8, 90_i8, (-59).to_i8!, (-64).to_i8!, 32_i8, (-63).to_i8!, 48_i8, (-127).to_i8!, 65_i8, (-127).to_i8!, 65_i8, (-127).to_i8!, 41_i8, (-127).to_i8!, (-31).to_i8!, 5_i8, 19_i8, 3_i8, 3_i8, 3_i8, 50_i8, 102_i8, 80_i8, 96_i8, 80_i8, 96_i8, (-6).to_i8!, (-63).to_i8!, 80_i8, (-64).to_i8!, (-64).to_i8!, (-76).to_i8!, (-118).to_i8!, 1_i8, 0_i8, 113_i8, 24_i8, 5_i8, 61_i8, 73_i8, (-68).to_i8!, (-100).to_i8!, 98_i8, 0_i8, 0_i8, 0_i8, 0_i8, 73_i8, 69_i8, 78_i8, 68_i8, (-82).to_i8!, 66_i8, 96_i8, (-126).to_i8!] of Int8
    @radioOn = [(-119).to_i8!, 80_i8, 78_i8, 71_i8, 13_i8, 10_i8, 26_i8, 10_i8, 0_i8, 0_i8, 0_i8, 13_i8, 73_i8, 72_i8, 68_i8, 82_i8, 0_i8, 0_i8, 0_i8, 11_i8, 0_i8, 0_i8, 0_i8, 11_i8, 2_i8, 3_i8, 0_i8, 0_i8, 0_i8, (-44).to_i8!, (-62).to_i8!, (-97).to_i8!, (-75).to_i8!, 0_i8, 0_i8, 0_i8, 12_i8, 80_i8, 76_i8, 84_i8, 69_i8, (-1).to_i8!, (-1).to_i8!, (-1).to_i8!, (-69).to_i8!, (-69).to_i8!, (-69).to_i8!, 106_i8, 106_i8, 106_i8, 2_i8, 2_i8, 2_i8, 106_i8, (-103).to_i8!, 14_i8, (-47).to_i8!, 0_i8, 0_i8, 0_i8, 50_i8, 73_i8, 68_i8, 65_i8, 84_i8, 120_i8, (-38).to_i8!, 5_i8, (-63).to_i8!, 65_i8, 13_i8, 0_i8, 32_i8, 12_i8, 4_i8, (-63).to_i8!, (-19).to_i8!, (-11).to_i8!, (-117).to_i8!, 1_i8, 18_i8, 68_i8, (-100).to_i8!, 10_i8, 52_i8, 19_i8, 94_i8, 72_i8, 64_i8, 17_i8, 101_i8, (-122).to_i8!, 44_i8, (-44).to_i8!, (-29).to_i8!, 98_i8, (-52).to_i8!, 89_i8, 77_i8, (-102).to_i8!, 40_i8, 2_i8, 85_i8, (-95).to_i8!, (-73).to_i8!, (-63).to_i8!, (-104).to_i8!, (-63).to_i8!, 37_i8, (-117).to_i8!, 15_i8, (-40).to_i8!, 119_i8, 10_i8, 41_i8, 78_i8, 26_i8, (-79).to_i8!, 59_i8, 0_i8, 0_i8, 0_i8, 0_i8, 73_i8, 69_i8, 78_i8, 68_i8, (-82).to_i8!, 66_i8, 96_i8, (-126).to_i8!] of Int8
    @midpUtil = MIDPUtil.getInstance()
    @imgMultiOffO = @midpUtil.not_nil!.createImageFromByteArray(@multiOff, 0, @multiOff.not_nil!.size)
    @imgMultiOnO = @midpUtil.not_nil!.createImageFromByteArray(@multiOn, 0, @multiOn.not_nil!.size)
    @imgRadioOffO = @midpUtil.not_nil!.createImageFromByteArray(@radioOff, 0, @radioOff.not_nil!.size)
    @imgRadioOnO = @midpUtil.not_nil!.createImageFromByteArray(@radioOn, 0, @radioOn.not_nil!.size)
    @imgMultiOff = @imgMultiOffO
    @imgMultiOn = @imgMultiOnO
    @imgRadioOff = @imgRadioOffO
    @imgRadioOn = @imgRadioOnO
    @imageArray = [@imgMultiOff, @imgMultiOn, @imgRadioOff, @imgRadioOn] of Image?
    end

    def jinit_ChoiceGroupImageFactory : self
        jfields_ChoiceGroupImageFactory()
        self
    end
    

    def getImageArray : Array(Image?)?
        return @imageArray
    end
    

    def init(imageArray : Array(Image?)?) : Nil
        @imgMultiOff = imageArray.not_nil![0]
        @imageArray.not_nil![0] = @imgMultiOff
        @imgMultiOn = imageArray.not_nil![1]
        @imageArray.not_nil![1] = @imgMultiOn
        @imgRadioOff = imageArray.not_nil![2]
        @imageArray.not_nil![2] = @imgRadioOff
        @imgRadioOn = imageArray.not_nil![3]
        @imageArray.not_nil![3] = @imgRadioOn
    end
end

