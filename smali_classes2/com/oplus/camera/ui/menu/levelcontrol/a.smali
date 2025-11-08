.class public abstract Lcom/oplus/camera/ui/menu/levelcontrol/a;
.super Ljava/lang/Object;
.source "BaseFilterMenuCanvas.java"


# instance fields
.field private A:Lcom/oplus/camera/ui/preview/a/l$a;

.field private B:F

.field private C:F

.field protected a:I

.field protected b:I

.field protected c:I

.field protected d:I

.field protected e:F

.field protected f:F

.field protected g:F

.field protected h:F

.field protected i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/nio/FloatBuffer;",
            ">;"
        }
    .end annotation
.end field

.field protected k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/nio/FloatBuffer;",
            ">;"
        }
    .end annotation
.end field

.field protected l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/nio/FloatBuffer;",
            ">;"
        }
    .end annotation
.end field

.field protected m:F

.field protected n:F

.field protected o:I

.field protected p:I

.field protected q:[F

.field protected r:F

.field protected s:F

.field protected t:F

.field protected u:F

.field protected v:[F

.field private w:Lcom/oplus/camera/ui/preview/a/s;

.field private x:Lcom/oplus/camera/ui/preview/a/b;

.field private y:Z

.field private z:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->w:Lcom/oplus/camera/ui/preview/a/s;

    .line 37
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->x:Lcom/oplus/camera/ui/preview/a/b;

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->y:Z

    const/4 v1, 0x0

    .line 39
    iput v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->z:F

    .line 40
    sget-object v2, Lcom/oplus/camera/ui/preview/a/l$a;->Polarr:Lcom/oplus/camera/ui/preview/a/l$a;

    iput-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->A:Lcom/oplus/camera/ui/preview/a/l$a;

    .line 42
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->a:I

    .line 43
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->b:I

    .line 44
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->c:I

    .line 45
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->d:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 46
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->e:F

    .line 47
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->f:F

    .line 48
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->g:F

    .line 49
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->h:F

    .line 50
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->i:Ljava/util/ArrayList;

    .line 51
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->j:Ljava/util/ArrayList;

    .line 52
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->k:Ljava/util/ArrayList;

    .line 53
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->l:Ljava/util/ArrayList;

    .line 54
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->m:F

    .line 55
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->n:F

    const/4 v2, -0x1

    .line 56
    iput v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->o:I

    .line 57
    iput v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->p:I

    const/4 v2, 0x2

    .line 58
    new-array v2, v2, [F

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->q:[F

    .line 59
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->r:F

    .line 60
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->s:F

    .line 61
    iput v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->t:F

    .line 62
    iput v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->u:F

    .line 63
    iput v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->B:F

    .line 64
    iput v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->C:F

    const/4 v0, 0x4

    .line 65
    new-array v0, v0, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->v:[F

    .line 68
    new-instance v0, Lcom/oplus/camera/ui/preview/a/s;

    invoke-direct {v0}, Lcom/oplus/camera/ui/preview/a/s;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->w:Lcom/oplus/camera/ui/preview/a/s;

    .line 69
    new-instance v0, Lcom/oplus/camera/ui/preview/a/b;

    invoke-direct {v0}, Lcom/oplus/camera/ui/preview/a/b;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->x:Lcom/oplus/camera/ui/preview/a/b;

    const v0, 0x7f0704b5

    .line 70
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->h(I)F

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->C:F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private f()Lcom/oplus/camera/ui/preview/a/a;
    .locals 2

    .line 74
    sget-object v0, Lcom/oplus/camera/ui/preview/a/l$a;->Polarr:Lcom/oplus/camera/ui/preview/a/l$a;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->A:Lcom/oplus/camera/ui/preview/a/l$a;

    if-ne v0, v1, :cond_0

    .line 75
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->w:Lcom/oplus/camera/ui/preview/a/s;

    return-object p0

    .line 77
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->x:Lcom/oplus/camera/ui/preview/a/b;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 108
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 111
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->l:Ljava/util/ArrayList;

    if-eqz p0, :cond_3

    .line 112
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_3
    return-void
.end method

.method public a(F)V
    .locals 0

    .line 95
    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->z:F

    return-void
.end method

.method public a(FF)V
    .locals 2

    .line 236
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->a:I

    const/high16 v1, 0x40000000    # 2.0f

    if-lez v0, :cond_0

    int-to-float v0, v0

    div-float/2addr v0, v1

    div-float v0, p1, v0

    .line 237
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->g:F

    .line 238
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->B:F

    div-float/2addr v0, v1

    div-float v0, p1, v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->t:F

    .line 241
    :cond_0
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->b:I

    if-lez v0, :cond_1

    int-to-float v0, v0

    div-float/2addr v0, v1

    div-float v0, p2, v0

    .line 242
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->h:F

    .line 243
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->B:F

    div-float/2addr v0, v1

    div-float v0, p2, v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->u:F

    .line 246
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSelectorPosition, x: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", y: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", mSelectorOffsetX: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->g:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", mSelectorOffsetY: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->h:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BaseFilterMenuCanvas"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(FFFIFFZLcom/oplus/camera/ui/menu/levelcontrol/i;)V
    .locals 0

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 263
    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->p:I

    return-void
.end method

.method public a(II)V
    .locals 3

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSize, width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseFilterMenuCanvas"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->q:[F

    int-to-float v1, p1

    const/4 v2, 0x0

    aput v1, v0, v2

    int-to-float v1, p2

    const/4 v2, 0x1

    .line 89
    aput v1, v0, v2

    .line 90
    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->a:I

    .line 91
    iput p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->b:I

    return-void
.end method

.method public a(IIII)V
    .locals 2

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTextureSize: width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseFilterMenuCanvas"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->c:I

    .line 199
    iput p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->d:I

    const/4 p1, 0x1

    if-ne p1, p4, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/4 p1, 0x4

    if-ne p1, p4, :cond_3

    .line 203
    :cond_1
    iget p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->b:I

    if-lez p1, :cond_2

    .line 204
    iget p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->c:I

    int-to-float p1, p1

    iget p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->a:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->n:F

    .line 207
    :cond_2
    iget p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->a:I

    if-lez p1, :cond_5

    .line 208
    iget p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->d:I

    int-to-float p1, p1

    iget p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->b:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->m:F

    goto :goto_0

    .line 211
    :cond_3
    iget p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->b:I

    if-lez p1, :cond_4

    .line 212
    iget p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->c:I

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    iput p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->m:F

    .line 215
    :cond_4
    iget p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->a:I

    if-lez p1, :cond_5

    .line 216
    iget p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->d:I

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    iput p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->n:F

    :cond_5
    :goto_0
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    .line 134
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->y:Z

    .line 135
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->w:Lcom/oplus/camera/ui/preview/a/s;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1, v1}, Lcom/oplus/camera/ui/preview/a/s;->a(Landroid/content/Context;II)V

    .line 137
    invoke-static {}, Lcom/oplus/camera/aps/config/CameraConfig;->isSupportMicroscope()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oplus/camera/aps/config/CameraConfig;->isSupportMicroscopeFilter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->x:Lcom/oplus/camera/ui/preview/a/b;

    invoke-virtual {v0, p1, v1, v1}, Lcom/oplus/camera/ui/preview/a/b;->a(Landroid/content/Context;II)V

    :cond_0
    const/4 p1, 0x0

    .line 141
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->y:Z

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/menu/levelcontrol/i;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/preview/a/l$a;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->A:Lcom/oplus/camera/ui/preview/a/l$a;

    return-void
.end method

.method public a([F)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->v:[F

    return-void
.end method

.method public a(IILjava/util/List;F)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lco/polarr/renderer/entities/DrawingItem;",
            ">;F)Z"
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v0, 0xbe2

    .line 181
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 182
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/a;->f()Lcom/oplus/camera/ui/preview/a/a;

    move-result-object v1

    iget v5, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->z:F

    move-object v2, p3

    move v3, p1

    move v4, p2

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/camera/ui/preview/a/a;->a(Ljava/util/List;IIFF)V

    const/4 p0, 0x1

    return p0
.end method

.method public b()I
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->j:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    .line 118
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public b(F)V
    .locals 2

    .line 222
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->a:I

    if-lez v0, :cond_0

    int-to-float v0, v0

    div-float v0, p1, v0

    .line 223
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->e:F

    .line 226
    :cond_0
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->b:I

    if-lez v0, :cond_1

    int-to-float v0, v0

    div-float v0, p1, v0

    .line 227
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->f:F

    .line 230
    :cond_1
    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->B:F

    .line 231
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->a:I

    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->b:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->f:F

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->e:F

    :goto_0
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->r:F

    .line 232
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->C:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    div-float/2addr v0, p1

    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->s:F

    return-void
.end method

.method public b(II)V
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->w:Lcom/oplus/camera/ui/preview/a/s;

    if-eqz p0, :cond_0

    .line 146
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/preview/a/s;->a(II)V

    :cond_0
    return-void
.end method

.method protected abstract b(Landroid/content/Context;)V
.end method

.method public c()V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->w:Lcom/oplus/camera/ui/preview/a/s;

    const-string v1, "BaseFilterMenuCanvas"

    if-eqz v0, :cond_0

    const-string v0, "destroyFilterEngine mPolarrRender"

    .line 152
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->w:Lcom/oplus/camera/ui/preview/a/s;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/a/s;->e()V

    .line 155
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    const-string v0, "destroyFilterEngine mPolarrRender X"

    .line 157
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->x:Lcom/oplus/camera/ui/preview/a/b;

    if-eqz v0, :cond_1

    const-string v0, "destroyFilterEngine mAncFilterSdk"

    .line 161
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->x:Lcom/oplus/camera/ui/preview/a/b;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/b;->e()V

    .line 164
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    const-string p0, "destroyFilterEngine mAncFilterSdk X"

    .line 166
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public c(II)V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->w:Lcom/oplus/camera/ui/preview/a/s;

    if-eqz p0, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/s;->f()V

    :cond_0
    return-void
.end method

.method public d(II)V
    .locals 0

    return-void
.end method

.method public abstract e(II)V
.end method

.method public e()Z
    .locals 1

    .line 188
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/a;->f()Lcom/oplus/camera/ui/preview/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/a;->f()Lcom/oplus/camera/ui/preview/a/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/a;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract f(II)V
.end method
