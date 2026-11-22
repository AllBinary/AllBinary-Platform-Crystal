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
# package org.allbinary.logic.util.cache

class KeylessBasicArrayListCache < IndexedBasicArrayListCache
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @basicArrayListUtil : BasicArrayListUtil? = nil

    def jf_basicArrayListUtil : BasicArrayListUtil?
        @basicArrayListUtil
    end

    def jf_basicArrayListUtil=(value : BasicArrayListUtil?) : BasicArrayListUtil?
        @basicArrayListUtil = value
    end

    # Java field initializers run after the super constructor
    def jfields_KeylessBasicArrayListCache : Nil
    @logUtil = LogUtil.getInstance()
    @basicArrayListUtil = BasicArrayListUtil.getInstance()
    end
    

    def jinit_KeylessBasicArrayListCache : self
        jinit_IndexedBasicArrayListCache()
        jfields_KeylessBasicArrayListCache()
        self
    end
    

    def get : BasicArrayList?
        begin
            if @index >= @list.not_nil!.size()
                self.addDefault()
            end
            list : BasicArrayList? = JR.cast(self.getAt(((@index &+= 1) &- 1)), BasicArrayList)
            return list
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, @commonStrings.not_nil!.jf_GET, e)
            return @basicArrayListUtil.not_nil!.getImmutableInstance()
            else
                raise jex1
            end
        end
        return nil
    end
    

    def clear : Nil
        super()
        basicArrayList : BasicArrayList? = nil
        index : Int32 = @list.not_nil!.size() &- 1
        jfor1 = false
        while true
            if jfor1
                index &-= 1
            end
            jfor1 = true
            break unless index >= 0
            basicArrayList = (JR.cast(@list.not_nil!.jf_objectArray.not_nil![index], BasicArrayList))
            basicArrayList.not_nil!.clear()
        end
    end
    

    def log : String
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        stringBuffer.not_nil!.append("S: ")
        stringBuffer.not_nil!.appendint(@list.not_nil!.size())
        j_S_LABEL : String = " s: "
        basicArrayList : BasicArrayList? = nil
        index : Int32 = @list.not_nil!.size() &- 1
        jfor2 = false
        while true
            if jfor2
                index &-= 1
            end
            jfor2 = true
            break unless index >= 0
            stringBuffer.not_nil!.append(j_S_LABEL)
            basicArrayList = (JR.cast(@list.not_nil!.jf_objectArray.not_nil![index], BasicArrayList))
            stringBuffer.not_nil!.appendint(basicArrayList.not_nil!.size())
        end
        return stringBuffer.not_nil!.toString()
    end
end

