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

class OrderedObjectArrayPermutationUtil < JObject
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

    @@jst_instance : OrderedObjectArrayPermutationUtil? = nil

    def self.jst_instance : OrderedObjectArrayPermutationUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : OrderedObjectArrayPermutationUtil?) : OrderedObjectArrayPermutationUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = OrderedObjectArrayPermutationUtil.new.jinit_OrderedObjectArrayPermutationUtil()
    end
    

    def self.getInstance : OrderedObjectArrayPermutationUtil?
        return OrderedObjectArrayPermutationUtil.jst_instance
    end
    

    def self.main(args : Array(String)?) : Nil
        j_TOTAL : Int32 = 7
        data : Array(JAny)? = Array(JAny).new(j_TOTAL, nil)
        i : Int32 = 0
        jfor3 = false
        while true
            if jfor3
                i &+= 1
            end
            jfor3 = true
            break unless i < j_TOTAL
            data.not_nil![i] = ComparableObject.new.jinit_ComparableObject()
        end
        JArrays.sort(data)
        permutationVisitor : ObjectPermutationVisitor? = ObjectPermutationVisitor.new.jinit_ObjectPermutationVisitor(data)
        j_ORIGINAL_DATA_LABEL : String = "Original Data: "
        JSystem.out_print(j_ORIGINAL_DATA_LABEL)
        permutationVisitor.not_nil!.visit(JR.box(data))
        OrderedObjectArrayPermutationUtil.getInstance().not_nil!.generate(data, permutationVisitor)
    end

    # Java field initializers run after the super constructor
    def jfields_OrderedObjectArrayPermutationUtil : Nil
    @j_TOTAL_ITERATIONS_TABLE = "Total Iterations: "
    @j_FINISHED = "\nFINISHED"
    end
    

    def jinit_OrderedObjectArrayPermutationUtil : self
        jfields_OrderedObjectArrayPermutationUtil()
        self
    end
    

    def getNext(data : Array(JAny)?) : Nil
        length : Int32 = data.not_nil!.size
        i : Int32 = length &- 1
        tsUtil : TsUtil? = TsUtil.getInstance()
        while tsUtil.not_nil!.hashCode(data.not_nil![i &- 1]) >= tsUtil.not_nil!.hashCode(data.not_nil![i])
            i = i &- 1
        end
        j : Int32 = length
        while tsUtil.not_nil!.hashCode(data.not_nil![j &- 1]) <= tsUtil.not_nil!.hashCode(data.not_nil![i &- 1])
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
    

    def swap(data : Array(JAny)?, a : Int, b : Int) : Nil
        a = a.to_i32!
        b = b.to_i32!
        temp : JAny = data.not_nil![a]
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
    

    def generate(data : Array(JAny)?, visitor : Visitor?) : Nil
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

