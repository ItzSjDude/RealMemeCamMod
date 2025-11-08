.class public abstract La/a/b/b/a/a;
.super Ljava/lang/Object;


# static fields
.field public static final KEY_IN:I = 0x102

.field public static final KEY_INDEX:I = 0x201

.field public static final KEY_OUT:I = 0x101

.field public static final fragmentHeader:Ljava/lang/String; = "precision highp float;\n"

.field public static final m:[F

.field public static final needReplaceHeader:Ljava/lang/String; = "#extension GL_OES_standard_derivatives : enable"

.field public static final vertexHeader:Ljava/lang/String; = "uniform mat4 u_ModelViewProjectionMatrix;\nattribute vec4 a_Vertex;\nattribute vec4 a_TexCoord;\nattribute vec4 a_Distortion;\nattribute vec4 a_Delta;\n"


# instance fields
.field public a:Lco/polarr/renderer/entities/Context;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Landroid/content/res/Resources;

.field public j:[F

.field public k:I

.field public l:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, La/a/b/f/r;->a()[F

    move-result-object v0

    sput-object v0, La/a/b/b/a/a;->m:[F

    return-void
.end method

.method public constructor <init>(Lco/polarr/renderer/entities/Context;Landroid/content/res/Resources;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, La/a/b/b/a/a;->m:[F

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, La/a/b/b/a/a;->j:[F

    const/4 v0, 0x0

    iput v0, p0, La/a/b/b/a/a;->k:I

    iput v0, p0, La/a/b/b/a/a;->l:I

    iput-object p2, p0, La/a/b/b/a/a;->i:Landroid/content/res/Resources;

    iput-object p1, p0, La/a/b/b/a/a;->a:Lco/polarr/renderer/entities/Context;

    invoke-virtual {p0}, La/a/b/b/a/a;->d()V

    return-void
.end method

.method public static a(ILjava/lang/String;)I
    .locals 4

    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p1, 0x1

    new-array v2, p1, [I

    const v3, 0x8b81

    invoke-static {v0, v3, v2, v1}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget v2, v2, v1

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not compile shader:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, La/a/b/b/a/a;->a(ILjava/lang/Object;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GLES20 Error:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, La/a/b/b/a/a;->a(ILjava/lang/Object;)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    move v0, v1

    :cond_0
    return v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "#extension GL_OES_standard_derivatives : enable"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "precision highp float;\n"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "#extension GL_OES_standard_derivatives : enable\nprecision highp float;\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static a(ILjava/lang/Object;)V
    .locals 0

    const-string p0, "base glError"

    invoke-static {p0}, La/a/b/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    const v0, 0x8b31

    invoke-static {v0, p0}, La/a/b/b/a/a;->a(ILjava/lang/String;)I

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const v1, 0x8b30

    invoke-static {p1}, La/a/b/b/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, La/a/b/b/a/a;->a(ILjava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    const-string p0, "hh"

    invoke-static {p0}, La/a/b/a;->a(Ljava/lang/String;)V

    return v0

    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v1, p0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 v2, 0x1

    new-array v3, v2, [I

    const v4, 0x8b82

    invoke-static {v1, v4, v3, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v3, v3, v0

    if-eq v3, v2, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not link program:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, La/a/b/b/a/a;->a(ILjava/lang/Object;)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    invoke-static {v0}, La/a/b/c/g;->b(I)V

    :cond_3
    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    return v0
.end method


# virtual methods
.method public a(III)La/a/b/c/d;
    .locals 6

    const/4 p0, 0x1

    new-array p0, p0, [I

    const/4 p3, 0x0

    aput p3, p0, p3

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x1908

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, La/a/b/f/f;->a(I[IIIII)V

    aget p0, p0, p3

    const/16 p3, 0x1908

    invoke-static {p0, p3, p1, p2}, La/a/b/f/f;->b(IIII)La/a/b/c/d;

    move-result-object p0

    return-object p0
.end method

.method public final a()V
    .locals 0

    invoke-virtual {p0}, La/a/b/b/a/a;->g()V

    return-void
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, La/a/b/b/a/a;->l:I

    return-void
.end method

.method public a(II)V
    .locals 0

    const p0, 0x84c0

    add-int/2addr p2, p0

    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 p0, 0xde1

    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method public a(La/a/b/c/d;)V
    .locals 0

    if-eqz p1, :cond_0

    iget p0, p1, La/a/b/c/d;->a:I

    invoke-static {p0}, La/a/b/f/f;->a(I)V

    const/4 p0, 0x0

    iput p0, p1, La/a/b/c/d;->a:I

    :cond_0
    return-void
.end method

.method public a(La/a/b/c/d;I)V
    .locals 0

    iget p1, p1, La/a/b/c/d;->a:I

    invoke-virtual {p0, p1, p2}, La/a/b/b/a/a;->a(II)V

    return-void
.end method

.method public a(Ljava/lang/String;F)V
    .locals 0

    iget p0, p0, La/a/b/b/a/a;->b:I

    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p0

    invoke-static {p0, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    return-void
.end method

.method public a(Ljava/lang/String;FF)V
    .locals 0

    iget p0, p0, La/a/b/b/a/a;->b:I

    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p0

    invoke-static {p0, p2, p3}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    return-void
.end method

.method public a(Ljava/lang/String;FFFF)V
    .locals 0

    iget p0, p0, La/a/b/b/a/a;->b:I

    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p0

    invoke-static {p0, p2, p3, p4, p5}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 0

    iget p0, p0, La/a/b/b/a/a;->b:I

    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p0

    invoke-static {p0, p2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, La/a/b/b/a/a;->a:Lco/polarr/renderer/entities/Context;

    iget-boolean v0, v0, Lco/polarr/renderer/entities/Context;->isOES:Z

    if-eqz v0, :cond_0

    instance-of v0, p0, La/a/b/b/an;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const-string v0, "uniform sampler2D texture;"

    const-string v1, "uniform samplerExternalOES texture;"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "#extension GL_OES_EGL_image_external : require\n"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uniform mat4 u_ModelViewProjectionMatrix;\nattribute vec4 a_Vertex;\nattribute vec4 a_TexCoord;\nattribute vec4 a_Distortion;\nattribute vec4 a_Delta;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "precision highp float;\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, La/a/b/b/a/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, La/a/b/b/a/a;->b:I

    iget p1, p0, La/a/b/b/a/a;->b:I

    const-string p2, "a_Vertex"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, La/a/b/b/a/a;->c:I

    iget p1, p0, La/a/b/b/a/a;->b:I

    const-string p2, "a_TexCoord"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, La/a/b/b/a/a;->d:I

    iget p1, p0, La/a/b/b/a/a;->b:I

    const-string p2, "a_Distortion"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, La/a/b/b/a/a;->e:I

    iget p1, p0, La/a/b/b/a/a;->b:I

    const-string p2, "a_Delta"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, La/a/b/b/a/a;->f:I

    iget p1, p0, La/a/b/b/a/a;->b:I

    const-string p2, "u_ModelViewProjectionMatrix"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, La/a/b/b/a/a;->g:I

    iget p1, p0, La/a/b/b/a/a;->b:I

    const-string p2, "texture"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, La/a/b/b/a/a;->h:I

    return-void
.end method

.method public a(Ljava/lang/String;[F)V
    .locals 1

    iget p0, p0, La/a/b/b/a/a;->b:I

    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p0

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-static {p0, v0, p1, p2, p1}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    return-void
.end method

.method public a(Ljava/lang/String;[FII)V
    .locals 0

    iget p0, p0, La/a/b/b/a/a;->b:I

    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p0

    invoke-static {p0, p4, p2, p3}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    return-void
.end method

.method public a([F)V
    .locals 0

    iput-object p1, p0, La/a/b/b/a/a;->j:[F

    return-void
.end method

.method public final b()I
    .locals 0

    iget p0, p0, La/a/b/b/a/a;->l:I

    return p0
.end method

.method public abstract b(II)V
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, La/a/b/b/a/a;->a:Lco/polarr/renderer/entities/Context;

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->shaderUtil:La/a/b/f/m;

    iget-object v1, p0, La/a/b/b/a/a;->i:Landroid/content/res/Resources;

    invoke-virtual {v0, v1, p1}, La/a/b/f/m;->a(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, La/a/b/b/a/a;->a:Lco/polarr/renderer/entities/Context;

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->shaderUtil:La/a/b/f/m;

    iget-object v1, p0, La/a/b/b/a/a;->i:Landroid/content/res/Resources;

    invoke-virtual {v0, v1, p2}, La/a/b/f/m;->a(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, La/a/b/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "create program"

    invoke-static {p0}, La/a/b/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;[FII)V
    .locals 0

    iget p0, p0, La/a/b/b/a/a;->b:I

    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p0

    invoke-static {p0, p4, p2, p3}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    return-void
.end method

.method public final c()I
    .locals 0

    iget p0, p0, La/a/b/b/a/a;->k:I

    return p0
.end method

.method public final c(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, La/a/b/b/a/a;->b(II)V

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public draw()V
    .locals 0

    invoke-virtual {p0}, La/a/b/b/a/a;->f()V

    invoke-virtual {p0}, La/a/b/b/a/a;->k()V

    invoke-virtual {p0}, La/a/b/b/a/a;->j()V

    invoke-virtual {p0}, La/a/b/b/a/a;->e()V

    invoke-virtual {p0}, La/a/b/b/a/a;->h()V

    return-void
.end method

.method public e()V
    .locals 2

    iget v0, p0, La/a/b/b/a/a;->k:I

    const v1, 0x84c0

    add-int/2addr v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v0, p0, La/a/b/b/a/a;->a:Lco/polarr/renderer/entities/Context;

    iget-boolean v0, v0, Lco/polarr/renderer/entities/Context;->isOES:Z

    if-eqz v0, :cond_0

    instance-of v0, p0, La/a/b/b/an;

    if-eqz v0, :cond_0

    const v0, 0x8d65

    goto :goto_0

    :cond_0
    const/16 v0, 0xde1

    :goto_0
    invoke-virtual {p0}, La/a/b/b/a/a;->b()I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, p0, La/a/b/b/a/a;->h:I

    iget p0, p0, La/a/b/b/a/a;->k:I

    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    return-void
.end method

.method public f()V
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-static {p0, p0, p0, p0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p0, 0x4000

    invoke-static {p0}, Landroid/opengl/GLES20;->glClear(I)V

    return-void
.end method

.method public abstract g()V
.end method

.method public getMatrix()[F
    .locals 0

    iget-object p0, p0, La/a/b/b/a/a;->j:[F

    return-object p0
.end method

.method public h()V
    .locals 7

    iget v0, p0, La/a/b/b/a/a;->c:I

    if-ltz v0, :cond_0

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v1, p0, La/a/b/b/a/a;->c:I

    const/4 v2, 0x3

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, La/a/b/b/a/a;->a:Lco/polarr/renderer/entities/Context;

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->mesh:Lco/polarr/renderer/entities/Mesh;

    iget-object v6, v0, Lco/polarr/renderer/entities/Mesh;->mVerBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    :cond_0
    iget v0, p0, La/a/b/b/a/a;->d:I

    if-ltz v0, :cond_1

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v1, p0, La/a/b/b/a/a;->d:I

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, La/a/b/b/a/a;->a:Lco/polarr/renderer/entities/Context;

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->mesh:Lco/polarr/renderer/entities/Mesh;

    iget-object v6, v0, Lco/polarr/renderer/entities/Mesh;->mTexBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    :cond_1
    iget v0, p0, La/a/b/b/a/a;->e:I

    if-ltz v0, :cond_2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v1, p0, La/a/b/b/a/a;->e:I

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, La/a/b/b/a/a;->a:Lco/polarr/renderer/entities/Context;

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->mesh:Lco/polarr/renderer/entities/Mesh;

    iget-object v6, v0, Lco/polarr/renderer/entities/Mesh;->mDistortionBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    :cond_2
    iget v0, p0, La/a/b/b/a/a;->f:I

    if-ltz v0, :cond_3

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v1, p0, La/a/b/b/a/a;->f:I

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, La/a/b/b/a/a;->a:Lco/polarr/renderer/entities/Context;

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->mesh:Lco/polarr/renderer/entities/Mesh;

    iget-object v6, v0, Lco/polarr/renderer/entities/Mesh;->mDeltaBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    :cond_3
    const/4 v0, 0x4

    iget-object v1, p0, La/a/b/b/a/a;->a:Lco/polarr/renderer/entities/Context;

    iget-object v1, v1, Lco/polarr/renderer/entities/Context;->mesh:Lco/polarr/renderer/entities/Mesh;

    iget-object v1, v1, Lco/polarr/renderer/entities/Mesh;->trianglesBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v1

    const/16 v2, 0x1403

    iget-object v3, p0, La/a/b/b/a/a;->a:Lco/polarr/renderer/entities/Context;

    iget-object v3, v3, Lco/polarr/renderer/entities/Context;->mesh:Lco/polarr/renderer/entities/Mesh;

    iget-object v3, v3, Lco/polarr/renderer/entities/Mesh;->trianglesBuffer:Ljava/nio/ShortBuffer;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    iget v0, p0, La/a/b/b/a/a;->c:I

    if-ltz v0, :cond_4

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    :cond_4
    iget v0, p0, La/a/b/b/a/a;->d:I

    if-ltz v0, :cond_5

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    :cond_5
    iget v0, p0, La/a/b/b/a/a;->e:I

    if-ltz v0, :cond_6

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    :cond_6
    iget v0, p0, La/a/b/b/a/a;->f:I

    if-ltz v0, :cond_7

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    :cond_7
    const-string v0, "draw program"

    invoke-static {v0}, La/a/b/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, La/a/b/b/a/a;->i()V

    return-void
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method public j()V
    .locals 3

    iget v0, p0, La/a/b/b/a/a;->g:I

    iget-object p0, p0, La/a/b/b/a/a;->j:[F

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v2, v1, p0, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    return-void
.end method

.method public k()V
    .locals 0

    iget p0, p0, La/a/b/b/a/a;->b:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method
