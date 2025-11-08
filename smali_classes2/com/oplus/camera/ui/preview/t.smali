.class public Lcom/oplus/camera/ui/preview/t;
.super Lcom/oplus/camera/ui/preview/a;
.source "NormalAISceneUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/preview/t$a;
    }
.end annotation


# instance fields
.field private d:Landroid/widget/RelativeLayout;

.field private e:Lcom/oplus/camera/ui/menu/OplusTextView;

.field private f:Landroid/widget/ImageView;

.field private g:Lcom/oplus/camera/ui/menu/OplusTextView;

.field private h:Landroid/widget/ImageView;

.field private i:Lcom/oplus/camera/ui/preview/t$a;

.field private j:Landroid/animation/AnimatorSet;

.field private k:Landroid/animation/ObjectAnimator;

.field private l:Lcom/oplus/camera/ui/preview/a$a;

.field private m:Landroid/view/View$OnLayoutChangeListener;

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:Z

.field private x:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/oplus/camera/ComboPreferences;)V
    .locals 2

    .line 71
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/t;->d:Landroid/widget/RelativeLayout;

    .line 50
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/t;->e:Lcom/oplus/camera/ui/menu/OplusTextView;

    .line 51
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/t;->f:Landroid/widget/ImageView;

    .line 52
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/t;->g:Lcom/oplus/camera/ui/menu/OplusTextView;

    .line 53
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/t;->h:Landroid/widget/ImageView;

    .line 54
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/t;->i:Lcom/oplus/camera/ui/preview/t$a;

    .line 55
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/t;->j:Landroid/animation/AnimatorSet;

    .line 56
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/t;->k:Landroid/animation/ObjectAnimator;

    .line 57
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/t;->l:Lcom/oplus/camera/ui/preview/a$a;

    .line 58
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/t;->m:Landroid/view/View$OnLayoutChangeListener;

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/oplus/camera/ui/preview/t;->n:I

    .line 60
    iput v0, p0, Lcom/oplus/camera/ui/preview/t;->o:I

    .line 61
    iput v0, p0, Lcom/oplus/camera/ui/preview/t;->p:I

    .line 62
    iput v0, p0, Lcom/oplus/camera/ui/preview/t;->q:I

    .line 63
    iput v0, p0, Lcom/oplus/camera/ui/preview/t;->r:I

    .line 64
    iput v0, p0, Lcom/oplus/camera/ui/preview/t;->s:I

    .line 65
    iput v0, p0, Lcom/oplus/camera/ui/preview/t;->t:I

    .line 66
    iput v0, p0, Lcom/oplus/camera/ui/preview/t;->u:I

    .line 67
    iput v0, p0, Lcom/oplus/camera/ui/preview/t;->v:I

    .line 68
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/t;->w:Z

    .line 69
    iput v0, p0, Lcom/oplus/camera/ui/preview/t;->x:I

    .line 72
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/t;->a:Landroid/app/Activity;

    .line 73
    iput-object p2, p0, Lcom/oplus/camera/ui/preview/t;->b:Landroid/view/ViewGroup;

    .line 74
    iput-object p3, p0, Lcom/oplus/camera/ui/preview/t;->c:Lcom/oplus/camera/ComboPreferences;

    .line 75
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/t;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070124

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/preview/t;->n:I

    .line 76
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result p1

    int-to-double p1, p1

    const-wide v0, 0x3ff5555555555555L    # 1.3333333333333333

    mul-double/2addr p1, v0

    double-to-int p1, p1

    iput p1, p0, Lcom/oplus/camera/ui/preview/t;->q:I

    .line 77
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/preview/t;->r:I

    .line 83
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/t;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070c37

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/preview/t;->x:I

    return-void
.end method

.method private a(Landroid/view/View;)I
    .locals 1

    if-eqz p1, :cond_0

    .line 241
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result p0

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v0

    invoke-virtual {p1, p0, v0}, Landroid/view/View;->measure(II)V

    .line 243
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/t;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/t;->d:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private a(II)Lcom/oplus/camera/ui/preview/t$a;
    .locals 3

    .line 340
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/t;->i:Lcom/oplus/camera/ui/preview/t$a;

    if-nez v0, :cond_0

    .line 341
    new-instance v0, Lcom/oplus/camera/ui/preview/t$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oplus/camera/ui/preview/t$a;-><init>(Lcom/oplus/camera/ui/preview/t;Lcom/oplus/camera/ui/preview/t$1;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/t;->i:Lcom/oplus/camera/ui/preview/t$a;

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/t;->i:Lcom/oplus/camera/ui/preview/t$a;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/t$a;->b(I)V

    .line 345
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/t;->i:Lcom/oplus/camera/ui/preview/t$a;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/preview/t$a;->a(Z)V

    .line 346
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/t;->i:Lcom/oplus/camera/ui/preview/t$a;

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/preview/t$a;->b(Z)V

    packed-switch p1, :pswitch_data_0

    .line 467
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/t;->i:Lcom/oplus/camera/ui/preview/t$a;

    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/preview/t$a;->a(I)V

    goto/16 :goto_0

    .line 463
    :pswitch_0
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/t;->i:Lcom/oplus/camera/ui/preview/t$a;

    const p2, 0x7f1004c9

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/preview/t$a;->a(I)V

    goto/16 :goto_0

    .line 459
    :pswitch_1
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/t;->i:Lcom/oplus/camera/ui/preview/t$a;

    const p2, 0x7f100095

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/preview/t$a;->a(I)V

    goto/16 :goto_0

    .line 455
    :pswitch_2
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/t;->i:Lcom/oplus/camera/ui/preview/t$a;

    const p2, 0x7f100098

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/preview/t$a;->a(I)V

    goto/16 :goto_0

    .line 451
    :pswitch_3
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/t;->i:Lcom/oplus/camera/ui/preview/t$a;

    const p2, 0x7f1000a8

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/preview/t$a;->a(I)V

    goto/16 :goto_0

    .line 447
    :pswitch_4
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/t;->i:Lcom/oplus/camera/ui/preview/t$a;

    const p2, 0x7f10009d

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/preview/t$a;->a(I)V

    goto/16 :goto_0

    .line 443
    :pswitch_5
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/t;->i:Lcom/oplus/camera/ui/preview/t$a;

    const p2, 0x7f1000a4

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/preview/t$a;->a(I)V

    goto/16 :goto_0

    .line 439
    :pswitch_6
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/t;->i:Lcom/oplus/camera/ui/preview/t$a;

    const p2, 0x7f1000aa

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/preview/t$a;->a(I)V

    goto/16 :goto_0

    .line 435
    :pswitch_7
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/t;->i:Lcom/oplus/camera/ui/preview/t$a;

    const p2, 0x7f100096

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/preview/t$a;->a(I)V

    goto/16 :goto_0

    .line 431
    :pswitch_8
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/t;->i:Lcom/oplus/camera/ui/preview/t$a;

    const p2, 0x7f1000a3

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/preview/t$a;->a(I)V

    goto/16 :goto_0

    .line 427
    :pswitch_9
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/t;->i:Lcom/oplus/camera/ui/preview/t$a;

    const p2, 0x7f1000a5

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/preview/t$a;->a(I)V

    goto/16 :goto_0

    .line 423
    :pswitch_a
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/t;->i:Lcom/oplus/camera/ui/preview/t$a;

    const p2, 0x7f1000a9

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/preview/t$a;->a(I)V

    goto/16 :goto_0

    .line 419
    :pswitch_b
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/t;->i:Lcom/oplus/camera/ui/preview/t$a;

    const p2, 0x7f1000ad

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/preview/t$a;->a(I)V

    goto/16 :goto_0

    .line 415
    :pswitch_c
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/t;->i:Lcom/oplus/camera/ui/preview/t$a;

    const p2, 0x7f1000ac

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/preview/t$a;->a(I)V

    goto/16 :goto_0

    .line 411
    :pswitch_d
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/t;->i:Lcom/oplus/camera/ui/preview/t$a;

    const p2, 0x7f1000ab

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/preview/t$a;->a(I)V

    goto/16 :goto_0

    .line 394
    :pswitch_e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getDataByAIScene, subCode: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NormalAISceneUI"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/t;->i:Lcom/oplus/camera/ui/preview/t$a;

    const v0, 0x7f1000a6

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/preview/t$a;->a(I)V

    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 399
    iget-object p2, p0, Lcom/oplus/camera/ui/preview/t;->i:Lcom/oplus/camera/ui/preview/t$a;

    const v0, 0x7f1000a7

    invoke-virtual {p2, v0}, Lcom/oplus/camera/ui/preview/t$a;->b(I)V

    .line 400
    iget-object p2, p0, Lcom/oplus/camera/ui/preview/t;->i:Lcom/oplus/camera/ui/preview/t$a;

    invoke-virtual {p2, p1}, Lcom/oplus/camera/ui/preview/t$a;->a(Z)V

    .line 401
    iget-object p2, p0, Lcom/oplus/camera/ui/preview/t;->i:Lcom/oplus/camera/ui/preview/t$a;

    invoke-virtual {p2, p1}, Lcom/oplus/camera/ui/preview/t$a;->b(Z)V

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 403
    iget-object p2, p0, Lcom/oplus/camera/ui/preview/t;->i:Lcom/oplus/camera/ui/preview/t$a;

    invoke-virtual {p2, v1}, Lcom/oplus/camera/ui/preview/t$a;->b(I)V

    .line 404
    iget-object p2, p0, Lcom/oplus/camera/ui/preview/t;->i:Lcom/oplus/camera/ui/preview/t$a;

    invoke-virtual {p2, v2}, Lcom/oplus/camera/ui/preview/t$a;->a(Z)V

    .line 405
    iget-object p2, p0, Lcom/oplus/camera/ui/preview/t;->i:Lcom/oplus/camera/ui/preview/t$a;

    invoke-virtual {p2, p1}, Lcom/oplus/camera/ui/preview/t$a;->b(Z)V

    goto :goto_0

    .line 390
    :pswitch_f
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/t;->i:Lcom/oplus/camera/ui/preview/t$a;

    const p2, 0x7f1000a2

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/preview/t$a;->a(I)V

    goto :goto_0

    .line 386
    :pswitch_10
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/t;->i:Lcom/oplus/camera/ui/preview/t$a;

    const p2, 0x7f1000a1

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/preview/t$a;->a(I)V

    goto :goto_0

    .line 382
    :pswitch_11
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/t;->i:Lcom/oplus/camera/ui/preview/t$a;

    const p2, 0x7f1000a0

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/preview/t$a;->a(I)V

    goto :goto_0

    .line 378
    :pswitch_12
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/t;->i:Lcom/oplus/camera/ui/preview/t$a;

    const p2, 0x7f10009f

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/preview/t$a;->a(I)V

    goto :goto_0

    .line 374
    :pswitch_13
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/t;->i:Lcom/oplus/camera/ui/preview/t$a;

    const p2, 0x7f10009e

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/preview/t$a;->a(I)V

    goto :goto_0

    .line 370
    :pswitch_14
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/t;->i:Lcom/oplus/camera/ui/preview/t$a;

    const p2, 0x7f10009c

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/preview/t$a;->a(I)V

    goto :goto_0

    .line 366
    :pswitch_15
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/t;->i:Lcom/oplus/camera/ui/preview/t$a;

    const p2, 0x7f10009b

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/preview/t$a;->a(I)V

    goto :goto_0

    .line 362
    :pswitch_16
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/t;->i:Lcom/oplus/camera/ui/preview/t$a;

    const p2, 0x7f1000ae

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/preview/t$a;->a(I)V

    goto :goto_0

    .line 358
    :pswitch_17
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/t;->i:Lcom/oplus/camera/ui/preview/t$a;

    const p2, 0x7f10009a

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/preview/t$a;->a(I)V

    goto :goto_0

    .line 354
    :pswitch_18
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/t;->i:Lcom/oplus/camera/ui/preview/t$a;

    const p2, 0x7f100099

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/preview/t$a;->a(I)V

    goto :goto_0

    .line 350
    :pswitch_19
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/t;->i:Lcom/oplus/camera/ui/preview/t$a;

    const p2, 0x7f100097

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/preview/t$a;->a(I)V

    .line 471
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/t;->i:Lcom/oplus/camera/ui/preview/t$a;

    return-object p0

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

.method static synthetic a(Lcom/oplus/camera/ui/preview/t;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/t;->j(I)V

    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/ui/preview/t;)Lcom/oplus/camera/ui/preview/a$a;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/t;->l:Lcom/oplus/camera/ui/preview/a$a;

    return-object p0
.end method

.method private i(I)V
    .locals 1

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 476
    iput p1, p0, Lcom/oplus/camera/ui/preview/t;->s:I

    goto :goto_0

    .line 478
    :cond_0
    iput p1, p0, Lcom/oplus/camera/ui/preview/t;->s:I

    :goto_0
    return-void
.end method

.method private j(I)V
    .locals 1

    .line 505
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/t;->d:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 506
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 507
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/t;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/t;->l:Lcom/oplus/camera/ui/preview/a$a;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const/4 p0, 0x0

    .line 512
    invoke-interface {v0, p0}, Lcom/oplus/camera/ui/preview/a$a;->b(I)V

    goto :goto_0

    .line 514
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/t;->b()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/oplus/camera/ui/preview/a$a;->b(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private l()V
    .locals 11

    .line 87
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/t;->d:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/t;->b:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 88
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/t;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c001d

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/t;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 89
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/t;->a:Landroid/app/Activity;

    const v1, 0x7f090049

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/t;->d:Landroid/widget/RelativeLayout;

    .line 90
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/t;->d:Landroid/widget/RelativeLayout;

    const v1, 0x7f09004c

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/menu/OplusTextView;

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/t;->e:Lcom/oplus/camera/ui/menu/OplusTextView;

    .line 91
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/t;->d:Landroid/widget/RelativeLayout;

    const v1, 0x7f09004b

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/t;->f:Landroid/widget/ImageView;

    .line 92
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/t;->d:Landroid/widget/RelativeLayout;

    const v1, 0x7f09004a

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/menu/OplusTextView;

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/t;->g:Lcom/oplus/camera/ui/menu/OplusTextView;

    .line 93
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/t;->d:Landroid/widget/RelativeLayout;

    const v1, 0x7f090048

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/t;->h:Landroid/widget/ImageView;

    .line 95
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/t;->j:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0xf0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/t;->j:Landroid/animation/AnimatorSet;

    .line 97
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/t;->d:Landroid/widget/RelativeLayout;

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v7, v5, [F

    fill-array-data v7, :array_0

    invoke-static {v0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 98
    iget-object v6, p0, Lcom/oplus/camera/ui/preview/t;->d:Landroid/widget/RelativeLayout;

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v8, v5, [F

    fill-array-data v8, :array_1

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 99
    iget-object v7, p0, Lcom/oplus/camera/ui/preview/t;->j:Landroid/animation/AnimatorSet;

    new-instance v8, Landroid/view/animation/PathInterpolator;

    const v9, 0x3eb33333    # 0.35f

    const/high16 v10, 0x40000000    # 2.0f

    invoke-direct {v8, v9, v10, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 101
    iget-object v7, p0, Lcom/oplus/camera/ui/preview/t;->j:Landroid/animation/AnimatorSet;

    invoke-virtual {v7, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 102
    iget-object v7, p0, Lcom/oplus/camera/ui/preview/t;->j:Landroid/animation/AnimatorSet;

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 103
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/t;->j:Landroid/animation/AnimatorSet;

    new-instance v6, Lcom/oplus/camera/ui/preview/t$1;

    invoke-direct {v6, p0}, Lcom/oplus/camera/ui/preview/t$1;-><init>(Lcom/oplus/camera/ui/preview/t;)V

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/t;->k:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/t;->d:Landroid/widget/RelativeLayout;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v5, [F

    fill-array-data v5, :array_2

    invoke-static {v0, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/t;->k:Landroid/animation/ObjectAnimator;

    .line 131
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/t;->k:Landroid/animation/ObjectAnimator;

    new-instance v5, Landroid/view/animation/PathInterpolator;

    const v6, 0x3ed70a3d    # 0.42f

    const v7, 0x3f147ae1    # 0.58f

    invoke-direct {v5, v6, v4, v7, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 133
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/t;->k:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 134
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/t;->k:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/oplus/camera/ui/preview/t$2;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/preview/t$2;-><init>(Lcom/oplus/camera/ui/preview/t;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/t;->h:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 158
    new-instance v1, Lcom/oplus/camera/ui/preview/t$3;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/preview/t$3;-><init>(Lcom/oplus/camera/ui/preview/t;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    :cond_2
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/t;->q()V

    :cond_3
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private m()V
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/t;->k:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/t;->k:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/t;->j:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 262
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/t;->j:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    return-void
.end method

.method private n()I
    .locals 2

    .line 332
    iget v0, p0, Lcom/oplus/camera/ui/preview/t;->v:I

    const/4 v1, 0x3

    if-ne v1, v0, :cond_0

    .line 333
    iget p0, p0, Lcom/oplus/camera/ui/preview/t;->r:I

    div-int/lit8 p0, p0, 0x2

    return p0

    .line 336
    :cond_0
    iget p0, p0, Lcom/oplus/camera/ui/preview/t;->r:I

    return p0
.end method

.method private o()V
    .locals 0

    .line 526
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/t;->j:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_0

    .line 527
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method

.method private p()V
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/t;->k:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/t;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 533
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/t;->k:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void
.end method

.method private q()V
    .locals 1

    .line 553
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/t;->d:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/t;->m:Landroid/view/View$OnLayoutChangeListener;

    if-eqz p0, :cond_0

    .line 554
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 571
    iget p0, p0, Lcom/oplus/camera/ui/preview/t;->n:I

    return p0
.end method

.method public a(I)V
    .locals 0

    .line 567
    iput p1, p0, Lcom/oplus/camera/ui/preview/t;->p:I

    return-void
.end method

.method public a(III)V
    .locals 4

    .line 195
    iput p1, p0, Lcom/oplus/camera/ui/preview/t;->t:I

    .line 196
    iput p3, p0, Lcom/oplus/camera/ui/preview/t;->u:I

    .line 197
    invoke-direct {p0, p2}, Lcom/oplus/camera/ui/preview/t;->i(I)V

    .line 199
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/t;->w:Z

    if-eqz v0, :cond_0

    return-void

    .line 203
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/t;->l()V

    .line 205
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/t;->d:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    return-void

    .line 209
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/oplus/camera/ui/preview/t;->a(II)Lcom/oplus/camera/ui/preview/t$a;

    move-result-object p3

    .line 211
    invoke-virtual {p3}, Lcom/oplus/camera/ui/preview/t$a;->a()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 212
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/t;->m()V

    .line 213
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/t;->p()V

    goto :goto_2

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/t;->e:Lcom/oplus/camera/ui/menu/OplusTextView;

    invoke-virtual {p3}, Lcom/oplus/camera/ui/preview/t$a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/OplusTextView;->setText(I)V

    .line 217
    invoke-virtual {p3}, Lcom/oplus/camera/ui/preview/t$a;->c()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_3

    .line 218
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/t;->g:Lcom/oplus/camera/ui/menu/OplusTextView;

    invoke-virtual {p3}, Lcom/oplus/camera/ui/preview/t$a;->b()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/oplus/camera/ui/menu/OplusTextView;->setText(I)V

    .line 219
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/t;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/t;->g:Lcom/oplus/camera/ui/menu/OplusTextView;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/OplusTextView;->setVisibility(I)V

    goto :goto_0

    .line 222
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/t;->g:Lcom/oplus/camera/ui/menu/OplusTextView;

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/menu/OplusTextView;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/t;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 226
    :goto_0
    invoke-virtual {p3}, Lcom/oplus/camera/ui/preview/t$a;->d()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 227
    iget-object p3, p0, Lcom/oplus/camera/ui/preview/t;->h:Landroid/widget/ImageView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 228
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/t;->h:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 230
    :cond_4
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/t;->h:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 233
    :goto_1
    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/preview/t;->f(I)V

    .line 234
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/t;->m()V

    .line 235
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/t;->o()V

    :goto_2
    return-void
.end method

.method public a(Landroid/view/View$OnLayoutChangeListener;)V
    .locals 0

    .line 548
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/t;->m:Landroid/view/View$OnLayoutChangeListener;

    .line 549
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/t;->q()V

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/preview/a$a;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/t;->l:Lcom/oplus/camera/ui/preview/a$a;

    return-void
.end method

.method public a(Z)V
    .locals 3

    .line 175
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/t;->m()V

    .line 177
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/t;->d:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/t;->b:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/t;->b:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/t;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 179
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/t;->d:Landroid/widget/RelativeLayout;

    .line 180
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/t;->e:Lcom/oplus/camera/ui/menu/OplusTextView;

    .line 183
    :cond_0
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/t;->j:Landroid/animation/AnimatorSet;

    .line 184
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/t;->k:Landroid/animation/ObjectAnimator;

    .line 185
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/t;->w:Z

    const/4 p1, 0x0

    .line 186
    iput p1, p0, Lcom/oplus/camera/ui/preview/t;->t:I

    .line 187
    iput p1, p0, Lcom/oplus/camera/ui/preview/t;->u:I

    return-void
.end method

.method public a(ZZ)V
    .locals 1

    .line 490
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/t;->w:Z

    .line 491
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/t;->l()V

    .line 493
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/t;->d:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_1

    .line 494
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/t;->w:Z

    if-eqz v0, :cond_0

    .line 495
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    const/16 p1, 0x8

    .line 496
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/t;->j(I)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 498
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    .line 499
    iget p1, p0, Lcom/oplus/camera/ui/preview/t;->t:I

    iget p2, p0, Lcom/oplus/camera/ui/preview/t;->s:I

    iget v0, p0, Lcom/oplus/camera/ui/preview/t;->u:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/oplus/camera/ui/preview/t;->a(III)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b()I
    .locals 1

    .line 521
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/t;->d:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/t;->d:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/preview/t;->a(Landroid/view/View;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b(I)V
    .locals 0

    .line 191
    iput p1, p0, Lcom/oplus/camera/ui/preview/t;->t:I

    return-void
.end method

.method public c()Z
    .locals 1

    .line 559
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/t;->d:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 560
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public f()I
    .locals 0

    .line 544
    iget p0, p0, Lcom/oplus/camera/ui/preview/t;->t:I

    return p0
.end method

.method protected f(I)V
    .locals 6

    .line 282
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/t;->d:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_4

    .line 283
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/t;->i(I)V

    .line 285
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/t;->w:Z

    if-eqz v0, :cond_0

    return-void

    .line 289
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const v1, 0x1fffffff

    const/high16 v2, -0x80000000

    .line 292
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 293
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/t;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1, v1}, Landroid/widget/RelativeLayout;->measure(II)V

    .line 294
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/t;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v1

    .line 295
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/t;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v2

    .line 296
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/t;->d:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, v1, v2}, Landroid/widget/RelativeLayout;->layout(IIII)V

    .line 298
    iget v3, p0, Lcom/oplus/camera/ui/preview/t;->o:I

    if-lez v3, :cond_1

    iget v3, p0, Lcom/oplus/camera/ui/preview/t;->x:I

    :cond_1
    const/16 v3, 0x5a

    const/16 v4, 0xa

    if-eq p1, v3, :cond_3

    const/16 v3, 0x10e

    const/16 v5, 0xb

    if-eq p1, v3, :cond_2

    .line 318
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 319
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 320
    invoke-static {}, Lcom/oplus/camera/util/Util;->N()I

    move-result p1

    iget v2, p0, Lcom/oplus/camera/ui/preview/t;->n:I

    add-int/2addr p1, v2

    iget v2, p0, Lcom/oplus/camera/ui/preview/t;->p:I

    add-int/2addr p1, v2

    iget v2, p0, Lcom/oplus/camera/ui/preview/t;->x:I

    add-int/2addr p1, v2

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 321
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/t;->n()I

    move-result p1

    sub-int/2addr p1, v1

    iget v1, p0, Lcom/oplus/camera/ui/preview/t;->o:I

    sub-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x2

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    .line 310
    :cond_2
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 311
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 312
    iget p1, p0, Lcom/oplus/camera/ui/preview/t;->n:I

    div-int/lit8 v3, v2, 0x2

    add-int/2addr p1, v3

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 313
    iget p1, p0, Lcom/oplus/camera/ui/preview/t;->q:I

    sub-int/2addr p1, v2

    iget v1, p0, Lcom/oplus/camera/ui/preview/t;->o:I

    add-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x2

    .line 314
    invoke-static {}, Lcom/oplus/camera/util/Util;->N()I

    move-result v1

    add-int/2addr p1, v1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_3
    const/16 p1, 0x9

    .line 302
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 303
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 304
    iget p1, p0, Lcom/oplus/camera/ui/preview/t;->n:I

    div-int/lit8 v3, v2, 0x2

    add-int/2addr p1, v3

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 305
    iget p1, p0, Lcom/oplus/camera/ui/preview/t;->q:I

    sub-int/2addr p1, v2

    iget v1, p0, Lcom/oplus/camera/ui/preview/t;->o:I

    sub-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x2

    .line 306
    invoke-static {}, Lcom/oplus/camera/util/Util;->N()I

    move-result v1

    add-int/2addr p1, v1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 325
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/t;->d:Landroid/widget/RelativeLayout;

    const v1, 0x4479c000    # 999.0f

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setZ(F)V

    .line 326
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/t;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 327
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/t;->d:Landroid/widget/RelativeLayout;

    iget p0, p0, Lcom/oplus/camera/ui/preview/t;->s:I

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setRotation(F)V

    :cond_4
    return-void
.end method

.method public g()Landroid/widget/RelativeLayout;
    .locals 0

    .line 588
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/t;->d:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method public g(I)V
    .locals 0

    .line 539
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/t;->f(I)V

    return-void
.end method

.method public h()V
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/t;->d:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 270
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/t;->m()V

    .line 271
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/t;->p()V

    :cond_0
    return-void
.end method

.method public h(I)V
    .locals 0

    .line 592
    iput p1, p0, Lcom/oplus/camera/ui/preview/t;->v:I

    return-void
.end method

.method public i()Z
    .locals 0

    .line 575
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/t;->d:Landroid/widget/RelativeLayout;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 579
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result p0

    return p0
.end method

.method public j()Z
    .locals 0

    .line 584
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/t;->k:Landroid/animation/ObjectAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
