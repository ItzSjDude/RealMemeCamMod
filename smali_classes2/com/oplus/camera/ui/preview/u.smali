.class public Lcom/oplus/camera/ui/preview/u;
.super Lcom/oplus/camera/ui/preview/a;
.source "PIAISceneUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/preview/u$a;
    }
.end annotation


# instance fields
.field private d:Landroid/widget/RelativeLayout;

.field private e:Lcom/oplus/camera/ui/preview/AISceneView;

.field private f:Lcom/oplus/camera/ui/preview/u$a;

.field private g:Lcom/oplus/camera/ui/preview/a$a;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:Lcom/oplus/camera/ui/r;

.field private w:Landroid/view/View$OnLayoutChangeListener;

.field private x:Z

.field private y:Lcom/oplus/camera/ui/r$a;

.field private z:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/oplus/camera/ComboPreferences;)V
    .locals 3

    .line 70
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/u;->d:Landroid/widget/RelativeLayout;

    .line 49
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/u;->e:Lcom/oplus/camera/ui/preview/AISceneView;

    .line 50
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/u;->f:Lcom/oplus/camera/ui/preview/u$a;

    .line 51
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/u;->g:Lcom/oplus/camera/ui/preview/a$a;

    const/4 v1, 0x0

    .line 52
    iput v1, p0, Lcom/oplus/camera/ui/preview/u;->h:I

    .line 53
    iput v1, p0, Lcom/oplus/camera/ui/preview/u;->i:I

    .line 54
    iput v1, p0, Lcom/oplus/camera/ui/preview/u;->j:I

    .line 55
    iput v1, p0, Lcom/oplus/camera/ui/preview/u;->k:I

    .line 56
    iput v1, p0, Lcom/oplus/camera/ui/preview/u;->l:I

    .line 57
    iput v1, p0, Lcom/oplus/camera/ui/preview/u;->m:I

    .line 58
    iput v1, p0, Lcom/oplus/camera/ui/preview/u;->n:I

    .line 59
    iput v1, p0, Lcom/oplus/camera/ui/preview/u;->o:I

    const v2, 0x3ffffff

    .line 60
    iput v2, p0, Lcom/oplus/camera/ui/preview/u;->p:I

    .line 61
    iput v1, p0, Lcom/oplus/camera/ui/preview/u;->q:I

    .line 62
    iput v1, p0, Lcom/oplus/camera/ui/preview/u;->r:I

    .line 63
    iput v1, p0, Lcom/oplus/camera/ui/preview/u;->s:I

    .line 64
    iput v1, p0, Lcom/oplus/camera/ui/preview/u;->t:I

    .line 65
    iput v1, p0, Lcom/oplus/camera/ui/preview/u;->u:I

    .line 66
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/u;->v:Lcom/oplus/camera/ui/r;

    .line 67
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/u;->w:Landroid/view/View$OnLayoutChangeListener;

    .line 68
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/u;->x:Z

    .line 234
    new-instance v0, Lcom/oplus/camera/ui/preview/u$1;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/preview/u$1;-><init>(Lcom/oplus/camera/ui/preview/u;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/u;->y:Lcom/oplus/camera/ui/r$a;

    .line 562
    new-instance v0, Lcom/oplus/camera/ui/preview/u$4;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oplus/camera/ui/preview/u$4;-><init>(Lcom/oplus/camera/ui/preview/u;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/u;->z:Landroid/os/Handler;

    .line 71
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/u;->a:Landroid/app/Activity;

    .line 72
    iput-object p2, p0, Lcom/oplus/camera/ui/preview/u;->b:Landroid/view/ViewGroup;

    .line 73
    iput-object p3, p0, Lcom/oplus/camera/ui/preview/u;->c:Lcom/oplus/camera/ComboPreferences;

    .line 74
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/u;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070963

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/preview/u;->h:I

    .line 75
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/u;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070962

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/preview/u;->i:I

    .line 76
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result p1

    int-to-double p1, p1

    const-wide v0, 0x3ff5555555555555L    # 1.3333333333333333

    mul-double/2addr p1, v0

    double-to-int p1, p1

    iput p1, p0, Lcom/oplus/camera/ui/preview/u;->j:I

    .line 77
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    float-to-double p1, p1

    mul-double/2addr p1, v0

    double-to-int p1, p1

    iput p1, p0, Lcom/oplus/camera/ui/preview/u;->k:I

    .line 78
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/u;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070539

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/preview/u;->l:I

    .line 79
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/preview/u;->m:I

    .line 85
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/u;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070c37

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/preview/u;->r:I

    return-void
.end method

.method private a(IIZ)I
    .locals 0

    const/4 p0, 0x1

    if-eqz p3, :cond_0

    sub-int/2addr p1, p0

    shl-int/2addr p0, p1

    or-int/2addr p0, p2

    goto :goto_0

    :cond_0
    sub-int/2addr p1, p0

    shl-int/2addr p0, p1

    not-int p0, p0

    and-int/2addr p0, p2

    :goto_0
    return p0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/u;I)I
    .locals 0

    .line 37
    iput p1, p0, Lcom/oplus/camera/ui/preview/u;->n:I

    return p1
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/u;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/u;->d:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private a(II)Lcom/oplus/camera/ui/preview/u$a;
    .locals 2

    .line 345
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/u;->f:Lcom/oplus/camera/ui/preview/u$a;

    if-nez v0, :cond_0

    .line 346
    new-instance v0, Lcom/oplus/camera/ui/preview/u$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/camera/ui/preview/u$a;-><init>(Lcom/oplus/camera/ui/preview/u$1;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/u;->f:Lcom/oplus/camera/ui/preview/u$a;

    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 457
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/u;->f:Lcom/oplus/camera/ui/preview/u$a;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/preview/u$a;->a(I)V

    goto/16 :goto_0

    .line 453
    :pswitch_0
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/u;->f:Lcom/oplus/camera/ui/preview/u$a;

    const p2, 0x7f1004c9

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/preview/u$a;->a(I)V

    goto/16 :goto_0

    .line 449
    :pswitch_1
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/u;->f:Lcom/oplus/camera/ui/preview/u$a;

    const p2, 0x7f100095

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/preview/u$a;->a(I)V

    goto/16 :goto_0

    .line 445
    :pswitch_2
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/u;->f:Lcom/oplus/camera/ui/preview/u$a;

    const p2, 0x7f100098

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/preview/u$a;->a(I)V

    goto/16 :goto_0

    .line 441
    :pswitch_3
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/u;->f:Lcom/oplus/camera/ui/preview/u$a;

    const p2, 0x7f1000a8

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/preview/u$a;->a(I)V

    goto/16 :goto_0

    .line 437
    :pswitch_4
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/u;->f:Lcom/oplus/camera/ui/preview/u$a;

    const p2, 0x7f10009d

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/preview/u$a;->a(I)V

    goto/16 :goto_0

    .line 433
    :pswitch_5
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/u;->f:Lcom/oplus/camera/ui/preview/u$a;

    const p2, 0x7f1000a4

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/preview/u$a;->a(I)V

    goto/16 :goto_0

    .line 429
    :pswitch_6
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/u;->f:Lcom/oplus/camera/ui/preview/u$a;

    const p2, 0x7f1000aa

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/preview/u$a;->a(I)V

    goto/16 :goto_0

    .line 425
    :pswitch_7
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/u;->f:Lcom/oplus/camera/ui/preview/u$a;

    const p2, 0x7f100096

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/preview/u$a;->a(I)V

    goto/16 :goto_0

    .line 421
    :pswitch_8
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/u;->f:Lcom/oplus/camera/ui/preview/u$a;

    const p2, 0x7f1000a3

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/preview/u$a;->a(I)V

    goto/16 :goto_0

    .line 417
    :pswitch_9
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/u;->f:Lcom/oplus/camera/ui/preview/u$a;

    const p2, 0x7f1000a5

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/preview/u$a;->a(I)V

    goto/16 :goto_0

    .line 413
    :pswitch_a
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/u;->f:Lcom/oplus/camera/ui/preview/u$a;

    const p2, 0x7f1000a9

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/preview/u$a;->a(I)V

    goto/16 :goto_0

    .line 409
    :pswitch_b
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/u;->f:Lcom/oplus/camera/ui/preview/u$a;

    const p2, 0x7f1000ad

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/preview/u$a;->a(I)V

    goto/16 :goto_0

    .line 405
    :pswitch_c
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/u;->f:Lcom/oplus/camera/ui/preview/u$a;

    const p2, 0x7f1000ac

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/preview/u$a;->a(I)V

    goto/16 :goto_0

    .line 401
    :pswitch_d
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/u;->f:Lcom/oplus/camera/ui/preview/u$a;

    const p2, 0x7f1000ab

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/preview/u$a;->a(I)V

    goto/16 :goto_0

    .line 395
    :pswitch_e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getDataByAIScene, subCode: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PIAISceneUI"

    invoke-static {p2, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/u;->f:Lcom/oplus/camera/ui/preview/u$a;

    const p2, 0x7f1000a6

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/preview/u$a;->a(I)V

    goto :goto_0

    .line 391
    :pswitch_f
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/u;->f:Lcom/oplus/camera/ui/preview/u$a;

    const p2, 0x7f1000a2

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/preview/u$a;->a(I)V

    goto :goto_0

    .line 387
    :pswitch_10
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/u;->f:Lcom/oplus/camera/ui/preview/u$a;

    const p2, 0x7f1000a1

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/preview/u$a;->a(I)V

    goto :goto_0

    .line 383
    :pswitch_11
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/u;->f:Lcom/oplus/camera/ui/preview/u$a;

    const p2, 0x7f1000a0

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/preview/u$a;->a(I)V

    goto :goto_0

    .line 379
    :pswitch_12
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/u;->f:Lcom/oplus/camera/ui/preview/u$a;

    const p2, 0x7f10009f

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/preview/u$a;->a(I)V

    goto :goto_0

    .line 375
    :pswitch_13
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/u;->f:Lcom/oplus/camera/ui/preview/u$a;

    const p2, 0x7f10009e

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/preview/u$a;->a(I)V

    goto :goto_0

    .line 371
    :pswitch_14
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/u;->f:Lcom/oplus/camera/ui/preview/u$a;

    const p2, 0x7f10009c

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/preview/u$a;->a(I)V

    goto :goto_0

    .line 367
    :pswitch_15
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/u;->f:Lcom/oplus/camera/ui/preview/u$a;

    const p2, 0x7f10009b

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/preview/u$a;->a(I)V

    goto :goto_0

    .line 363
    :pswitch_16
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/u;->f:Lcom/oplus/camera/ui/preview/u$a;

    const p2, 0x7f1000ae

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/preview/u$a;->a(I)V

    goto :goto_0

    .line 359
    :pswitch_17
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/u;->f:Lcom/oplus/camera/ui/preview/u$a;

    const p2, 0x7f10009a

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/preview/u$a;->a(I)V

    goto :goto_0

    .line 355
    :pswitch_18
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/u;->f:Lcom/oplus/camera/ui/preview/u$a;

    const p2, 0x7f100099

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/preview/u$a;->a(I)V

    goto :goto_0

    .line 351
    :pswitch_19
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/u;->f:Lcom/oplus/camera/ui/preview/u$a;

    const p2, 0x7f100097

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/preview/u$a;->a(I)V

    .line 461
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/u;->f:Lcom/oplus/camera/ui/preview/u$a;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic b(Lcom/oplus/camera/ui/preview/u;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/oplus/camera/ui/preview/u;->o:I

    return p0
.end method

.method static synthetic b(Lcom/oplus/camera/ui/preview/u;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/u;->j(I)V

    return-void
.end method

.method static synthetic c(Lcom/oplus/camera/ui/preview/u;)Landroid/os/Handler;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/u;->z:Landroid/os/Handler;

    return-object p0
.end method

.method private c(IZ)V
    .locals 4

    .line 602
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/u;->c:Lcom/oplus/camera/ComboPreferences;

    const-string v1, "oplus.camera.ai_scene_enable_list"

    const v2, 0x3ffffff

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/oplus/camera/ui/preview/u;->a(IIZ)I

    move-result v0

    .line 604
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAISceneEnableStatus, scene: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", enabled: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", status: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PIAISceneUI"

    .line 604
    invoke-static {p2, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/u;->c:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {p0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static synthetic d(Lcom/oplus/camera/ui/preview/u;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/u;->q()V

    return-void
.end method

.method private i(I)Z
    .locals 1

    .line 177
    iget p0, p0, Lcom/oplus/camera/ui/preview/u;->p:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    shr-int/2addr p0, p1

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private j(I)V
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/u;->d:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 489
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 490
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/u;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/u;->g:Lcom/oplus/camera/ui/preview/a$a;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const/4 p0, 0x0

    .line 495
    invoke-interface {v0, p0}, Lcom/oplus/camera/ui/preview/a$a;->b(I)V

    goto :goto_0

    .line 497
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/u;->b()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/oplus/camera/ui/preview/a$a;->b(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private l()V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/u;->d:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/u;->b:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/u;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0132

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/u;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 91
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/u;->a:Landroid/app/Activity;

    const v1, 0x7f090049

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/u;->d:Landroid/widget/RelativeLayout;

    .line 92
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/u;->d:Landroid/widget/RelativeLayout;

    const v1, 0x7f09004c

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/AISceneView;

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/u;->e:Lcom/oplus/camera/ui/preview/AISceneView;

    :cond_0
    return-void
.end method

.method private m()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/u;->d:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/u;->w:Landroid/view/View$OnLayoutChangeListener;

    if-eqz p0, :cond_0

    .line 115
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method

.method private n()V
    .locals 0

    .line 161
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/u;->e:Lcom/oplus/camera/ui/preview/AISceneView;

    if-eqz p0, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/AISceneView;->a()V

    :cond_0
    return-void
.end method

.method private o()V
    .locals 3

    .line 257
    new-instance v0, Lcom/oplus/camera/ui/r;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/camera/ui/r;-><init>(FF)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/u;->v:Lcom/oplus/camera/ui/r;

    .line 258
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/u;->v:Lcom/oplus/camera/ui/r;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/r;->setDuration(J)V

    .line 259
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/u;->v:Lcom/oplus/camera/ui/r;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/u;->y:Lcom/oplus/camera/ui/r$a;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/r;->a(Lcom/oplus/camera/ui/r$a;)V

    return-void
.end method

.method private p()I
    .locals 2

    .line 337
    iget v0, p0, Lcom/oplus/camera/ui/preview/u;->q:I

    const/4 v1, 0x3

    if-ne v1, v0, :cond_0

    .line 338
    iget p0, p0, Lcom/oplus/camera/ui/preview/u;->m:I

    div-int/lit8 p0, p0, 0x2

    return p0

    .line 341
    :cond_0
    iget p0, p0, Lcom/oplus/camera/ui/preview/u;->m:I

    return p0
.end method

.method private q()V
    .locals 2

    .line 504
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/u;->d:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/u;->e:Lcom/oplus/camera/ui/preview/AISceneView;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/u;->g:Lcom/oplus/camera/ui/preview/a$a;

    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/a$a;->a()V

    .line 506
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/u;->e:Lcom/oplus/camera/ui/preview/AISceneView;

    new-instance v1, Lcom/oplus/camera/ui/preview/u$2;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/preview/u$2;-><init>(Lcom/oplus/camera/ui/preview/u;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/AISceneView;->a(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void
.end method

.method private r()V
    .locals 2

    .line 521
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/u;->d:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/u;->e:Lcom/oplus/camera/ui/preview/AISceneView;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/u;->g:Lcom/oplus/camera/ui/preview/a$a;

    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/a$a;->b()V

    .line 524
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/u;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/u;->e:Lcom/oplus/camera/ui/preview/AISceneView;

    new-instance v1, Lcom/oplus/camera/ui/preview/u$3;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/preview/u$3;-><init>(Lcom/oplus/camera/ui/preview/u;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/AISceneView;->b(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(III)V
    .locals 1

    .line 124
    iput p1, p0, Lcom/oplus/camera/ui/preview/u;->o:I

    .line 125
    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/preview/u;->g(I)V

    .line 127
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/u;->i(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/u;->i()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/u;->h()V

    :cond_0
    return-void

    .line 135
    :cond_1
    iget v0, p0, Lcom/oplus/camera/ui/preview/u;->o:I

    if-eqz v0, :cond_2

    .line 136
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/u;->l()V

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/u;->d:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_3

    return-void

    .line 143
    :cond_3
    invoke-direct {p0, p1, p3}, Lcom/oplus/camera/ui/preview/u;->a(II)Lcom/oplus/camera/ui/preview/u$a;

    move-result-object p1

    const/4 p3, -0x1

    .line 145
    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/u$a;->a()I

    move-result v0

    if-ne p3, v0, :cond_4

    .line 146
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/u;->h()V

    goto :goto_0

    .line 148
    :cond_4
    iget-object p3, p0, Lcom/oplus/camera/ui/preview/u;->e:Lcom/oplus/camera/ui/preview/AISceneView;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/u$a;->a()I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/oplus/camera/ui/preview/AISceneView;->setText(I)V

    .line 149
    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/preview/u;->f(I)V

    .line 150
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/u;->n()V

    .line 151
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/u;->q()V

    :goto_0
    return-void
.end method

.method public a(IIIZ)V
    .locals 1

    .line 264
    iget v0, p0, Lcom/oplus/camera/ui/preview/u;->s:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/oplus/camera/ui/preview/u;->t:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/oplus/camera/ui/preview/u;->m:I

    if-ne v0, p3, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/u;->x:Z

    if-eq v0, p4, :cond_1

    .line 266
    :cond_0
    iput p1, p0, Lcom/oplus/camera/ui/preview/u;->s:I

    .line 267
    iput p2, p0, Lcom/oplus/camera/ui/preview/u;->t:I

    .line 268
    iput p3, p0, Lcom/oplus/camera/ui/preview/u;->m:I

    .line 269
    iput-boolean p4, p0, Lcom/oplus/camera/ui/preview/u;->x:Z

    .line 270
    iget p1, p0, Lcom/oplus/camera/ui/preview/u;->n:I

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/u;->f(I)V

    :cond_1
    return-void
.end method

.method public a(IZ)V
    .locals 2

    const-string v0, "PIAISceneUI"

    const-string v1, "reversAIScene"

    .line 592
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/preview/u;->c(IZ)V

    .line 596
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/u;->g:Lcom/oplus/camera/ui/preview/a$a;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/oplus/camera/ui/preview/u;->o:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    .line 597
    invoke-interface {v0, p1, p2, p0}, Lcom/oplus/camera/ui/preview/a$a;->a(IZZ)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 1

    .line 553
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 554
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/u;->z:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 556
    iget p1, p0, Lcom/oplus/camera/ui/preview/u;->o:I

    if-nez p1, :cond_0

    .line 557
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/u;->h()V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View$OnLayoutChangeListener;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/u;->w:Landroid/view/View$OnLayoutChangeListener;

    .line 110
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/u;->m()V

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/preview/a$a;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/u;->g:Lcom/oplus/camera/ui/preview/a$a;

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 97
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/u;->n()V

    .line 99
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/u;->d:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/ui/preview/u;->b:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 100
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/u;->b:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/u;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 101
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/u;->d:Landroid/widget/RelativeLayout;

    .line 102
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/u;->e:Lcom/oplus/camera/ui/preview/AISceneView;

    :cond_0
    const/4 p1, 0x0

    .line 105
    iput p1, p0, Lcom/oplus/camera/ui/preview/u;->o:I

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 120
    iput p1, p0, Lcom/oplus/camera/ui/preview/u;->o:I

    return-void
.end method

.method public b(IZ)V
    .locals 1

    .line 167
    iget v0, p0, Lcom/oplus/camera/ui/preview/u;->p:I

    invoke-direct {p0, p1, v0, p2}, Lcom/oplus/camera/ui/preview/u;->a(IIZ)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/preview/u;->p:I

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/u;->d:Landroid/widget/RelativeLayout;

    if-eqz p0, :cond_0

    .line 172
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 191
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/u;->c:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {p0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "oplus.camera.ai_scene_enable_list"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public d(I)V
    .locals 0

    .line 276
    iput p1, p0, Lcom/oplus/camera/ui/preview/u;->u:I

    return-void
.end method

.method public e()I
    .locals 3

    .line 206
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/u;->c:Lcom/oplus/camera/ComboPreferences;

    const-string v1, "oplus.camera.ai_scene_enable_list"

    const v2, 0x3ffffff

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget p0, p0, Lcom/oplus/camera/ui/preview/u;->p:I

    and-int/2addr p0, v0

    return p0
.end method

.method public e(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 196
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/u;->c:Lcom/oplus/camera/ComboPreferences;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/ui/preview/u;->a:Landroid/app/Activity;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/ui/preview/u;->c:Lcom/oplus/camera/ComboPreferences;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/u;->a:Landroid/app/Activity;

    const v2, 0x7f1002c1

    .line 199
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "pref_camera_pi_ai_mode_key"

    .line 198
    invoke-virtual {p1, v2, p0}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "on"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move v0, v1

    :cond_0
    return v0

    .line 202
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/u;->e()I

    move-result p0

    sub-int/2addr p1, v1

    shr-int/2addr p0, p1

    and-int/2addr p0, v1

    if-lez p0, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method public f()I
    .locals 0

    .line 517
    iget p0, p0, Lcom/oplus/camera/ui/preview/u;->o:I

    return p0
.end method

.method protected f(I)V
    .locals 6

    .line 281
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/u;->d:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/u;->e:Lcom/oplus/camera/ui/preview/AISceneView;

    if-eqz v0, :cond_4

    .line 282
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const v1, 0x1fffffff

    const/high16 v2, -0x80000000

    .line 284
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 285
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/u;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1, v1}, Landroid/widget/RelativeLayout;->measure(II)V

    .line 286
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/u;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v1

    .line 287
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/u;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v2

    .line 288
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/u;->d:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, v1, v2}, Landroid/widget/RelativeLayout;->layout(IIII)V

    const/16 v3, 0x5a

    const/4 v4, 0x3

    const/16 v5, 0x9

    if-eq p1, v3, :cond_2

    const/16 v3, 0x10e

    if-eq p1, v3, :cond_1

    .line 314
    iget-boolean p1, p0, Lcom/oplus/camera/ui/preview/u;->x:Z

    if-eqz p1, :cond_0

    const/16 p1, 0xc

    .line 315
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 316
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 317
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/u;->p()I

    move-result p1

    sub-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x2

    iget v1, p0, Lcom/oplus/camera/ui/preview/u;->s:I

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 318
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/u;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0706f9

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_0

    :cond_0
    const/16 p1, 0xa

    .line 320
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 321
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 322
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/u;->p()I

    move-result p1

    sub-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x2

    iget v1, p0, Lcom/oplus/camera/ui/preview/u;->s:I

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 323
    iget p1, p0, Lcom/oplus/camera/ui/preview/u;->h:I

    invoke-static {}, Lcom/oplus/camera/util/Util;->N()I

    move-result v1

    add-int/2addr p1, v1

    iget v1, p0, Lcom/oplus/camera/ui/preview/u;->r:I

    add-int/2addr p1, v1

    iget v1, p0, Lcom/oplus/camera/ui/preview/u;->t:I

    sub-int/2addr p1, v1

    iget v1, p0, Lcom/oplus/camera/ui/preview/u;->u:I

    add-int/2addr p1, v1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_1
    const/16 p1, 0xb

    .line 303
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 304
    iget p1, p0, Lcom/oplus/camera/ui/preview/u;->i:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 305
    iget p1, p0, Lcom/oplus/camera/ui/preview/u;->j:I

    sub-int/2addr p1, v2

    div-int/lit8 p1, p1, 0x2

    invoke-static {}, Lcom/oplus/camera/util/Util;->N()I

    move-result v1

    add-int/2addr p1, v1

    iget v1, p0, Lcom/oplus/camera/ui/preview/u;->s:I

    sub-int/2addr p1, v1

    iget v3, p0, Lcom/oplus/camera/ui/preview/u;->t:I

    sub-int/2addr p1, v3

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 307
    iget p1, p0, Lcom/oplus/camera/ui/preview/u;->q:I

    if-ne v4, p1, :cond_3

    .line 308
    iget p1, p0, Lcom/oplus/camera/ui/preview/u;->k:I

    sub-int/2addr p1, v2

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p1, v1

    iget v1, p0, Lcom/oplus/camera/ui/preview/u;->l:I

    add-int/2addr p1, v1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 292
    :cond_2
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 293
    iget p1, p0, Lcom/oplus/camera/ui/preview/u;->i:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 294
    iget p1, p0, Lcom/oplus/camera/ui/preview/u;->j:I

    sub-int/2addr p1, v2

    div-int/lit8 p1, p1, 0x2

    invoke-static {}, Lcom/oplus/camera/util/Util;->N()I

    move-result v1

    add-int/2addr p1, v1

    iget v1, p0, Lcom/oplus/camera/ui/preview/u;->s:I

    add-int/2addr p1, v1

    iget v3, p0, Lcom/oplus/camera/ui/preview/u;->t:I

    sub-int/2addr p1, v3

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 296
    iget p1, p0, Lcom/oplus/camera/ui/preview/u;->q:I

    if-ne v4, p1, :cond_3

    .line 297
    iget p1, p0, Lcom/oplus/camera/ui/preview/u;->k:I

    sub-int/2addr p1, v2

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v1

    iget v1, p0, Lcom/oplus/camera/ui/preview/u;->l:I

    add-int/2addr p1, v1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 330
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/u;->e:Lcom/oplus/camera/ui/preview/AISceneView;

    const v1, 0x4479c000    # 999.0f

    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/preview/AISceneView;->setZ(F)V

    .line 331
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/u;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/u;->d:Landroid/widget/RelativeLayout;

    iget p0, p0, Lcom/oplus/camera/ui/preview/u;->n:I

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setRotation(F)V

    :cond_4
    return-void
.end method

.method public g()Landroid/widget/RelativeLayout;
    .locals 0

    .line 549
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/u;->d:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method public g(I)V
    .locals 2

    .line 466
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/u;->v:Lcom/oplus/camera/ui/r;

    if-nez v0, :cond_0

    .line 467
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/u;->o()V

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    move p1, v1

    .line 471
    :cond_1
    rem-int/lit16 v0, p1, 0xb4

    if-nez v0, :cond_2

    move p1, v1

    .line 473
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/u;->v:Lcom/oplus/camera/ui/r;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/r;->b()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/u;->v:Lcom/oplus/camera/ui/r;

    .line 474
    invoke-virtual {v0}, Lcom/oplus/camera/ui/r;->a()I

    move-result v0

    if-eq v0, p1, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/u;->y:Lcom/oplus/camera/ui/r$a;

    .line 475
    invoke-interface {v0}, Lcom/oplus/camera/ui/r$a;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/u;->d:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    .line 477
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/u;->v:Lcom/oplus/camera/ui/r;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 480
    :cond_3
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/u;->v:Lcom/oplus/camera/ui/r;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/ui/r;->a(IZ)V

    return-void
.end method

.method public h()V
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/u;->z:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/u;->z:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 214
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/u;->n()V

    .line 215
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/u;->r()V

    return-void
.end method

.method public h(I)V
    .locals 0

    .line 484
    iput p1, p0, Lcom/oplus/camera/ui/preview/u;->q:I

    return-void
.end method

.method public i()Z
    .locals 0

    .line 541
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/u;->d:Landroid/widget/RelativeLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public j()Z
    .locals 0

    .line 545
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/u;->e:Lcom/oplus/camera/ui/preview/AISceneView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/AISceneView;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
