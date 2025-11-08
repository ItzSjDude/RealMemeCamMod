.class public Lcom/oplus/camera/ui/menu/levelcontrol/i;
.super Ljava/lang/Object;
.source "GLModelParam.java"


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:F

.field private E:I

.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lco/polarr/renderer/entities/DrawingItem;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/camera/ui/preview/a/k;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/graphics/Bitmap;

.field private f:Landroid/graphics/Bitmap;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->b:Ljava/util/List;

    .line 14
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->c:Ljava/util/List;

    .line 15
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->d:Ljava/util/List;

    .line 16
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->e:Landroid/graphics/Bitmap;

    .line 17
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->f:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->g:I

    .line 19
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->h:I

    .line 20
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->i:I

    .line 21
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->j:I

    .line 22
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->k:I

    .line 23
    sget v1, Lcom/oplus/camera/ui/preview/a/j;->a:I

    iput v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->l:I

    const/4 v1, 0x0

    .line 24
    iput v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->m:F

    .line 25
    iput v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->n:F

    .line 26
    iput v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->o:F

    .line 27
    iput v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->p:F

    .line 28
    iput v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->q:F

    .line 29
    iput v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->r:F

    .line 30
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->s:Z

    .line 31
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->t:Z

    .line 32
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->u:Z

    .line 33
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->v:Z

    .line 34
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->w:Z

    const/4 v2, -0x1

    .line 35
    iput v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->x:I

    .line 36
    iput v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->y:I

    .line 37
    iput v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->z:I

    .line 38
    iput v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->A:I

    .line 39
    iput v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->B:I

    .line 40
    iput v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->C:I

    .line 41
    iput v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->D:F

    .line 42
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->E:I

    .line 45
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 348
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 2

    .line 244
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "tree-green.cube.rgb.bin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_1
    const-string v0, "sky-blue.cube.rgb.bin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_1

    :sswitch_2
    const-string v0, "red-red.cube.rgb.bin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_3
    const-string v0, "oplus_video_filter_portrait_retention"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_4
    const-string v0, "portrait_retention"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_5
    const-string v0, "neon-2020.cube.rgb.bin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto :goto_1

    :sswitch_6
    const-string v0, "portrait_streamer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_7
    const-string v0, "oplus_video_filter_neon"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto :goto_1

    :cond_0
    :goto_0
    move p1, v1

    :goto_1
    packed-switch p1, :pswitch_data_0

    return v1

    .line 265
    :pswitch_0
    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->C:I

    return p0

    .line 260
    :pswitch_1
    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->B:I

    return p0

    .line 257
    :pswitch_2
    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->A:I

    return p0

    .line 254
    :pswitch_3
    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->z:I

    return p0

    .line 251
    :pswitch_4
    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->y:I

    return p0

    .line 248
    :pswitch_5
    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->x:I

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x7ccd13bd -> :sswitch_7
        -0x37592faf -> :sswitch_6
        -0x1816d0d8 -> :sswitch_5
        0xc440f7a -> :sswitch_4
        0x261c2f27 -> :sswitch_3
        0x3566c7a6 -> :sswitch_2
        0x47fc7315 -> :sswitch_1
        0x5d090347 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lco/polarr/renderer/entities/DrawingItem;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->b:Ljava/util/List;

    return-object p0
.end method

.method public a(F)V
    .locals 0

    .line 177
    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->m:F

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 105
    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->g:I

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->e:Landroid/graphics/Bitmap;

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1

    .line 272
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "tree-green.cube.rgb.bin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_1
    const-string v0, "sky-blue.cube.rgb.bin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_1

    :sswitch_2
    const-string v0, "red-red.cube.rgb.bin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_3
    const-string v0, "oplus_video_filter_portrait_retention"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_4
    const-string v0, "portrait_retention"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_5
    const-string v0, "neon-2020.cube.rgb.bin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto :goto_1

    :sswitch_6
    const-string v0, "portrait_streamer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_7
    const-string v0, "oplus_video_filter_neon"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 298
    :pswitch_0
    iput p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->C:I

    goto :goto_2

    .line 292
    :pswitch_1
    iput p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->B:I

    goto :goto_2

    .line 288
    :pswitch_2
    iput p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->A:I

    goto :goto_2

    .line 284
    :pswitch_3
    iput p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->z:I

    goto :goto_2

    .line 280
    :pswitch_4
    iput p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->y:I

    goto :goto_2

    .line 276
    :pswitch_5
    iput p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->x:I

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ccd13bd -> :sswitch_7
        -0x37592faf -> :sswitch_6
        -0x1816d0d8 -> :sswitch_5
        0xc440f7a -> :sswitch_4
        0x261c2f27 -> :sswitch_3
        0x3566c7a6 -> :sswitch_2
        0x47fc7315 -> :sswitch_1
        0x5d090347 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lco/polarr/renderer/entities/DrawingItem;",
            ">;)V"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->b:Ljava/util/List;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->w:Z

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/menu/levelcontrol/i;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 307
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->b:Ljava/util/List;

    .line 308
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a()Ljava/util/List;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->g:I

    .line 309
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->g()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->h:I

    .line 310
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->h()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->i:I

    .line 311
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->i()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->m:F

    .line 312
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->p()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->o:F

    .line 313
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->r()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->p:F

    .line 314
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->s()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->q:F

    .line 315
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->t()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->s:Z

    .line 316
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->m()Z

    move-result v1

    if-ne v0, v1, :cond_0

    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->t:Z

    .line 317
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->v()Z

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public b()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/camera/ui/preview/a/k;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->c:Ljava/util/List;

    return-object p0
.end method

.method public b(F)V
    .locals 0

    .line 185
    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->n:F

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 113
    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->h:I

    return-void
.end method

.method public b(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->f:Landroid/graphics/Bitmap;

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/camera/ui/preview/a/k;",
            ">;)V"
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->c:Ljava/util/List;

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 153
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->s:Z

    return-void
.end method

.method public c(F)V
    .locals 0

    .line 193
    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->o:F

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 121
    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->i:I

    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->d:Ljava/util/List;

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 161
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->u:Z

    return-void
.end method

.method public c()Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->w:Z

    return p0
.end method

.method public d()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->d:Ljava/util/List;

    return-object p0
.end method

.method public d(F)V
    .locals 0

    .line 201
    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->p:F

    return-void
.end method

.method public d(I)V
    .locals 0

    .line 129
    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->j:I

    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 169
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->v:Z

    return-void
.end method

.method public e()Landroid/graphics/Bitmap;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->e:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public e(F)V
    .locals 0

    .line 209
    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->q:F

    return-void
.end method

.method public e(I)V
    .locals 0

    .line 137
    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->k:I

    return-void
.end method

.method public e(Z)V
    .locals 0

    .line 225
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->t:Z

    return-void
.end method

.method public f()Landroid/graphics/Bitmap;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->f:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public f(F)V
    .locals 0

    .line 217
    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->r:F

    return-void
.end method

.method public f(I)V
    .locals 0

    .line 145
    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->l:I

    return-void
.end method

.method public g()I
    .locals 0

    .line 101
    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->g:I

    return p0
.end method

.method public g(F)V
    .locals 0

    .line 241
    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->D:F

    return-void
.end method

.method public g(I)V
    .locals 0

    .line 229
    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->E:I

    return-void
.end method

.method public h()I
    .locals 0

    .line 109
    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->h:I

    return p0
.end method

.method public i()I
    .locals 0

    .line 117
    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->i:I

    return p0
.end method

.method public j()I
    .locals 0

    .line 125
    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->j:I

    return p0
.end method

.method public k()I
    .locals 0

    .line 133
    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->k:I

    return p0
.end method

.method public l()I
    .locals 0

    .line 141
    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->l:I

    return p0
.end method

.method public m()Z
    .locals 0

    .line 149
    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->s:Z

    return p0
.end method

.method public n()Z
    .locals 0

    .line 157
    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->u:Z

    return p0
.end method

.method public o()Z
    .locals 0

    .line 165
    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->v:Z

    return p0
.end method

.method public p()F
    .locals 0

    .line 173
    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->m:F

    return p0
.end method

.method public q()F
    .locals 0

    .line 181
    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->n:F

    return p0
.end method

.method public r()F
    .locals 0

    .line 189
    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->o:F

    return p0
.end method

.method public s()F
    .locals 0

    .line 197
    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->p:F

    return p0
.end method

.method public t()F
    .locals 0

    .line 205
    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->q:F

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 328
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a:Ljava/lang/String;

    const-string v2, "mModelName"

    invoke-direct {p0, v0, v2, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 329
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->d:Ljava/util/List;

    const-string v2, "mBitmaps"

    invoke-direct {p0, v0, v2, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 330
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->e:Landroid/graphics/Bitmap;

    const-string v2, "mHighlightBmp"

    invoke-direct {p0, v0, v2, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 331
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->f:Landroid/graphics/Bitmap;

    const-string v2, "mHighlightBmpInverse"

    invoke-direct {p0, v0, v2, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 332
    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mElementNum"

    invoke-direct {p0, v0, v2, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 333
    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mTexW"

    invoke-direct {p0, v0, v2, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 334
    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mTexH"

    invoke-direct {p0, v0, v2, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 335
    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->l:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mCurrItemIndex"

    invoke-direct {p0, v0, v2, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 336
    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->m:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "mCenterAng"

    invoke-direct {p0, v0, v2, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 337
    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->o:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "mElementH"

    invoke-direct {p0, v0, v2, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 338
    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->p:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "mElementGap"

    invoke-direct {p0, v0, v2, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 339
    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->q:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "mHighlightH"

    invoke-direct {p0, v0, v2, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 340
    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->s:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "mbFrontCamera"

    invoke-direct {p0, v0, v2, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 341
    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->t:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "mbFromSurfaceTexture"

    invoke-direct {p0, v0, v2, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 343
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public u()F
    .locals 0

    .line 213
    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->r:F

    return p0
.end method

.method public v()Z
    .locals 0

    .line 221
    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/i;->t:Z

    return p0
.end method
