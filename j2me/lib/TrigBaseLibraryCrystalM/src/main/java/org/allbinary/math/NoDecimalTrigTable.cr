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
# package org.allbinary.math

class NoDecimalTrigTable < JObject
    @mathUtil : MathUtil? = nil

    def jf_mathUtil : MathUtil?
        @mathUtil
    end

    def jf_mathUtil=(value : MathUtil?) : MathUtil?
        @mathUtil = value
    end
    @noDecimalSin : Array(Int64)? = nil

    def jf_noDecimalSin : Array(Int64)?
        @noDecimalSin
    end

    def jf_noDecimalSin=(value : Array(Int64)?) : Array(Int64)?
        @noDecimalSin = value
    end
    @noDecimalCos : Array(Int64)? = nil

    def jf_noDecimalCos : Array(Int64)?
        @noDecimalCos
    end

    def jf_noDecimalCos=(value : Array(Int64)?) : Array(Int64)?
        @noDecimalCos = value
    end
    @noDecimalTan : Array(Int64)? = nil

    def jf_noDecimalTan : Array(Int64)?
        @noDecimalTan
    end

    def jf_noDecimalTan=(value : Array(Int64)?) : Array(Int64)?
        @noDecimalTan = value
    end
    @j_SCALE : Int32 = 0

    def jf_SCALE : Int32
        @j_SCALE
    end

    def jf_SCALE=(value : Int32) : Int32
        @j_SCALE = value
    end

    @@jst_instance : NoDecimalTrigTable? = nil

    def self.jst_instance : NoDecimalTrigTable?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : NoDecimalTrigTable?) : NoDecimalTrigTable?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = NoDecimalTrigTable.new.jinit_NoDecimalTrigTable()
    end
    

    def self.getInstance : NoDecimalTrigTable?
        return NoDecimalTrigTable.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_NoDecimalTrigTable : Nil
    @mathUtil = MathUtil.getInstance()
    
    
    
    @j_SCALE = 10000
    end
    

    def jinit_NoDecimalTrigTable : self
        jfields_NoDecimalTrigTable()
        j_TOTAL_ANGLE : Int32 = (AngleFactory.getInstance().not_nil!.jf_TOTAL_ANGLE).to_i32!
        j_MAX_VALUE : Int64 = ((JInteger.jst_MAX_VALUE).to_i64!)
        @noDecimalSin = Array(Int64).new(j_TOTAL_ANGLE, 0_i64)
        @noDecimalCos = Array(Int64).new(j_TOTAL_ANGLE, 0_i64)
        @noDecimalTan = Array(Int64).new(j_TOTAL_ANGLE &+ 1, 0_i64)
        @noDecimalSin.not_nil![0] = 0_i64
        @noDecimalSin.not_nil![1] = 174_i64
        @noDecimalSin.not_nil![2] = 348_i64
        @noDecimalSin.not_nil![3] = 523_i64
        @noDecimalSin.not_nil![4] = 697_i64
        @noDecimalSin.not_nil![5] = 871_i64
        @noDecimalSin.not_nil![6] = 1045_i64
        @noDecimalSin.not_nil![7] = 1218_i64
        @noDecimalSin.not_nil![8] = 1391_i64
        @noDecimalSin.not_nil![9] = 1564_i64
        @noDecimalSin.not_nil![10] = 1736_i64
        @noDecimalSin.not_nil![11] = 1908_i64
        @noDecimalSin.not_nil![12] = 2079_i64
        @noDecimalSin.not_nil![13] = 2249_i64
        @noDecimalSin.not_nil![14] = 2419_i64
        @noDecimalSin.not_nil![15] = 2588_i64
        @noDecimalSin.not_nil![16] = 2756_i64
        @noDecimalSin.not_nil![17] = 2923_i64
        @noDecimalSin.not_nil![18] = 3090_i64
        @noDecimalSin.not_nil![19] = 3255_i64
        @noDecimalSin.not_nil![20] = 3420_i64
        @noDecimalSin.not_nil![21] = 3583_i64
        @noDecimalSin.not_nil![22] = 3746_i64
        @noDecimalSin.not_nil![23] = 3907_i64
        @noDecimalSin.not_nil![24] = 4067_i64
        @noDecimalSin.not_nil![25] = 4226_i64
        @noDecimalSin.not_nil![26] = 4383_i64
        @noDecimalSin.not_nil![27] = 4539_i64
        @noDecimalSin.not_nil![28] = 4694_i64
        @noDecimalSin.not_nil![29] = 4848_i64
        @noDecimalSin.not_nil![30] = 4999_i64
        @noDecimalSin.not_nil![31] = 5150_i64
        @noDecimalSin.not_nil![32] = 5299_i64
        @noDecimalSin.not_nil![33] = 5446_i64
        @noDecimalSin.not_nil![34] = 5591_i64
        @noDecimalSin.not_nil![35] = 5735_i64
        @noDecimalSin.not_nil![36] = 5877_i64
        @noDecimalSin.not_nil![37] = 6018_i64
        @noDecimalSin.not_nil![38] = 6156_i64
        @noDecimalSin.not_nil![39] = 6293_i64
        @noDecimalSin.not_nil![40] = 6427_i64
        @noDecimalSin.not_nil![41] = 6560_i64
        @noDecimalSin.not_nil![42] = 6691_i64
        @noDecimalSin.not_nil![43] = 6819_i64
        @noDecimalSin.not_nil![44] = 6946_i64
        @noDecimalSin.not_nil![45] = 7071_i64
        @noDecimalSin.not_nil![46] = 7193_i64
        @noDecimalSin.not_nil![47] = 7313_i64
        @noDecimalSin.not_nil![48] = 7431_i64
        @noDecimalSin.not_nil![49] = 7547_i64
        @noDecimalSin.not_nil![50] = 7660_i64
        @noDecimalSin.not_nil![51] = 7771_i64
        @noDecimalSin.not_nil![52] = 7880_i64
        @noDecimalSin.not_nil![53] = 7986_i64
        @noDecimalSin.not_nil![54] = 8090_i64
        @noDecimalSin.not_nil![55] = 8191_i64
        @noDecimalSin.not_nil![56] = 8290_i64
        @noDecimalSin.not_nil![57] = 8386_i64
        @noDecimalSin.not_nil![58] = 8480_i64
        @noDecimalSin.not_nil![59] = 8571_i64
        @noDecimalSin.not_nil![60] = 8660_i64
        @noDecimalSin.not_nil![61] = 8746_i64
        @noDecimalSin.not_nil![62] = 8829_i64
        @noDecimalSin.not_nil![63] = 8910_i64
        @noDecimalSin.not_nil![64] = 8987_i64
        @noDecimalSin.not_nil![65] = 9063_i64
        @noDecimalSin.not_nil![66] = 9135_i64
        @noDecimalSin.not_nil![67] = 9205_i64
        @noDecimalSin.not_nil![68] = 9271_i64
        @noDecimalSin.not_nil![69] = 9335_i64
        @noDecimalSin.not_nil![70] = 9396_i64
        @noDecimalSin.not_nil![71] = 9455_i64
        @noDecimalSin.not_nil![72] = 9510_i64
        @noDecimalSin.not_nil![73] = 9563_i64
        @noDecimalSin.not_nil![74] = 9612_i64
        @noDecimalSin.not_nil![75] = 9659_i64
        @noDecimalSin.not_nil![76] = 9702_i64
        @noDecimalSin.not_nil![77] = 9743_i64
        @noDecimalSin.not_nil![78] = 9781_i64
        @noDecimalSin.not_nil![79] = 9816_i64
        @noDecimalSin.not_nil![80] = 9848_i64
        @noDecimalSin.not_nil![81] = 9876_i64
        @noDecimalSin.not_nil![82] = 9902_i64
        @noDecimalSin.not_nil![83] = 9925_i64
        @noDecimalSin.not_nil![84] = 9945_i64
        @noDecimalSin.not_nil![85] = 9961_i64
        @noDecimalSin.not_nil![86] = 9975_i64
        @noDecimalSin.not_nil![87] = 9986_i64
        @noDecimalSin.not_nil![88] = 9993_i64
        @noDecimalSin.not_nil![89] = 9998_i64
        @noDecimalSin.not_nil![90] = 10000_i64
        @noDecimalSin.not_nil![91] = 9998_i64
        @noDecimalSin.not_nil![92] = 9993_i64
        @noDecimalSin.not_nil![93] = 9986_i64
        @noDecimalSin.not_nil![94] = 9975_i64
        @noDecimalSin.not_nil![95] = 9961_i64
        @noDecimalSin.not_nil![96] = 9945_i64
        @noDecimalSin.not_nil![97] = 9925_i64
        @noDecimalSin.not_nil![98] = 9902_i64
        @noDecimalSin.not_nil![99] = 9876_i64
        @noDecimalSin.not_nil![100] = 9848_i64
        @noDecimalSin.not_nil![101] = 9816_i64
        @noDecimalSin.not_nil![102] = 9781_i64
        @noDecimalSin.not_nil![103] = 9743_i64
        @noDecimalSin.not_nil![104] = 9702_i64
        @noDecimalSin.not_nil![105] = 9659_i64
        @noDecimalSin.not_nil![106] = 9612_i64
        @noDecimalSin.not_nil![107] = 9563_i64
        @noDecimalSin.not_nil![108] = 9510_i64
        @noDecimalSin.not_nil![109] = 9455_i64
        @noDecimalSin.not_nil![110] = 9396_i64
        @noDecimalSin.not_nil![111] = 9335_i64
        @noDecimalSin.not_nil![112] = 9271_i64
        @noDecimalSin.not_nil![113] = 9205_i64
        @noDecimalSin.not_nil![114] = 9135_i64
        @noDecimalSin.not_nil![115] = 9063_i64
        @noDecimalSin.not_nil![116] = 8987_i64
        @noDecimalSin.not_nil![117] = 8910_i64
        @noDecimalSin.not_nil![118] = 8829_i64
        @noDecimalSin.not_nil![119] = 8746_i64
        @noDecimalSin.not_nil![120] = 8660_i64
        @noDecimalSin.not_nil![121] = 8571_i64
        @noDecimalSin.not_nil![122] = 8480_i64
        @noDecimalSin.not_nil![123] = 8386_i64
        @noDecimalSin.not_nil![124] = 8290_i64
        @noDecimalSin.not_nil![125] = 8191_i64
        @noDecimalSin.not_nil![126] = 8090_i64
        @noDecimalSin.not_nil![127] = 7986_i64
        @noDecimalSin.not_nil![128] = 7880_i64
        @noDecimalSin.not_nil![129] = 7771_i64
        @noDecimalSin.not_nil![130] = 7660_i64
        @noDecimalSin.not_nil![131] = 7547_i64
        @noDecimalSin.not_nil![132] = 7431_i64
        @noDecimalSin.not_nil![133] = 7313_i64
        @noDecimalSin.not_nil![134] = 7193_i64
        @noDecimalSin.not_nil![135] = 7071_i64
        @noDecimalSin.not_nil![136] = 6946_i64
        @noDecimalSin.not_nil![137] = 6819_i64
        @noDecimalSin.not_nil![138] = 6691_i64
        @noDecimalSin.not_nil![139] = 6560_i64
        @noDecimalSin.not_nil![140] = 6427_i64
        @noDecimalSin.not_nil![141] = 6293_i64
        @noDecimalSin.not_nil![142] = 6156_i64
        @noDecimalSin.not_nil![143] = 6018_i64
        @noDecimalSin.not_nil![144] = 5877_i64
        @noDecimalSin.not_nil![145] = 5735_i64
        @noDecimalSin.not_nil![146] = 5591_i64
        @noDecimalSin.not_nil![147] = 5446_i64
        @noDecimalSin.not_nil![148] = 5299_i64
        @noDecimalSin.not_nil![149] = 5150_i64
        @noDecimalSin.not_nil![150] = 4999_i64
        @noDecimalSin.not_nil![151] = 4848_i64
        @noDecimalSin.not_nil![152] = 4694_i64
        @noDecimalSin.not_nil![153] = 4539_i64
        @noDecimalSin.not_nil![154] = 4383_i64
        @noDecimalSin.not_nil![155] = 4226_i64
        @noDecimalSin.not_nil![156] = 4067_i64
        @noDecimalSin.not_nil![157] = 3907_i64
        @noDecimalSin.not_nil![158] = 3746_i64
        @noDecimalSin.not_nil![159] = 3583_i64
        @noDecimalSin.not_nil![160] = 3420_i64
        @noDecimalSin.not_nil![161] = 3255_i64
        @noDecimalSin.not_nil![162] = 3090_i64
        @noDecimalSin.not_nil![163] = 2923_i64
        @noDecimalSin.not_nil![164] = 2756_i64
        @noDecimalSin.not_nil![165] = 2588_i64
        @noDecimalSin.not_nil![166] = 2419_i64
        @noDecimalSin.not_nil![167] = 2249_i64
        @noDecimalSin.not_nil![168] = 2079_i64
        @noDecimalSin.not_nil![169] = 1908_i64
        @noDecimalSin.not_nil![170] = 1736_i64
        @noDecimalSin.not_nil![171] = 1564_i64
        @noDecimalSin.not_nil![172] = 1391_i64
        @noDecimalSin.not_nil![173] = 1218_i64
        @noDecimalSin.not_nil![174] = 1045_i64
        @noDecimalSin.not_nil![175] = 871_i64
        @noDecimalSin.not_nil![176] = 697_i64
        @noDecimalSin.not_nil![177] = 523_i64
        @noDecimalSin.not_nil![178] = 348_i64
        @noDecimalSin.not_nil![179] = 174_i64
        @noDecimalSin.not_nil![180] = 0_i64
        @noDecimalSin.not_nil![181] = (-174).to_i64!
        @noDecimalSin.not_nil![182] = (-348).to_i64!
        @noDecimalSin.not_nil![183] = (-523).to_i64!
        @noDecimalSin.not_nil![184] = (-697).to_i64!
        @noDecimalSin.not_nil![185] = (-871).to_i64!
        @noDecimalSin.not_nil![186] = (-1045).to_i64!
        @noDecimalSin.not_nil![187] = (-1218).to_i64!
        @noDecimalSin.not_nil![188] = (-1391).to_i64!
        @noDecimalSin.not_nil![189] = (-1564).to_i64!
        @noDecimalSin.not_nil![190] = (-1736).to_i64!
        @noDecimalSin.not_nil![191] = (-1908).to_i64!
        @noDecimalSin.not_nil![192] = (-2079).to_i64!
        @noDecimalSin.not_nil![193] = (-2249).to_i64!
        @noDecimalSin.not_nil![194] = (-2419).to_i64!
        @noDecimalSin.not_nil![195] = (-2588).to_i64!
        @noDecimalSin.not_nil![196] = (-2756).to_i64!
        @noDecimalSin.not_nil![197] = (-2923).to_i64!
        @noDecimalSin.not_nil![198] = (-3090).to_i64!
        @noDecimalSin.not_nil![199] = (-3255).to_i64!
        @noDecimalSin.not_nil![200] = (-3420).to_i64!
        @noDecimalSin.not_nil![201] = (-3583).to_i64!
        @noDecimalSin.not_nil![202] = (-3746).to_i64!
        @noDecimalSin.not_nil![203] = (-3907).to_i64!
        @noDecimalSin.not_nil![204] = (-4067).to_i64!
        @noDecimalSin.not_nil![205] = (-4226).to_i64!
        @noDecimalSin.not_nil![206] = (-4383).to_i64!
        @noDecimalSin.not_nil![207] = (-4539).to_i64!
        @noDecimalSin.not_nil![208] = (-4694).to_i64!
        @noDecimalSin.not_nil![209] = (-4848).to_i64!
        @noDecimalSin.not_nil![210] = (-5000).to_i64!
        @noDecimalSin.not_nil![211] = (-5150).to_i64!
        @noDecimalSin.not_nil![212] = (-5299).to_i64!
        @noDecimalSin.not_nil![213] = (-5446).to_i64!
        @noDecimalSin.not_nil![214] = (-5591).to_i64!
        @noDecimalSin.not_nil![215] = (-5735).to_i64!
        @noDecimalSin.not_nil![216] = (-5877).to_i64!
        @noDecimalSin.not_nil![217] = (-6018).to_i64!
        @noDecimalSin.not_nil![218] = (-6156).to_i64!
        @noDecimalSin.not_nil![219] = (-6293).to_i64!
        @noDecimalSin.not_nil![220] = (-6427).to_i64!
        @noDecimalSin.not_nil![221] = (-6560).to_i64!
        @noDecimalSin.not_nil![222] = (-6691).to_i64!
        @noDecimalSin.not_nil![223] = (-6819).to_i64!
        @noDecimalSin.not_nil![224] = (-6946).to_i64!
        @noDecimalSin.not_nil![225] = (-7071).to_i64!
        @noDecimalSin.not_nil![226] = (-7193).to_i64!
        @noDecimalSin.not_nil![227] = (-7313).to_i64!
        @noDecimalSin.not_nil![228] = (-7431).to_i64!
        @noDecimalSin.not_nil![229] = (-7547).to_i64!
        @noDecimalSin.not_nil![230] = (-7660).to_i64!
        @noDecimalSin.not_nil![231] = (-7771).to_i64!
        @noDecimalSin.not_nil![232] = (-7880).to_i64!
        @noDecimalSin.not_nil![233] = (-7986).to_i64!
        @noDecimalSin.not_nil![234] = (-8090).to_i64!
        @noDecimalSin.not_nil![235] = (-8191).to_i64!
        @noDecimalSin.not_nil![236] = (-8290).to_i64!
        @noDecimalSin.not_nil![237] = (-8386).to_i64!
        @noDecimalSin.not_nil![238] = (-8480).to_i64!
        @noDecimalSin.not_nil![239] = (-8571).to_i64!
        @noDecimalSin.not_nil![240] = (-8660).to_i64!
        @noDecimalSin.not_nil![241] = (-8746).to_i64!
        @noDecimalSin.not_nil![242] = (-8829).to_i64!
        @noDecimalSin.not_nil![243] = (-8910).to_i64!
        @noDecimalSin.not_nil![244] = (-8987).to_i64!
        @noDecimalSin.not_nil![245] = (-9063).to_i64!
        @noDecimalSin.not_nil![246] = (-9135).to_i64!
        @noDecimalSin.not_nil![247] = (-9205).to_i64!
        @noDecimalSin.not_nil![248] = (-9271).to_i64!
        @noDecimalSin.not_nil![249] = (-9335).to_i64!
        @noDecimalSin.not_nil![250] = (-9396).to_i64!
        @noDecimalSin.not_nil![251] = (-9455).to_i64!
        @noDecimalSin.not_nil![252] = (-9510).to_i64!
        @noDecimalSin.not_nil![253] = (-9563).to_i64!
        @noDecimalSin.not_nil![254] = (-9612).to_i64!
        @noDecimalSin.not_nil![255] = (-9659).to_i64!
        @noDecimalSin.not_nil![256] = (-9702).to_i64!
        @noDecimalSin.not_nil![257] = (-9743).to_i64!
        @noDecimalSin.not_nil![258] = (-9781).to_i64!
        @noDecimalSin.not_nil![259] = (-9816).to_i64!
        @noDecimalSin.not_nil![260] = (-9848).to_i64!
        @noDecimalSin.not_nil![261] = (-9876).to_i64!
        @noDecimalSin.not_nil![262] = (-9902).to_i64!
        @noDecimalSin.not_nil![263] = (-9925).to_i64!
        @noDecimalSin.not_nil![264] = (-9945).to_i64!
        @noDecimalSin.not_nil![265] = (-9961).to_i64!
        @noDecimalSin.not_nil![266] = (-9975).to_i64!
        @noDecimalSin.not_nil![267] = (-9986).to_i64!
        @noDecimalSin.not_nil![268] = (-9993).to_i64!
        @noDecimalSin.not_nil![269] = (-9998).to_i64!
        @noDecimalSin.not_nil![270] = (-10000).to_i64!
        @noDecimalSin.not_nil![271] = (-9998).to_i64!
        @noDecimalSin.not_nil![272] = (-9993).to_i64!
        @noDecimalSin.not_nil![273] = (-9986).to_i64!
        @noDecimalSin.not_nil![274] = (-9975).to_i64!
        @noDecimalSin.not_nil![275] = (-9961).to_i64!
        @noDecimalSin.not_nil![276] = (-9945).to_i64!
        @noDecimalSin.not_nil![277] = (-9925).to_i64!
        @noDecimalSin.not_nil![278] = (-9902).to_i64!
        @noDecimalSin.not_nil![279] = (-9876).to_i64!
        @noDecimalSin.not_nil![280] = (-9848).to_i64!
        @noDecimalSin.not_nil![281] = (-9816).to_i64!
        @noDecimalSin.not_nil![282] = (-9781).to_i64!
        @noDecimalSin.not_nil![283] = (-9743).to_i64!
        @noDecimalSin.not_nil![284] = (-9702).to_i64!
        @noDecimalSin.not_nil![285] = (-9659).to_i64!
        @noDecimalSin.not_nil![286] = (-9612).to_i64!
        @noDecimalSin.not_nil![287] = (-9563).to_i64!
        @noDecimalSin.not_nil![288] = (-9510).to_i64!
        @noDecimalSin.not_nil![289] = (-9455).to_i64!
        @noDecimalSin.not_nil![290] = (-9396).to_i64!
        @noDecimalSin.not_nil![291] = (-9335).to_i64!
        @noDecimalSin.not_nil![292] = (-9271).to_i64!
        @noDecimalSin.not_nil![293] = (-9205).to_i64!
        @noDecimalSin.not_nil![294] = (-9135).to_i64!
        @noDecimalSin.not_nil![295] = (-9063).to_i64!
        @noDecimalSin.not_nil![296] = (-8987).to_i64!
        @noDecimalSin.not_nil![297] = (-8910).to_i64!
        @noDecimalSin.not_nil![298] = (-8829).to_i64!
        @noDecimalSin.not_nil![299] = (-8746).to_i64!
        @noDecimalSin.not_nil![300] = (-8660).to_i64!
        @noDecimalSin.not_nil![301] = (-8571).to_i64!
        @noDecimalSin.not_nil![302] = (-8480).to_i64!
        @noDecimalSin.not_nil![303] = (-8386).to_i64!
        @noDecimalSin.not_nil![304] = (-8290).to_i64!
        @noDecimalSin.not_nil![305] = (-8191).to_i64!
        @noDecimalSin.not_nil![306] = (-8090).to_i64!
        @noDecimalSin.not_nil![307] = (-7986).to_i64!
        @noDecimalSin.not_nil![308] = (-7880).to_i64!
        @noDecimalSin.not_nil![309] = (-7771).to_i64!
        @noDecimalSin.not_nil![310] = (-7660).to_i64!
        @noDecimalSin.not_nil![311] = (-7547).to_i64!
        @noDecimalSin.not_nil![312] = (-7431).to_i64!
        @noDecimalSin.not_nil![313] = (-7313).to_i64!
        @noDecimalSin.not_nil![314] = (-7193).to_i64!
        @noDecimalSin.not_nil![315] = (-7071).to_i64!
        @noDecimalSin.not_nil![316] = (-6946).to_i64!
        @noDecimalSin.not_nil![317] = (-6819).to_i64!
        @noDecimalSin.not_nil![318] = (-6691).to_i64!
        @noDecimalSin.not_nil![319] = (-6560).to_i64!
        @noDecimalSin.not_nil![320] = (-6427).to_i64!
        @noDecimalSin.not_nil![321] = (-6293).to_i64!
        @noDecimalSin.not_nil![322] = (-6156).to_i64!
        @noDecimalSin.not_nil![323] = (-6018).to_i64!
        @noDecimalSin.not_nil![324] = (-5877).to_i64!
        @noDecimalSin.not_nil![325] = (-5735).to_i64!
        @noDecimalSin.not_nil![326] = (-5591).to_i64!
        @noDecimalSin.not_nil![327] = (-5446).to_i64!
        @noDecimalSin.not_nil![328] = (-5299).to_i64!
        @noDecimalSin.not_nil![329] = (-5150).to_i64!
        @noDecimalSin.not_nil![330] = (-5000).to_i64!
        @noDecimalSin.not_nil![331] = (-4848).to_i64!
        @noDecimalSin.not_nil![332] = (-4694).to_i64!
        @noDecimalSin.not_nil![333] = (-4539).to_i64!
        @noDecimalSin.not_nil![334] = (-4383).to_i64!
        @noDecimalSin.not_nil![335] = (-4226).to_i64!
        @noDecimalSin.not_nil![336] = (-4067).to_i64!
        @noDecimalSin.not_nil![337] = (-3907).to_i64!
        @noDecimalSin.not_nil![338] = (-3746).to_i64!
        @noDecimalSin.not_nil![339] = (-3583).to_i64!
        @noDecimalSin.not_nil![340] = (-3420).to_i64!
        @noDecimalSin.not_nil![341] = (-3255).to_i64!
        @noDecimalSin.not_nil![342] = (-3090).to_i64!
        @noDecimalSin.not_nil![343] = (-2923).to_i64!
        @noDecimalSin.not_nil![344] = (-2756).to_i64!
        @noDecimalSin.not_nil![345] = (-2588).to_i64!
        @noDecimalSin.not_nil![346] = (-2419).to_i64!
        @noDecimalSin.not_nil![347] = (-2249).to_i64!
        @noDecimalSin.not_nil![348] = (-2079).to_i64!
        @noDecimalSin.not_nil![349] = (-1908).to_i64!
        @noDecimalSin.not_nil![350] = (-1736).to_i64!
        @noDecimalSin.not_nil![351] = (-1564).to_i64!
        @noDecimalSin.not_nil![352] = (-1391).to_i64!
        @noDecimalSin.not_nil![353] = (-1218).to_i64!
        @noDecimalSin.not_nil![354] = (-1045).to_i64!
        @noDecimalSin.not_nil![355] = (-871).to_i64!
        @noDecimalSin.not_nil![356] = (-697).to_i64!
        @noDecimalSin.not_nil![357] = (-523).to_i64!
        @noDecimalSin.not_nil![358] = (-348).to_i64!
        @noDecimalSin.not_nil![359] = (-174).to_i64!
        @noDecimalCos.not_nil![0] = 10000_i64
        @noDecimalCos.not_nil![1] = 9998_i64
        @noDecimalCos.not_nil![2] = 9993_i64
        @noDecimalCos.not_nil![3] = 9986_i64
        @noDecimalCos.not_nil![4] = 9975_i64
        @noDecimalCos.not_nil![5] = 9961_i64
        @noDecimalCos.not_nil![6] = 9945_i64
        @noDecimalCos.not_nil![7] = 9925_i64
        @noDecimalCos.not_nil![8] = 9902_i64
        @noDecimalCos.not_nil![9] = 9876_i64
        @noDecimalCos.not_nil![10] = 9848_i64
        @noDecimalCos.not_nil![11] = 9816_i64
        @noDecimalCos.not_nil![12] = 9781_i64
        @noDecimalCos.not_nil![13] = 9743_i64
        @noDecimalCos.not_nil![14] = 9702_i64
        @noDecimalCos.not_nil![15] = 9659_i64
        @noDecimalCos.not_nil![16] = 9612_i64
        @noDecimalCos.not_nil![17] = 9563_i64
        @noDecimalCos.not_nil![18] = 9510_i64
        @noDecimalCos.not_nil![19] = 9455_i64
        @noDecimalCos.not_nil![20] = 9396_i64
        @noDecimalCos.not_nil![21] = 9335_i64
        @noDecimalCos.not_nil![22] = 9271_i64
        @noDecimalCos.not_nil![23] = 9205_i64
        @noDecimalCos.not_nil![24] = 9135_i64
        @noDecimalCos.not_nil![25] = 9063_i64
        @noDecimalCos.not_nil![26] = 8987_i64
        @noDecimalCos.not_nil![27] = 8910_i64
        @noDecimalCos.not_nil![28] = 8829_i64
        @noDecimalCos.not_nil![29] = 8746_i64
        @noDecimalCos.not_nil![30] = 8660_i64
        @noDecimalCos.not_nil![31] = 8571_i64
        @noDecimalCos.not_nil![32] = 8480_i64
        @noDecimalCos.not_nil![33] = 8386_i64
        @noDecimalCos.not_nil![34] = 8290_i64
        @noDecimalCos.not_nil![35] = 8191_i64
        @noDecimalCos.not_nil![36] = 8090_i64
        @noDecimalCos.not_nil![37] = 7986_i64
        @noDecimalCos.not_nil![38] = 7880_i64
        @noDecimalCos.not_nil![39] = 7771_i64
        @noDecimalCos.not_nil![40] = 7660_i64
        @noDecimalCos.not_nil![41] = 7547_i64
        @noDecimalCos.not_nil![42] = 7431_i64
        @noDecimalCos.not_nil![43] = 7313_i64
        @noDecimalCos.not_nil![44] = 7193_i64
        @noDecimalCos.not_nil![45] = 7071_i64
        @noDecimalCos.not_nil![46] = 6946_i64
        @noDecimalCos.not_nil![47] = 6819_i64
        @noDecimalCos.not_nil![48] = 6691_i64
        @noDecimalCos.not_nil![49] = 6560_i64
        @noDecimalCos.not_nil![50] = 6427_i64
        @noDecimalCos.not_nil![51] = 6293_i64
        @noDecimalCos.not_nil![52] = 6156_i64
        @noDecimalCos.not_nil![53] = 6018_i64
        @noDecimalCos.not_nil![54] = 5877_i64
        @noDecimalCos.not_nil![55] = 5735_i64
        @noDecimalCos.not_nil![56] = 5591_i64
        @noDecimalCos.not_nil![57] = 5446_i64
        @noDecimalCos.not_nil![58] = 5299_i64
        @noDecimalCos.not_nil![59] = 5150_i64
        @noDecimalCos.not_nil![60] = 5000_i64
        @noDecimalCos.not_nil![61] = 4848_i64
        @noDecimalCos.not_nil![62] = 4694_i64
        @noDecimalCos.not_nil![63] = 4539_i64
        @noDecimalCos.not_nil![64] = 4383_i64
        @noDecimalCos.not_nil![65] = 4226_i64
        @noDecimalCos.not_nil![66] = 4067_i64
        @noDecimalCos.not_nil![67] = 3907_i64
        @noDecimalCos.not_nil![68] = 3746_i64
        @noDecimalCos.not_nil![69] = 3583_i64
        @noDecimalCos.not_nil![70] = 3420_i64
        @noDecimalCos.not_nil![71] = 3255_i64
        @noDecimalCos.not_nil![72] = 3090_i64
        @noDecimalCos.not_nil![73] = 2923_i64
        @noDecimalCos.not_nil![74] = 2756_i64
        @noDecimalCos.not_nil![75] = 2588_i64
        @noDecimalCos.not_nil![76] = 2419_i64
        @noDecimalCos.not_nil![77] = 2249_i64
        @noDecimalCos.not_nil![78] = 2079_i64
        @noDecimalCos.not_nil![79] = 1908_i64
        @noDecimalCos.not_nil![80] = 1736_i64
        @noDecimalCos.not_nil![81] = 1564_i64
        @noDecimalCos.not_nil![82] = 1391_i64
        @noDecimalCos.not_nil![83] = 1218_i64
        @noDecimalCos.not_nil![84] = 1045_i64
        @noDecimalCos.not_nil![85] = 871_i64
        @noDecimalCos.not_nil![86] = 697_i64
        @noDecimalCos.not_nil![87] = 523_i64
        @noDecimalCos.not_nil![88] = 348_i64
        @noDecimalCos.not_nil![89] = 174_i64
        @noDecimalCos.not_nil![90] = 0_i64
        @noDecimalCos.not_nil![91] = (-174).to_i64!
        @noDecimalCos.not_nil![92] = (-348).to_i64!
        @noDecimalCos.not_nil![93] = (-523).to_i64!
        @noDecimalCos.not_nil![94] = (-697).to_i64!
        @noDecimalCos.not_nil![95] = (-871).to_i64!
        @noDecimalCos.not_nil![96] = (-1045).to_i64!
        @noDecimalCos.not_nil![97] = (-1218).to_i64!
        @noDecimalCos.not_nil![98] = (-1391).to_i64!
        @noDecimalCos.not_nil![99] = (-1564).to_i64!
        @noDecimalCos.not_nil![100] = (-1736).to_i64!
        @noDecimalCos.not_nil![101] = (-1908).to_i64!
        @noDecimalCos.not_nil![102] = (-2079).to_i64!
        @noDecimalCos.not_nil![103] = (-2249).to_i64!
        @noDecimalCos.not_nil![104] = (-2419).to_i64!
        @noDecimalCos.not_nil![105] = (-2588).to_i64!
        @noDecimalCos.not_nil![106] = (-2756).to_i64!
        @noDecimalCos.not_nil![107] = (-2923).to_i64!
        @noDecimalCos.not_nil![108] = (-3090).to_i64!
        @noDecimalCos.not_nil![109] = (-3255).to_i64!
        @noDecimalCos.not_nil![110] = (-3420).to_i64!
        @noDecimalCos.not_nil![111] = (-3583).to_i64!
        @noDecimalCos.not_nil![112] = (-3746).to_i64!
        @noDecimalCos.not_nil![113] = (-3907).to_i64!
        @noDecimalCos.not_nil![114] = (-4067).to_i64!
        @noDecimalCos.not_nil![115] = (-4226).to_i64!
        @noDecimalCos.not_nil![116] = (-4383).to_i64!
        @noDecimalCos.not_nil![117] = (-4539).to_i64!
        @noDecimalCos.not_nil![118] = (-4694).to_i64!
        @noDecimalCos.not_nil![119] = (-4848).to_i64!
        @noDecimalCos.not_nil![120] = (-4999).to_i64!
        @noDecimalCos.not_nil![121] = (-5150).to_i64!
        @noDecimalCos.not_nil![122] = (-5299).to_i64!
        @noDecimalCos.not_nil![123] = (-5446).to_i64!
        @noDecimalCos.not_nil![124] = (-5591).to_i64!
        @noDecimalCos.not_nil![125] = (-5735).to_i64!
        @noDecimalCos.not_nil![126] = (-5877).to_i64!
        @noDecimalCos.not_nil![127] = (-6018).to_i64!
        @noDecimalCos.not_nil![128] = (-6156).to_i64!
        @noDecimalCos.not_nil![129] = (-6293).to_i64!
        @noDecimalCos.not_nil![130] = (-6427).to_i64!
        @noDecimalCos.not_nil![131] = (-6560).to_i64!
        @noDecimalCos.not_nil![132] = (-6691).to_i64!
        @noDecimalCos.not_nil![133] = (-6819).to_i64!
        @noDecimalCos.not_nil![134] = (-6946).to_i64!
        @noDecimalCos.not_nil![135] = (-7071).to_i64!
        @noDecimalCos.not_nil![136] = (-7193).to_i64!
        @noDecimalCos.not_nil![137] = (-7313).to_i64!
        @noDecimalCos.not_nil![138] = (-7431).to_i64!
        @noDecimalCos.not_nil![139] = (-7547).to_i64!
        @noDecimalCos.not_nil![140] = (-7660).to_i64!
        @noDecimalCos.not_nil![141] = (-7771).to_i64!
        @noDecimalCos.not_nil![142] = (-7880).to_i64!
        @noDecimalCos.not_nil![143] = (-7986).to_i64!
        @noDecimalCos.not_nil![144] = (-8090).to_i64!
        @noDecimalCos.not_nil![145] = (-8191).to_i64!
        @noDecimalCos.not_nil![146] = (-8290).to_i64!
        @noDecimalCos.not_nil![147] = (-8386).to_i64!
        @noDecimalCos.not_nil![148] = (-8480).to_i64!
        @noDecimalCos.not_nil![149] = (-8571).to_i64!
        @noDecimalCos.not_nil![150] = (-8660).to_i64!
        @noDecimalCos.not_nil![151] = (-8746).to_i64!
        @noDecimalCos.not_nil![152] = (-8829).to_i64!
        @noDecimalCos.not_nil![153] = (-8910).to_i64!
        @noDecimalCos.not_nil![154] = (-8987).to_i64!
        @noDecimalCos.not_nil![155] = (-9063).to_i64!
        @noDecimalCos.not_nil![156] = (-9135).to_i64!
        @noDecimalCos.not_nil![157] = (-9205).to_i64!
        @noDecimalCos.not_nil![158] = (-9271).to_i64!
        @noDecimalCos.not_nil![159] = (-9335).to_i64!
        @noDecimalCos.not_nil![160] = (-9396).to_i64!
        @noDecimalCos.not_nil![161] = (-9455).to_i64!
        @noDecimalCos.not_nil![162] = (-9510).to_i64!
        @noDecimalCos.not_nil![163] = (-9563).to_i64!
        @noDecimalCos.not_nil![164] = (-9612).to_i64!
        @noDecimalCos.not_nil![165] = (-9659).to_i64!
        @noDecimalCos.not_nil![166] = (-9702).to_i64!
        @noDecimalCos.not_nil![167] = (-9743).to_i64!
        @noDecimalCos.not_nil![168] = (-9781).to_i64!
        @noDecimalCos.not_nil![169] = (-9816).to_i64!
        @noDecimalCos.not_nil![170] = (-9848).to_i64!
        @noDecimalCos.not_nil![171] = (-9876).to_i64!
        @noDecimalCos.not_nil![172] = (-9902).to_i64!
        @noDecimalCos.not_nil![173] = (-9925).to_i64!
        @noDecimalCos.not_nil![174] = (-9945).to_i64!
        @noDecimalCos.not_nil![175] = (-9961).to_i64!
        @noDecimalCos.not_nil![176] = (-9975).to_i64!
        @noDecimalCos.not_nil![177] = (-9986).to_i64!
        @noDecimalCos.not_nil![178] = (-9993).to_i64!
        @noDecimalCos.not_nil![179] = (-9998).to_i64!
        @noDecimalCos.not_nil![180] = (-10000).to_i64!
        @noDecimalCos.not_nil![181] = (-9998).to_i64!
        @noDecimalCos.not_nil![182] = (-9993).to_i64!
        @noDecimalCos.not_nil![183] = (-9986).to_i64!
        @noDecimalCos.not_nil![184] = (-9975).to_i64!
        @noDecimalCos.not_nil![185] = (-9961).to_i64!
        @noDecimalCos.not_nil![186] = (-9945).to_i64!
        @noDecimalCos.not_nil![187] = (-9925).to_i64!
        @noDecimalCos.not_nil![188] = (-9902).to_i64!
        @noDecimalCos.not_nil![189] = (-9876).to_i64!
        @noDecimalCos.not_nil![190] = (-9848).to_i64!
        @noDecimalCos.not_nil![191] = (-9816).to_i64!
        @noDecimalCos.not_nil![192] = (-9781).to_i64!
        @noDecimalCos.not_nil![193] = (-9743).to_i64!
        @noDecimalCos.not_nil![194] = (-9702).to_i64!
        @noDecimalCos.not_nil![195] = (-9659).to_i64!
        @noDecimalCos.not_nil![196] = (-9612).to_i64!
        @noDecimalCos.not_nil![197] = (-9563).to_i64!
        @noDecimalCos.not_nil![198] = (-9510).to_i64!
        @noDecimalCos.not_nil![199] = (-9455).to_i64!
        @noDecimalCos.not_nil![200] = (-9396).to_i64!
        @noDecimalCos.not_nil![201] = (-9335).to_i64!
        @noDecimalCos.not_nil![202] = (-9271).to_i64!
        @noDecimalCos.not_nil![203] = (-9205).to_i64!
        @noDecimalCos.not_nil![204] = (-9135).to_i64!
        @noDecimalCos.not_nil![205] = (-9063).to_i64!
        @noDecimalCos.not_nil![206] = (-8987).to_i64!
        @noDecimalCos.not_nil![207] = (-8910).to_i64!
        @noDecimalCos.not_nil![208] = (-8829).to_i64!
        @noDecimalCos.not_nil![209] = (-8746).to_i64!
        @noDecimalCos.not_nil![210] = (-8660).to_i64!
        @noDecimalCos.not_nil![211] = (-8571).to_i64!
        @noDecimalCos.not_nil![212] = (-8480).to_i64!
        @noDecimalCos.not_nil![213] = (-8386).to_i64!
        @noDecimalCos.not_nil![214] = (-8290).to_i64!
        @noDecimalCos.not_nil![215] = (-8191).to_i64!
        @noDecimalCos.not_nil![216] = (-8090).to_i64!
        @noDecimalCos.not_nil![217] = (-7986).to_i64!
        @noDecimalCos.not_nil![218] = (-7880).to_i64!
        @noDecimalCos.not_nil![219] = (-7771).to_i64!
        @noDecimalCos.not_nil![220] = (-7660).to_i64!
        @noDecimalCos.not_nil![221] = (-7547).to_i64!
        @noDecimalCos.not_nil![222] = (-7431).to_i64!
        @noDecimalCos.not_nil![223] = (-7313).to_i64!
        @noDecimalCos.not_nil![224] = (-7193).to_i64!
        @noDecimalCos.not_nil![225] = (-7071).to_i64!
        @noDecimalCos.not_nil![226] = (-6946).to_i64!
        @noDecimalCos.not_nil![227] = (-6819).to_i64!
        @noDecimalCos.not_nil![228] = (-6691).to_i64!
        @noDecimalCos.not_nil![229] = (-6560).to_i64!
        @noDecimalCos.not_nil![230] = (-6427).to_i64!
        @noDecimalCos.not_nil![231] = (-6293).to_i64!
        @noDecimalCos.not_nil![232] = (-6156).to_i64!
        @noDecimalCos.not_nil![233] = (-6018).to_i64!
        @noDecimalCos.not_nil![234] = (-5877).to_i64!
        @noDecimalCos.not_nil![235] = (-5735).to_i64!
        @noDecimalCos.not_nil![236] = (-5591).to_i64!
        @noDecimalCos.not_nil![237] = (-5446).to_i64!
        @noDecimalCos.not_nil![238] = (-5299).to_i64!
        @noDecimalCos.not_nil![239] = (-5150).to_i64!
        @noDecimalCos.not_nil![240] = (-5000).to_i64!
        @noDecimalCos.not_nil![241] = (-4848).to_i64!
        @noDecimalCos.not_nil![242] = (-4694).to_i64!
        @noDecimalCos.not_nil![243] = (-4539).to_i64!
        @noDecimalCos.not_nil![244] = (-4383).to_i64!
        @noDecimalCos.not_nil![245] = (-4226).to_i64!
        @noDecimalCos.not_nil![246] = (-4067).to_i64!
        @noDecimalCos.not_nil![247] = (-3907).to_i64!
        @noDecimalCos.not_nil![248] = (-3746).to_i64!
        @noDecimalCos.not_nil![249] = (-3583).to_i64!
        @noDecimalCos.not_nil![250] = (-3420).to_i64!
        @noDecimalCos.not_nil![251] = (-3255).to_i64!
        @noDecimalCos.not_nil![252] = (-3090).to_i64!
        @noDecimalCos.not_nil![253] = (-2923).to_i64!
        @noDecimalCos.not_nil![254] = (-2756).to_i64!
        @noDecimalCos.not_nil![255] = (-2588).to_i64!
        @noDecimalCos.not_nil![256] = (-2419).to_i64!
        @noDecimalCos.not_nil![257] = (-2249).to_i64!
        @noDecimalCos.not_nil![258] = (-2079).to_i64!
        @noDecimalCos.not_nil![259] = (-1908).to_i64!
        @noDecimalCos.not_nil![260] = (-1736).to_i64!
        @noDecimalCos.not_nil![261] = (-1564).to_i64!
        @noDecimalCos.not_nil![262] = (-1391).to_i64!
        @noDecimalCos.not_nil![263] = (-1218).to_i64!
        @noDecimalCos.not_nil![264] = (-1045).to_i64!
        @noDecimalCos.not_nil![265] = (-871).to_i64!
        @noDecimalCos.not_nil![266] = (-697).to_i64!
        @noDecimalCos.not_nil![267] = (-523).to_i64!
        @noDecimalCos.not_nil![268] = (-348).to_i64!
        @noDecimalCos.not_nil![269] = (-174).to_i64!
        @noDecimalCos.not_nil![270] = 0_i64
        @noDecimalCos.not_nil![271] = 174_i64
        @noDecimalCos.not_nil![272] = 348_i64
        @noDecimalCos.not_nil![273] = 523_i64
        @noDecimalCos.not_nil![274] = 697_i64
        @noDecimalCos.not_nil![275] = 871_i64
        @noDecimalCos.not_nil![276] = 1045_i64
        @noDecimalCos.not_nil![277] = 1218_i64
        @noDecimalCos.not_nil![278] = 1391_i64
        @noDecimalCos.not_nil![279] = 1564_i64
        @noDecimalCos.not_nil![280] = 1736_i64
        @noDecimalCos.not_nil![281] = 1908_i64
        @noDecimalCos.not_nil![282] = 2079_i64
        @noDecimalCos.not_nil![283] = 2249_i64
        @noDecimalCos.not_nil![284] = 2419_i64
        @noDecimalCos.not_nil![285] = 2588_i64
        @noDecimalCos.not_nil![286] = 2756_i64
        @noDecimalCos.not_nil![287] = 2923_i64
        @noDecimalCos.not_nil![288] = 3090_i64
        @noDecimalCos.not_nil![289] = 3255_i64
        @noDecimalCos.not_nil![290] = 3420_i64
        @noDecimalCos.not_nil![291] = 3583_i64
        @noDecimalCos.not_nil![292] = 3746_i64
        @noDecimalCos.not_nil![293] = 3907_i64
        @noDecimalCos.not_nil![294] = 4067_i64
        @noDecimalCos.not_nil![295] = 4226_i64
        @noDecimalCos.not_nil![296] = 4383_i64
        @noDecimalCos.not_nil![297] = 4539_i64
        @noDecimalCos.not_nil![298] = 4694_i64
        @noDecimalCos.not_nil![299] = 4848_i64
        @noDecimalCos.not_nil![300] = 5000_i64
        @noDecimalCos.not_nil![301] = 5150_i64
        @noDecimalCos.not_nil![302] = 5299_i64
        @noDecimalCos.not_nil![303] = 5446_i64
        @noDecimalCos.not_nil![304] = 5591_i64
        @noDecimalCos.not_nil![305] = 5735_i64
        @noDecimalCos.not_nil![306] = 5877_i64
        @noDecimalCos.not_nil![307] = 6018_i64
        @noDecimalCos.not_nil![308] = 6156_i64
        @noDecimalCos.not_nil![309] = 6293_i64
        @noDecimalCos.not_nil![310] = 6427_i64
        @noDecimalCos.not_nil![311] = 6560_i64
        @noDecimalCos.not_nil![312] = 6691_i64
        @noDecimalCos.not_nil![313] = 6819_i64
        @noDecimalCos.not_nil![314] = 6946_i64
        @noDecimalCos.not_nil![315] = 7071_i64
        @noDecimalCos.not_nil![316] = 7193_i64
        @noDecimalCos.not_nil![317] = 7313_i64
        @noDecimalCos.not_nil![318] = 7431_i64
        @noDecimalCos.not_nil![319] = 7547_i64
        @noDecimalCos.not_nil![320] = 7660_i64
        @noDecimalCos.not_nil![321] = 7771_i64
        @noDecimalCos.not_nil![322] = 7880_i64
        @noDecimalCos.not_nil![323] = 7986_i64
        @noDecimalCos.not_nil![324] = 8090_i64
        @noDecimalCos.not_nil![325] = 8191_i64
        @noDecimalCos.not_nil![326] = 8290_i64
        @noDecimalCos.not_nil![327] = 8386_i64
        @noDecimalCos.not_nil![328] = 8480_i64
        @noDecimalCos.not_nil![329] = 8571_i64
        @noDecimalCos.not_nil![330] = 8660_i64
        @noDecimalCos.not_nil![331] = 8746_i64
        @noDecimalCos.not_nil![332] = 8829_i64
        @noDecimalCos.not_nil![333] = 8910_i64
        @noDecimalCos.not_nil![334] = 8987_i64
        @noDecimalCos.not_nil![335] = 9063_i64
        @noDecimalCos.not_nil![336] = 9135_i64
        @noDecimalCos.not_nil![337] = 9205_i64
        @noDecimalCos.not_nil![338] = 9271_i64
        @noDecimalCos.not_nil![339] = 9335_i64
        @noDecimalCos.not_nil![340] = 9396_i64
        @noDecimalCos.not_nil![341] = 9455_i64
        @noDecimalCos.not_nil![342] = 9510_i64
        @noDecimalCos.not_nil![343] = 9563_i64
        @noDecimalCos.not_nil![344] = 9612_i64
        @noDecimalCos.not_nil![345] = 9659_i64
        @noDecimalCos.not_nil![346] = 9702_i64
        @noDecimalCos.not_nil![347] = 9743_i64
        @noDecimalCos.not_nil![348] = 9781_i64
        @noDecimalCos.not_nil![349] = 9816_i64
        @noDecimalCos.not_nil![350] = 9848_i64
        @noDecimalCos.not_nil![351] = 9876_i64
        @noDecimalCos.not_nil![352] = 9902_i64
        @noDecimalCos.not_nil![353] = 9925_i64
        @noDecimalCos.not_nil![354] = 9945_i64
        @noDecimalCos.not_nil![355] = 9961_i64
        @noDecimalCos.not_nil![356] = 9975_i64
        @noDecimalCos.not_nil![357] = 9986_i64
        @noDecimalCos.not_nil![358] = 9993_i64
        @noDecimalCos.not_nil![359] = 9998_i64
        @noDecimalTan.not_nil![0] = 0_i64
        @noDecimalTan.not_nil![1] = 174_i64
        @noDecimalTan.not_nil![2] = 349_i64
        @noDecimalTan.not_nil![3] = 524_i64
        @noDecimalTan.not_nil![4] = 699_i64
        @noDecimalTan.not_nil![5] = 874_i64
        @noDecimalTan.not_nil![6] = 1051_i64
        @noDecimalTan.not_nil![7] = 1227_i64
        @noDecimalTan.not_nil![8] = 1405_i64
        @noDecimalTan.not_nil![9] = 1583_i64
        @noDecimalTan.not_nil![10] = 1763_i64
        @noDecimalTan.not_nil![11] = 1943_i64
        @noDecimalTan.not_nil![12] = 2125_i64
        @noDecimalTan.not_nil![13] = 2308_i64
        @noDecimalTan.not_nil![14] = 2493_i64
        @noDecimalTan.not_nil![15] = 2679_i64
        @noDecimalTan.not_nil![16] = 2867_i64
        @noDecimalTan.not_nil![17] = 3057_i64
        @noDecimalTan.not_nil![18] = 3249_i64
        @noDecimalTan.not_nil![19] = 3443_i64
        @noDecimalTan.not_nil![20] = 3639_i64
        @noDecimalTan.not_nil![21] = 3838_i64
        @noDecimalTan.not_nil![22] = 4040_i64
        @noDecimalTan.not_nil![23] = 4244_i64
        @noDecimalTan.not_nil![24] = 4452_i64
        @noDecimalTan.not_nil![25] = 4663_i64
        @noDecimalTan.not_nil![26] = 4877_i64
        @noDecimalTan.not_nil![27] = 5095_i64
        @noDecimalTan.not_nil![28] = 5317_i64
        @noDecimalTan.not_nil![29] = 5543_i64
        @noDecimalTan.not_nil![30] = 5773_i64
        @noDecimalTan.not_nil![31] = 6008_i64
        @noDecimalTan.not_nil![32] = 6248_i64
        @noDecimalTan.not_nil![33] = 6494_i64
        @noDecimalTan.not_nil![34] = 6745_i64
        @noDecimalTan.not_nil![35] = 7002_i64
        @noDecimalTan.not_nil![36] = 7265_i64
        @noDecimalTan.not_nil![37] = 7535_i64
        @noDecimalTan.not_nil![38] = 7812_i64
        @noDecimalTan.not_nil![39] = 8097_i64
        @noDecimalTan.not_nil![40] = 8390_i64
        @noDecimalTan.not_nil![41] = 8692_i64
        @noDecimalTan.not_nil![42] = 9004_i64
        @noDecimalTan.not_nil![43] = 9325_i64
        @noDecimalTan.not_nil![44] = 9656_i64
        @noDecimalTan.not_nil![45] = 9999_i64
        @noDecimalTan.not_nil![46] = 10355_i64
        @noDecimalTan.not_nil![47] = 10723_i64
        @noDecimalTan.not_nil![48] = 11106_i64
        @noDecimalTan.not_nil![49] = 11503_i64
        @noDecimalTan.not_nil![50] = 11917_i64
        @noDecimalTan.not_nil![51] = 12348_i64
        @noDecimalTan.not_nil![52] = 12799_i64
        @noDecimalTan.not_nil![53] = 13270_i64
        @noDecimalTan.not_nil![54] = 13763_i64
        @noDecimalTan.not_nil![55] = 14281_i64
        @noDecimalTan.not_nil![56] = 14825_i64
        @noDecimalTan.not_nil![57] = 15398_i64
        @noDecimalTan.not_nil![58] = 16003_i64
        @noDecimalTan.not_nil![59] = 16642_i64
        @noDecimalTan.not_nil![60] = 17320_i64
        @noDecimalTan.not_nil![61] = 18040_i64
        @noDecimalTan.not_nil![62] = 18807_i64
        @noDecimalTan.not_nil![63] = 19626_i64
        @noDecimalTan.not_nil![64] = 20503_i64
        @noDecimalTan.not_nil![65] = 21445_i64
        @noDecimalTan.not_nil![66] = 22460_i64
        @noDecimalTan.not_nil![67] = 23558_i64
        @noDecimalTan.not_nil![68] = 24750_i64
        @noDecimalTan.not_nil![69] = 26050_i64
        @noDecimalTan.not_nil![70] = 27474_i64
        @noDecimalTan.not_nil![71] = 29042_i64
        @noDecimalTan.not_nil![72] = 30776_i64
        @noDecimalTan.not_nil![73] = 32708_i64
        @noDecimalTan.not_nil![74] = 34874_i64
        @noDecimalTan.not_nil![75] = 37320_i64
        @noDecimalTan.not_nil![76] = 40107_i64
        @noDecimalTan.not_nil![77] = 43314_i64
        @noDecimalTan.not_nil![78] = 47046_i64
        @noDecimalTan.not_nil![79] = 51445_i64
        @noDecimalTan.not_nil![80] = 56712_i64
        @noDecimalTan.not_nil![81] = 63137_i64
        @noDecimalTan.not_nil![82] = 71153_i64
        @noDecimalTan.not_nil![83] = 81443_i64
        @noDecimalTan.not_nil![84] = 95143_i64
        @noDecimalTan.not_nil![85] = 114300_i64
        @noDecimalTan.not_nil![86] = 143006_i64
        @noDecimalTan.not_nil![87] = 190811_i64
        @noDecimalTan.not_nil![88] = 286362_i64
        @noDecimalTan.not_nil![89] = 572899_i64
        @noDecimalTan.not_nil![90] = j_MAX_VALUE
        @noDecimalTan.not_nil![91] = (-572899).to_i64!
        @noDecimalTan.not_nil![92] = (-286362).to_i64!
        @noDecimalTan.not_nil![93] = (-190811).to_i64!
        @noDecimalTan.not_nil![94] = (-143006).to_i64!
        @noDecimalTan.not_nil![95] = (-114300).to_i64!
        @noDecimalTan.not_nil![96] = (-95143).to_i64!
        @noDecimalTan.not_nil![97] = (-81443).to_i64!
        @noDecimalTan.not_nil![98] = (-71153).to_i64!
        @noDecimalTan.not_nil![99] = (-63137).to_i64!
        @noDecimalTan.not_nil![100] = (-56712).to_i64!
        @noDecimalTan.not_nil![101] = (-51445).to_i64!
        @noDecimalTan.not_nil![102] = (-47046).to_i64!
        @noDecimalTan.not_nil![103] = (-43314).to_i64!
        @noDecimalTan.not_nil![104] = (-40107).to_i64!
        @noDecimalTan.not_nil![105] = (-37320).to_i64!
        @noDecimalTan.not_nil![106] = (-34874).to_i64!
        @noDecimalTan.not_nil![107] = (-32708).to_i64!
        @noDecimalTan.not_nil![108] = (-30776).to_i64!
        @noDecimalTan.not_nil![109] = (-29042).to_i64!
        @noDecimalTan.not_nil![110] = (-27474).to_i64!
        @noDecimalTan.not_nil![111] = (-26050).to_i64!
        @noDecimalTan.not_nil![112] = (-24750).to_i64!
        @noDecimalTan.not_nil![113] = (-23558).to_i64!
        @noDecimalTan.not_nil![114] = (-22460).to_i64!
        @noDecimalTan.not_nil![115] = (-21445).to_i64!
        @noDecimalTan.not_nil![116] = (-20503).to_i64!
        @noDecimalTan.not_nil![117] = (-19626).to_i64!
        @noDecimalTan.not_nil![118] = (-18807).to_i64!
        @noDecimalTan.not_nil![119] = (-18040).to_i64!
        @noDecimalTan.not_nil![120] = (-17320).to_i64!
        @noDecimalTan.not_nil![121] = (-16642).to_i64!
        @noDecimalTan.not_nil![122] = (-16003).to_i64!
        @noDecimalTan.not_nil![123] = (-15398).to_i64!
        @noDecimalTan.not_nil![124] = (-14825).to_i64!
        @noDecimalTan.not_nil![125] = (-14281).to_i64!
        @noDecimalTan.not_nil![126] = (-13763).to_i64!
        @noDecimalTan.not_nil![127] = (-13270).to_i64!
        @noDecimalTan.not_nil![128] = (-12799).to_i64!
        @noDecimalTan.not_nil![129] = (-12348).to_i64!
        @noDecimalTan.not_nil![130] = (-11917).to_i64!
        @noDecimalTan.not_nil![131] = (-11503).to_i64!
        @noDecimalTan.not_nil![132] = (-11106).to_i64!
        @noDecimalTan.not_nil![133] = (-10723).to_i64!
        @noDecimalTan.not_nil![134] = (-10355).to_i64!
        @noDecimalTan.not_nil![135] = (-10000).to_i64!
        @noDecimalTan.not_nil![136] = (-9656).to_i64!
        @noDecimalTan.not_nil![137] = (-9325).to_i64!
        @noDecimalTan.not_nil![138] = (-9004).to_i64!
        @noDecimalTan.not_nil![139] = (-8692).to_i64!
        @noDecimalTan.not_nil![140] = (-8390).to_i64!
        @noDecimalTan.not_nil![141] = (-8097).to_i64!
        @noDecimalTan.not_nil![142] = (-7812).to_i64!
        @noDecimalTan.not_nil![143] = (-7535).to_i64!
        @noDecimalTan.not_nil![144] = (-7265).to_i64!
        @noDecimalTan.not_nil![145] = (-7002).to_i64!
        @noDecimalTan.not_nil![146] = (-6745).to_i64!
        @noDecimalTan.not_nil![147] = (-6494).to_i64!
        @noDecimalTan.not_nil![148] = (-6248).to_i64!
        @noDecimalTan.not_nil![149] = (-6008).to_i64!
        @noDecimalTan.not_nil![150] = (-5773).to_i64!
        @noDecimalTan.not_nil![151] = (-5543).to_i64!
        @noDecimalTan.not_nil![152] = (-5317).to_i64!
        @noDecimalTan.not_nil![153] = (-5095).to_i64!
        @noDecimalTan.not_nil![154] = (-4877).to_i64!
        @noDecimalTan.not_nil![155] = (-4663).to_i64!
        @noDecimalTan.not_nil![156] = (-4452).to_i64!
        @noDecimalTan.not_nil![157] = (-4244).to_i64!
        @noDecimalTan.not_nil![158] = (-4040).to_i64!
        @noDecimalTan.not_nil![159] = (-3838).to_i64!
        @noDecimalTan.not_nil![160] = (-3639).to_i64!
        @noDecimalTan.not_nil![161] = (-3443).to_i64!
        @noDecimalTan.not_nil![162] = (-3249).to_i64!
        @noDecimalTan.not_nil![163] = (-3057).to_i64!
        @noDecimalTan.not_nil![164] = (-2867).to_i64!
        @noDecimalTan.not_nil![165] = (-2679).to_i64!
        @noDecimalTan.not_nil![166] = (-2493).to_i64!
        @noDecimalTan.not_nil![167] = (-2308).to_i64!
        @noDecimalTan.not_nil![168] = (-2125).to_i64!
        @noDecimalTan.not_nil![169] = (-1943).to_i64!
        @noDecimalTan.not_nil![170] = (-1763).to_i64!
        @noDecimalTan.not_nil![171] = (-1583).to_i64!
        @noDecimalTan.not_nil![172] = (-1405).to_i64!
        @noDecimalTan.not_nil![173] = (-1227).to_i64!
        @noDecimalTan.not_nil![174] = (-1051).to_i64!
        @noDecimalTan.not_nil![175] = (-874).to_i64!
        @noDecimalTan.not_nil![176] = (-699).to_i64!
        @noDecimalTan.not_nil![177] = (-524).to_i64!
        @noDecimalTan.not_nil![178] = (-349).to_i64!
        @noDecimalTan.not_nil![179] = (-174).to_i64!
        @noDecimalTan.not_nil![180] = 0_i64
        @noDecimalTan.not_nil![181] = 174_i64
        @noDecimalTan.not_nil![182] = 349_i64
        @noDecimalTan.not_nil![183] = 524_i64
        @noDecimalTan.not_nil![184] = 699_i64
        @noDecimalTan.not_nil![185] = 874_i64
        @noDecimalTan.not_nil![186] = 1051_i64
        @noDecimalTan.not_nil![187] = 1227_i64
        @noDecimalTan.not_nil![188] = 1405_i64
        @noDecimalTan.not_nil![189] = 1583_i64
        @noDecimalTan.not_nil![190] = 1763_i64
        @noDecimalTan.not_nil![191] = 1943_i64
        @noDecimalTan.not_nil![192] = 2125_i64
        @noDecimalTan.not_nil![193] = 2308_i64
        @noDecimalTan.not_nil![194] = 2493_i64
        @noDecimalTan.not_nil![195] = 2679_i64
        @noDecimalTan.not_nil![196] = 2867_i64
        @noDecimalTan.not_nil![197] = 3057_i64
        @noDecimalTan.not_nil![198] = 3249_i64
        @noDecimalTan.not_nil![199] = 3443_i64
        @noDecimalTan.not_nil![200] = 3639_i64
        @noDecimalTan.not_nil![201] = 3838_i64
        @noDecimalTan.not_nil![202] = 4040_i64
        @noDecimalTan.not_nil![203] = 4244_i64
        @noDecimalTan.not_nil![204] = 4452_i64
        @noDecimalTan.not_nil![205] = 4663_i64
        @noDecimalTan.not_nil![206] = 4877_i64
        @noDecimalTan.not_nil![207] = 5095_i64
        @noDecimalTan.not_nil![208] = 5317_i64
        @noDecimalTan.not_nil![209] = 5543_i64
        @noDecimalTan.not_nil![210] = 5773_i64
        @noDecimalTan.not_nil![211] = 6008_i64
        @noDecimalTan.not_nil![212] = 6248_i64
        @noDecimalTan.not_nil![213] = 6494_i64
        @noDecimalTan.not_nil![214] = 6745_i64
        @noDecimalTan.not_nil![215] = 7002_i64
        @noDecimalTan.not_nil![216] = 7265_i64
        @noDecimalTan.not_nil![217] = 7535_i64
        @noDecimalTan.not_nil![218] = 7812_i64
        @noDecimalTan.not_nil![219] = 8097_i64
        @noDecimalTan.not_nil![220] = 8390_i64
        @noDecimalTan.not_nil![221] = 8692_i64
        @noDecimalTan.not_nil![222] = 9004_i64
        @noDecimalTan.not_nil![223] = 9325_i64
        @noDecimalTan.not_nil![224] = 9656_i64
        @noDecimalTan.not_nil![225] = 9999_i64
        @noDecimalTan.not_nil![226] = 10355_i64
        @noDecimalTan.not_nil![227] = 10723_i64
        @noDecimalTan.not_nil![228] = 11106_i64
        @noDecimalTan.not_nil![229] = 11503_i64
        @noDecimalTan.not_nil![230] = 11917_i64
        @noDecimalTan.not_nil![231] = 12348_i64
        @noDecimalTan.not_nil![232] = 12799_i64
        @noDecimalTan.not_nil![233] = 13270_i64
        @noDecimalTan.not_nil![234] = 13763_i64
        @noDecimalTan.not_nil![235] = 14281_i64
        @noDecimalTan.not_nil![236] = 14825_i64
        @noDecimalTan.not_nil![237] = 15398_i64
        @noDecimalTan.not_nil![238] = 16003_i64
        @noDecimalTan.not_nil![239] = 16642_i64
        @noDecimalTan.not_nil![240] = 17320_i64
        @noDecimalTan.not_nil![241] = 18040_i64
        @noDecimalTan.not_nil![242] = 18807_i64
        @noDecimalTan.not_nil![243] = 19626_i64
        @noDecimalTan.not_nil![244] = 20503_i64
        @noDecimalTan.not_nil![245] = 21445_i64
        @noDecimalTan.not_nil![246] = 22460_i64
        @noDecimalTan.not_nil![247] = 23558_i64
        @noDecimalTan.not_nil![248] = 24750_i64
        @noDecimalTan.not_nil![249] = 26050_i64
        @noDecimalTan.not_nil![250] = 27474_i64
        @noDecimalTan.not_nil![251] = 29042_i64
        @noDecimalTan.not_nil![252] = 30776_i64
        @noDecimalTan.not_nil![253] = 32708_i64
        @noDecimalTan.not_nil![254] = 34874_i64
        @noDecimalTan.not_nil![255] = 37320_i64
        @noDecimalTan.not_nil![256] = 40107_i64
        @noDecimalTan.not_nil![257] = 43314_i64
        @noDecimalTan.not_nil![258] = 47046_i64
        @noDecimalTan.not_nil![259] = 51445_i64
        @noDecimalTan.not_nil![260] = 56712_i64
        @noDecimalTan.not_nil![261] = 63137_i64
        @noDecimalTan.not_nil![262] = 71153_i64
        @noDecimalTan.not_nil![263] = 81443_i64
        @noDecimalTan.not_nil![264] = 95143_i64
        @noDecimalTan.not_nil![265] = 114300_i64
        @noDecimalTan.not_nil![266] = 143006_i64
        @noDecimalTan.not_nil![267] = 190811_i64
        @noDecimalTan.not_nil![268] = 286362_i64
        @noDecimalTan.not_nil![269] = 572899_i64
        @noDecimalTan.not_nil![270] = j_MAX_VALUE
        @noDecimalTan.not_nil![271] = (-572899).to_i64!
        @noDecimalTan.not_nil![272] = (-286362).to_i64!
        @noDecimalTan.not_nil![273] = (-190811).to_i64!
        @noDecimalTan.not_nil![274] = (-143006).to_i64!
        @noDecimalTan.not_nil![275] = (-114300).to_i64!
        @noDecimalTan.not_nil![276] = (-95143).to_i64!
        @noDecimalTan.not_nil![277] = (-81443).to_i64!
        @noDecimalTan.not_nil![278] = (-71153).to_i64!
        @noDecimalTan.not_nil![279] = (-63137).to_i64!
        @noDecimalTan.not_nil![280] = (-56712).to_i64!
        @noDecimalTan.not_nil![281] = (-51445).to_i64!
        @noDecimalTan.not_nil![282] = (-47046).to_i64!
        @noDecimalTan.not_nil![283] = (-43314).to_i64!
        @noDecimalTan.not_nil![284] = (-40107).to_i64!
        @noDecimalTan.not_nil![285] = (-37320).to_i64!
        @noDecimalTan.not_nil![286] = (-34874).to_i64!
        @noDecimalTan.not_nil![287] = (-32708).to_i64!
        @noDecimalTan.not_nil![288] = (-30776).to_i64!
        @noDecimalTan.not_nil![289] = (-29042).to_i64!
        @noDecimalTan.not_nil![290] = (-27474).to_i64!
        @noDecimalTan.not_nil![291] = (-26050).to_i64!
        @noDecimalTan.not_nil![292] = (-24750).to_i64!
        @noDecimalTan.not_nil![293] = (-23558).to_i64!
        @noDecimalTan.not_nil![294] = (-22460).to_i64!
        @noDecimalTan.not_nil![295] = (-21445).to_i64!
        @noDecimalTan.not_nil![296] = (-20503).to_i64!
        @noDecimalTan.not_nil![297] = (-19626).to_i64!
        @noDecimalTan.not_nil![298] = (-18807).to_i64!
        @noDecimalTan.not_nil![299] = (-18040).to_i64!
        @noDecimalTan.not_nil![300] = (-17320).to_i64!
        @noDecimalTan.not_nil![301] = (-16642).to_i64!
        @noDecimalTan.not_nil![302] = (-16003).to_i64!
        @noDecimalTan.not_nil![303] = (-15398).to_i64!
        @noDecimalTan.not_nil![304] = (-14825).to_i64!
        @noDecimalTan.not_nil![305] = (-14281).to_i64!
        @noDecimalTan.not_nil![306] = (-13763).to_i64!
        @noDecimalTan.not_nil![307] = (-13270).to_i64!
        @noDecimalTan.not_nil![308] = (-12799).to_i64!
        @noDecimalTan.not_nil![309] = (-12348).to_i64!
        @noDecimalTan.not_nil![310] = (-11917).to_i64!
        @noDecimalTan.not_nil![311] = (-11503).to_i64!
        @noDecimalTan.not_nil![312] = (-11106).to_i64!
        @noDecimalTan.not_nil![313] = (-10723).to_i64!
        @noDecimalTan.not_nil![314] = (-10355).to_i64!
        @noDecimalTan.not_nil![315] = (-10000).to_i64!
        @noDecimalTan.not_nil![316] = (-9656).to_i64!
        @noDecimalTan.not_nil![317] = (-9325).to_i64!
        @noDecimalTan.not_nil![318] = (-9004).to_i64!
        @noDecimalTan.not_nil![319] = (-8692).to_i64!
        @noDecimalTan.not_nil![320] = (-8390).to_i64!
        @noDecimalTan.not_nil![321] = (-8097).to_i64!
        @noDecimalTan.not_nil![322] = (-7812).to_i64!
        @noDecimalTan.not_nil![323] = (-7535).to_i64!
        @noDecimalTan.not_nil![324] = (-7265).to_i64!
        @noDecimalTan.not_nil![325] = (-7002).to_i64!
        @noDecimalTan.not_nil![326] = (-6745).to_i64!
        @noDecimalTan.not_nil![327] = (-6494).to_i64!
        @noDecimalTan.not_nil![328] = (-6248).to_i64!
        @noDecimalTan.not_nil![329] = (-6008).to_i64!
        @noDecimalTan.not_nil![330] = (-5773).to_i64!
        @noDecimalTan.not_nil![331] = (-5543).to_i64!
        @noDecimalTan.not_nil![332] = (-5317).to_i64!
        @noDecimalTan.not_nil![333] = (-5095).to_i64!
        @noDecimalTan.not_nil![334] = (-4877).to_i64!
        @noDecimalTan.not_nil![335] = (-4663).to_i64!
        @noDecimalTan.not_nil![336] = (-4452).to_i64!
        @noDecimalTan.not_nil![337] = (-4244).to_i64!
        @noDecimalTan.not_nil![338] = (-4040).to_i64!
        @noDecimalTan.not_nil![339] = (-3838).to_i64!
        @noDecimalTan.not_nil![340] = (-3639).to_i64!
        @noDecimalTan.not_nil![341] = (-3443).to_i64!
        @noDecimalTan.not_nil![342] = (-3249).to_i64!
        @noDecimalTan.not_nil![343] = (-3057).to_i64!
        @noDecimalTan.not_nil![344] = (-2867).to_i64!
        @noDecimalTan.not_nil![345] = (-2679).to_i64!
        @noDecimalTan.not_nil![346] = (-2493).to_i64!
        @noDecimalTan.not_nil![347] = (-2308).to_i64!
        @noDecimalTan.not_nil![348] = (-2125).to_i64!
        @noDecimalTan.not_nil![349] = (-1943).to_i64!
        @noDecimalTan.not_nil![350] = (-1763).to_i64!
        @noDecimalTan.not_nil![351] = (-1583).to_i64!
        @noDecimalTan.not_nil![352] = (-1405).to_i64!
        @noDecimalTan.not_nil![353] = (-1227).to_i64!
        @noDecimalTan.not_nil![354] = (-1051).to_i64!
        @noDecimalTan.not_nil![355] = (-874).to_i64!
        @noDecimalTan.not_nil![356] = (-699).to_i64!
        @noDecimalTan.not_nil![357] = (-524).to_i64!
        @noDecimalTan.not_nil![358] = (-349).to_i64!
        @noDecimalTan.not_nil![359] = (-174).to_i64!
        @noDecimalTan.not_nil![0] = (-174).to_i64!
        self
    end
    

    def sin(angle : Int) : Int64
        angle = angle.to_i32!
        return @noDecimalSin.not_nil![angle]
    end
    

    def cos(angle : Int) : Int64
        angle = angle.to_i32!
        return @noDecimalCos.not_nil![angle]
    end
    

    def tan(angle : Int) : Int64
        angle = angle.to_i32!
        return @noDecimalTan.not_nil![angle]
    end
    

    def antiTan(dx : Int, dy : Int) : Int16
        dx = dx.to_i32!
        dy = dy.to_i32!
        j_MAX_VALUE : Int64 = ((JInteger.jst_MAX_VALUE).to_i64!)
        j_MIN_VALUE : Int64 = ((JInteger.jst_MIN_VALUE).to_i64!)
        ratio : Int64 = (j_MAX_VALUE &- 1_i64)
        if dy != 0
            dxl : Int64 = ((dx).to_i64!)
            ratio = (@j_SCALE).to_i64! &* dxl.tdiv((dy).to_i64!)
            if dx <= 0 && dy < 0
                ratio = @mathUtil.not_nil!.abslong(ratio)
            end
        end
        if (dx >= 0 && dy < 0)
            index = 180
            jfor4 = false
            while true
                if jfor4
                    index &-= 1
                end
                jfor4 = true
                break unless index > 90
                if ratio <= @noDecimalTan.not_nil![index]
                    if ratio > @noDecimalTan.not_nil![index &- 1]
                        return ((index).to_i16!)
                    elsif @noDecimalTan.not_nil![index &- 1] == j_MAX_VALUE && ratio > j_MIN_VALUE
                        return ((index).to_i16!)
                    end
                end
            end
        elsif (dx < 0 && dy <= 0)
            index = 270
            jfor3 = false
            while true
                if jfor3
                    index &-= 1
                end
                jfor3 = true
                break unless index > 180
                if ratio < @noDecimalTan.not_nil![index] && ratio >= @noDecimalTan.not_nil![index &- 1]
                    return ((index).to_i16!)
                end
            end
        elsif (dx < 0 && dy > 0)
            index = (@noDecimalTan.not_nil!.size &- 1)
            jfor2 = false
            while true
                if jfor2
                    index &-= 1
                end
                jfor2 = true
                break unless index > 270
                if ratio < @noDecimalTan.not_nil![index]
                    if ratio >= @noDecimalTan.not_nil![index &- 1]
                        return ((index).to_i16!)
                    elsif @noDecimalTan.not_nil![index &- 1] == j_MAX_VALUE && ratio >= j_MIN_VALUE
                        return ((index).to_i16!)
                    end
                end
            end
        elsif (dx >= 0 && dy >= 0)
            index = 90
            jfor1 = false
            while true
                if jfor1
                    index &-= 1
                end
                jfor1 = true
                break unless index > 0
                if ratio < @noDecimalTan.not_nil![index] && ratio >= @noDecimalTan.not_nil![index &- 1]
                    return ((index).to_i16!)
                end
            end
        end
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        stringBuffer.not_nil!.append("Invalid Ratio: ")
        stringBuffer.not_nil!.appendlong(ratio)
        stringBuffer.not_nil!.append(CommonSeps.getInstance().not_nil!.jf_SPACE)
        stringBuffer.not_nil!.append(PositionStrings.getInstance().not_nil!.jf_DX_LABEL)
        stringBuffer.not_nil!.appendint(dx)
        stringBuffer.not_nil!.append(CommonSeps.getInstance().not_nil!.jf_SPACE)
        stringBuffer.not_nil!.append(PositionStrings.getInstance().not_nil!.jf_DX_LABEL)
        stringBuffer.not_nil!.appendint(dy)
        raise (JException.new.jinit_JException(stringBuffer.not_nil!.toString())).not_nil!
    end
    

    def antiTanDebug(screenX : Int, screenY : Int, targetX : Int, targetY : Int) : Int16
        screenX = screenX.to_i32!
        screenY = screenY.to_i32!
        targetX = targetX.to_i32!
        targetY = targetY.to_i32!
        j_METHOD_NAME : String = "antiTanDebug"
        j_TARGET_ANGLE : String = " Targeting angle: "
        stringMaker : StringMaker? = StringMaker.new.jinit_StringMaker()
        PreLogUtil.put(stringMaker.not_nil!.append("screenX: ").not_nil!.appendint(screenX).not_nil!.append(" screenY: ").not_nil!.appendint(screenY).not_nil!.append(" targetX: ").not_nil!.appendint(targetX).not_nil!.append(" targetY: ").not_nil!.appendint(targetY).not_nil!.toString(), self, j_METHOD_NAME)
        targetX2 : Int32 = JR.neg(targetX)
        targetY2 : Int32 = JR.neg(targetY)
        screenX2 : Int32 = JR.neg(screenX)
        screenY2 : Int32 = JR.neg(screenY)
        dx : Array(Int32)? = Array(Int32).new(4, 0)
        dx.not_nil![0] = (screenX &- targetX)
        dx.not_nil![1] = (screenX &- targetX2)
        dx.not_nil![2] = (screenX2 &- targetX)
        dx.not_nil![3] = (screenX2 &- targetX2)
        dy : Array(Int32)? = Array(Int32).new(4, 0)
        dy.not_nil![0] = (screenY &- targetY)
        dy.not_nil![1] = (screenY &- targetY2)
        dy.not_nil![2] = (screenY2 &- targetY)
        dy.not_nil![3] = (screenY2 &- targetY2)
        angleOfTarget : Int16 = 0_i16
        angleFactory : AngleFactory? = AngleFactory.getInstance()
        angle : Angle? = nil
        index : Int32 = 0
        jfor5 = false
        while true
            if jfor5
                index &+= 1
            end
            jfor5 = true
            break unless index < dx.not_nil!.size
            index2 : Int32 = 0
            jfor6 = false
            while true
                if jfor6
                    index2 &+= 1
                end
                jfor6 = true
                break unless index2 < dy.not_nil!.size
                angleOfTarget = self.antiTan(dx.not_nil![index], dy.not_nil![index2])
                angle = angleFactory.not_nil!.getAt((angleOfTarget).to_i32!)
                stringMaker.not_nil!.delete(0, stringMaker.not_nil!.length())
                PreLogUtil.put(stringMaker.not_nil!.append(CommonLabels.getInstance().not_nil!.jf_INDEX_LABEL).not_nil!.appendint(index).not_nil!.append(" index2: ").not_nil!.appendint(index2).not_nil!.append(PositionStrings.getInstance().not_nil!.jf_DX_LABEL).not_nil!.appendint(dx.not_nil![index]).not_nil!.append(PositionStrings.getInstance().not_nil!.jf_DY_LABEL).not_nil!.appendint(dy.not_nil![index2]).not_nil!.append(j_TARGET_ANGLE).not_nil!.appendshort(angleOfTarget).not_nil!.append(CommonSeps.getInstance().not_nil!.jf_EQUALS).not_nil!.appendshort(angle.not_nil!.getValue()).not_nil!.toString(), self, j_METHOD_NAME)
            end
        end
        angleOfTarget = self.antiTan(dx.not_nil![0], dy.not_nil![0])
        return angleOfTarget
    end
end

