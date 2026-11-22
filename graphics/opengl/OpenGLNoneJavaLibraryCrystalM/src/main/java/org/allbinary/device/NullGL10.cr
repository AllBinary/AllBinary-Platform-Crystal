# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.device

class NullGL10 < JObject
    include GL10

    @@jst_NULL_GL10 : NullGL10? = nil

    def self.jst_NULL_GL10 : NullGL10?
        jclinit
        @@jst_NULL_GL10
    end

    def self.jst_NULL_GL10=(value : NullGL10?) : NullGL10?
        jclinit
        @@jst_NULL_GL10 = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_GL10 = NullGL10.new.jinit_NullGL10()
    end

    def jinit_NullGL10 : self
        self
    end
    

    def glActiveTexture(texture : Int) : Nil
        texture = texture.to_i32!
        return
    end
    

    def glAlphaFunc(func : Int, ref : Number) : Nil
        func = func.to_i32!
        ref = ref.to_f32
        return
    end
    

    def glBindTexture(target : Int, texture : Int) : Nil
        target = target.to_i32!
        texture = texture.to_i32!
        return
    end
    

    def glBlendFunc(sfactor : Int, dfactor : Int) : Nil
        sfactor = sfactor.to_i32!
        dfactor = dfactor.to_i32!
        return
    end
    

    def glClear(mask : Int) : Nil
        mask = mask.to_i32!
        return
    end
    

    def glClearColor(red : Number, green : Number, blue : Number, alpha : Number) : Nil
        red = red.to_f32
        green = green.to_f32
        blue = blue.to_f32
        alpha = alpha.to_f32
        return
    end
    

    def glClearDepthf(depth : Number) : Nil
        depth = depth.to_f32
        return
    end
    

    def glClearStencil(s : Int) : Nil
        s = s.to_i32!
        return
    end
    

    def glClientActiveTexture(texture : Int) : Nil
        texture = texture.to_i32!
        return
    end
    

    def glColor4f(red : Number, green : Number, blue : Number, alpha : Number) : Nil
        red = red.to_f32
        green = green.to_f32
        blue = blue.to_f32
        alpha = alpha.to_f32
        return
    end
    

    def glColorMask(red : Bool, green : Bool, blue : Bool, alpha : Bool) : Nil
        return
    end
    

    def glColorPointer(size : Int, type_ : Int, stride : Int, pointer : JBuffer?) : Nil
        size = size.to_i32!
        type_ = type_.to_i32!
        stride = stride.to_i32!
        return
    end
    

    def glCompressedTexImage2D(target : Int, level : Int, internalformat : Int, width : Int, height : Int, border : Int, imageSize : Int, data : JBuffer?) : Nil
        target = target.to_i32!
        level = level.to_i32!
        internalformat = internalformat.to_i32!
        width = width.to_i32!
        height = height.to_i32!
        border = border.to_i32!
        imageSize = imageSize.to_i32!
        return
    end
    

    def glCompressedTexSubImage2D(target : Int, level : Int, xoffset : Int, yoffset : Int, width : Int, height : Int, format : Int, imageSize : Int, data : JBuffer?) : Nil
        target = target.to_i32!
        level = level.to_i32!
        xoffset = xoffset.to_i32!
        yoffset = yoffset.to_i32!
        width = width.to_i32!
        height = height.to_i32!
        format = format.to_i32!
        imageSize = imageSize.to_i32!
        return
    end
    

    def glCopyTexImage2D(target : Int, level : Int, internalformat : Int, x : Int, y : Int, width : Int, height : Int, border : Int) : Nil
        target = target.to_i32!
        level = level.to_i32!
        internalformat = internalformat.to_i32!
        x = x.to_i32!
        y = y.to_i32!
        width = width.to_i32!
        height = height.to_i32!
        border = border.to_i32!
        return
    end
    

    def glCopyTexSubImage2D(target : Int, level : Int, xoffset : Int, yoffset : Int, x : Int, y : Int, width : Int, height : Int) : Nil
        target = target.to_i32!
        level = level.to_i32!
        xoffset = xoffset.to_i32!
        yoffset = yoffset.to_i32!
        x = x.to_i32!
        y = y.to_i32!
        width = width.to_i32!
        height = height.to_i32!
        return
    end
    

    def glCullFace(mode : Int) : Nil
        mode = mode.to_i32!
        return
    end
    

    def glDeleteTextures(n : Int, textures : Array(Int32)?, offset : Int) : Nil
        n = n.to_i32!
        offset = offset.to_i32!
        return
    end
    

    def glDeleteTextures(n : Int, textures : JIntBuffer?) : Nil
        n = n.to_i32!
        return
    end
    

    def glDepthFunc(func : Int) : Nil
        func = func.to_i32!
        return
    end
    

    def glDepthMask(flag : Bool) : Nil
        return
    end
    

    def glDepthRangef(zNear : Number, zFar : Number) : Nil
        zNear = zNear.to_f32
        zFar = zFar.to_f32
        return
    end
    

    def glDisable(cap : Int) : Nil
        cap = cap.to_i32!
        return
    end
    

    def glDisableClientState(array : Int) : Nil
        array = array.to_i32!
        return
    end
    

    def glDrawArrays(mode : Int, first : Int, count : Int) : Nil
        mode = mode.to_i32!
        first = first.to_i32!
        count = count.to_i32!
        return
    end
    

    def glDrawElements(mode : Int, count : Int, type_ : Int, indices : JBuffer?) : Nil
        mode = mode.to_i32!
        count = count.to_i32!
        type_ = type_.to_i32!
        return
    end
    

    def glEnable(cap : Int) : Nil
        cap = cap.to_i32!
        return
    end
    

    def glEnableClientState(array : Int) : Nil
        array = array.to_i32!
        return
    end
    

    def glFinish : Nil
        return
    end
    

    def glFlush : Nil
        return
    end
    

    def glFogf(pname : Int, param : Number) : Nil
        pname = pname.to_i32!
        param = param.to_f32
        return
    end
    

    def glFogfv(pname : Int, params : Array(Float32)?, offset : Int) : Nil
        pname = pname.to_i32!
        offset = offset.to_i32!
        return
    end
    

    def glFogfv(pname : Int, params : JFloatBuffer?) : Nil
        pname = pname.to_i32!
        return
    end
    

    def glFrontFace(mode : Int) : Nil
        mode = mode.to_i32!
        return
    end
    

    def glFrustumf(left : Number, right : Number, bottom : Number, top : Number, zNear : Number, zFar : Number) : Nil
        left = left.to_f32
        right = right.to_f32
        bottom = bottom.to_f32
        top = top.to_f32
        zNear = zNear.to_f32
        zFar = zFar.to_f32
        return
    end
    

    def glGenTextures(n : Int, textures : Array(Int32)?, offset : Int) : Nil
        n = n.to_i32!
        offset = offset.to_i32!
        return
    end
    

    def glGenTextures(n : Int, textures : JIntBuffer?) : Nil
        n = n.to_i32!
        return
    end
    

    def glGetError : Int32
        return 0
    end
    

    def glGetIntegerv(pname : Int, params : Array(Int32)?, offset : Int) : Nil
        pname = pname.to_i32!
        offset = offset.to_i32!
        return
    end
    

    def glGetIntegerv(pname : Int, params : JIntBuffer?) : Nil
        pname = pname.to_i32!
        return
    end
    

    def glGetString(name : Int) : String
        name = name.to_i32!
        return StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
    end
    

    def glHint(target : Int, mode : Int) : Nil
        target = target.to_i32!
        mode = mode.to_i32!
        return
    end
    

    def glLightModelf(pname : Int, param : Number) : Nil
        pname = pname.to_i32!
        param = param.to_f32
        return
    end
    

    def glLightModelfv(pname : Int, params : Array(Float32)?, offset : Int) : Nil
        pname = pname.to_i32!
        offset = offset.to_i32!
        return
    end
    

    def glLightModelfv(pname : Int, params : JFloatBuffer?) : Nil
        pname = pname.to_i32!
        return
    end
    

    def glLightf(light : Int, pname : Int, param : Number) : Nil
        light = light.to_i32!
        pname = pname.to_i32!
        param = param.to_f32
        return
    end
    

    def glLightfv(light : Int, pname : Int, params : Array(Float32)?, offset : Int) : Nil
        light = light.to_i32!
        pname = pname.to_i32!
        offset = offset.to_i32!
        return
    end
    

    def glLightfv(light : Int, pname : Int, params : JFloatBuffer?) : Nil
        light = light.to_i32!
        pname = pname.to_i32!
        return
    end
    

    def glLineWidth(width : Number) : Nil
        width = width.to_f32
        return
    end
    

    def glLoadIdentity : Nil
        return
    end
    

    def glLoadMatrixf(m : Array(Float32)?, offset : Int) : Nil
        offset = offset.to_i32!
        return
    end
    

    def glLoadMatrixf(m : JFloatBuffer?) : Nil
        return
    end
    

    def glLogicOp(opcode : Int) : Nil
        opcode = opcode.to_i32!
        return
    end
    

    def glMaterialf(face : Int, pname : Int, param : Number) : Nil
        face = face.to_i32!
        pname = pname.to_i32!
        param = param.to_f32
        return
    end
    

    def glMaterialfv(face : Int, pname : Int, params : Array(Float32)?, offset : Int) : Nil
        face = face.to_i32!
        pname = pname.to_i32!
        offset = offset.to_i32!
        return
    end
    

    def glMaterialfv(face : Int, pname : Int, params : JFloatBuffer?) : Nil
        face = face.to_i32!
        pname = pname.to_i32!
        return
    end
    

    def glMatrixMode(mode : Int) : Nil
        mode = mode.to_i32!
        return
    end
    

    def glMultMatrixf(m : Array(Float32)?, offset : Int) : Nil
        offset = offset.to_i32!
        return
    end
    

    def glMultMatrixf(m : JFloatBuffer?) : Nil
        return
    end
    

    def glMultiTexCoord4f(target : Int, s : Number, t : Number, r : Number, q : Number) : Nil
        target = target.to_i32!
        s = s.to_f32
        t = t.to_f32
        r = r.to_f32
        q = q.to_f32
        return
    end
    

    def glNormal3f(nx : Number, ny : Number, nz : Number) : Nil
        nx = nx.to_f32
        ny = ny.to_f32
        nz = nz.to_f32
        return
    end
    

    def glNormalPointer(type_ : Int, stride : Int, pointer : JBuffer?) : Nil
        type_ = type_.to_i32!
        stride = stride.to_i32!
        return
    end
    

    def glOrthof(left : Number, right : Number, bottom : Number, top : Number, zNear : Number, zFar : Number) : Nil
        left = left.to_f32
        right = right.to_f32
        bottom = bottom.to_f32
        top = top.to_f32
        zNear = zNear.to_f32
        zFar = zFar.to_f32
        return
    end
    

    def glPixelStorei(pname : Int, param : Int) : Nil
        pname = pname.to_i32!
        param = param.to_i32!
        return
    end
    

    def glPointSize(size : Number) : Nil
        size = size.to_f32
        return
    end
    

    def glPolygonOffset(factor : Number, units : Number) : Nil
        factor = factor.to_f32
        units = units.to_f32
        return
    end
    

    def glPopMatrix : Nil
        return
    end
    

    def glPushMatrix : Nil
        return
    end
    

    def glReadPixels(x : Int, y : Int, width : Int, height : Int, format : Int, type_ : Int, pixels : JBuffer?) : Nil
        x = x.to_i32!
        y = y.to_i32!
        width = width.to_i32!
        height = height.to_i32!
        format = format.to_i32!
        type_ = type_.to_i32!
        return
    end
    

    def glRotatef(angle : Number, x : Number, y : Number, z : Number) : Nil
        angle = angle.to_f32
        x = x.to_f32
        y = y.to_f32
        z = z.to_f32
        return
    end
    

    def glRotatex(angle : Int, x : Int, y : Int, z : Int) : Nil
        angle = angle.to_i32!
        x = x.to_i32!
        y = y.to_i32!
        z = z.to_i32!
        return
    end
    

    def glSampleCoverage(value : Number, invert : Bool) : Nil
        value = value.to_f32
        return
    end
    

    def glScalef(x : Number, y : Number, z : Number) : Nil
        x = x.to_f32
        y = y.to_f32
        z = z.to_f32
        return
    end
    

    def glScalex(x : Int, y : Int, z : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        z = z.to_i32!
        return
    end
    

    def glScissor(x : Int, y : Int, width : Int, height : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        width = width.to_i32!
        height = height.to_i32!
        return
    end
    

    def glShadeModel(mode : Int) : Nil
        mode = mode.to_i32!
        return
    end
    

    def glStencilFunc(func : Int, ref : Int, mask : Int) : Nil
        func = func.to_i32!
        ref = ref.to_i32!
        mask = mask.to_i32!
        return
    end
    

    def glStencilMask(mask : Int) : Nil
        mask = mask.to_i32!
        return
    end
    

    def glStencilOp(fail : Int, zfail : Int, zpass : Int) : Nil
        fail = fail.to_i32!
        zfail = zfail.to_i32!
        zpass = zpass.to_i32!
        return
    end
    

    def glTexCoordPointer(size : Int, type_ : Int, stride : Int, pointer : JBuffer?) : Nil
        size = size.to_i32!
        type_ = type_.to_i32!
        stride = stride.to_i32!
        return
    end
    

    def glTexEnvf(target : Int, pname : Int, param : Number) : Nil
        target = target.to_i32!
        pname = pname.to_i32!
        param = param.to_f32
        return
    end
    

    def glTexEnvfv(target : Int, pname : Int, params : Array(Float32)?, offset : Int) : Nil
        target = target.to_i32!
        pname = pname.to_i32!
        offset = offset.to_i32!
        return
    end
    

    def glTexEnvfv(target : Int, pname : Int, params : JFloatBuffer?) : Nil
        target = target.to_i32!
        pname = pname.to_i32!
        return
    end
    

    def glTexImage2D(target : Int, level : Int, internalformat : Int, width : Int, height : Int, border : Int, format : Int, type_ : Int, pixels : JBuffer?) : Nil
        target = target.to_i32!
        level = level.to_i32!
        internalformat = internalformat.to_i32!
        width = width.to_i32!
        height = height.to_i32!
        border = border.to_i32!
        format = format.to_i32!
        type_ = type_.to_i32!
        return
    end
    

    def glTexParameterf(target : Int, pname : Int, param : Number) : Nil
        target = target.to_i32!
        pname = pname.to_i32!
        param = param.to_f32
        return
    end
    

    def glTexParameteri(target : Int, pname : Int, param : Int) : Nil
        target = target.to_i32!
        pname = pname.to_i32!
        param = param.to_i32!
        return
    end
    

    def glTexSubImage2D(target : Int, level : Int, xoffset : Int, yoffset : Int, width : Int, height : Int, format : Int, type_ : Int, pixels : JBuffer?) : Nil
        target = target.to_i32!
        level = level.to_i32!
        xoffset = xoffset.to_i32!
        yoffset = yoffset.to_i32!
        width = width.to_i32!
        height = height.to_i32!
        format = format.to_i32!
        type_ = type_.to_i32!
        return
    end
    

    def glTranslatef(x : Number, y : Number, z : Number) : Nil
        x = x.to_f32
        y = y.to_f32
        z = z.to_f32
        return
    end
    

    def glVertexPointer(size : Int, type_ : Int, stride : Int, pointer : JBuffer?) : Nil
        size = size.to_i32!
        type_ = type_.to_i32!
        stride = stride.to_i32!
        return
    end
    

    def glViewport(x : Int, y : Int, width : Int, height : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        width = width.to_i32!
        height = height.to_i32!
        return
    end
    

    def glBegin(i : Int) : Nil
        i = i.to_i32!
        return
    end
    

    def glEnd : Nil
        return
    end
    

    def glVertex3f(f : Number, f2 : Number, f3 : Number) : Nil
        f = f.to_f32
        f2 = f2.to_f32
        f3 = f3.to_f32
        return
    end
    

    def glPolygonMode(i : Int, i1 : Int) : Nil
        i = i.to_i32!
        i1 = i1.to_i32!
        return
    end
end

