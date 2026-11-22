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
# package org.allbinary.logic.math.permutations

class OrderedIntArrayPermutationUtil < JObject
    @j_TOTAL_ITERATIONS_TABLE : String = ""

    def jf_TOTAL_ITERATIONS_TABLE : String
        @j_TOTAL_ITERATIONS_TABLE
    end

    def jf_TOTAL_ITERATIONS_TABLE=(value : String) : String
        @j_TOTAL_ITERATIONS_TABLE = value
    end
    @j_FINISHED : String = ""

    def jf_FINISHED : String
        @j_FINISHED
    end

    def jf_FINISHED=(value : String) : String
        @j_FINISHED = value
    end

    @@jst_instance : OrderedIntArrayPermutationUtil? = nil

    def self.jst_instance : OrderedIntArrayPermutationUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : OrderedIntArrayPermutationUtil?) : OrderedIntArrayPermutationUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = OrderedIntArrayPermutationUtil.new.jinit_OrderedIntArrayPermutationUtil()
    end
    

    def self.getInstance : OrderedIntArrayPermutationUtil?
        return OrderedIntArrayPermutationUtil.jst_instance
    end
    

    def self.main(args : Array(String)?) : Nil
        j_TOTAL : Int32 = 3
        data : Array(Int32)? = Array(Int32).new(j_TOTAL, 0)
        i : Int32 = 0
        jfor3 = false
        while true
            if jfor3
                i &+= 1
            end
            jfor3 = true
            break unless i < j_TOTAL
            data.not_nil![i] = i
        end
        permutationVisitor : IntPermutationVisitor? = IntPermutationVisitor.new.jinit_IntPermutationVisitor(data)
        j_ORIGINAL_DATA_LABEL : String = "Original Data: "
        JSystem.out_print(j_ORIGINAL_DATA_LABEL)
        permutationVisitor.not_nil!.print_j(data, StringMaker.new.jinit_StringMaker())
        OrderedIntArrayPermutationUtil.getInstance().not_nil!.generate(data, permutationVisitor)
    end

    # Java field initializers run after the super constructor
    def jfields_OrderedIntArrayPermutationUtil : Nil
    @j_TOTAL_ITERATIONS_TABLE = "Total Iterations: "
    @j_FINISHED = "\nFINISHED"
    end
    

    def jinit_OrderedIntArrayPermutationUtil : self
        jfields_OrderedIntArrayPermutationUtil()
        self
    end
    

    def getNext(data : Array(Int32)?) : Nil
        length : Int32 = data.not_nil!.size
        i : Int32 = length &- 1
        while data.not_nil![i &- 1] >= data.not_nil![i]
            i = i &- 1
        end
        j : Int32 = length
        while data.not_nil![j &- 1] <= data.not_nil![i &- 1]
            j = j &- 1
        end
        self.swap(data, i &- 1, j &- 1)
        i &+= 1
        j = length
        while i < j
            self.swap(data, i &- 1, j &- 1)
            i &+= 1
            j &-= 1
        end
    end
    

    def swap(data : Array(Int32)?, a : Int, b : Int) : Nil
        a = a.to_i32!
        b = b.to_i32!
        temp : Int32 = data.not_nil![a]
        data.not_nil![a] = data.not_nil![b]
        data.not_nil![b] = temp
    end
    

    def factorial(dataLength : Int) : Int64
        dataLength = dataLength.to_i32!
        temp : Int64 = 1_i64
        if dataLength > 1
            i : Int32 = 1
            jfor1 = false
            while true
                if jfor1
                    i &+= 1
                end
                jfor1 = true
                break unless i <= dataLength
                temp &*= (i).to_i64!
            end
        end
        return temp
    end
    

    def generate(data : Array(Int32)?, visitor : Visitor?) : Nil
        iterations : Int64 = self.factorial(data.not_nil!.size)
        JSystem.out_print(@j_TOTAL_ITERATIONS_TABLE)
        JSystem.out_println(JR.str(iterations))
        count : Int64 = 0_i64
        jfor2 = false
        while true
            if jfor2
                count &+= 1
            end
            jfor2 = true
            break unless count < iterations &- 1_i64
            self.getNext(data)
            visitor.not_nil!.visit(self)
        end
        JSystem.out_println(@j_FINISHED)
    end
end

