.class public Lcom/oplus/camera/ui/preview/o;
.super Ljava/lang/Object;
.source "FocusManager.java"

# interfaces
.implements Lcom/oplus/camera/d;
.implements Lcom/oplus/camera/ui/preview/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/preview/o$a;
    }
.end annotation


# instance fields
.field private A:Lcom/oplus/camera/ui/preview/f;

.field private B:Lcom/oplus/camera/ComboPreferences;

.field private C:I

.field private D:I

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Ljava/lang/String;

.field private I:F

.field private J:F

.field private K:F

.field private L:F

.field private M:I

.field private N:I

.field private O:I

.field private P:I

.field private Q:Z

.field private R:Z

.field private S:Z

.field private T:Z

.field private U:Landroid/graphics/Rect;

.field private V:Landroid/graphics/Rect;

.field private W:Landroid/util/Size;

.field private g:I

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Landroid/app/Activity;

.field private o:Lcom/oplus/camera/ui/preview/FaceView;

.field private p:Lcom/oplus/camera/ui/preview/ac;

.field private q:Lcom/oplus/camera/ui/preview/MultiFocusView;

.field private r:Lcom/oplus/camera/ui/preview/n;

.field private s:Z

.field private t:Landroid/os/Handler;

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/ComboPreferences;Lcom/oplus/camera/ui/preview/f;)V
    .locals 3

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 109
    iput v0, p0, Lcom/oplus/camera/ui/preview/o;->g:I

    .line 110
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/o;->h:Z

    .line 111
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/o;->i:Z

    .line 112
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/o;->j:Z

    .line 113
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/o;->k:Z

    .line 114
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/o;->l:Z

    .line 115
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/o;->m:Z

    const/4 v1, 0x0

    .line 117
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/o;->n:Landroid/app/Activity;

    .line 118
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/o;->o:Lcom/oplus/camera/ui/preview/FaceView;

    .line 119
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/o;->p:Lcom/oplus/camera/ui/preview/ac;

    .line 120
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/o;->q:Lcom/oplus/camera/ui/preview/MultiFocusView;

    .line 122
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/o;->r:Lcom/oplus/camera/ui/preview/n;

    .line 124
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/o;->s:Z

    .line 125
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/o;->t:Landroid/os/Handler;

    const/4 v2, -0x1

    .line 127
    iput v2, p0, Lcom/oplus/camera/ui/preview/o;->u:I

    const/4 v2, 0x1

    .line 128
    iput v2, p0, Lcom/oplus/camera/ui/preview/o;->v:I

    const/16 v2, 0x5a

    .line 129
    iput v2, p0, Lcom/oplus/camera/ui/preview/o;->w:I

    .line 130
    iput v0, p0, Lcom/oplus/camera/ui/preview/o;->x:I

    .line 131
    iput v0, p0, Lcom/oplus/camera/ui/preview/o;->y:I

    .line 132
    iput v0, p0, Lcom/oplus/camera/ui/preview/o;->z:I

    .line 134
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    .line 135
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/o;->B:Lcom/oplus/camera/ComboPreferences;

    const/4 v2, 0x4

    .line 137
    iput v2, p0, Lcom/oplus/camera/ui/preview/o;->C:I

    .line 138
    iput v0, p0, Lcom/oplus/camera/ui/preview/o;->D:I

    .line 139
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/o;->E:Z

    .line 140
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/o;->F:Z

    .line 141
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/o;->G:Z

    const-string v2, "normal"

    .line 142
    iput-object v2, p0, Lcom/oplus/camera/ui/preview/o;->H:Ljava/lang/String;

    const/4 v2, 0x0

    .line 144
    iput v2, p0, Lcom/oplus/camera/ui/preview/o;->I:F

    .line 145
    iput v2, p0, Lcom/oplus/camera/ui/preview/o;->J:F

    .line 146
    iput v2, p0, Lcom/oplus/camera/ui/preview/o;->K:F

    .line 147
    iput v2, p0, Lcom/oplus/camera/ui/preview/o;->L:F

    .line 149
    iput v0, p0, Lcom/oplus/camera/ui/preview/o;->M:I

    .line 150
    iput v0, p0, Lcom/oplus/camera/ui/preview/o;->N:I

    .line 151
    iput v0, p0, Lcom/oplus/camera/ui/preview/o;->O:I

    .line 153
    iput v0, p0, Lcom/oplus/camera/ui/preview/o;->P:I

    .line 154
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/o;->Q:Z

    .line 155
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/o;->R:Z

    .line 156
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/o;->S:Z

    .line 157
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/o;->T:Z

    .line 158
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/o;->U:Landroid/graphics/Rect;

    .line 159
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/o;->V:Landroid/graphics/Rect;

    .line 160
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/o;->W:Landroid/util/Size;

    .line 163
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/o;->n:Landroid/app/Activity;

    .line 164
    iput-object p2, p0, Lcom/oplus/camera/ui/preview/o;->B:Lcom/oplus/camera/ComboPreferences;

    .line 165
    new-instance p1, Lcom/oplus/camera/ui/preview/o$a;

    iget-object p2, p0, Lcom/oplus/camera/ui/preview/o;->n:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/oplus/camera/ui/preview/o$a;-><init>(Lcom/oplus/camera/ui/preview/o;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/o;->t:Landroid/os/Handler;

    .line 166
    iput-object p3, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    return-void
.end method

.method private P()V
    .locals 7

    .line 231
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->p:Lcom/oplus/camera/ui/preview/ac;

    if-nez v0, :cond_1

    .line 232
    new-instance v0, Lcom/oplus/camera/ui/preview/ac;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/o;->n:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oplus/camera/ui/preview/ac;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/o;->p:Lcom/oplus/camera/ui/preview/ac;

    .line 233
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->p:Lcom/oplus/camera/ui/preview/ac;

    const v1, 0x7f0903de

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/ac;->setId(I)V

    .line 234
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 237
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/o;->n:Landroid/app/Activity;

    const v2, 0x7f090193

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    if-eqz v1, :cond_0

    .line 240
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/o;->p:Lcom/oplus/camera/ui/preview/ac;

    invoke-virtual {v1, v2, v0}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->p:Lcom/oplus/camera/ui/preview/ac;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/o;->U:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/o;->V:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/oplus/camera/ui/preview/o;->W:Landroid/util/Size;

    new-instance v4, Landroid/util/Size;

    iget v5, p0, Lcom/oplus/camera/ui/preview/o;->y:I

    iget v6, p0, Lcom/oplus/camera/ui/preview/o;->z:I

    invoke-direct {v4, v5, v6}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/oplus/camera/ui/preview/ac;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/util/Size;Landroid/util/Size;)V

    .line 244
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->p:Lcom/oplus/camera/ui/preview/ac;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/ac;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->p:Lcom/oplus/camera/ui/preview/ac;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/preview/ac;->setFocusManager(Lcom/oplus/camera/ui/preview/s;)V

    .line 246
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->p:Lcom/oplus/camera/ui/preview/ac;

    iget v1, p0, Lcom/oplus/camera/ui/preview/o;->O:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/preview/ac;->a(IZ)V

    .line 247
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->p:Lcom/oplus/camera/ui/preview/ac;

    iget v1, p0, Lcom/oplus/camera/ui/preview/o;->w:I

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/ac;->setDisplayOrientation(I)V

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    if-eqz v0, :cond_2

    .line 251
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o;->p:Lcom/oplus/camera/ui/preview/ac;

    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/f;->d()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/ac;->setRearMirrorEnable(Z)V

    :cond_2
    return-void
.end method

.method private Q()V
    .locals 7

    .line 353
    iget v2, p0, Lcom/oplus/camera/ui/preview/o;->D:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    .line 422
    :pswitch_0
    iget v0, p0, Lcom/oplus/camera/ui/preview/o;->C:I

    iget-boolean v2, p0, Lcom/oplus/camera/ui/preview/o;->G:Z

    invoke-direct {p0, v0, v3, v2, v1}, Lcom/oplus/camera/ui/preview/o;->a(IZZZ)V

    goto/16 :goto_2

    .line 395
    :pswitch_1
    iget v2, p0, Lcom/oplus/camera/ui/preview/o;->g:I

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/o;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    invoke-interface {v0, v3, v3}, Lcom/oplus/camera/ui/preview/f;->c(ZZ)V

    goto :goto_0

    .line 397
    :cond_0
    iget v0, p0, Lcom/oplus/camera/ui/preview/o;->g:I

    if-ne v3, v0, :cond_2

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/o;->O()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 398
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/o;->v()V

    .line 400
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    if-eqz v0, :cond_1

    .line 401
    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/f;->s()V

    .line 402
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/o;->T()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/o;->a(Landroid/graphics/Rect;)V

    :cond_1
    return-void

    .line 408
    :cond_2
    :goto_0
    iget v0, p0, Lcom/oplus/camera/ui/preview/o;->C:I

    iget-boolean v2, p0, Lcom/oplus/camera/ui/preview/o;->G:Z

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/oplus/camera/ui/preview/o;->a(IZZZ)V

    .line 409
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/o;->L()V

    goto/16 :goto_2

    .line 365
    :pswitch_2
    iget v1, p0, Lcom/oplus/camera/ui/preview/o;->x:I

    const/4 v2, 0x3

    if-ne v2, v1, :cond_3

    const-string p0, "FocusManager"

    const-string v0, "onFocusStateUpdate, af focused receive again"

    .line 366
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 371
    :cond_3
    iget v1, p0, Lcom/oplus/camera/ui/preview/o;->g:I

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/o;->A()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 372
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    invoke-interface {v0, v3, v3}, Lcom/oplus/camera/ui/preview/f;->c(ZZ)V

    goto :goto_1

    .line 373
    :cond_4
    iget v0, p0, Lcom/oplus/camera/ui/preview/o;->g:I

    if-ne v3, v0, :cond_7

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/o;->O()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 374
    iget v0, p0, Lcom/oplus/camera/ui/preview/o;->D:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/oplus/camera/ui/preview/o;->C:I

    if-ne v0, v3, :cond_5

    .line 376
    invoke-virtual {p0, v2}, Lcom/oplus/camera/ui/preview/o;->d(I)V

    .line 379
    :cond_5
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/o;->v()V

    .line 381
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    if-eqz v0, :cond_6

    .line 382
    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/f;->s()V

    .line 383
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/o;->T()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/o;->a(Landroid/graphics/Rect;)V

    :cond_6
    return-void

    .line 389
    :cond_7
    :goto_1
    iget v2, p0, Lcom/oplus/camera/ui/preview/o;->C:I

    iget v3, p0, Lcom/oplus/camera/ui/preview/o;->D:I

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/oplus/camera/ui/preview/o;->G:Z

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/oplus/camera/ui/preview/o;->a(IIZZZ)V

    .line 390
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/o;->L()V

    goto :goto_2

    .line 355
    :pswitch_3
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/o;->T:Z

    if-eqz v0, :cond_9

    .line 356
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->r:Lcom/oplus/camera/ui/preview/n;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/n;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    .line 357
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->r:Lcom/oplus/camera/ui/preview/n;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/n;->c(Z)V

    .line 360
    :cond_8
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/o;->T:Z

    goto :goto_2

    .line 418
    :pswitch_4
    iget v1, p0, Lcom/oplus/camera/ui/preview/o;->C:I

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/oplus/camera/ui/preview/o;->G:Z

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/oplus/camera/ui/preview/o;->a(IIZZZ)V

    goto :goto_2

    .line 414
    :pswitch_5
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/o;->G:Z

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/preview/o;->l(Z)V

    :cond_9
    :goto_2
    :pswitch_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private R()Z
    .locals 0

    .line 672
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    invoke-interface {p0}, Lcom/oplus/camera/ui/preview/f;->c()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "com.oplus.sat.ultrawide.focus.support"

    .line 673
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private S()Z
    .locals 1

    .line 814
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/o;->k:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/oplus/camera/ui/preview/f;->d()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private T()Landroid/graphics/Rect;
    .locals 11

    .line 818
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->r:Lcom/oplus/camera/ui/preview/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/n;->getExposureRectWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v5, v0

    .line 819
    iget v0, p0, Lcom/oplus/camera/ui/preview/o;->M:I

    int-to-float v1, v0

    iget v0, p0, Lcom/oplus/camera/ui/preview/o;->N:I

    int-to-float v2, v0

    iget v3, p0, Lcom/oplus/camera/ui/preview/o;->y:I

    iget v4, p0, Lcom/oplus/camera/ui/preview/o;->z:I

    .line 820
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/o;->S()Z

    move-result v6

    iget v7, p0, Lcom/oplus/camera/ui/preview/o;->w:I

    const/4 v8, 0x0

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    .line 821
    invoke-interface {p0}, Lcom/oplus/camera/ui/preview/f;->z()Landroid/graphics/Rect;

    move-result-object v9

    invoke-static {}, Lcom/oplus/camera/a;->d()I

    move-result v10

    .line 819
    invoke-static/range {v1 .. v10}, Lcom/oplus/camera/a;->a(FFIIIZIILandroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private U()Z
    .locals 3

    .line 1302
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->r:Lcom/oplus/camera/ui/preview/n;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const v2, 0x3f0ccccd    # 0.55f

    .line 1306
    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/n;->getAlpha()F

    move-result v0

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o;->r:Lcom/oplus/camera/ui/preview/n;

    .line 1307
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/n;->getVisibility()I

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private V()V
    .locals 2

    .line 1351
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->t:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    .line 1352
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1353
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->t:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1354
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o;->t:Landroid/os/Handler;

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private synthetic W()V
    .locals 2

    .line 1045
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->r:Lcom/oplus/camera/ui/preview/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/n;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1046
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->r:Lcom/oplus/camera/ui/preview/n;

    iget-boolean v1, p0, Lcom/oplus/camera/ui/preview/o;->i:Z

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/n;->a(Z)V

    .line 1049
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->p:Lcom/oplus/camera/ui/preview/ac;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/ac;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1050
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->p:Lcom/oplus/camera/ui/preview/ac;

    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/o;->h:Z

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/preview/ac;->setLockState(Z)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/o;I)I
    .locals 0

    .line 48
    iput p1, p0, Lcom/oplus/camera/ui/preview/o;->u:I

    return p1
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/o;)Lcom/oplus/camera/ui/preview/n;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o;->r:Lcom/oplus/camera/ui/preview/n;

    return-object p0
.end method

.method private a(IIZZZ)V
    .locals 2

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFocusSuccess, mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mExposureState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/ui/preview/o;->u:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FocusManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x3

    .line 462
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/o;->d(I)V

    .line 465
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/o;->g()Z

    .line 467
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/o;->o:Lcom/oplus/camera/ui/preview/FaceView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/FaceView;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 471
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/o;->q:Lcom/oplus/camera/ui/preview/MultiFocusView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/MultiFocusView;->f()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 475
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/oplus/camera/ui/preview/f;->o()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 479
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/o;->r:Lcom/oplus/camera/ui/preview/n;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/n;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_4

    return-void

    :cond_4
    if-nez p4, :cond_6

    .line 483
    iget-boolean p1, p0, Lcom/oplus/camera/ui/preview/o;->S:Z

    if-nez p1, :cond_6

    .line 484
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/o;->f()V

    .line 486
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/o;->r:Lcom/oplus/camera/ui/preview/n;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/preview/n;->setAlpha(F)V

    .line 487
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/o;->r:Lcom/oplus/camera/ui/preview/n;

    iget p2, p0, Lcom/oplus/camera/ui/preview/o;->u:I

    const/4 p4, -0x1

    if-eq p2, p4, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, p3, p5, v0}, Lcom/oplus/camera/ui/preview/n;->a(ZZZ)V

    .line 489
    iget-boolean p1, p0, Lcom/oplus/camera/ui/preview/o;->R:Z

    if-eqz p1, :cond_7

    .line 490
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o;->r:Lcom/oplus/camera/ui/preview/n;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/n;->setVisibility(I)V

    goto :goto_1

    :cond_6
    if-nez p5, :cond_7

    .line 493
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/o;->v()V

    :cond_7
    :goto_1
    return-void
.end method

.method private a(IZZZ)V
    .locals 2

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFocusFail, mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FocusManager"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/o;->g()Z

    .line 502
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/o;->o:Lcom/oplus/camera/ui/preview/FaceView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/FaceView;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 506
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/o;->q:Lcom/oplus/camera/ui/preview/MultiFocusView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/MultiFocusView;->f()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 510
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    if-nez p1, :cond_2

    const-string p0, "onFocusFail, mCameraFocusListener is null"

    .line 511
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    if-eqz p1, :cond_3

    .line 515
    invoke-interface {p1}, Lcom/oplus/camera/ui/preview/f;->o()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 519
    :cond_3
    iget-boolean p1, p0, Lcom/oplus/camera/ui/preview/o;->R:Z

    if-eqz p1, :cond_4

    return-void

    .line 523
    :cond_4
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/o;->r:Lcom/oplus/camera/ui/preview/n;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/n;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_5

    return-void

    :cond_5
    if-nez p3, :cond_7

    .line 527
    iget-boolean p1, p0, Lcom/oplus/camera/ui/preview/o;->S:Z

    if-nez p1, :cond_7

    .line 528
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/o;->f()V

    .line 530
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/o;->r:Lcom/oplus/camera/ui/preview/n;

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p1, p3}, Lcom/oplus/camera/ui/preview/n;->setAlpha(F)V

    .line 531
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/o;->r:Lcom/oplus/camera/ui/preview/n;

    iget p0, p0, Lcom/oplus/camera/ui/preview/o;->u:I

    const/4 p3, -0x1

    if-eq p0, p3, :cond_6

    const/4 p0, 0x1

    goto :goto_0

    :cond_6
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p2, p0}, Lcom/oplus/camera/ui/preview/n;->b(ZZ)V

    goto :goto_1

    :cond_7
    if-nez p4, :cond_8

    .line 534
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/o;->v()V

    :cond_8
    :goto_1
    return-void
.end method

.method private a(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 2

    const-string v0, "FocusManager"

    const-string v1, "Start autofocus."

    .line 825
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->o:Lcom/oplus/camera/ui/preview/FaceView;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/oplus/camera/ui/preview/o;->S:Z

    if-nez v1, :cond_0

    .line 829
    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/FaceView;->c()V

    .line 832
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->q:Lcom/oplus/camera/ui/preview/MultiFocusView;

    if-eqz v0, :cond_1

    .line 833
    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/MultiFocusView;->c()V

    .line 836
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/o;->x()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 837
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/o;->Q:Z

    .line 840
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    invoke-interface {v0, v1, p1, p2}, Lcom/oplus/camera/ui/preview/f;->a(ILandroid/graphics/RectF;Landroid/graphics/RectF;)V

    if-eqz p2, :cond_3

    .line 842
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/f;->c()Z

    move-result v0

    if-nez v0, :cond_3

    .line 843
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    invoke-direct {p0, p2}, Lcom/oplus/camera/ui/preview/o;->b(Landroid/graphics/RectF;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/oplus/camera/ui/preview/f;->a([Landroid/hardware/camera2/params/MeteringRectangle;)V

    :cond_3
    if-eqz p1, :cond_4

    .line 846
    iget-object p2, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    invoke-interface {p2}, Lcom/oplus/camera/ui/preview/f;->c()Z

    move-result p2

    if-nez p2, :cond_4

    .line 847
    iget-object p2, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/o;->b(Landroid/graphics/RectF;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/oplus/camera/ui/preview/f;->b([Landroid/hardware/camera2/params/MeteringRectangle;)V

    .line 850
    :cond_4
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/preview/o;->d(I)V

    .line 851
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/o;->o()V

    .line 852
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o;->t:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/o;IIZZZ)V
    .locals 0

    .line 48
    invoke-direct/range {p0 .. p5}, Lcom/oplus/camera/ui/preview/o;->a(IIZZZ)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/o;Z)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/o;->m(Z)V

    return-void
.end method

.method private b(Landroid/graphics/Rect;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 876
    iget p0, p1, Landroid/graphics/Rect;->left:I

    if-ltz p0, :cond_0

    iget p0, p1, Landroid/graphics/Rect;->right:I

    if-ltz p0, :cond_0

    iget p0, p1, Landroid/graphics/Rect;->top:I

    if-ltz p0, :cond_0

    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic b(Lcom/oplus/camera/ui/preview/o;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/o;->S:Z

    return p0
.end method

.method static synthetic b(Lcom/oplus/camera/ui/preview/o;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/o;->s:Z

    return p1
.end method

.method private b(Landroid/graphics/RectF;)[Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 13

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 861
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/o;->r:Lcom/oplus/camera/ui/preview/n;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/n;->getExposureRectWidth()I

    move-result v1

    move v7, v1

    goto :goto_0

    :cond_1
    move v7, v2

    .line 862
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget v3, p0, Lcom/oplus/camera/ui/preview/o;->y:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    iget v6, p0, Lcom/oplus/camera/ui/preview/o;->z:I

    int-to-float v1, v6

    mul-float v4, p1, v1

    iget v5, p0, Lcom/oplus/camera/ui/preview/o;->y:I

    iget-boolean v8, p0, Lcom/oplus/camera/ui/preview/o;->k:Z

    iget v9, p0, Lcom/oplus/camera/ui/preview/o;->w:I

    iget v10, p0, Lcom/oplus/camera/ui/preview/o;->O:I

    iget-object p1, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    .line 864
    invoke-interface {p1}, Lcom/oplus/camera/ui/preview/f;->z()Landroid/graphics/Rect;

    move-result-object v11

    invoke-static {}, Lcom/oplus/camera/a;->e()I

    move-result v12

    .line 862
    invoke-static/range {v3 .. v12}, Lcom/oplus/camera/a;->a(FFIIIZIILandroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object p1

    .line 866
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/o;->b(Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    .line 867
    new-array p0, p0, [Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance v0, Landroid/hardware/camera2/params/MeteringRectangle;

    .line 868
    invoke-static {}, Lcom/oplus/camera/a;->e()I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    aput-object v0, p0, v2

    return-object p0

    :cond_2
    return-object v0
.end method

.method static synthetic c(Lcom/oplus/camera/ui/preview/o;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/oplus/camera/ui/preview/o;->u:I

    return p0
.end method

.method static synthetic d(Lcom/oplus/camera/ui/preview/o;)Lcom/oplus/camera/ui/preview/f;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    return-object p0
.end method

.method private d(F)V
    .locals 3

    .line 1230
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    if-eqz v0, :cond_1

    .line 1234
    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/f;->x()I

    move-result v0

    .line 1235
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    invoke-interface {v1}, Lcom/oplus/camera/ui/preview/f;->y()I

    move-result v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    return-void

    :cond_0
    int-to-float v2, v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v2, v0

    float-to-int p1, v2

    .line 1243
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/preview/f;->a(I)V

    :cond_1
    return-void
.end method

.method static synthetic e(Lcom/oplus/camera/ui/preview/o;)Lcom/oplus/camera/ui/preview/FaceView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o;->o:Lcom/oplus/camera/ui/preview/FaceView;

    return-object p0
.end method

.method static synthetic f(Lcom/oplus/camera/ui/preview/o;)Lcom/oplus/camera/ui/preview/MultiFocusView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o;->q:Lcom/oplus/camera/ui/preview/MultiFocusView;

    return-object p0
.end method

.method static synthetic g(Lcom/oplus/camera/ui/preview/o;)Landroid/os/Handler;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o;->t:Landroid/os/Handler;

    return-object p0
.end method

.method private synthetic g(I)V
    .locals 0

    .line 1735
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o;->r:Lcom/oplus/camera/ui/preview/n;

    if-eqz p0, :cond_0

    .line 1736
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/n;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/oplus/camera/ui/preview/o;)Lcom/oplus/camera/ui/preview/ac;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o;->p:Lcom/oplus/camera/ui/preview/ac;

    return-object p0
.end method

.method static synthetic i(Lcom/oplus/camera/ui/preview/o;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/o;->Q()V

    return-void
.end method

.method static synthetic j(Lcom/oplus/camera/ui/preview/o;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/oplus/camera/ui/preview/o;->C:I

    return p0
.end method

.method static synthetic k(Lcom/oplus/camera/ui/preview/o;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/oplus/camera/ui/preview/o;->D:I

    return p0
.end method

.method private l(Z)V
    .locals 2

    const-string v0, "FocusManager"

    const-string v1, "onFocusStart"

    .line 434
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->o:Lcom/oplus/camera/ui/preview/FaceView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/FaceView;->a()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->q:Lcom/oplus/camera/ui/preview/MultiFocusView;

    if-eqz v0, :cond_1

    .line 437
    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/MultiFocusView;->f()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    if-eqz v0, :cond_2

    .line 438
    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/f;->o()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/o;->R:Z

    if-eqz v0, :cond_4

    :cond_3
    return-void

    :cond_4
    if-nez p1, :cond_6

    .line 443
    iget-boolean p1, p0, Lcom/oplus/camera/ui/preview/o;->S:Z

    if-eqz p1, :cond_5

    goto :goto_0

    .line 450
    :cond_5
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/o;->f()V

    .line 452
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/o;->r:Lcom/oplus/camera/ui/preview/n;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/preview/n;->setAlpha(F)V

    .line 453
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o;->r:Lcom/oplus/camera/ui/preview/n;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/n;->c()V

    goto :goto_1

    .line 444
    :cond_6
    :goto_0
    iget-boolean p1, p0, Lcom/oplus/camera/ui/preview/o;->S:Z

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/o;->I()Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 448
    :cond_7
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/o;->v()V

    :goto_1
    return-void
.end method

.method static synthetic l(Lcom/oplus/camera/ui/preview/o;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/o;->G:Z

    return p0
.end method

.method public static synthetic lambda$Xz2LrB2YwV-TOn8-lQBADHN_NYI(Lcom/oplus/camera/ui/preview/o;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/o;->g(I)V

    return-void
.end method

.method public static synthetic lambda$bMMSUhXmWaBaEHuDAY9eCTOIb5Q(Lcom/oplus/camera/ui/preview/o;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/o;->W()V

    return-void
.end method

.method private m(Z)V
    .locals 3

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doCapture, mAfFocusState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/ui/preview/o;->D:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FocusManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/f;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 588
    :cond_0
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/o;->j:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    sget v0, Lcom/oplus/camera/Storage;->w:I

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 594
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/o;->d(I)V

    .line 595
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    invoke-interface {v0, p1}, Lcom/oplus/camera/ui/preview/f;->a(Z)V

    .line 596
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    invoke-interface {p1, v2}, Lcom/oplus/camera/ui/preview/f;->b(Z)V

    .line 597
    iput-boolean v2, p0, Lcom/oplus/camera/ui/preview/o;->m:Z

    .line 598
    invoke-virtual {p0, v2}, Lcom/oplus/camera/ui/preview/o;->d(I)V

    .line 599
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o;->t:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    .line 589
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    invoke-interface {p1, v1, v2}, Lcom/oplus/camera/ui/preview/f;->b(ZZ)V

    .line 590
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    invoke-interface {p0, v2}, Lcom/oplus/camera/ui/preview/f;->b(Z)V

    return-void
.end method

.method static synthetic m(Lcom/oplus/camera/ui/preview/o;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/o;->R:Z

    return p0
.end method

.method private n(Z)V
    .locals 1

    .line 1495
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/o;->h:Z

    if-eq v0, p1, :cond_0

    .line 1496
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/o;->H()V

    :cond_0
    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 1315
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->r:Lcom/oplus/camera/ui/preview/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/n;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o;->p:Lcom/oplus/camera/ui/preview/ac;

    if-eqz p0, :cond_2

    .line 1316
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/ac;->d()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public B()V
    .locals 2

    .line 1344
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->t:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0xd

    .line 1345
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1346
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o;->t:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public C()Z
    .locals 1

    .line 1362
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/f;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1363
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/o;->R()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public D()Z
    .locals 0

    .line 1368
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/oplus/camera/ui/preview/f;->p()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public E()Z
    .locals 0

    .line 1372
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/oplus/camera/ui/preview/f;->q()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public F()Z
    .locals 1

    .line 1377
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    if-eqz v0, :cond_0

    .line 1378
    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/f;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    .line 1379
    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/f;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    const-string v0, "pref_exposure_focus_separate_key"

    .line 1380
    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/preview/f;->a(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public G()Z
    .locals 1

    .line 1384
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    if-eqz p0, :cond_0

    const-string v0, "pref_hasselblad_xpan_exposure_key"

    .line 1385
    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/preview/f;->a(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public H()V
    .locals 3

    .line 1477
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/o;->h:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/o;->h:Z

    .line 1479
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    if-eqz v0, :cond_0

    .line 1480
    iget-boolean v2, p0, Lcom/oplus/camera/ui/preview/o;->h:Z

    invoke-interface {v0, v2, v1}, Lcom/oplus/camera/ui/preview/f;->a(ZZ)V

    .line 1483
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->r:Lcom/oplus/camera/ui/preview/n;

    if-eqz v0, :cond_1

    .line 1484
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/o;->s()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/n;->a(Z)V

    .line 1487
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->p:Lcom/oplus/camera/ui/preview/ac;

    if-eqz v0, :cond_2

    .line 1488
    iget-boolean v1, p0, Lcom/oplus/camera/ui/preview/o;->h:Z

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/ac;->setLockState(Z)V

    .line 1491
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/o;->L()V

    return-void
.end method

.method public I()Z
    .locals 0

    .line 1502
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/o;->h:Z

    return p0
.end method

.method public J()Z
    .locals 0

    .line 1516
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    invoke-interface {p0}, Lcom/oplus/camera/ui/preview/f;->a()Z

    move-result p0

    return p0
.end method

.method public K()Z
    .locals 0

    .line 1521
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    invoke-interface {p0}, Lcom/oplus/camera/ui/preview/f;->b()Z

    move-result p0

    return p0
.end method

.method public L()V
    .locals 3

    .line 1552
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->t:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1553
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/o;->V()V

    .line 1554
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o;->t:Landroid/os/Handler;

    const/4 v0, 0x7

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public M()Z
    .locals 0

    .line 1788
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/o;->m:Z

    return p0
.end method

.method public N()I
    .locals 0

    .line 1858
    iget p0, p0, Lcom/oplus/camera/ui/preview/o;->u:I

    return p0
.end method

.method public O()Z
    .locals 0

    .line 1862
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/o;->S:Z

    return p0
.end method

.method public a()V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->n:Landroid/app/Activity;

    const v1, 0x7f090177

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/FaceView;

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/o;->o:Lcom/oplus/camera/ui/preview/FaceView;

    .line 171
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->n:Landroid/app/Activity;

    const v1, 0x7f09027a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/MultiFocusView;

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/o;->q:Lcom/oplus/camera/ui/preview/MultiFocusView;

    return-void
.end method

.method public a(F)V
    .locals 0

    .line 1390
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/o;->d(F)V

    return-void
.end method

.method public a(FFII)V
    .locals 6

    .line 1531
    new-instance v0, Landroid/graphics/RectF;

    int-to-float p3, p3

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p3, v1

    sub-float v2, p1, p3

    iget v3, p0, Lcom/oplus/camera/ui/preview/o;->y:I

    int-to-float v4, v3

    div-float/2addr v2, v4

    int-to-float p4, p4

    div-float/2addr p4, v1

    sub-float v1, p2, p4

    iget v4, p0, Lcom/oplus/camera/ui/preview/o;->z:I

    int-to-float v5, v4

    div-float/2addr v1, v5

    add-float/2addr p3, p1

    int-to-float v3, v3

    div-float/2addr p3, v3

    add-float/2addr p4, p2

    int-to-float v3, v4

    div-float/2addr p4, v3

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1533
    iget-object p3, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    float-to-int p4, p1

    float-to-int v1, p2

    invoke-interface {p3, p4, v1, v0}, Lcom/oplus/camera/ui/preview/f;->a(IILandroid/graphics/RectF;)V

    .line 1534
    iget-object p3, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/preview/o;->b(Landroid/graphics/RectF;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/oplus/camera/ui/preview/f;->a([Landroid/hardware/camera2/params/MeteringRectangle;)V

    .line 1536
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setExposurePointInfo, x: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " y: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "AE regions: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FocusManager"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 263
    iput p1, p0, Lcom/oplus/camera/ui/preview/o;->v:I

    return-void
.end method

.method public a(II)V
    .locals 1

    .line 267
    iget v0, p0, Lcom/oplus/camera/ui/preview/o;->y:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/oplus/camera/ui/preview/o;->z:I

    if-eq v0, p2, :cond_1

    .line 268
    :cond_0
    iput p1, p0, Lcom/oplus/camera/ui/preview/o;->y:I

    .line 269
    iput p2, p0, Lcom/oplus/camera/ui/preview/o;->z:I

    .line 272
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o;->r:Lcom/oplus/camera/ui/preview/n;

    if-eqz p0, :cond_2

    .line 273
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/preview/n;->a(II)V

    :cond_2
    return-void
.end method

.method public a(IIZ)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 686
    iget-boolean v4, v0, Lcom/oplus/camera/ui/preview/o;->j:Z

    const-string v5, "FocusManager"

    if-eqz v4, :cond_f

    iget v4, v0, Lcom/oplus/camera/ui/preview/o;->x:I

    const/4 v6, 0x2

    if-eq v4, v6, :cond_f

    iget-object v4, v0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    if-nez v4, :cond_0

    goto/16 :goto_3

    .line 693
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/preview/o;->f()V

    if-eqz v3, :cond_1

    .line 696
    iget-object v4, v0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    invoke-interface {v4, v1, v2}, Lcom/oplus/camera/ui/preview/f;->b(II)V

    .line 697
    iget-object v4, v0, Lcom/oplus/camera/ui/preview/o;->r:Lcom/oplus/camera/ui/preview/n;

    invoke-virtual {v4}, Lcom/oplus/camera/ui/preview/n;->e()V

    const/4 v4, -0x1

    .line 698
    iput v4, v0, Lcom/oplus/camera/ui/preview/o;->u:I

    .line 701
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onSingleTapUp, fromUserTouch: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", mTouchType"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/oplus/camera/ui/preview/o;->g:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    iput-boolean v3, v0, Lcom/oplus/camera/ui/preview/o;->l:Z

    .line 705
    iget-object v4, v0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    invoke-interface {v4}, Lcom/oplus/camera/ui/preview/f;->r()Z

    move-result v4

    const/4 v7, 0x1

    if-eqz v4, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/ui/preview/o;->R()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 706
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/preview/o;->h()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    invoke-interface {v4}, Lcom/oplus/camera/ui/preview/f;->k()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 707
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    invoke-interface {v1, v7}, Lcom/oplus/camera/ui/preview/f;->b(Z)V

    .line 708
    invoke-direct {v0, v7}, Lcom/oplus/camera/ui/preview/o;->m(Z)V

    return-void

    .line 710
    :cond_3
    iget-object v4, v0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    invoke-interface {v4}, Lcom/oplus/camera/ui/preview/f;->q()Z

    move-result v4

    if-nez v4, :cond_4

    const-string v0, "onSingleTapUp(), camera not support touch ae"

    .line 711
    invoke-static {v5, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 717
    :cond_4
    iput v1, v0, Lcom/oplus/camera/ui/preview/o;->M:I

    .line 718
    iput v2, v0, Lcom/oplus/camera/ui/preview/o;->N:I

    .line 721
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/preview/o;->n()I

    move-result v4

    if-ne v7, v4, :cond_5

    .line 722
    iget-object v4, v0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    invoke-interface {v4}, Lcom/oplus/camera/ui/preview/f;->t()V

    .line 723
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/preview/o;->m()V

    .line 724
    iput-boolean v3, v0, Lcom/oplus/camera/ui/preview/o;->l:Z

    .line 727
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/preview/o;->h()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    iget-object v3, v0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    invoke-interface {v3}, Lcom/oplus/camera/ui/preview/f;->k()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 728
    iget-object v3, v0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    invoke-interface {v3, v7}, Lcom/oplus/camera/ui/preview/f;->b(Z)V

    .line 729
    iget-object v3, v0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    invoke-interface {v3, v4, v7}, Lcom/oplus/camera/ui/preview/f;->b(ZZ)V

    .line 733
    :cond_6
    iget-object v3, v0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    const-string v5, "pref_track_focus_key"

    invoke-interface {v3, v5}, Lcom/oplus/camera/ui/preview/f;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 734
    iget-object v3, v0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    invoke-interface {v3}, Lcom/oplus/camera/ui/preview/f;->g()V

    .line 737
    :cond_7
    iget-object v3, v0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    invoke-interface {v3}, Lcom/oplus/camera/ui/preview/f;->i()V

    .line 739
    iget-object v3, v0, Lcom/oplus/camera/ui/preview/o;->r:Lcom/oplus/camera/ui/preview/n;

    invoke-virtual {v3, v1, v2}, Lcom/oplus/camera/ui/preview/n;->b(II)V

    .line 741
    iget-object v3, v0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    invoke-interface {v3}, Lcom/oplus/camera/ui/preview/f;->r()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 742
    iget-object v3, v0, Lcom/oplus/camera/ui/preview/o;->t:Landroid/os/Handler;

    const/4 v5, 0x6

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 744
    iget-boolean v3, v0, Lcom/oplus/camera/ui/preview/o;->l:Z

    if-eqz v3, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/preview/o;->x()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 745
    iget-object v3, v0, Lcom/oplus/camera/ui/preview/o;->t:Landroid/os/Handler;

    const-wide/16 v8, 0xbb8

    invoke-virtual {v3, v5, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 749
    :cond_8
    iget-object v3, v0, Lcom/oplus/camera/ui/preview/o;->r:Lcom/oplus/camera/ui/preview/n;

    invoke-virtual {v3}, Lcom/oplus/camera/ui/preview/n;->getExposureRectWidth()I

    move-result v12

    .line 751
    iget-object v3, v0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    invoke-interface {v3}, Lcom/oplus/camera/ui/preview/f;->d()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 752
    iget v3, v0, Lcom/oplus/camera/ui/preview/o;->y:I

    sub-int v1, v3, v1

    .line 755
    :cond_9
    div-int/lit8 v3, v12, 0x2

    sub-int v5, v1, v3

    int-to-float v5, v5

    iget v8, v0, Lcom/oplus/camera/ui/preview/o;->y:I

    int-to-float v9, v8

    div-float/2addr v5, v9

    sub-int v9, v2, v3

    int-to-float v9, v9

    .line 756
    iget v10, v0, Lcom/oplus/camera/ui/preview/o;->z:I

    int-to-float v11, v10

    div-float/2addr v9, v11

    add-int v11, v1, v3

    int-to-float v11, v11

    int-to-float v8, v8

    div-float/2addr v11, v8

    add-int/2addr v3, v2

    int-to-float v3, v3

    int-to-float v8, v10

    div-float/2addr v3, v8

    .line 759
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8, v5, v9, v11, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 761
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/preview/o;->C()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 762
    iget v1, v0, Lcom/oplus/camera/ui/preview/o;->g:I

    if-ne v7, v1, :cond_a

    .line 763
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/preview/o;->v()V

    .line 764
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    invoke-interface {v1}, Lcom/oplus/camera/ui/preview/f;->s()V

    .line 765
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/ui/preview/o;->P()V

    .line 766
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/o;->p:Lcom/oplus/camera/ui/preview/ac;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/ac;->h()V

    .line 767
    new-instance v1, Landroid/graphics/RectF;

    iget v2, v0, Lcom/oplus/camera/ui/preview/o;->M:I

    int-to-float v3, v2

    int-to-float v5, v12

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v3, v5

    iget v6, v0, Lcom/oplus/camera/ui/preview/o;->N:I

    int-to-float v7, v6

    sub-float/2addr v7, v5

    int-to-float v2, v2

    add-float/2addr v2, v5

    int-to-float v6, v6

    add-float/2addr v6, v5

    invoke-direct {v1, v3, v7, v2, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/o;->a(Landroid/graphics/RectF;)V

    .line 769
    invoke-direct {v0, v8, v8}, Lcom/oplus/camera/ui/preview/o;->a(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 770
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/ui/preview/o;->V()V

    goto :goto_0

    .line 772
    :cond_a
    invoke-virtual {v0, v7}, Lcom/oplus/camera/ui/preview/o;->k(Z)V

    .line 773
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/o;->r:Lcom/oplus/camera/ui/preview/n;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/n;->c()V

    .line 775
    invoke-direct {v0, v8, v8}, Lcom/oplus/camera/ui/preview/o;->a(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 778
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/preview/o;->h()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 779
    invoke-virtual {v0, v4}, Lcom/oplus/camera/ui/preview/o;->d(Z)V

    goto :goto_2

    .line 782
    :cond_b
    invoke-virtual {v0, v7}, Lcom/oplus/camera/ui/preview/o;->k(Z)V

    .line 783
    iget-object v3, v0, Lcom/oplus/camera/ui/preview/o;->r:Lcom/oplus/camera/ui/preview/n;

    invoke-virtual {v3}, Lcom/oplus/camera/ui/preview/n;->c()V

    int-to-float v8, v1

    int-to-float v9, v2

    .line 785
    iget v10, v0, Lcom/oplus/camera/ui/preview/o;->y:I

    iget v11, v0, Lcom/oplus/camera/ui/preview/o;->z:I

    iget-boolean v13, v0, Lcom/oplus/camera/ui/preview/o;->k:Z

    iget v14, v0, Lcom/oplus/camera/ui/preview/o;->w:I

    const/4 v15, 0x0

    iget-object v1, v0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    .line 787
    invoke-interface {v1}, Lcom/oplus/camera/ui/preview/f;->z()Landroid/graphics/Rect;

    move-result-object v16

    invoke-static {}, Lcom/oplus/camera/a;->e()I

    move-result v17

    .line 785
    invoke-static/range {v8 .. v17}, Lcom/oplus/camera/a;->a(FFIIIZIILandroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object v1

    .line 789
    iget-object v2, v0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v3

    if-eqz v3, :cond_c

    move-object v3, v1

    goto :goto_1

    :cond_c
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v2, v1, v3}, Lcom/oplus/camera/ui/preview/f;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 791
    iget v1, v0, Lcom/oplus/camera/ui/preview/o;->g:I

    if-ne v6, v1, :cond_d

    .line 792
    invoke-direct {v0, v7}, Lcom/oplus/camera/ui/preview/o;->n(Z)V

    .line 795
    :cond_d
    iput-boolean v4, v0, Lcom/oplus/camera/ui/preview/o;->Q:Z

    .line 796
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/preview/o;->o()V

    :cond_e
    :goto_2
    return-void

    .line 687
    :cond_f
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSingleTapUp, mbInitialized: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/oplus/camera/ui/preview/o;->j:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mFocusState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/oplus/camera/ui/preview/o;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mCameraFocusListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(II[III)V
    .locals 5

    .line 299
    iget v0, p0, Lcom/oplus/camera/ui/preview/o;->D:I

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    if-ne v1, p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->n:Landroid/app/Activity;

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    const-string v0, "FocusManager"

    if-eq p2, v1, :cond_3

    .line 303
    iget v2, p0, Lcom/oplus/camera/ui/preview/o;->x:I

    if-ne v1, v2, :cond_3

    const-string p0, "updateFocusState, af is focusing, so discard caf state"

    .line 304
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 309
    :cond_3
    iget v2, p0, Lcom/oplus/camera/ui/preview/o;->D:I

    const/4 v3, 0x0

    if-ne v2, p1, :cond_4

    move v2, v1

    goto :goto_0

    :cond_4
    move v2, v3

    .line 310
    :goto_0
    iput p1, p0, Lcom/oplus/camera/ui/preview/o;->D:I

    .line 311
    iget v4, p0, Lcom/oplus/camera/ui/preview/o;->C:I

    if-eq p2, v4, :cond_5

    move v4, v1

    goto :goto_1

    :cond_5
    move v4, v3

    :goto_1
    iput-boolean v4, p0, Lcom/oplus/camera/ui/preview/o;->T:Z

    .line 312
    iput p2, p0, Lcom/oplus/camera/ui/preview/o;->C:I

    .line 313
    iput-boolean v3, p0, Lcom/oplus/camera/ui/preview/o;->G:Z

    if-eqz p3, :cond_7

    .line 316
    aget p3, p3, v3

    if-ne p3, v1, :cond_6

    move p3, v1

    goto :goto_2

    :cond_6
    move p3, v3

    :goto_2
    iput-boolean p3, p0, Lcom/oplus/camera/ui/preview/o;->G:Z

    :cond_7
    if-ne v1, p5, :cond_8

    move p3, v1

    goto :goto_3

    :cond_8
    move p3, v3

    .line 319
    :goto_3
    iput-boolean p3, p0, Lcom/oplus/camera/ui/preview/o;->E:Z

    .line 321
    iget-boolean p3, p0, Lcom/oplus/camera/ui/preview/o;->G:Z

    if-eqz p3, :cond_9

    if-eq v1, p1, :cond_b

    .line 322
    :cond_9
    iget-boolean p3, p0, Lcom/oplus/camera/ui/preview/o;->E:Z

    if-nez p3, :cond_a

    if-ne v1, p1, :cond_a

    goto :goto_4

    :cond_a
    move v1, v3

    :goto_4
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/o;->F:Z

    .line 325
    :cond_b
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "updateFocusState, state: "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mode: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", isPdaf: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/oplus/camera/ui/preview/o;->G:Z

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mbPdafConvergeDone: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/oplus/camera/ui/preview/o;->E:Z

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mbAfMoving: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/oplus/camera/ui/preview/o;->F:Z

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_f

    const/4 p1, 0x3

    if-eq p4, p1, :cond_f

    const/4 p1, 0x4

    if-eq p4, p1, :cond_f

    const/4 p1, 0x5

    if-ne p4, p1, :cond_c

    goto :goto_5

    :cond_c
    if-eqz v2, :cond_e

    .line 338
    iget-boolean p1, p0, Lcom/oplus/camera/ui/preview/o;->m:Z

    if-eqz p1, :cond_d

    iget-boolean p1, p0, Lcom/oplus/camera/ui/preview/o;->E:Z

    if-eqz p1, :cond_d

    const-string p1, "updateFocusState, on AF status converged"

    .line 339
    invoke-static {v0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/o;->t:Landroid/os/Handler;

    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 342
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o;->t:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_d
    return-void

    .line 348
    :cond_e
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/o;->t:Landroid/os/Handler;

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 349
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o;->t:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 332
    :cond_f
    :goto_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "updateFocusState, return, cameraState: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    .line 551
    invoke-static {p2}, Lcom/oplus/camera/entry/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "pref_camera_timer_shutter_key"

    .line 553
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 554
    iget-object p2, p0, Lcom/oplus/camera/ui/preview/o;->n:Landroid/app/Activity;

    const v1, 0x7f1003ca

    .line 555
    invoke-virtual {p2, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 554
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 557
    iget-object p2, p0, Lcom/oplus/camera/ui/preview/o;->H:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 558
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/o;->H:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Rect;)V
    .locals 5

    .line 1846
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    if-eqz v0, :cond_0

    .line 1847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startTracking, rect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FocusManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1849
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, p1, Landroid/graphics/Rect;->left:I

    aput v3, v1, v2

    iget v2, p1, Landroid/graphics/Rect;->top:I

    const/4 v3, 0x1

    aput v2, v1, v3

    const/4 v2, 0x2

    iget v4, p1, Landroid/graphics/Rect;->right:I

    aput v4, v1, v2

    const/4 v2, 0x3

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    aput p1, v1, v2

    invoke-interface {v0, v1, v3}, Lcom/oplus/camera/ui/preview/f;->a([IZ)V

    .line 1851
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o;->p:Lcom/oplus/camera/ui/preview/ac;

    if-eqz p0, :cond_0

    .line 1852
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/ac;->j()V

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/util/Size;)V
    .locals 3

    .line 1565
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/o;->U:Landroid/graphics/Rect;

    .line 1566
    iput-object p2, p0, Lcom/oplus/camera/ui/preview/o;->V:Landroid/graphics/Rect;

    .line 1567
    iput-object p3, p0, Lcom/oplus/camera/ui/preview/o;->W:Landroid/util/Size;

    .line 1569
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->p:Lcom/oplus/camera/ui/preview/ac;

    if-eqz v0, :cond_0

    .line 1570
    new-instance v1, Landroid/util/Size;

    iget v2, p0, Lcom/oplus/camera/ui/preview/o;->y:I

    iget p0, p0, Lcom/oplus/camera/ui/preview/o;->z:I

    invoke-direct {v1, v2, p0}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/oplus/camera/ui/preview/ac;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/util/Size;Landroid/util/Size;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/RectF;)V
    .locals 1

    const/4 v0, 0x1

    .line 1836
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/o;->S:Z

    .line 1838
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->p:Lcom/oplus/camera/ui/preview/ac;

    if-eqz v0, :cond_0

    .line 1839
    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/ac;->c()V

    .line 1840
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->p:Lcom/oplus/camera/ui/preview/ac;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/preview/ac;->a(Landroid/graphics/RectF;)V

    .line 1841
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    const/4 p1, 0x4

    new-array p1, p1, [I

    fill-array-data p1, :array_0

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/oplus/camera/ui/preview/f;->a([IZ)V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public a(Z)V
    .locals 2

    const-string v0, "FocusManager"

    const-string v1, "initialized"

    .line 256
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 258
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/o;->j:Z

    .line 259
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/o;->b(Z)V

    return-void
.end method

.method public a([I)V
    .locals 2

    .line 1798
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->n:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1799
    new-instance v1, Lcom/oplus/camera/ui/preview/o$3;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/preview/o$3;-><init>(Lcom/oplus/camera/ui/preview/o;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1818
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o;->p:Lcom/oplus/camera/ui/preview/ac;

    if-eqz p0, :cond_0

    .line 1819
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/ac;->a([I)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 1073
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    const-string v1, "FocusManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_1f

    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/f;->p()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_a

    .line 1079
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->r:Lcom/oplus/camera/ui/preview/n;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/n;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->r:Lcom/oplus/camera/ui/preview/n;

    .line 1080
    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/n;->b()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "onTouchEvent, mFocusExposureContainer is shown, but seekbar cannot change exposure."

    .line 1081
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 1086
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->p:Lcom/oplus/camera/ui/preview/ac;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/ac;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->p:Lcom/oplus/camera/ui/preview/ac;

    .line 1087
    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/ac;->i()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, "onTouchEvent, mTrackerView is shown, but seekbar cannot change exposure."

    .line 1088
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 1093
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const-wide/16 v3, 0x3e8

    const/4 v1, 0x7

    const/4 v5, 0x1

    if-le v0, v5, :cond_4

    .line 1094
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o;->t:Landroid/os/Handler;

    if-eqz p0, :cond_3

    .line 1095
    invoke-virtual {p0, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    return v2

    .line 1104
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x2

    if-eqz v0, :cond_18

    const/16 v8, 0xb4

    if-eq v0, v5, :cond_13

    if-eq v0, v7, :cond_5

    goto/16 :goto_8

    .line 1118
    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->r:Lcom/oplus/camera/ui/preview/n;

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v9, 0x41000000    # 8.0f

    const v10, 0x3f147ae1    # 0.58f

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/n;->getVisibility()I

    move-result v0

    if-nez v0, :cond_d

    .line 1119
    iget v0, p0, Lcom/oplus/camera/ui/preview/o;->K:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    sub-float/2addr v0, v11

    .line 1120
    iget v11, p0, Lcom/oplus/camera/ui/preview/o;->L:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    sub-float/2addr v11, v12

    .line 1124
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v12

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v13

    mul-float/2addr v13, v10

    invoke-static {v12, v13}, Ljava/lang/Float;->compare(FF)I

    move-result v10

    if-lez v10, :cond_6

    move v10, v5

    goto :goto_0

    :cond_6
    move v10, v2

    .line 1125
    :goto_0
    iget v12, p0, Lcom/oplus/camera/ui/preview/o;->O:I

    if-nez v12, :cond_7

    goto :goto_1

    :cond_7
    if-ne v12, v8, :cond_8

    neg-float v0, v0

    goto :goto_1

    :cond_8
    const/16 v0, 0x5a

    if-ne v12, v0, :cond_9

    move v10, v5

    move v0, v11

    goto :goto_1

    :cond_9
    neg-float v0, v11

    move v10, v5

    :goto_1
    if-eqz v10, :cond_c

    .line 1137
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v7, v8, v7

    if-lez v7, :cond_c

    iget v7, p0, Lcom/oplus/camera/ui/preview/o;->u:I

    if-ne v7, v5, :cond_c

    .line 1138
    iget-object v7, p0, Lcom/oplus/camera/ui/preview/o;->r:Lcom/oplus/camera/ui/preview/n;

    if-eqz v7, :cond_a

    .line 1139
    invoke-virtual {v7, v2}, Lcom/oplus/camera/ui/preview/n;->setVisibility(I)V

    .line 1140
    iget-object v7, p0, Lcom/oplus/camera/ui/preview/o;->r:Lcom/oplus/camera/ui/preview/n;

    invoke-virtual {v7, v6}, Lcom/oplus/camera/ui/preview/n;->setAlpha(F)V

    .line 1143
    :cond_a
    iget-object v7, p0, Lcom/oplus/camera/ui/preview/o;->r:Lcom/oplus/camera/ui/preview/n;

    if-eqz v7, :cond_b

    .line 1144
    invoke-virtual {v7, v0}, Lcom/oplus/camera/ui/preview/n;->setMoveDistance(F)V

    .line 1147
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/oplus/camera/ui/preview/o;->K:F

    .line 1148
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/oplus/camera/ui/preview/o;->L:F

    move v7, v5

    goto :goto_2

    :cond_c
    move v7, v2

    .line 1152
    :goto_2
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v9

    if-lez v0, :cond_11

    iget v0, p0, Lcom/oplus/camera/ui/preview/o;->u:I

    if-nez v0, :cond_11

    .line 1153
    iput v5, p0, Lcom/oplus/camera/ui/preview/o;->u:I

    goto :goto_5

    .line 1155
    :cond_d
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->p:Lcom/oplus/camera/ui/preview/ac;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/ac;->d()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1156
    iget v0, p0, Lcom/oplus/camera/ui/preview/o;->K:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    sub-float/2addr v0, v8

    .line 1157
    iget v8, p0, Lcom/oplus/camera/ui/preview/o;->L:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    sub-float/2addr v8, v11

    .line 1161
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v11

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    mul-float/2addr v8, v10

    invoke-static {v11, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-lez v8, :cond_e

    move v8, v5

    goto :goto_3

    :cond_e
    move v8, v2

    :goto_3
    if-eqz v8, :cond_10

    .line 1163
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v7, v8, v7

    if-lez v7, :cond_10

    iget v7, p0, Lcom/oplus/camera/ui/preview/o;->u:I

    if-ne v7, v5, :cond_10

    .line 1164
    iget-object v7, p0, Lcom/oplus/camera/ui/preview/o;->p:Lcom/oplus/camera/ui/preview/ac;

    if-eqz v7, :cond_f

    .line 1165
    invoke-virtual {v7, v2}, Lcom/oplus/camera/ui/preview/ac;->setVisibility(I)V

    .line 1166
    iget-object v7, p0, Lcom/oplus/camera/ui/preview/o;->p:Lcom/oplus/camera/ui/preview/ac;

    invoke-virtual {v7, v6}, Lcom/oplus/camera/ui/preview/ac;->setAlpha(F)V

    .line 1167
    iget-object v7, p0, Lcom/oplus/camera/ui/preview/o;->p:Lcom/oplus/camera/ui/preview/ac;

    invoke-virtual {v7, v0}, Lcom/oplus/camera/ui/preview/ac;->setMoveDistance(F)V

    .line 1170
    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/oplus/camera/ui/preview/o;->K:F

    .line 1171
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/oplus/camera/ui/preview/o;->L:F

    move v7, v5

    goto :goto_4

    :cond_10
    move v7, v2

    .line 1175
    :goto_4
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v9

    if-lez v0, :cond_11

    iget v0, p0, Lcom/oplus/camera/ui/preview/o;->u:I

    if-nez v0, :cond_11

    .line 1176
    iput v5, p0, Lcom/oplus/camera/ui/preview/o;->u:I

    :cond_11
    :goto_5
    move v0, v2

    move v2, v7

    goto :goto_9

    :cond_12
    return v2

    .line 1185
    :cond_13
    iget v0, p0, Lcom/oplus/camera/ui/preview/o;->J:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    sub-float/2addr v0, v9

    .line 1186
    iget v9, p0, Lcom/oplus/camera/ui/preview/o;->I:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    sub-float/2addr v9, v10

    .line 1188
    iget v10, p0, Lcom/oplus/camera/ui/preview/o;->u:I

    if-ne v5, v10, :cond_1a

    .line 1191
    iget-object v10, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    if-eqz v10, :cond_14

    .line 1192
    invoke-interface {v10}, Lcom/oplus/camera/ui/preview/f;->l()V

    .line 1195
    :cond_14
    iput v7, p0, Lcom/oplus/camera/ui/preview/o;->u:I

    .line 1197
    iget v7, p0, Lcom/oplus/camera/ui/preview/o;->O:I

    const/high16 v10, 0x41a00000    # 20.0f

    if-eqz v7, :cond_16

    if-ne v7, v8, :cond_15

    goto :goto_6

    .line 1202
    :cond_15
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v10, v0

    if-gez v0, :cond_17

    goto :goto_7

    .line 1198
    :cond_16
    :goto_6
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v10, v0

    if-gez v0, :cond_17

    :goto_7
    move v0, v5

    move v2, v0

    goto :goto_9

    :cond_17
    move v0, v5

    goto :goto_9

    .line 1106
    :cond_18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/preview/o;->I:F

    .line 1107
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/preview/o;->J:F

    .line 1108
    iget v0, p0, Lcom/oplus/camera/ui/preview/o;->I:F

    iput v0, p0, Lcom/oplus/camera/ui/preview/o;->L:F

    .line 1109
    iget v0, p0, Lcom/oplus/camera/ui/preview/o;->J:F

    iput v0, p0, Lcom/oplus/camera/ui/preview/o;->K:F

    .line 1111
    iget v0, p0, Lcom/oplus/camera/ui/preview/o;->u:I

    const/4 v8, -0x1

    if-eq v0, v8, :cond_19

    if-ne v0, v7, :cond_1a

    .line 1112
    :cond_19
    iput v2, p0, Lcom/oplus/camera/ui/preview/o;->u:I

    :cond_1a
    :goto_8
    move v0, v2

    .line 1214
    :goto_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-eqz v7, :cond_1b

    if-eqz v2, :cond_1c

    .line 1215
    :cond_1b
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/o;->V()V

    .line 1218
    :cond_1c
    iget-object v7, p0, Lcom/oplus/camera/ui/preview/o;->t:Landroid/os/Handler;

    if-eqz v7, :cond_1e

    if-nez v0, :cond_1d

    .line 1219
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne v5, p1, :cond_1e

    iget-object p1, p0, Lcom/oplus/camera/ui/preview/o;->r:Lcom/oplus/camera/ui/preview/n;

    if-eqz p1, :cond_1e

    .line 1221
    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/n;->getAlpha()F

    move-result p1

    cmpl-float p1, p1, v6

    if-nez p1, :cond_1e

    iget-object p1, p0, Lcom/oplus/camera/ui/preview/o;->t:Landroid/os/Handler;

    .line 1222
    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_1e

    .line 1223
    :cond_1d
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o;->t:Landroid/os/Handler;

    invoke-virtual {p0, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1e
    return v2

    :cond_1f
    :goto_a
    const-string p0, "onTouchEvent, mCameraFocusListener is null or manual exposure is unsupported."

    .line 1074
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public b()V
    .locals 3

    .line 175
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->B:Lcom/oplus/camera/ComboPreferences;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/o;->n:Landroid/app/Activity;

    const v2, 0x7f1003ca

    .line 176
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_timer_shutter_key"

    .line 175
    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/o;->H:Ljava/lang/String;

    return-void
.end method

.method public b(F)V
    .locals 0

    .line 1559
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/o;->r:Lcom/oplus/camera/ui/preview/n;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/n;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 1560
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o;->r:Lcom/oplus/camera/ui/preview/n;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/n;->c(Z)V

    :cond_0
    return-void
.end method

.method public b(FFII)V
    .locals 6

    .line 1541
    new-instance v0, Landroid/graphics/RectF;

    int-to-float p3, p3

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p3, v1

    sub-float v2, p1, p3

    iget v3, p0, Lcom/oplus/camera/ui/preview/o;->y:I

    int-to-float v4, v3

    div-float/2addr v2, v4

    int-to-float p4, p4

    div-float/2addr p4, v1

    sub-float v1, p2, p4

    iget v4, p0, Lcom/oplus/camera/ui/preview/o;->z:I

    int-to-float v5, v4

    div-float/2addr v1, v5

    add-float/2addr p3, p1

    int-to-float v3, v3

    div-float/2addr p3, v3

    add-float/2addr p4, p2

    int-to-float v3, v4

    div-float/2addr p4, v3

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1543
    iget-object p3, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-interface {p3, p1, p2, v0}, Lcom/oplus/camera/ui/preview/f;->b(IILandroid/graphics/RectF;)V

    .line 1544
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/preview/o;->b(Landroid/graphics/RectF;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/oplus/camera/ui/preview/f;->b([Landroid/hardware/camera2/params/MeteringRectangle;)V

    const/4 p1, 0x1

    .line 1545
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/o;->d(I)V

    .line 1547
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "setFocalPointInfo, AF regions: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FocusManager"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(I)V
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->r:Lcom/oplus/camera/ui/preview/n;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {v0, p1, v1}, Lcom/oplus/camera/ui/preview/n;->a(IZ)V

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->p:Lcom/oplus/camera/ui/preview/ac;

    if-eqz v0, :cond_1

    .line 287
    invoke-virtual {v0, p1, v1}, Lcom/oplus/camera/ui/preview/ac;->a(IZ)V

    .line 290
    :cond_1
    iput p1, p0, Lcom/oplus/camera/ui/preview/o;->O:I

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 278
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/o;->k:Z

    return-void
.end method

.method public b(II)Z
    .locals 0

    .line 1526
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    invoke-interface {p0, p1, p2}, Lcom/oplus/camera/ui/preview/f;->a(II)Z

    move-result p0

    return p0
.end method

.method public c()V
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o;->o:Lcom/oplus/camera/ui/preview/FaceView;

    if-eqz p0, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/FaceView;->d()V

    :cond_0
    return-void
.end method

.method public c(F)V
    .locals 0

    .line 1792
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o;->p:Lcom/oplus/camera/ui/preview/ac;

    if-eqz p0, :cond_0

    .line 1793
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/ac;->setZoomValue(F)V

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 0

    .line 294
    iput p1, p0, Lcom/oplus/camera/ui/preview/o;->w:I

    return-void
.end method

.method public c(Z)Z
    .locals 2

    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkStateBeforeCapture, isAISSnapshot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FocusManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/o;->e(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/o;->d(Z)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 186
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/o;->m:Z

    .line 187
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/o;->k(Z)V

    .line 188
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/o;->r()V

    .line 189
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/o;->k()V

    return-void
.end method

.method public d(I)V
    .locals 2

    .line 656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFocusState(), mFocusState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/ui/preview/o;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "=>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FocusManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    iput p1, p0, Lcom/oplus/camera/ui/preview/o;->x:I

    return-void
.end method

.method public d(Z)V
    .locals 4

    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delayCapture, isAISSnapshot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FocusManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 616
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/o;->d(I)V

    .line 618
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->t:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/4 v1, 0x5

    .line 619
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz p1, :cond_0

    .line 622
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/o;->t:Landroid/os/Handler;

    const-wide/16 v2, 0xf0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 624
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/o;->t:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    const/4 p1, 0x1

    .line 627
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/o;->m:Z

    :cond_1
    return-void
.end method

.method public e()V
    .locals 2

    const/4 v0, 0x0

    .line 193
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/o;->n:Landroid/app/Activity;

    .line 194
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/o;->o:Lcom/oplus/camera/ui/preview/FaceView;

    .line 195
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/o;->p:Lcom/oplus/camera/ui/preview/ac;

    .line 196
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/o;->q:Lcom/oplus/camera/ui/preview/MultiFocusView;

    .line 197
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    .line 199
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/o;->t:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 200
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 201
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/o;->t:Landroid/os/Handler;

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/o;->r:Lcom/oplus/camera/ui/preview/n;

    if-eqz v1, :cond_1

    .line 205
    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/n;->e()V

    .line 206
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/o;->r:Lcom/oplus/camera/ui/preview/n;

    :cond_1
    return-void
.end method

.method public e(I)V
    .locals 0

    .line 677
    iput p1, p0, Lcom/oplus/camera/ui/preview/o;->g:I

    return-void
.end method

.method public e(Z)Z
    .locals 4

    .line 632
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/o;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->t:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->t:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 634
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->t:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 637
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/o;->h(Z)Z

    move-result p0

    return p0
.end method

.method public f()V
    .locals 4

    .line 211
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->r:Lcom/oplus/camera/ui/preview/n;

    if-nez v0, :cond_1

    .line 212
    new-instance v0, Lcom/oplus/camera/ui/preview/n;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/o;->n:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/camera/ui/preview/n;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/o;->r:Lcom/oplus/camera/ui/preview/n;

    .line 213
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->r:Lcom/oplus/camera/ui/preview/n;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/n;->setVisibility(I)V

    .line 214
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 216
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/o;->n:Landroid/app/Activity;

    const v2, 0x7f090193

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    if-eqz v1, :cond_0

    .line 219
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/o;->r:Lcom/oplus/camera/ui/preview/n;

    invoke-virtual {v1, v2, v0}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->r:Lcom/oplus/camera/ui/preview/n;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/preview/n;->setFocusManager(Lcom/oplus/camera/ui/preview/s;)V

    .line 223
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->r:Lcom/oplus/camera/ui/preview/n;

    iget v2, p0, Lcom/oplus/camera/ui/preview/o;->y:I

    iget v3, p0, Lcom/oplus/camera/ui/preview/o;->z:I

    invoke-virtual {v0, v2, v3}, Lcom/oplus/camera/ui/preview/n;->a(II)V

    .line 224
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->r:Lcom/oplus/camera/ui/preview/n;

    iget p0, p0, Lcom/oplus/camera/ui/preview/o;->O:I

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Lcom/oplus/camera/ui/preview/n;->a(IZ)V

    .line 226
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initFocusExposureIndicator, previewFrameLayout: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FocusManager"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public f(I)V
    .locals 2

    .line 1733
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->n:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1734
    new-instance v1, Lcom/oplus/camera/ui/preview/-$$Lambda$o$Xz2LrB2YwV-TOn8-lQBADHN_NYI;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/ui/preview/-$$Lambda$o$Xz2LrB2YwV-TOn8-lQBADHN_NYI;-><init>(Lcom/oplus/camera/ui/preview/o;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public f(Z)V
    .locals 1

    .line 1040
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/o;->i:Z

    .line 1041
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/o;->h:Z

    .line 1043
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/o;->n:Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 1044
    new-instance v0, Lcom/oplus/camera/ui/preview/-$$Lambda$o$bMMSUhXmWaBaEHuDAY9eCTOIb5Q;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/preview/-$$Lambda$o$bMMSUhXmWaBaEHuDAY9eCTOIb5Q;-><init>(Lcom/oplus/camera/ui/preview/o;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public g(Z)V
    .locals 2

    .line 1252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableFocusIndicator, disable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FocusManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o;->r:Lcom/oplus/camera/ui/preview/n;

    if-eqz p0, :cond_0

    .line 1255
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/n;->e(Z)V

    :cond_0
    return-void
.end method

.method public g()Z
    .locals 4

    .line 540
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->t:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->t:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 542
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->t:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 543
    invoke-direct {p0, v1}, Lcom/oplus/camera/ui/preview/o;->m(Z)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public h()Z
    .locals 4

    .line 564
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->n:Landroid/app/Activity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 568
    :cond_0
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/o;->B:Lcom/oplus/camera/ComboPreferences;

    const v3, 0x7f10043e

    .line 569
    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "pref_camera_tap_shutter_key"

    .line 568
    invoke-virtual {v2, v3, v0}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "on"

    .line 570
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    if-eqz v0, :cond_1

    .line 572
    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/f;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    .line 573
    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/f;->n()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/oplus/camera/ui/preview/o;->v:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/o;->l:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget v2, p0, Lcom/oplus/camera/ui/preview/o;->g:I

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    .line 577
    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/f;->v()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    .line 578
    invoke-interface {p0, v3}, Lcom/oplus/camera/ui/preview/f;->a(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public h(Z)Z
    .locals 5

    .line 1320
    iget v0, p0, Lcom/oplus/camera/ui/preview/o;->D:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v3, v0, :cond_1

    const/4 v3, 0x6

    if-eq v3, v0, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 1324
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inScanProgress, afDone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mAfFocusState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oplus/camera/ui/preview/o;->D:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mbPdaf: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oplus/camera/ui/preview/o;->G:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mbPdafConvergeDone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oplus/camera/ui/preview/o;->E:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mbAfMoving: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oplus/camera/ui/preview/o;->F:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isAISSnapshot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FocusManager"

    invoke-static {v4, v3}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x4

    .line 1328
    iget v4, p0, Lcom/oplus/camera/ui/preview/o;->C:I

    if-ne v3, v4, :cond_5

    if-nez v0, :cond_4

    .line 1329
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/o;->E:Z

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    .line 1332
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/o;->F:Z

    xor-int/2addr p0, v2

    return p0

    .line 1334
    :cond_3
    iget p1, p0, Lcom/oplus/camera/ui/preview/o;->D:I

    if-ne p1, v2, :cond_4

    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/o;->G:Z

    if-nez p0, :cond_4

    move v1, v2

    :cond_4
    :goto_2
    return v1

    :cond_5
    if-ne v2, v4, :cond_6

    .line 1337
    iget p1, p0, Lcom/oplus/camera/ui/preview/o;->D:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/o;->G:Z

    if-nez p0, :cond_6

    move v1, v2

    :cond_6
    return v1
.end method

.method public i()V
    .locals 3

    .line 641
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 642
    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/preview/f;->b(Z)V

    .line 645
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->t:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/4 v2, 0x5

    .line 646
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 647
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/o;->m:Z

    const/4 v0, 0x4

    .line 649
    iget v2, p0, Lcom/oplus/camera/ui/preview/o;->x:I

    if-ne v0, v2, :cond_1

    .line 650
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/preview/o;->d(I)V

    :cond_1
    return-void
.end method

.method public i(Z)V
    .locals 8

    .line 1395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "toggleAeAfLock, mbAEAFLocked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/o;->s()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FocusManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    if-nez v0, :cond_0

    const-string p0, "toggleAeAfLock, mCameraFocusListener is null."

    .line 1398
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1403
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->r:Lcom/oplus/camera/ui/preview/n;

    if-nez v0, :cond_1

    const-string p0, "toggleAeAfLock, mFocusExposureContainer is null."

    .line 1404
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1409
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/o;->s()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    const/4 p1, 0x0

    .line 1411
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/o;->e(I)V

    .line 1413
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/f;->n()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1414
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    if-eqz v0, :cond_2

    .line 1415
    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/f;->s()V

    .line 1416
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    invoke-interface {v0, p1, v2}, Lcom/oplus/camera/ui/preview/f;->c(ZZ)V

    .line 1419
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/o;->p()V

    .line 1421
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/o;->S:Z

    if-eqz v0, :cond_3

    .line 1422
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/o;->k(Z)V

    .line 1425
    :cond_3
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/o;->d(I)V

    goto/16 :goto_2

    .line 1427
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    if-eqz v0, :cond_5

    .line 1428
    invoke-interface {v0, p1, v2}, Lcom/oplus/camera/ui/preview/f;->c(ZZ)V

    .line 1431
    :cond_5
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/o;->p()V

    .line 1433
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/o;->S:Z

    if-eqz v0, :cond_6

    .line 1434
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/o;->k(Z)V

    .line 1437
    :cond_6
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o;->t:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    :cond_7
    const/4 v0, 0x2

    .line 1441
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/o;->e(I)V

    .line 1442
    iget v3, p0, Lcom/oplus/camera/ui/preview/o;->M:I

    iget-object v4, p0, Lcom/oplus/camera/ui/preview/o;->r:Lcom/oplus/camera/ui/preview/n;

    invoke-virtual {v4}, Lcom/oplus/camera/ui/preview/n;->getExposureRectWidth()I

    move-result v4

    div-int/2addr v4, v0

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/oplus/camera/ui/preview/o;->y:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 1443
    iget v4, p0, Lcom/oplus/camera/ui/preview/o;->N:I

    iget-object v5, p0, Lcom/oplus/camera/ui/preview/o;->r:Lcom/oplus/camera/ui/preview/n;

    invoke-virtual {v5}, Lcom/oplus/camera/ui/preview/n;->getExposureRectWidth()I

    move-result v5

    div-int/2addr v5, v0

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/oplus/camera/ui/preview/o;->z:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 1444
    iget v5, p0, Lcom/oplus/camera/ui/preview/o;->M:I

    iget-object v6, p0, Lcom/oplus/camera/ui/preview/o;->r:Lcom/oplus/camera/ui/preview/n;

    invoke-virtual {v6}, Lcom/oplus/camera/ui/preview/n;->getExposureRectWidth()I

    move-result v6

    div-int/2addr v6, v0

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/oplus/camera/ui/preview/o;->y:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 1445
    iget v6, p0, Lcom/oplus/camera/ui/preview/o;->N:I

    iget-object v7, p0, Lcom/oplus/camera/ui/preview/o;->r:Lcom/oplus/camera/ui/preview/n;

    invoke-virtual {v7}, Lcom/oplus/camera/ui/preview/n;->getExposureRectWidth()I

    move-result v7

    div-int/2addr v7, v0

    add-int/2addr v6, v7

    int-to-float v0, v6

    iget v6, p0, Lcom/oplus/camera/ui/preview/o;->z:I

    int-to-float v6, v6

    div-float/2addr v0, v6

    .line 1446
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v3, v4, v5, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1448
    iget v0, p0, Lcom/oplus/camera/ui/preview/o;->x:I

    if-eq v2, v0, :cond_8

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/o;->C()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1449
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/f;->t()V

    .line 1452
    :cond_8
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/o;->C()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/o;->E()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_0

    :cond_9
    const-string p0, "toggleAeAfLock, do nothing, lock AE/AF is unsupported."

    .line 1463
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1454
    :cond_a
    :goto_0
    iget v0, p0, Lcom/oplus/camera/ui/preview/o;->x:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    if-nez v0, :cond_b

    if-nez p1, :cond_d

    .line 1455
    :cond_b
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/o;->C()Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_1

    .line 1460
    :cond_c
    invoke-direct {p0, v6, v6}, Lcom/oplus/camera/ui/preview/o;->a(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_2

    .line 1456
    :cond_d
    :goto_1
    invoke-direct {p0, v2}, Lcom/oplus/camera/ui/preview/o;->n(Z)V

    .line 1457
    invoke-virtual {p0, v2}, Lcom/oplus/camera/ui/preview/o;->f(Z)V

    :goto_2
    return-void
.end method

.method public j()V
    .locals 2

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkFocusStateBeforeCapture, mFocusState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/ui/preview/o;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FocusManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/o;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 665
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/o;->n()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/oplus/camera/ui/preview/o;->x:I

    if-ne v0, v1, :cond_0

    .line 667
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/o;->l()V

    :cond_0
    return-void
.end method

.method public j(Z)V
    .locals 0

    .line 1729
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/o;->R:Z

    return-void
.end method

.method public k()V
    .locals 2

    const/4 v0, 0x0

    .line 801
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/o;->d(I)V

    .line 802
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/o;->p()V

    .line 804
    iget-boolean v1, p0, Lcom/oplus/camera/ui/preview/o;->S:Z

    if-eqz v1, :cond_0

    .line 805
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/o;->k(Z)V

    .line 809
    :cond_0
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/o;->Q:Z

    .line 810
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/o;->o()V

    return-void
.end method

.method public k(Z)V
    .locals 2

    .line 1825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopTracking, needRepeating: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FocusManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1827
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->p:Lcom/oplus/camera/ui/preview/ac;

    if-eqz v0, :cond_0

    .line 1828
    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/ac;->b()V

    :cond_0
    const/4 v0, 0x0

    .line 1831
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/o;->S:Z

    .line 1832
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-interface {p0, v0, p1}, Lcom/oplus/camera/ui/preview/f;->a([IZ)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public l()V
    .locals 2

    const-string v0, "FocusManager"

    const-string v1, "resetAutoFocusMode"

    .line 880
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 886
    iput v0, p0, Lcom/oplus/camera/ui/preview/o;->g:I

    .line 888
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    if-eqz v0, :cond_0

    .line 889
    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/f;->s()V

    .line 892
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/o;->m()V

    return-void
.end method

.method public m()V
    .locals 2

    const-string v0, "FocusManager"

    const-string v1, "resetCameraFocusState()"

    .line 896
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/o;->p()V

    .line 900
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/o;->S:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 901
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/preview/o;->k(Z)V

    .line 904
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->o:Lcom/oplus/camera/ui/preview/FaceView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/f;->n()Z

    move-result v0

    if-nez v0, :cond_1

    .line 905
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->o:Lcom/oplus/camera/ui/preview/FaceView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/FaceView;->d()V

    .line 908
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->q:Lcom/oplus/camera/ui/preview/MultiFocusView;

    if-eqz v0, :cond_2

    .line 909
    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/MultiFocusView;->d()V

    .line 912
    :cond_2
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/preview/o;->d(I)V

    .line 914
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o;->t:Landroid/os/Handler;

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    .line 915
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    return-void
.end method

.method public n()I
    .locals 0

    .line 920
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    invoke-interface {p0}, Lcom/oplus/camera/ui/preview/f;->w()I

    move-result p0

    return p0
.end method

.method public o()V
    .locals 8

    .line 924
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/o;->j:Z

    if-nez v0, :cond_0

    return-void

    .line 928
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/o;->f()V

    .line 931
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->o:Lcom/oplus/camera/ui/preview/FaceView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/FaceView;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 932
    :goto_0
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/o;->q:Lcom/oplus/camera/ui/preview/MultiFocusView;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/oplus/camera/ui/preview/MultiFocusView;->f()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    if-eqz v0, :cond_3

    .line 936
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->o:Lcom/oplus/camera/ui/preview/FaceView;

    goto :goto_2

    :cond_3
    if-eqz v3, :cond_4

    .line 938
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->q:Lcom/oplus/camera/ui/preview/MultiFocusView;

    goto :goto_2

    .line 940
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->r:Lcom/oplus/camera/ui/preview/n;

    .line 943
    :goto_2
    iget-boolean v3, p0, Lcom/oplus/camera/ui/preview/o;->l:Z

    xor-int/2addr v3, v2

    .line 945
    iget-object v4, p0, Lcom/oplus/camera/ui/preview/o;->t:Landroid/os/Handler;

    const/4 v5, 0x7

    if-eqz v4, :cond_5

    .line 946
    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 949
    :cond_5
    iget-object v4, p0, Lcom/oplus/camera/ui/preview/o;->r:Lcom/oplus/camera/ui/preview/n;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v4, v6}, Lcom/oplus/camera/ui/preview/n;->setAlpha(F)V

    const/4 v4, 0x4

    .line 951
    iget v6, p0, Lcom/oplus/camera/ui/preview/o;->C:I

    if-eq v4, v6, :cond_6

    const/4 v4, 0x3

    if-ne v4, v6, :cond_8

    iget-boolean v4, p0, Lcom/oplus/camera/ui/preview/o;->S:Z

    if-nez v4, :cond_8

    .line 955
    :cond_6
    iget v4, p0, Lcom/oplus/camera/ui/preview/o;->u:I

    const/4 v6, -0x1

    if-eq v4, v6, :cond_7

    move v1, v2

    :cond_7
    invoke-interface {v0, v3, v1}, Lcom/oplus/camera/ui/preview/m;->a(ZZ)V

    .line 958
    :cond_8
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/o;->l:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->t:Landroid/os/Handler;

    if-eqz v0, :cond_b

    .line 959
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/f;->m()Z

    move-result v0

    .line 961
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFocusUI, isFixedFocusMode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mbNeedLockAF: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oplus/camera/ui/preview/o;->Q:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "FocusManager"

    invoke-static {v3, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_9

    .line 964
    iget-boolean v1, p0, Lcom/oplus/camera/ui/preview/o;->Q:Z

    if-nez v1, :cond_9

    .line 965
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/o;->t:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 966
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/o;->t:Landroid/os/Handler;

    const-wide/16 v6, 0xbb8

    invoke-virtual {v1, v3, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 969
    :cond_9
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/o;->t:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 970
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/o;->t:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz v0, :cond_a

    .line 973
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->t:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 974
    iput-boolean v2, p0, Lcom/oplus/camera/ui/preview/o;->s:Z

    .line 978
    :cond_a
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o;->r:Lcom/oplus/camera/ui/preview/n;

    invoke-virtual {p0, v2}, Lcom/oplus/camera/ui/preview/n;->c(Z)V

    :cond_b
    return-void
.end method

.method public p()V
    .locals 2

    .line 983
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/o;->j:Z

    if-nez v0, :cond_0

    const-string p0, "FocusManager"

    const-string v0, "resetTouchFocusUi, initialize is not completed, abort!"

    .line 984
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 989
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/o;->l:Z

    .line 991
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->n:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 992
    new-instance v1, Lcom/oplus/camera/ui/preview/o$1;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/preview/o$1;-><init>(Lcom/oplus/camera/ui/preview/o;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public q()V
    .locals 2

    .line 1006
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->t:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    .line 1007
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1008
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->t:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1009
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o;->t:Landroid/os/Handler;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public r()V
    .locals 2

    .line 1014
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->t:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1015
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->t:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1016
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o;->t:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public s()Z
    .locals 1

    .line 1020
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/o;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/o;->h:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/o;->C()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/o;->i:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public t()Z
    .locals 0

    .line 1024
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o;->r:Lcom/oplus/camera/ui/preview/n;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/n;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public u()Z
    .locals 0

    .line 1032
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o;->r:Lcom/oplus/camera/ui/preview/n;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/n;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public v()V
    .locals 2

    .line 1057
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->n:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1058
    new-instance v1, Lcom/oplus/camera/ui/preview/o$2;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/preview/o$2;-><init>(Lcom/oplus/camera/ui/preview/o;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public w()Z
    .locals 0

    .line 1248
    iget p0, p0, Lcom/oplus/camera/ui/preview/o;->u:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public x()Z
    .locals 3

    .line 1261
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->B:Lcom/oplus/camera/ComboPreferences;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/o;->n:Landroid/app/Activity;

    const v2, 0x7f10043e

    .line 1262
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_tap_shutter_key"

    .line 1261
    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1264
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    if-eqz v1, :cond_1

    const-string v1, "on"

    .line 1265
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    .line 1266
    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/f;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    .line 1267
    invoke-interface {v0, v2}, Lcom/oplus/camera/ui/preview/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    .line 1268
    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/f;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/oplus/camera/ui/preview/o;->v:I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public y()V
    .locals 2

    .line 1277
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/o;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1278
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/o;->s()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->t:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    const-string v1, "func_reset_auto_focus"

    .line 1280
    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/preview/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1281
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/o;->U()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1282
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/o;->O()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->p:Lcom/oplus/camera/ui/preview/ac;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/ac;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1283
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->t:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1284
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o;->t:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method public z()V
    .locals 4

    .line 1289
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/o;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1290
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/o;->s()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->t:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1292
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/o;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->A:Lcom/oplus/camera/ui/preview/f;

    const-string v1, "func_reset_auto_focus"

    .line 1293
    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/preview/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1294
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/o;->t:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1295
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/o;->t:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method
