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
# package org.allbinary.graphics.form.item.validation

class AllCommandsVisitor < Visitor
    

    def jinit_AllCommandsVisitor : self
        jinit_Visitor()
        self
    end
    

    def visit(anyType : JAny) : JAny
        return BooleanFactory.getInstance().not_nil!.jf_TRUE
    end
end

