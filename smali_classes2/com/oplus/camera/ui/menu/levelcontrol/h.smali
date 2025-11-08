.class Lcom/oplus/camera/ui/menu/levelcontrol/h;
.super Lcom/oplus/camera/ui/menu/levelcontrol/a;
.source "FilterMenuCanvas2D.java"


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private K:I

.field private L:I

.field private M:I

.field private N:I

.field private O:I

.field private P:I

.field private Q:I

.field private R:I

.field private S:I

.field private T:I

.field private U:I

.field private V:I

.field private W:I

.field private X:I

.field private Y:I

.field private Z:F

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/a;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->w:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->x:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->y:Ljava/lang/String;

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->z:I

    .line 25
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->A:I

    .line 26
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->B:I

    .line 27
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->C:I

    .line 28
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->D:I

    .line 29
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->E:I

    .line 30
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->F:I

    .line 31
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->G:I

    .line 56
    iput p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->H:I

    .line 57
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/h;->c(Landroid/content/Context;)V

    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 3

    .line 61
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/h;->b(Landroid/content/Context;)V

    .line 62
    iget p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->H:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq v1, p1, :cond_1

    const/4 v2, 0x4

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    .line 63
    :goto_1
    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->N:I

    .line 64
    iget p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->H:I

    if-ne v1, p1, :cond_2

    move v0, v1

    :cond_2
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->O:I

    const p1, 0x7f070435

    .line 65
    invoke-static {p1}, Lcom/oplus/camera/util/Util;->h(I)F

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->Z:F

    return-void
.end method


# virtual methods
.method public a(Lcom/oplus/camera/ui/menu/levelcontrol/i;)V
    .locals 3

    .line 71
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->i:Ljava/util/ArrayList;

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 p1, 0x12

    .line 73
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    const/16 v0, 0xc

    .line 82
    new-array v0, v0, [F

    fill-array-data v0, :array_1

    .line 91
    array-length v1, p1

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 92
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 93
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 94
    invoke-virtual {v1, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    const/4 p1, 0x0

    .line 95
    invoke-virtual {v1, p1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 97
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 100
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 101
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 102
    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 103
    invoke-virtual {v1, p1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 105
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->k:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method protected b(Landroid/content/Context;)V
    .locals 5

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "filter_menu.vert"

    invoke-static {v1, v0}, Lcom/oplus/camera/util/k;->a(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->w:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "filter_menu.frag"

    invoke-static {v1, v0}, Lcom/oplus/camera/util/k;->a(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->x:Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->w:Ljava/lang/String;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->x:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/oplus/camera/util/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->z:I

    .line 113
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->z:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->B:I

    .line 114
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->z:I

    const-string v2, "aTexCoor"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->C:I

    .line 115
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->z:I

    const-string v3, "uMVPMatrix"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->A:I

    .line 116
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->z:I

    const-string v4, "fadeOn"

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->I:I

    .line 117
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->z:I

    const-string v4, "isVertical"

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->J:I

    .line 118
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->z:I

    const-string v4, "height"

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->K:I

    .line 119
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->z:I

    const-string v4, "width"

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->L:I

    .line 120
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->z:I

    const-string v4, "fadeRange"

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->M:I

    .line 121
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->z:I

    const-string v4, "sTexture"

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->P:I

    .line 122
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->z:I

    const-string v4, "sFilterName"

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->Q:I

    .line 123
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->z:I

    const-string v4, "hasFilterName"

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->R:I

    .line 124
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->z:I

    const-string v4, "uSurfaceSize"

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->S:I

    .line 125
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->z:I

    const-string v4, "uRingRadius"

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->T:I

    .line 126
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->z:I

    const-string v4, "uRingThickness"

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->U:I

    .line 127
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->z:I

    const-string v4, "uRingOffsetCenterY"

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->V:I

    .line 128
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->z:I

    const-string v4, "uRingOffsetCenterX"

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->W:I

    .line 129
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->z:I

    const-string v4, "uDrawRing"

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->X:I

    .line 130
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->z:I

    const-string v4, "uRingTintColor"

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->Y:I

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "frag_oes_tex.sh"

    invoke-static {v0, p1}, Lcom/oplus/camera/util/k;->a(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->y:Ljava/lang/String;

    .line 133
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->w:Ljava/lang/String;

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->y:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/oplus/camera/util/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->D:I

    .line 134
    iget p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->D:I

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->E:I

    .line 135
    iget p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->D:I

    invoke-static {p1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->G:I

    .line 136
    iget p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->D:I

    invoke-static {p1, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->F:I

    return-void
.end method

.method public e(II)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 141
    iget v2, v0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->a:I

    iget v3, v0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->b:I

    const/4 v4, 0x0

    invoke-static {v4, v4, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/16 v2, 0xbe2

    .line 142
    invoke-static {v2}, Landroid/opengl/GLES20;->glEnable(I)V

    const/4 v2, 0x1

    .line 143
    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 145
    iget v3, v0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->z:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const/16 v3, 0xb71

    .line 147
    invoke-static {v3}, Landroid/opengl/GLES20;->glDisable(I)V

    const/16 v3, 0xb44

    .line 148
    invoke-static {v3}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 150
    iget v3, v0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->A:I

    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->e()[F

    move-result-object v5

    invoke-static {v3, v2, v4, v5, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 151
    iget v3, v0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->I:I

    iget v5, v0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->N:I

    invoke-static {v3, v5}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 152
    iget v3, v0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->L:I

    iget v5, v0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->a:I

    int-to-float v5, v5

    invoke-static {v3, v5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 153
    iget v3, v0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->K:I

    iget v5, v0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->b:I

    int-to-float v5, v5

    invoke-static {v3, v5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 154
    iget v3, v0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->J:I

    iget v5, v0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->O:I

    invoke-static {v3, v5}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 155
    iget v3, v0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->M:I

    iget v5, v0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->Z:F

    invoke-static {v3, v5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 156
    iget v3, v0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->P:I

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 157
    iget v3, v0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->Q:I

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 158
    iget v3, v0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->R:I

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 159
    iget v2, v0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->X:I

    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 162
    iget v5, v0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->B:I

    iget-object v2, v0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->j:Ljava/util/ArrayList;

    .line 163
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Ljava/nio/Buffer;

    const/4 v6, 0x3

    const/16 v7, 0x1406

    const/4 v8, 0x0

    const/16 v9, 0xc

    .line 162
    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 166
    iget v11, v0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->C:I

    iget-object v2, v0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->k:Ljava/util/ArrayList;

    .line 167
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Ljava/nio/Buffer;

    const/4 v12, 0x2

    const/16 v13, 0x1406

    const/4 v14, 0x0

    const/16 v15, 0x8

    .line 166
    invoke-static/range {v11 .. v16}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 169
    iget v2, v0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->B:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 170
    iget v2, v0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->C:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const v2, 0x84c0

    .line 172
    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v2, 0xde1

    move/from16 v3, p1

    .line 173
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const v3, 0x84c1

    .line 175
    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 176
    iget v3, v0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->p:I

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 178
    iget-object v2, v0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v2, v4, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 180
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/levelcontrol/h;->f()V

    .line 182
    iget v1, v0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->B:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 183
    iget v0, v0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->C:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    return-void
.end method

.method public f()V
    .locals 4

    const/16 v0, 0x302

    const/16 v1, 0x303

    .line 188
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 189
    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->a()V

    .line 190
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->g:F

    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->h:F

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->a(FFF)V

    .line 191
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->e:F

    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->f:F

    invoke-static {v0, v1, v2}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->b(FFF)V

    .line 192
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->A:I

    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->e()[F

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 193
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->I:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 194
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->R:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 195
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->X:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 196
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->T:I

    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->r:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 197
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->U:I

    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->s:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 198
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->W:I

    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->t:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 199
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->V:I

    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->u:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 200
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->S:I

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->q:[F

    invoke-static {v0, v2, v1, v3}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    .line 201
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->Y:I

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->v:[F

    invoke-static {v0, v2, v1, v3}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    .line 203
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->i:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x4

    invoke-static {v0, v3, p0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

.method public f(II)V
    .locals 17

    move-object/from16 v0, p0

    .line 208
    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->b()V

    .line 210
    iget v1, v0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->D:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 211
    iget v1, v0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->F:I

    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->d()[F

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v4, v3, v2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 214
    iget v5, v0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->E:I

    iget-object v1, v0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->j:Ljava/util/ArrayList;

    .line 215
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Ljava/nio/Buffer;

    const/4 v6, 0x3

    const/16 v7, 0x1406

    const/4 v8, 0x0

    const/16 v9, 0xc

    .line 214
    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 218
    iget v11, v0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->G:I

    iget-object v1, v0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->k:Ljava/util/ArrayList;

    .line 219
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Ljava/nio/Buffer;

    const/4 v12, 0x2

    const/16 v13, 0x1406

    const/4 v14, 0x0

    const/16 v15, 0x8

    .line 218
    invoke-static/range {v11 .. v16}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 221
    iget v1, v0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->E:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 222
    iget v1, v0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->G:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const v1, 0x84c0

    .line 224
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const v1, 0x8d65

    move/from16 v2, p1

    .line 225
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 227
    iget-object v1, v0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v2, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 229
    iget v1, v0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->E:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 230
    iget v0, v0, Lcom/oplus/camera/ui/menu/levelcontrol/h;->G:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 232
    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->c()V

    return-void
.end method
