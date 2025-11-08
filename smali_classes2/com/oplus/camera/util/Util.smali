.class public Lcom/oplus/camera/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/util/Util$a;
    }
.end annotation


# static fields
.field private static A:Ljava/lang/String; = null

.field private static B:Landroid/graphics/Typeface; = null

.field private static C:Ljava/lang/String; = null

.field private static D:Ljava/lang/String; = null

.field private static E:Ljava/lang/String; = null

.field private static F:Ljava/lang/String; = null

.field private static G:Ljava/lang/Object; = null

.field private static H:Ljava/lang/Object; = null

.field private static I:Landroid/location/LocationManager; = null

.field private static J:Landroid/content/Context; = null

.field private static K:Landroid/os/Handler; = null

.field private static L:Lcom/coui/appcompat/dialog/app/b; = null

.field private static M:Ljava/lang/Thread; = null

.field private static N:Landroid/renderscript/RenderScript; = null

.field private static O:Landroid/renderscript/ScriptIntrinsicBlur; = null

.field private static P:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static Q:Landroid/os/HandlerThread; = null

.field private static R:Landroid/os/Handler; = null

.field private static S:Landroid/view/Display; = null

.field private static T:Landroid/util/ArrayMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static U:Landroid/graphics/Typeface; = null

.field private static V:Landroid/graphics/Typeface; = null

.field private static W:Landroid/graphics/Typeface; = null

.field private static X:Landroid/graphics/Typeface; = null

.field private static Y:Landroid/graphics/Typeface; = null

.field private static Z:Landroid/graphics/Typeface; = null

.field public static a:I = 0x1e0

.field private static aA:Ljava/lang/Boolean; = null

.field private static aB:Landroid/view/WindowManager; = null

.field private static aC:I = 0x0

.field private static aD:Z = false

.field private static final aE:[I

.field private static aa:Landroid/graphics/Typeface; = null

.field private static ab:I = 0x0

.field private static ac:I = 0x0

.field private static ad:I = 0x0

.field private static ae:I = 0x0

.field private static af:I = 0x0

.field private static ag:I = 0x0

.field private static ah:I = 0x0

.field private static ai:I = 0x0

.field private static aj:I = 0x0

.field private static ak:I = 0x0

.field private static al:I = 0x0

.field private static am:I = 0x0

.field private static an:D = 0.0

.field private static ao:Z = false

.field private static ap:Z = false

.field private static aq:Z = false

.field private static ar:Z = false

.field private static as:Z = false

.field private static at:Ljava/lang/Object; = null

.field private static au:Ljava/lang/Object; = null

.field private static av:Ljava/lang/Boolean; = null

.field private static aw:Ljava/text/DecimalFormat; = null

.field private static ax:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/animation/AnimatorSet;",
            ">;"
        }
    .end annotation
.end field

.field private static ay:Landroid/util/Size; = null

.field private static az:Ljava/lang/Boolean; = null

.field public static b:I = 0x0

.field public static c:F = 0.0f

.field public static d:I = 0x14

.field public static e:Ljava/lang/String;

.field public static f:I

.field public static g:I

.field public static h:I

.field public static i:I

.field public static j:I

.field public static k:Z

.field private static l:Ljava/lang/reflect/Field;

.field private static final m:Ljava/lang/String;

.field private static final n:Ljava/lang/String;

.field private static o:F

.field private static p:Lcom/oplus/camera/util/Util$a;

.field private static q:Z

.field private static r:Z

.field private static s:Z

.field private static t:Z

.field private static u:Z

.field private static v:Z

.field private static w:Z

.field private static x:Z

.field private static y:Z

.field private static z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 317
    invoke-static {}, Lcom/oplus/camera/v;->d()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/camera/util/Util;->m:Ljava/lang/String;

    .line 320
    invoke-static {}, Lcom/oplus/camera/v;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/camera/util/Util;->n:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 400
    sput v0, Lcom/oplus/camera/util/Util;->o:F

    const/4 v0, 0x0

    .line 401
    sput-object v0, Lcom/oplus/camera/util/Util;->p:Lcom/oplus/camera/util/Util$a;

    const/4 v1, 0x0

    .line 403
    sput-boolean v1, Lcom/oplus/camera/util/Util;->q:Z

    .line 404
    sput-boolean v1, Lcom/oplus/camera/util/Util;->r:Z

    .line 405
    sput-boolean v1, Lcom/oplus/camera/util/Util;->s:Z

    .line 406
    sput-boolean v1, Lcom/oplus/camera/util/Util;->t:Z

    .line 407
    sput-boolean v1, Lcom/oplus/camera/util/Util;->u:Z

    .line 408
    sput-boolean v1, Lcom/oplus/camera/util/Util;->v:Z

    .line 409
    sput-boolean v1, Lcom/oplus/camera/util/Util;->w:Z

    .line 410
    sput-boolean v1, Lcom/oplus/camera/util/Util;->x:Z

    .line 411
    sput-boolean v1, Lcom/oplus/camera/util/Util;->y:Z

    .line 413
    sput-object v0, Lcom/oplus/camera/util/Util;->e:Ljava/lang/String;

    .line 414
    sput-object v0, Lcom/oplus/camera/util/Util;->z:Ljava/lang/String;

    .line 415
    sput-object v0, Lcom/oplus/camera/util/Util;->A:Ljava/lang/String;

    .line 416
    sput-object v0, Lcom/oplus/camera/util/Util;->B:Landroid/graphics/Typeface;

    .line 417
    sput-object v0, Lcom/oplus/camera/util/Util;->C:Ljava/lang/String;

    .line 418
    sput-object v0, Lcom/oplus/camera/util/Util;->D:Ljava/lang/String;

    .line 419
    sput-object v0, Lcom/oplus/camera/util/Util;->E:Ljava/lang/String;

    .line 420
    sput-object v0, Lcom/oplus/camera/util/Util;->F:Ljava/lang/String;

    .line 421
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lcom/oplus/camera/util/Util;->G:Ljava/lang/Object;

    .line 422
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lcom/oplus/camera/util/Util;->H:Ljava/lang/Object;

    .line 423
    sput-object v0, Lcom/oplus/camera/util/Util;->I:Landroid/location/LocationManager;

    .line 424
    sput-object v0, Lcom/oplus/camera/util/Util;->J:Landroid/content/Context;

    .line 425
    sput-object v0, Lcom/oplus/camera/util/Util;->K:Landroid/os/Handler;

    .line 426
    sput-object v0, Lcom/oplus/camera/util/Util;->L:Lcom/coui/appcompat/dialog/app/b;

    .line 427
    sput-object v0, Lcom/oplus/camera/util/Util;->M:Ljava/lang/Thread;

    .line 428
    sput-object v0, Lcom/oplus/camera/util/Util;->N:Landroid/renderscript/RenderScript;

    .line 429
    sput-object v0, Lcom/oplus/camera/util/Util;->O:Landroid/renderscript/ScriptIntrinsicBlur;

    .line 430
    sput-object v0, Lcom/oplus/camera/util/Util;->P:Ljava/util/HashMap;

    .line 431
    sput-object v0, Lcom/oplus/camera/util/Util;->Q:Landroid/os/HandlerThread;

    .line 432
    sput-object v0, Lcom/oplus/camera/util/Util;->R:Landroid/os/Handler;

    .line 433
    sput-object v0, Lcom/oplus/camera/util/Util;->S:Landroid/view/Display;

    .line 434
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    sput-object v2, Lcom/oplus/camera/util/Util;->T:Landroid/util/ArrayMap;

    .line 435
    sput-object v0, Lcom/oplus/camera/util/Util;->U:Landroid/graphics/Typeface;

    .line 436
    sput-object v0, Lcom/oplus/camera/util/Util;->V:Landroid/graphics/Typeface;

    .line 437
    sput-object v0, Lcom/oplus/camera/util/Util;->W:Landroid/graphics/Typeface;

    .line 438
    sput-object v0, Lcom/oplus/camera/util/Util;->X:Landroid/graphics/Typeface;

    .line 439
    sput-object v0, Lcom/oplus/camera/util/Util;->Y:Landroid/graphics/Typeface;

    .line 440
    sput-object v0, Lcom/oplus/camera/util/Util;->Z:Landroid/graphics/Typeface;

    .line 441
    sput-object v0, Lcom/oplus/camera/util/Util;->aa:Landroid/graphics/Typeface;

    .line 443
    sput v1, Lcom/oplus/camera/util/Util;->ab:I

    .line 444
    sput v1, Lcom/oplus/camera/util/Util;->ac:I

    .line 445
    sput v1, Lcom/oplus/camera/util/Util;->ad:I

    .line 446
    sput v1, Lcom/oplus/camera/util/Util;->ae:I

    .line 447
    sput v1, Lcom/oplus/camera/util/Util;->af:I

    .line 448
    sput v1, Lcom/oplus/camera/util/Util;->ag:I

    .line 449
    sput v1, Lcom/oplus/camera/util/Util;->ah:I

    .line 450
    sput v1, Lcom/oplus/camera/util/Util;->ai:I

    .line 451
    sput v1, Lcom/oplus/camera/util/Util;->aj:I

    .line 452
    sput v1, Lcom/oplus/camera/util/Util;->ak:I

    .line 453
    sput v1, Lcom/oplus/camera/util/Util;->al:I

    const v2, 0x1d4c0

    .line 454
    sput v2, Lcom/oplus/camera/util/Util;->am:I

    const-wide v2, 0x3fe999999999999aL    # 0.8

    .line 455
    sput-wide v2, Lcom/oplus/camera/util/Util;->an:D

    .line 456
    sput-boolean v1, Lcom/oplus/camera/util/Util;->ao:Z

    .line 457
    sput-boolean v1, Lcom/oplus/camera/util/Util;->ap:Z

    .line 458
    sput-boolean v1, Lcom/oplus/camera/util/Util;->aq:Z

    .line 459
    sput-boolean v1, Lcom/oplus/camera/util/Util;->ar:Z

    .line 460
    sput-boolean v1, Lcom/oplus/camera/util/Util;->as:Z

    .line 461
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lcom/oplus/camera/util/Util;->at:Ljava/lang/Object;

    .line 462
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lcom/oplus/camera/util/Util;->au:Ljava/lang/Object;

    .line 463
    sput-object v0, Lcom/oplus/camera/util/Util;->av:Ljava/lang/Boolean;

    .line 465
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/oplus/camera/util/Util;->ax:Ljava/util/HashMap;

    .line 466
    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, v1, v1}, Landroid/util/Size;-><init>(II)V

    sput-object v2, Lcom/oplus/camera/util/Util;->ay:Landroid/util/Size;

    .line 468
    sput-object v0, Lcom/oplus/camera/util/Util;->az:Ljava/lang/Boolean;

    .line 469
    sput-object v0, Lcom/oplus/camera/util/Util;->aA:Ljava/lang/Boolean;

    const/4 v2, 0x4

    .line 471
    sput v2, Lcom/oplus/camera/util/Util;->f:I

    const/16 v2, 0x8

    .line 472
    sput v2, Lcom/oplus/camera/util/Util;->g:I

    .line 473
    sput v1, Lcom/oplus/camera/util/Util;->h:I

    const/4 v2, -0x1

    .line 476
    sput v2, Lcom/oplus/camera/util/Util;->i:I

    const/4 v3, -0x2

    .line 477
    sput v3, Lcom/oplus/camera/util/Util;->j:I

    .line 478
    sput-boolean v1, Lcom/oplus/camera/util/Util;->k:Z

    .line 480
    sput-object v0, Lcom/oplus/camera/util/Util;->aB:Landroid/view/WindowManager;

    .line 483
    sput v2, Lcom/oplus/camera/util/Util;->aC:I

    .line 484
    sput-boolean v1, Lcom/oplus/camera/util/Util;->aD:Z

    const/4 v0, 0x2

    .line 485
    new-array v0, v0, [I

    sput-object v0, Lcom/oplus/camera/util/Util;->aE:[I

    const-string v0, "preview_show"

    .line 488
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 490
    sget-object v0, Lcom/oplus/camera/util/Util;->T:Landroid/util/ArrayMap;

    const/16 v1, 0x2d0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1a4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    sget-object v0, Lcom/oplus/camera/util/Util;->T:Landroid/util/ArrayMap;

    const/16 v1, 0x438

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1e0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    sget-object v0, Lcom/oplus/camera/util/Util;->T:Landroid/util/ArrayMap;

    const/16 v1, 0x5a0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x280

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Landroid/content/Context;)I
    .locals 2

    const v0, 0x7f060083

    .line 6269
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    const v1, 0x7f0402aa

    .line 6268
    invoke-static {p0, v1, v0}, Lcom/coui/appcompat/a/d;->a(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method public static A()Landroid/graphics/Typeface;
    .locals 2

    .line 3546
    sget-object v0, Lcom/oplus/camera/util/Util;->Z:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    return-object v0

    .line 3551
    :cond_0
    :try_start_0
    new-instance v0, Landroid/graphics/Typeface$Builder;

    const-string v1, "sys-sans-en"

    invoke-direct {v0, v1}, Landroid/graphics/Typeface$Builder;-><init>(Ljava/lang/String;)V

    const-string v1, "\'wght\' 750"

    .line 3552
    invoke-virtual {v0, v1}, Landroid/graphics/Typeface$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/Typeface$Builder;

    .line 3553
    invoke-virtual {v0}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/oplus/camera/util/Util;->Z:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3555
    :catch_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    sput-object v0, Lcom/oplus/camera/util/Util;->Z:Landroid/graphics/Typeface;

    const-string v0, "Util"

    const-string v1, "getSansEnMediumTypeface, create special typeface fail"

    .line 3557
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 3560
    :goto_0
    sget-object v0, Lcom/oplus/camera/util/Util;->Z:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public static B()V
    .locals 1

    const/4 v0, 0x0

    .line 3564
    sput-object v0, Lcom/oplus/camera/util/Util;->B:Landroid/graphics/Typeface;

    .line 3565
    sput-object v0, Lcom/oplus/camera/util/Util;->C:Ljava/lang/String;

    .line 3566
    sput-object v0, Lcom/oplus/camera/util/Util;->D:Ljava/lang/String;

    .line 3567
    sput-object v0, Lcom/oplus/camera/util/Util;->az:Ljava/lang/Boolean;

    .line 3568
    sput-object v0, Lcom/oplus/camera/util/Util;->aA:Ljava/lang/Boolean;

    return-void
.end method

.method public static B(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "com.heytap.market"

    .line 6346
    invoke-static {p0, v0}, Lcom/oplus/camera/util/Util;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static C(Landroid/content/Context;)V
    .locals 2

    .line 6412
    invoke-static {}, Lcom/oplus/camera/w/d;->a()Lcom/oplus/camera/w/d;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/util/Util$2;

    invoke-direct {v1, p0}, Lcom/oplus/camera/util/Util$2;-><init>(Landroid/content/Context;)V

    const-string p0, "notifyAthena"

    invoke-virtual {v0, v1, p0}, Lcom/oplus/camera/w/d;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public static C()Z
    .locals 1

    .line 3649
    sget-boolean v0, Lcom/oplus/camera/util/Util;->y:Z

    return v0
.end method

.method public static D()Z
    .locals 1

    .line 3673
    sget-boolean v0, Lcom/oplus/camera/util/Util;->q:Z

    return v0
.end method

.method public static D(Landroid/content/Context;)Z
    .locals 6

    const-string v0, "com.oplus.show.soloop.support.same"

    .line 6468
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Util"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "isSoloopSupported, project config is off."

    .line 6469
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 6474
    :cond_0
    sget-object v0, Lcom/oplus/camera/util/Util;->J:Landroid/content/Context;

    const-string v3, "rom_update_info"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "on"

    if-eqz v0, :cond_1

    const-string v4, "soloop_switch"

    .line 6479
    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6481
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSoloopSupported, soloopSwitch: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, v3

    .line 6484
    :goto_0
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, "isSoloopSupported, rus switch is off."

    .line 6485
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 6490
    :cond_2
    sget-object v0, Lcom/oplus/camera/util/Util;->J:Landroid/content/Context;

    const-string v3, "soloop_info"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v3, "key_market_soloop_support_jump"

    .line 6495
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 6497
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSoloopSupported, isMarketSoloopSupportJump: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    const/16 v1, 0x3070

    const-string v3, "com.oplus.videoeditor"

    .line 6500
    invoke-static {p0, v3, v1}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    if-nez v0, :cond_4

    if-eqz p0, :cond_5

    :cond_4
    const/4 v2, 0x1

    :cond_5
    return v2
.end method

.method public static E(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 6534
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/oplus/os/OplusUsbEnvironment;->getInternalSdDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Android"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6540
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "cache"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6541
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6543
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 6544
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "Util"

    const-string v1, "getExternalCacheDir, cacheDir.mkdirs fail"

    .line 6547
    invoke-static {p0, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static E()Z
    .locals 2

    .line 3677
    sget-object v0, Lcom/oplus/camera/util/Util;->E:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 3678
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/oplus/camera/util/Util;->E:Ljava/lang/String;

    const-string v1, "surround_record=ozo"

    .line 3679
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static F(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, "com.oplus.feature.torch.softlight.support"

    .line 6570
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6571
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f100480

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "off"

    :goto_1
    return-object p0
.end method

.method public static F()Z
    .locals 2

    .line 3683
    sget-object v0, Lcom/oplus/camera/util/Util;->E:Ljava/lang/String;

    const-string v1, "surround_record=lvacfs"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static G()Z
    .locals 2

    .line 3687
    sget-object v0, Lcom/oplus/camera/util/Util;->F:Ljava/lang/String;

    const-string v1, "vendor_audiorecord_track_support=true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static G(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 6735
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {}, Lcom/oplus/camera/util/Util;->aP()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 6737
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "isSupportDoubleExposure"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string p0, "Util"

    .line 6739
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isGallerySupportDoubleExposure, support: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6741
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    return v0
.end method

.method public static H()I
    .locals 1

    .line 3701
    sget v0, Lcom/oplus/camera/util/Util;->h:I

    return v0
.end method

.method private static H(Landroid/content/Context;)V
    .locals 2

    const-string v0, "audio"

    .line 553
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    .line 556
    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioManager;->getMicrophones()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MicrophoneInfo;

    const/16 v1, 0xf

    .line 557
    invoke-virtual {v0}, Landroid/media/MicrophoneInfo;->getType()I

    move-result v0

    if-ne v1, v0, :cond_0

    const/4 p0, 0x1

    .line 558
    sput-boolean p0, Lcom/oplus/camera/util/Util;->x:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 563
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 566
    :cond_1
    :goto_0
    sget-boolean p0, Lcom/oplus/camera/util/Util;->x:Z

    if-nez p0, :cond_2

    const-string p0, "Util"

    const-string v0, "checkMicrophoneDevice, No Microphone Device!"

    .line 567
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static I()Landroid/util/Size;
    .locals 1

    .line 3711
    sget-object v0, Lcom/oplus/camera/util/Util;->ay:Landroid/util/Size;

    return-object v0
.end method

.method private static I(Landroid/content/Context;)V
    .locals 1

    const-string v0, "audio"

    .line 572
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    const-string v0, "surround_record"

    .line 573
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/camera/util/Util;->E:Ljava/lang/String;

    const-string v0, "vendor_audiorecord_track_support"

    .line 574
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/oplus/camera/util/Util;->F:Ljava/lang/String;

    .line 576
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkAudioSurroundRecord, sSurroundRecord: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/oplus/camera/util/Util;->E:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Util"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static J()V
    .locals 6

    .line 4099
    sget-object v0, Lcom/oplus/camera/util/Util;->J:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 4100
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 4101
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 4102
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 4104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initScreenHeightWidth, point: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Util"

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 4106
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "initScreenHeightWidth, open"

    .line 4107
    invoke-static {v2, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 4109
    iget v0, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lcom/oplus/camera/util/Util;->ac:I

    .line 4110
    iget v0, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/oplus/camera/util/Util;->ab:I

    .line 4112
    sget-object v0, Lcom/oplus/camera/util/Util;->J:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "oplus-magic-windows"

    .line 4113
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 4115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initScreenHeightWidth, isInMagicWindow: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    .line 4120
    :try_start_0
    sget-object v0, Lcom/oplus/camera/util/Util;->J:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 4121
    const-class v1, Landroid/hardware/display/DisplayManager;

    const-string v3, "getStableDisplaySize"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 4122
    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4124
    instance-of v1, v0, Landroid/graphics/Point;

    if-eqz v1, :cond_0

    .line 4125
    check-cast v0, Landroid/graphics/Point;

    .line 4126
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    sput v1, Lcom/oplus/camera/util/Util;->ac:I

    .line 4127
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/oplus/camera/util/Util;->ab:I

    .line 4130
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initScreenHeightWidth, sScreenHeight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/oplus/camera/util/Util;->ac:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sScreenWidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/oplus/camera/util/Util;->ab:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4134
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    const-string v0, "initScreenHeightWidth, fold"

    .line 4138
    invoke-static {v2, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 4140
    iget v0, v1, Landroid/graphics/Point;->x:I

    iget v2, v1, Landroid/graphics/Point;->y:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/oplus/camera/util/Util;->ac:I

    .line 4141
    iget v0, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lcom/oplus/camera/util/Util;->ab:I

    :cond_2
    :goto_0
    return-void
.end method

.method public static K()I
    .locals 4

    .line 4197
    sget-object v0, Lcom/oplus/camera/util/Util;->J:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "navigation_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 4200
    sget-object v1, Lcom/oplus/camera/util/Util;->J:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static L()I
    .locals 2

    .line 4207
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4208
    sget-object v0, Lcom/oplus/camera/util/Util;->J:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070c5a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0

    .line 4211
    :cond_0
    sget-object v0, Lcom/oplus/camera/util/Util;->J:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070c5b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public static M()I
    .locals 2

    .line 4215
    sget-object v0, Lcom/oplus/camera/util/Util;->J:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070c59

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public static N()I
    .locals 1

    .line 4223
    sget v0, Lcom/oplus/camera/util/Util;->ad:I

    return v0
.end method

.method public static O()I
    .locals 1

    .line 4227
    sget v0, Lcom/oplus/camera/util/Util;->af:I

    return v0
.end method

.method public static P()I
    .locals 1

    .line 4231
    sget v0, Lcom/oplus/camera/util/Util;->ag:I

    return v0
.end method

.method public static Q()I
    .locals 1

    .line 4235
    sget v0, Lcom/oplus/camera/util/Util;->ah:I

    return v0
.end method

.method public static R()I
    .locals 1

    .line 4239
    sget v0, Lcom/oplus/camera/util/Util;->aj:I

    return v0
.end method

.method public static S()I
    .locals 1

    .line 4243
    sget v0, Lcom/oplus/camera/util/Util;->ak:I

    return v0
.end method

.method public static T()I
    .locals 1

    .line 4247
    sget v0, Lcom/oplus/camera/util/Util;->ai:I

    return v0
.end method

.method public static U()I
    .locals 2

    .line 4260
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result v0

    sget v1, Lcom/oplus/camera/util/Util;->al:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public static V()I
    .locals 1

    const/16 v0, 0x3dc

    return v0
.end method

.method public static W()Z
    .locals 1

    .line 4273
    sget-boolean v0, Lcom/oplus/camera/util/Util;->r:Z

    return v0
.end method

.method public static X()D
    .locals 4

    .line 4277
    sget v0, Lcom/oplus/camera/util/Util;->ac:I

    int-to-double v0, v0

    sget v2, Lcom/oplus/camera/util/Util;->ab:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static Y()I
    .locals 4

    .line 4282
    sget v0, Lcom/oplus/camera/util/Util;->ac:I

    int-to-double v0, v0

    sget v2, Lcom/oplus/camera/util/Util;->ab:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    const-wide v2, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    sub-double/2addr v0, v2

    .line 4285
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    return v0
.end method

.method public static Z()I
    .locals 1

    .line 4498
    sget v0, Lcom/oplus/camera/util/Util;->al:I

    return v0
.end method

.method public static a(Landroid/content/Context;Landroid/util/Size;)D
    .locals 0

    if-eqz p1, :cond_0

    .line 5367
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    mul-int/2addr p0, p1

    int-to-float p0, p0

    const p1, 0x49742400    # 1000000.0f

    div-float/2addr p0, p1

    float-to-double p0, p0

    return-wide p0

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static a(FF)F
    .locals 1

    .line 6092
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 6093
    new-instance p0, Ljava/math/BigDecimal;

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 6095
    invoke-virtual {v0, p0}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->floatValue()F

    move-result p0

    return p0
.end method

.method public static a(FFF)F
    .locals 1

    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    return p2

    :cond_0
    cmpg-float p2, p0, p1

    if-gez p2, :cond_1

    return p1

    :cond_1
    return p0
.end method

.method public static a(Landroid/content/Context;II)F
    .locals 1

    .line 6185
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 6186
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    const/high16 p1, 0x3f800000    # 1.0f

    mul-float/2addr p0, p1

    int-to-float p1, v0

    div-float/2addr p0, p1

    int-to-float p1, p2

    mul-float/2addr p0, p1

    return p0
.end method

.method public static a(Landroid/hardware/camera2/CaptureResult;)F
    .locals 2

    .line 6028
    sget-object v0, Lcom/oplus/camera/e/b;->U:Landroid/hardware/camera2/CaptureResult$Key;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 6033
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    if-eqz p0, :cond_0

    .line 6035
    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 6036
    aget p0, p0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6039
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return v1
.end method

.method public static a(F)I
    .locals 1

    .line 928
    sget v0, Lcom/oplus/camera/util/Util;->o:F

    mul-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static a(III)I
    .locals 0

    if-le p0, p2, :cond_0

    return p2

    :cond_0
    if-ge p0, p1, :cond_1

    return p1

    :cond_1
    return p0
.end method

.method public static a(IIII)I
    .locals 4

    int-to-double v0, p0

    int-to-double v2, p2

    div-double/2addr v0, v2

    int-to-double p0, p1

    int-to-double p2, p3

    div-double/2addr p0, p2

    .line 4473
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    const/high16 p2, 0x3f800000    # 1.0f

    :goto_0
    const/high16 p3, 0x40000000    # 2.0f

    mul-float/2addr p3, p2

    float-to-double v0, p3

    cmpg-double v0, v0, p0

    if-gtz v0, :cond_0

    move p2, p3

    goto :goto_0

    :cond_0
    float-to-int p0, p2

    return p0
.end method

.method public static a(Landroid/app/Activity;)I
    .locals 2

    .line 1167
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    return v0

    :cond_0
    const/16 p0, 0x10e

    return p0

    :cond_1
    const/16 p0, 0xb4

    return p0

    :cond_2
    const/16 p0, 0x5a

    return p0

    :cond_3
    return v0
.end method

.method public static a(Landroid/content/Context;F)I
    .locals 0

    .line 3360
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static a(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 0

    .line 1005
    invoke-static {p0, p1, p2}, Lcom/oplus/camera/util/Util;->b(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p0

    const/16 p1, 0x8

    if-gt p0, p1, :cond_0

    const/4 p1, 0x1

    :goto_0
    if-ge p1, p0, :cond_1

    shl-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, 0x7

    .line 1015
    div-int/2addr p0, p1

    mul-int/2addr p1, p0

    :cond_1
    return p1
.end method

.method private static synthetic a(Landroid/util/Size;Landroid/util/Size;)I
    .locals 1

    .line 6557
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    mul-int/2addr v0, p0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    mul-int/2addr p0, p1

    sub-int/2addr v0, p0

    return v0
.end method

.method public static a(Ljava/lang/String;)I
    .locals 1

    const-string v0, "standard"

    .line 1503
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "standard_high"

    .line 1504
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "full"

    .line 1506
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1507
    invoke-static {}, Lcom/oplus/camera/util/Util;->Y()I

    move-result p0

    return p0

    :cond_1
    const-string v0, "square"

    .line 1508
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const-string v0, "16_9"

    .line 1510
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, -0x1

    return p0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/lang/String;I)I
    .locals 1

    .line 6215
    :try_start_0
    invoke-static {p0, p1}, Landroid/os/OplusSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "Util"

    const-string v0, "getSystemProperties fail, return default value"

    .line 6217
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method private static synthetic a(ZLandroid/util/Size;Landroid/util/Size;)I
    .locals 1

    .line 7007
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    mul-int/2addr v0, p1

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p1

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    mul-int/2addr p1, p2

    sub-int/2addr v0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    neg-int v0, v0

    :goto_0
    return v0
.end method

.method private static a([BIIZ)I
    .locals 2

    if-eqz p3, :cond_0

    add-int/lit8 p3, p2, -0x1

    add-int/2addr p1, p3

    const/4 p3, -0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    :goto_0
    const/4 v0, 0x0

    :goto_1
    add-int/lit8 v1, p2, -0x1

    if-lez p2, :cond_1

    shl-int/lit8 p2, v0, 0x8

    .line 4422
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, p2

    add-int/2addr p1, p3

    move p2, v1

    goto :goto_1

    :cond_1
    return v0
.end method

.method public static a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 0

    .line 5170
    invoke-static {p0, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/camera/util/Util;->e(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 4

    .line 6099
    invoke-static {p0, p1}, Landroidx/core/a/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 6100
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 6102
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 6103
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6104
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6105
    invoke-static {p1}, Lcom/oplus/camera/util/Util;->e(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public static a(Landroid/content/Context;IFI)Landroid/graphics/Bitmap;
    .locals 3

    .line 6110
    invoke-static {p0, p1}, Landroidx/core/a/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 6114
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    if-eq v0, p3, :cond_0

    .line 6115
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    .line 6116
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    int-to-float p3, p3

    mul-float/2addr v0, p3

    mul-float/2addr v0, p2

    float-to-int v0, v0

    .line 6117
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    .line 6118
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p0, p0

    div-float/2addr v2, p0

    mul-float/2addr v2, p3

    mul-float/2addr v2, p2

    float-to-int p0, v2

    goto :goto_0

    .line 6120
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, p2

    float-to-int v0, p0

    .line 6121
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, p2

    float-to-int p0, p0

    .line 6124
    :goto_0
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p0, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 6125
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 6126
    invoke-virtual {p2}, Landroid/graphics/Canvas;->getWidth()I

    move-result p3

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, p3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6127
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6128
    sget p1, Lcom/oplus/camera/util/Util;->a:I

    invoke-virtual {p0, p1}, Landroid/graphics/Bitmap;->setDensity(I)V

    return-object p0
.end method

.method public static a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .line 837
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 838
    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 839
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 3

    if-eqz p0, :cond_3

    .line 3130
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3134
    :cond_0
    sget-object v0, Lcom/oplus/camera/util/Util;->G:Ljava/lang/Object;

    monitor-enter v0

    .line 3135
    :try_start_0
    sget-object v1, Lcom/oplus/camera/util/Util;->N:Landroid/renderscript/RenderScript;

    if-nez v1, :cond_1

    .line 3136
    sget-object v1, Lcom/oplus/camera/util/Util;->J:Landroid/content/Context;

    invoke-static {v1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v1

    sput-object v1, Lcom/oplus/camera/util/Util;->N:Landroid/renderscript/RenderScript;

    .line 3139
    :cond_1
    sget-object v1, Lcom/oplus/camera/util/Util;->O:Landroid/renderscript/ScriptIntrinsicBlur;

    if-nez v1, :cond_2

    .line 3140
    sget-object v1, Lcom/oplus/camera/util/Util;->N:Landroid/renderscript/RenderScript;

    sget-object v2, Lcom/oplus/camera/util/Util;->N:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v1

    sput-object v1, Lcom/oplus/camera/util/Util;->O:Landroid/renderscript/ScriptIntrinsicBlur;

    .line 3143
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 3144
    sget-object v1, Lcom/oplus/camera/util/Util;->O:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v1, p1}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 3146
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v1, v2}, Lcom/oplus/camera/util/Util;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 3148
    sget-object v1, Lcom/oplus/camera/util/Util;->N:Landroid/renderscript/RenderScript;

    invoke-static {v1, p0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object p0

    .line 3149
    sget-object v1, Lcom/oplus/camera/util/Util;->N:Landroid/renderscript/RenderScript;

    invoke-static {v1, p1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v1

    .line 3150
    sget-object v2, Lcom/oplus/camera/util/Util;->O:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v2, p0}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 3151
    sget-object v2, Lcom/oplus/camera/util/Util;->O:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v2, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 3152
    invoke-virtual {v1, p1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 3154
    invoke-virtual {p0}, Landroid/renderscript/Allocation;->destroy()V

    .line 3155
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    .line 3156
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p0

    .line 3157
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/graphics/Bitmap;FLandroid/util/Size;I)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_3

    if-eqz p0, :cond_3

    .line 5254
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 5255
    invoke-virtual {v6, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 p1, 0x0

    .line 5268
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-lt v0, v1, :cond_0

    .line 5269
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 5270
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v3, v2

    mul-float/2addr v1, v3

    float-to-int v1, v1

    goto :goto_0

    .line 5272
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, v2

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 5273
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 5276
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scaleBitmap, newWidth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", newHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " targetSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "Util"

    invoke-static {v2, p2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-lt v1, v0, :cond_2

    .line 5282
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ne p2, v2, :cond_1

    const/16 p2, 0x5a

    if-eq p2, p3, :cond_2

    const/16 p2, 0x10e

    if-ne p2, p3, :cond_1

    goto :goto_1

    :cond_1
    move v4, v0

    move v5, v1

    goto :goto_2

    :cond_2
    :goto_1
    move v5, v0

    move v4, v1

    :goto_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    .line 5290
    :try_start_0
    invoke-static/range {v1 .. v7}, Lcom/oplus/camera/util/Util;->a(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 5292
    invoke-virtual {p0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    :goto_3
    return-object p1

    :cond_3
    return-object p0
.end method

.method public static a(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    .locals 0

    .line 5175
    invoke-static/range {p0 .. p6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/camera/util/Util;->e(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 7

    if-nez p1, :cond_0

    if-eqz p2, :cond_7

    :cond_0
    if-eqz p0, :cond_7

    .line 946
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    if-eqz p2, :cond_5

    const/high16 p2, -0x40800000    # -1.0f

    const/high16 v0, 0x3f800000    # 1.0f

    .line 951
    invoke-virtual {v5, p2, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    add-int/lit16 p1, p1, 0x168

    .line 952
    rem-int/lit16 p1, p1, 0x168

    const/4 p2, 0x0

    if-eqz p1, :cond_4

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x5a

    if-eq p1, v0, :cond_3

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 959
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid degrees: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 957
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_2

    .line 955
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_5
    :goto_2
    if-eqz p1, :cond_6

    int-to-float p1, p1

    .line 965
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    invoke-virtual {v5, p1, p2, v1}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    :cond_6
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 969
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/oplus/camera/util/Util;->a(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eq p0, p1, :cond_7

    .line 972
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 976
    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    :cond_7
    :goto_3
    return-object p0
.end method

.method public static a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .line 5219
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 5220
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 5221
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 5222
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 5223
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 5225
    :goto_0
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 5226
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    .line 5227
    invoke-virtual {p0, v4, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5228
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v2
.end method

.method public static a([BI)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    .line 1046
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 1047
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1048
    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1050
    iget-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v2, :cond_1

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v2, v4, :cond_0

    goto :goto_0

    .line 1054
    :cond_0
    invoke-static {v1, v4, p1}, Lcom/oplus/camera/util/Util;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p1

    iput p1, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1055
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1056
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 1057
    sget-object p1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object p1, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1059
    array-length p1, p0

    invoke-static {p0, v3, p1, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception p0

    const-string p1, "Util"

    const-string v1, "Got oom exception "

    .line 1061
    invoke-static {p1, v1, p0}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static a([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 0

    .line 5180
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/camera/util/Util;->e(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Z)Landroid/graphics/Typeface;
    .locals 6

    .line 3378
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 3382
    :try_start_0
    const-class v1, Landroid/content/res/OplusBaseConfiguration;

    .line 3383
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 3382
    invoke-static {v1, p0}, Lcom/oplus/util/OplusTypeCastingHelper;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/res/OplusBaseConfiguration;

    .line 3385
    iget-object v1, p0, Landroid/content/res/OplusBaseConfiguration;->mOplusExtraConfiguration:Loplus/content/res/OplusExtraConfiguration;

    iget v1, v1, Loplus/content/res/OplusExtraConfiguration;->mFontVariationSettings:I

    const v2, 0xf000

    and-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0xc

    .line 3386
    iget-object p0, p0, Landroid/content/res/OplusBaseConfiguration;->mOplusExtraConfiguration:Loplus/content/res/OplusExtraConfiguration;

    iget p0, p0, Loplus/content/res/OplusExtraConfiguration;->mFontVariationSettings:I

    and-int/lit16 p0, p0, 0xfff

    .line 3388
    sget-boolean v2, Lcom/oplus/util/OplusFontUtils;->isFlipFontUsed:Z
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v2, :cond_3

    const/16 v2, 0x2bc

    const/16 v3, 0x190

    const-string v4, "sys-sans-en"

    if-eqz v1, :cond_1

    .line 3391
    :try_start_1
    new-instance v1, Landroid/graphics/Typeface$Builder;

    invoke-direct {v1, v4}, Landroid/graphics/Typeface$Builder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'wght\' "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3392
    invoke-virtual {v1, p0}, Landroid/graphics/Typeface$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/Typeface$Builder;

    move-result-object p0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    .line 3393
    :goto_0
    invoke-virtual {p0, v2}, Landroid/graphics/Typeface$Builder;->setWeight(I)Landroid/graphics/Typeface$Builder;

    move-result-object p0

    .line 3394
    invoke-virtual {p0}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object p0

    goto :goto_2

    .line 3396
    :cond_1
    new-instance p0, Landroid/graphics/Typeface$Builder;

    invoke-direct {p0, v4}, Landroid/graphics/Typeface$Builder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 3397
    :goto_1
    invoke-virtual {p0, v2}, Landroid/graphics/Typeface$Builder;->setWeight(I)Landroid/graphics/Typeface$Builder;

    move-result-object p0

    .line 3398
    invoke-virtual {p0}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    move-object v0, p0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 3401
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    .line 3405
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFontTypeface, error: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IncompatibleClassChangeError;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Util"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_3
    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 2

    .line 5202
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sget v1, Lcom/oplus/camera/util/Util;->a:I

    iput v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 5204
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-eqz p1, :cond_0

    .line 6277
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f060082

    .line 6278
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-static {p1, p0}, Lcom/coui/appcompat/a/w;->a(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    .line 6281
    invoke-static {}, Lcom/coui/appcompat/a/t;->a()Lcom/coui/appcompat/a/t;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/a/t;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6282
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->A(Landroid/content/Context;)I

    move-result p0

    invoke-static {p1, p0}, Lcom/coui/appcompat/a/w;->a(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method

.method public static a(Landroid/content/Context;Landroid/location/Location;Z)Landroid/location/Address;
    .locals 9

    const-string v0, "Util"

    const-string v1, "getAddressFromLocation"

    .line 4539
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p2, :cond_1

    .line 4548
    new-instance p2, Landroid/location/Geocoder;

    invoke-direct {p2, p0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 4550
    :cond_1
    new-instance p2, Landroid/location/Geocoder;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {p2, p0, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    :goto_0
    move-object v3, p2

    .line 4556
    :try_start_0
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 4558
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_2

    const/4 p2, 0x0

    .line 4559
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/Address;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 4562
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAddressFromLocation, Error: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 4566
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Address;->setLatitude(D)V

    .line 4567
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide p0

    invoke-virtual {v1, p0, p1}, Landroid/location/Address;->setLongitude(D)V

    :cond_3
    :goto_2
    return-object v1
.end method

.method public static a(Landroid/media/ExifInterface;)Landroid/location/Location;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x2

    .line 4087
    new-array v1, v1, [F

    .line 4089
    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getLatLong([F)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 4090
    new-instance v0, Landroid/location/Location;

    const-string p0, "network"

    invoke-direct {v0, p0}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 4091
    aget p0, v1, p0

    float-to-double v2, p0

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    const/4 p0, 0x1

    .line 4092
    aget p0, v1, p0

    float-to-double v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    :cond_1
    return-object v0
.end method

.method public static a([B)Landroid/media/ExifInterface;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 4037
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 4038
    :try_start_1
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, v1}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 4039
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    goto :goto_1

    :catch_1
    move-exception v2

    .line 4037
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_2
    move-exception v1

    :try_start_4
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    move-exception v1

    move-object v2, v0

    .line 4040
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getExif error, jpeg: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_1

    const/4 p0, -0x1

    goto :goto_2

    :cond_1
    array-length p0, p0

    :goto_2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Util"

    invoke-static {v0, p0, v1}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-object v2
.end method

.method static synthetic a(Landroid/renderscript/RenderScript;)Landroid/renderscript/RenderScript;
    .locals 0

    .line 240
    sput-object p0, Lcom/oplus/camera/util/Util;->N:Landroid/renderscript/RenderScript;

    return-object p0
.end method

.method static synthetic a(Landroid/renderscript/ScriptIntrinsicBlur;)Landroid/renderscript/ScriptIntrinsicBlur;
    .locals 0

    .line 240
    sput-object p0, Lcom/oplus/camera/util/Util;->O:Landroid/renderscript/ScriptIntrinsicBlur;

    return-object p0
.end method

.method public static a(ILjava/util/List;D)Landroid/util/Size;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;D)",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 1484
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const v0, 0x7fffffff

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Size;

    .line 1485
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v5

    int-to-double v5, v5

    div-double/2addr v3, v5

    sub-double/2addr v3, p2

    .line 1487
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v5, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v3, v3, v5

    if-lez v3, :cond_1

    goto :goto_0

    .line 1491
    :cond_1
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v3

    sub-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v0, :cond_0

    .line 1495
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v0

    sub-int/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    move-object v1, v2

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static a(Ljava/util/List;D)Landroid/util/Size;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;D)",
            "Landroid/util/Size;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1223
    invoke-static {p0, p1, p2, v0}, Lcom/oplus/camera/util/Util;->a(Ljava/util/List;DI)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/List;DI)Landroid/util/Size;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;DI)",
            "Landroid/util/Size;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const v1, 0x7fffffff

    .line 1263
    sget v2, Lcom/oplus/camera/util/Util;->ab:I

    .line 1271
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Size;

    .line 1272
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v5

    int-to-double v5, v5

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v7

    int-to-double v7, v7

    div-double/2addr v5, v7

    const v7, 0x20203859

    if-ne v7, p3, :cond_2

    const-wide v7, 0x3f60624dd2f1a9fcL    # 0.002

    goto :goto_1

    :cond_2
    const-wide v7, 0x3f847ae147ae147bL    # 0.01

    :goto_1
    sub-double v9, v5, p1

    .line 1276
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    cmpl-double v9, v9, v7

    if-lez v9, :cond_3

    goto :goto_0

    .line 1280
    :cond_3
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v9

    if-eqz v9, :cond_5

    const-wide v9, 0x3feddddddddddddeL    # 0.9333333333333333

    sub-double/2addr v5, v9

    .line 1281
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpg-double v2, v5, v7

    if-gez v2, :cond_4

    const/16 v2, 0x5a0

    goto :goto_2

    :cond_4
    const/16 v2, 0x438

    .line 1289
    :cond_5
    :goto_2
    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v1, :cond_6

    .line 1293
    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    move v1, v0

    :goto_3
    move-object v0, v4

    goto :goto_0

    :cond_6
    if-ne v5, v1, :cond_1

    .line 1294
    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v5

    if-le v5, v2, :cond_1

    goto :goto_3

    :cond_7
    if-nez v0, :cond_b

    .line 1300
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/Size;

    .line 1301
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v5

    int-to-double v5, v5

    div-double/2addr v3, v5

    sub-double/2addr v3, p1

    .line 1303
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v5, 0x3f9eb851eb851eb8L    # 0.03

    cmpl-double v3, v3, v5

    if-lez v3, :cond_9

    goto :goto_4

    .line 1307
    :cond_9
    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v1, :cond_a

    .line 1311
    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    move v1, v0

    :goto_5
    move-object v0, p3

    goto :goto_4

    :cond_a
    if-ne v3, v1, :cond_8

    .line 1312
    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v3

    if-le v3, v2, :cond_8

    goto :goto_5

    :cond_b
    const-string p0, "Util"

    if-eqz v0, :cond_c

    .line 1319
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getOptimalPreviewSize, screen: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/oplus/camera/util/Util;->ab:I

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/oplus/camera/util/Util;->ac:I

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", targetRatio: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ", optimalSize: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1320
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1319
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_c
    const-string p1, "getOptimalPreviewSize, optimalSize is null"

    .line 1322
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    return-object v0
.end method

.method public static a(Ljava/util/List;DII)Landroid/util/Size;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;DII)",
            "Landroid/util/Size;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    .line 1415
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 1421
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    .line 1422
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    sub-double/2addr v2, p1

    .line 1424
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v2, v2, v4

    if-lez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    if-eq v2, p3, :cond_3

    .line 1428
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v3

    if-gt v3, p3, :cond_1

    :cond_3
    if-eq v2, p4, :cond_4

    .line 1429
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    if-gt v2, p4, :cond_1

    :cond_4
    if-eqz v0, :cond_5

    .line 1430
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_1

    :cond_5
    move-object v0, v1

    goto :goto_0

    :cond_6
    const-string p0, "Util"

    if-eqz v0, :cond_7

    .line 1437
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "getMaxSizeByRatio, size: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "x"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", targetRatio: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const-string p1, "getMaxSizeByRatio, optimalSize is null"

    .line 1440
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_1
    return-object v0
.end method

.method public static a(Ljava/util/List;II)Landroid/util/Size;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;II)",
            "Landroid/util/Size;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1386
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1392
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v1, Lcom/oplus/camera/util/-$$Lambda$bdDB5qtJ9up3KI34bj-HEph1ELg;->INSTANCE:Lcom/oplus/camera/util/-$$Lambda$bdDB5qtJ9up3KI34bj-HEph1ELg;

    .line 1393
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/oplus/camera/util/-$$Lambda$Util$DBGNOagioPDoHzan1N4T4F80efc;

    invoke-direct {v1, p1, p2}, Lcom/oplus/camera/util/-$$Lambda$Util$DBGNOagioPDoHzan1N4T4F80efc;-><init>(II)V

    .line 1394
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/oplus/camera/util/-$$Lambda$Util$bocYwBQLMmJRgXeP5jItCElMHEU;->INSTANCE:Lcom/oplus/camera/util/-$$Lambda$Util$bocYwBQLMmJRgXeP5jItCElMHEU;

    .line 1402
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->min(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object p0

    .line 1403
    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Size;

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "Util"

    const-string p1, "getOptimalBigSizeByTargetSize, size is empty"

    .line 1387
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/util/List;Ljava/lang/String;I)Landroid/util/Size;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Landroid/util/Size;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 1578
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const-wide v1, 0x7fffffffffffffffL

    .line 1588
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    .line 1589
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Lcom/oplus/camera/util/Util;->d(II)I

    move-result v4

    if-ne v4, p2, :cond_1

    .line 1590
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v7

    mul-int/2addr v6, v7

    int-to-long v6, v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    cmp-long v4, v1, v4

    if-lez v4, :cond_1

    .line 1591
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v4

    mul-int/2addr v2, v4

    int-to-long v4, v2

    sub-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    move-wide v1, v0

    move-object v0, v3

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    const-string p0, "Util"

    const-string p1, "getMinDiffPictureSize error!"

    .line 1580
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a([Landroid/util/Size;)Landroid/util/Size;
    .locals 1

    .line 6556
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/oplus/camera/util/-$$Lambda$bdDB5qtJ9up3KI34bj-HEph1ELg;->INSTANCE:Lcom/oplus/camera/util/-$$Lambda$bdDB5qtJ9up3KI34bj-HEph1ELg;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/oplus/camera/util/-$$Lambda$Util$pyPrMXEwCpKAIaarngXQqcplqhE;->INSTANCE:Lcom/oplus/camera/util/-$$Lambda$Util$pyPrMXEwCpKAIaarngXQqcplqhE;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->max(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    .line 6557
    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Size;

    return-object p0
.end method

.method public static a(Landroid/view/MotionEvent;I)Landroid/view/MotionEvent;
    .locals 22

    move-object/from16 v0, p0

    .line 7015
    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v1, :cond_0

    .line 7018
    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    shl-int/2addr v5, v6

    or-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7021
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "split, idBitsTemp: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Util"

    invoke-static {v4, v3}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 7023
    new-array v12, v1, [Landroid/view/MotionEvent$PointerProperties;

    .line 7024
    new-array v13, v1, [Landroid/view/MotionEvent$PointerCoords;

    .line 7025
    new-array v3, v1, [I

    move v4, v2

    :goto_1
    if-ge v4, v1, :cond_1

    .line 7028
    new-instance v6, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v6}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v6, v12, v4

    .line 7029
    new-instance v6, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v6}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v6, v13, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 7032
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 7033
    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    .line 7034
    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    const/4 v8, -0x1

    move v11, v2

    move v9, v8

    move v8, v11

    :goto_2
    if-ge v8, v1, :cond_4

    .line 7039
    aget-object v10, v12, v11

    invoke-virtual {v0, v8, v10}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 7040
    aget-object v10, v12, v11

    iget v10, v10, Landroid/view/MotionEvent$PointerProperties;->id:I

    shl-int v10, v5, v10

    and-int v10, v10, p1

    if-eqz v10, :cond_3

    if-ne v8, v7, :cond_2

    move v9, v11

    .line 7047
    :cond_2
    aput v8, v3, v11

    add-int/lit8 v11, v11, 0x1

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    if-nez v11, :cond_5

    const/4 v0, 0x0

    return-object v0

    :cond_5
    const/4 v1, 0x5

    if-eq v1, v6, :cond_7

    const/4 v7, 0x6

    if-ne v7, v6, :cond_6

    goto :goto_3

    :cond_6
    move v10, v4

    goto :goto_5

    :cond_7
    :goto_3
    if-gez v9, :cond_8

    const/4 v1, 0x2

    :goto_4
    move v10, v1

    goto :goto_5

    :cond_8
    if-ne v5, v11, :cond_a

    if-ne v6, v1, :cond_9

    move v5, v2

    :cond_9
    move v10, v5

    goto :goto_5

    :cond_a
    shl-int/lit8 v1, v9, 0x8

    or-int/2addr v1, v6

    goto :goto_4

    :goto_5
    if-ge v2, v11, :cond_b

    .line 7077
    aget v1, v3, v2

    aget-object v4, v13, v2

    invoke-virtual {v0, v1, v4}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 7080
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    .line 7081
    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v16

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v17

    .line 7082
    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v21

    .line 7080
    invoke-static/range {v6 .. v21}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/coui/appcompat/dialog/app/b;)Lcom/coui/appcompat/dialog/app/b;
    .locals 0

    .line 240
    sput-object p0, Lcom/oplus/camera/util/Util;->L:Lcom/coui/appcompat/dialog/app/b;

    return-object p0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x11

    if-eq p0, v0, :cond_2

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x100

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "jpeg"

    return-object p0

    :cond_1
    :pswitch_0
    const-string p0, "raw"

    return-object p0

    :cond_2
    :pswitch_1
    const-string p0, "yuv420sp"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static a(II[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 7221
    :try_start_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7223
    :catch_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static a(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 7233
    :try_start_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7235
    :catch_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static declared-synchronized a(J)Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/oplus/camera/util/Util;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1697
    :try_start_0
    invoke-static {p0, p1, v1}, Lcom/oplus/camera/util/Util;->a(JZ)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(JZ)Ljava/lang/String;
    .locals 4

    const-class v0, Lcom/oplus/camera/util/Util;

    monitor-enter v0

    .line 1701
    :try_start_0
    sget-object v1, Lcom/oplus/camera/util/Util;->p:Lcom/oplus/camera/util/Util$a;

    if-nez v1, :cond_0

    .line 1702
    new-instance v1, Lcom/oplus/camera/util/Util$a;

    sget-object v2, Lcom/oplus/camera/util/Util;->J:Landroid/content/Context;

    const v3, 0x7f100203

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/oplus/camera/util/Util$a;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/oplus/camera/util/Util;->p:Lcom/oplus/camera/util/Util$a;

    .line 1705
    :cond_0
    sget-object v1, Lcom/oplus/camera/util/Util;->p:Lcom/oplus/camera/util/Util$a;

    invoke-virtual {v1, p0, p1, p2}, Lcom/oplus/camera/util/Util$a;->a(JZ)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Landroid/util/Size;I)Ljava/lang/String;
    .locals 6

    if-eqz p0, :cond_3

    const-string v0, "com.oplus.high.picturesize"

    .line 1519
    invoke-static {v0, p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getSizeConfigValue(Ljava/lang/String;I)Landroid/util/Size;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1522
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1523
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v0

    if-ne p1, v0, :cond_0

    const-string p0, "standard_high"

    return-object p0

    .line 1527
    :cond_0
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p1

    int-to-double v0, p1

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-double v2, p1

    div-double/2addr v0, v2

    const-wide v2, 0x3ff5555555555555L    # 1.3333333333333333

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    cmpg-double p1, v0, v2

    if-gez p1, :cond_1

    const-string p0, "standard"

    return-object p0

    .line 1532
    :cond_1
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p1

    int-to-double v0, p1

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-double v4, p1

    div-double/2addr v0, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double p1, v0, v2

    if-gez p1, :cond_2

    const-string p0, "square"

    return-object p0

    .line 1537
    :cond_2
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p1

    int-to-double v0, p1

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    int-to-double p0, p0

    div-double/2addr v0, p0

    const-wide p0, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    sub-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    cmpg-double p0, p0, v2

    if-gez p0, :cond_3

    const-string p0, "16_9"

    return-object p0

    :cond_3
    const-string p0, "full"

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 7262
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    .line 7263
    invoke-static {p2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p2

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p2, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 7262
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 3585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveBytesToFile, bytes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", customDir: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fileName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Util"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 3587
    array-length v2, p0

    if-nez v2, :cond_0

    goto :goto_0

    .line 3593
    :cond_0
    sget-object v1, Lcom/oplus/camera/util/Util;->J:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 3594
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3595
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string p2, "image/jpeg"

    .line 3597
    invoke-static {p1, p2, p0}, Lcom/oplus/camera/q/a;->b(Ljava/lang/String;Ljava/lang/String;[B)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object p1

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    const-string p0, "saveBytesToJpeg, bytes is empty"

    .line 3588
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(II)V
    .locals 2

    .line 689
    sget-object v0, Lcom/oplus/camera/util/Util;->aE:[I

    const/4 v1, 0x0

    aput p0, v0, v1

    const/4 p0, 0x1

    .line 690
    aput p1, v0, p0

    return-void
.end method

.method public static a(IIILjava/lang/String;)V
    .locals 2

    .line 3168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dumpAndSaveTexture, dumpDir: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Util"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 3170
    invoke-static {p0, p1, p2}, Lcom/oplus/camera/util/Util;->c(III)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 3172
    invoke-static {p0, p3}, Lcom/oplus/camera/util/Util;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method public static a(ILandroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_9

    const/4 v0, 0x4

    if-eq p0, v0, :cond_8

    const/16 v0, 0x10

    if-eq p0, v0, :cond_7

    const/16 v0, 0x12

    if-eq p0, v0, :cond_6

    const/16 v0, 0x1d

    if-eq p0, v0, :cond_5

    const/16 v0, 0x1f

    if-eq p0, v0, :cond_4

    const/16 v0, 0xd

    if-eq p0, v0, :cond_3

    const/16 v0, 0xe

    if-eq p0, v0, :cond_2

    const/16 v0, 0x1a

    if-eq p0, v0, :cond_1

    const/16 p2, 0x1b

    if-eq p0, p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "long_exposure_reddot_show"

    goto :goto_1

    :cond_1
    if-nez p2, :cond_a

    const-string p0, "street_reddot_show"

    goto :goto_1

    :cond_2
    const-string p0, "multi_video_reddot_show"

    goto :goto_1

    :cond_3
    const-string p0, "id_photo_reddot_show"

    goto :goto_1

    :cond_4
    const-string p0, "mode_high_pixel_reddot_show"

    goto :goto_1

    :cond_5
    const-string p0, "fish_eye_reddot_show"

    goto :goto_1

    :cond_6
    const-string p0, "double_exposure_reddot_show"

    goto :goto_1

    :cond_7
    if-nez p2, :cond_a

    const-string p0, "microscope_reddot_show"

    goto :goto_1

    :cond_8
    const-string p0, "profession_reddot_show"

    goto :goto_1

    :cond_9
    if-nez p2, :cond_a

    const-string p0, "slow_video_high_frame_reddot_show"

    goto :goto_1

    :cond_a
    :goto_0
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_b

    .line 6981
    invoke-static {p1}, Landroidx/preference/j;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 6982
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 p2, 0x0

    .line 6983
    invoke-interface {p1, p0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 6984
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_b
    return-void
.end method

.method public static a(Landroid/app/Activity;I)V
    .locals 2

    .line 1084
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showErrorAndFinish, Some Error occurs, Error id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", activty: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Util"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_0

    return-void

    .line 1090
    :cond_0
    sget-object v0, Lcom/oplus/camera/util/Util;->K:Landroid/os/Handler;

    new-instance v1, Lcom/oplus/camera/util/Util$3;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/util/Util$3;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static a(Landroid/app/Activity;II)V
    .locals 0

    .line 7168
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 7171
    invoke-virtual {p0, p2}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/app/Activity;IZ)V
    .locals 0

    .line 7156
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 7162
    :cond_0
    instance-of p1, p0, Lcom/oplus/camera/ui/n;

    if-eqz p1, :cond_1

    .line 7163
    check-cast p0, Lcom/oplus/camera/ui/n;

    invoke-interface {p0, p2}, Lcom/oplus/camera/ui/n;->setLightBackground(Z)V

    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "attachBaseContext, context: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Util"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    sput-object p0, Lcom/oplus/camera/util/Util;->J:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3

    .line 2129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcastNewPicture, uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Util"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2131
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.hardware.action.NEW_PICTURE"

    invoke-direct {v0, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2133
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.camera.NEW_PICTURE"

    invoke-direct {v0, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2135
    invoke-static {}, Lcom/oplus/camera/util/Util;->aP()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.oplus.camera.NEW_PICTURE"

    invoke-static {p0, p1, v2, v0}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.heytap.cloud"

    .line 2136
    invoke-static {p0, p1, v2, v0}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 2139
    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v0, v2

    const/4 p2, 0x0

    invoke-static {p0, v0, p2, p2}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 2142
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "++broadcastNewPicture, uri: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2146
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2147
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2148
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 2124
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x0

    invoke-static {p0, v0, p1, p1}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;Ljava/io/File;)V
    .locals 2

    .line 2079
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "image/png"

    invoke-static {p1, v0}, Lcom/oplus/camera/q/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2080
    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2081
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz p1, :cond_1

    .line 2082
    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_0
    move-exception p0

    if-eqz p1, :cond_0

    .line 2079
    :try_start_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception p0

    .line 2083
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 3

    .line 2088
    sget-object v0, Lcom/oplus/camera/util/Util;->J:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 2089
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2091
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2092
    invoke-static {p1}, Lcom/oplus/camera/q/a;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "Util"

    const-string p1, "saveBitmap, mkdirs fail"

    .line 2093
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2099
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/oplus/camera/util/Util;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2100
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2101
    invoke-static {p0, v1}, Lcom/oplus/camera/util/Util;->a(Landroid/graphics/Bitmap;Ljava/io/File;)V

    return-void
.end method

.method public static a(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x190

    .line 2463
    invoke-static {p0, v0}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;I)V

    return-void
.end method

.method public static a(Landroid/view/View;FFJJLandroid/view/animation/Animation$AnimationListener;Landroid/view/animation/Interpolator;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 2440
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 2444
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2445
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2446
    invoke-virtual {v0, p7}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2447
    invoke-virtual {v0, p3, p4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2448
    invoke-virtual {v0, p5, p6}, Landroid/view/animation/Animation;->setStartOffset(J)V

    if-eqz p8, :cond_2

    .line 2451
    invoke-virtual {v0, p8}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2454
    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static a(Landroid/view/View;FFJLandroid/view/animation/Animation$AnimationListener;Landroid/view/animation/Interpolator;)V
    .locals 9

    const-wide/16 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v7, p5

    move-object v8, p6

    .line 2459
    invoke-static/range {v0 .. v8}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;FFJJLandroid/view/animation/Animation$AnimationListener;Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public static a(Landroid/view/View;I)V
    .locals 7

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    int-to-long v3, p1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 2471
    invoke-static/range {v0 .. v6}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;FFJLandroid/view/animation/Animation$AnimationListener;Landroid/view/animation/Interpolator;)V

    const/4 p1, 0x1

    .line 2473
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public static a(Landroid/view/View;IFFLandroid/view/animation/Interpolator;JLandroid/view/animation/Interpolator;JLandroid/view/animation/Animation$AnimationListener;J)V
    .locals 13

    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p7

    move-object/from16 v6, p10

    if-nez v0, :cond_0

    return-void

    .line 2257
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-ne v7, v1, :cond_1

    return-void

    :cond_1
    const/4 v7, 0x4

    const/16 v8, 0x8

    if-ne v8, v1, :cond_2

    .line 2261
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eq v7, v9, :cond_3

    :cond_2
    if-ne v7, v1, :cond_4

    .line 2262
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-ne v8, v7, :cond_4

    :cond_3
    return-void

    .line 2266
    :cond_4
    new-instance v7, Landroid/view/animation/AnimationSet;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    if-nez v1, :cond_5

    .line 2270
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v10, v9, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_0

    .line 2272
    :cond_5
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v10, v8, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    :goto_0
    if-eqz v4, :cond_6

    .line 2276
    invoke-virtual {v10, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :cond_6
    move-wide/from16 v11, p5

    .line 2279
    invoke-virtual {v10, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2280
    invoke-virtual {v7, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    if-nez v1, :cond_7

    .line 2285
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v4, p2, v9, v3, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_1

    .line 2287
    :cond_7
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v4, v9, p2, v9, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    :goto_1
    if-eqz v5, :cond_8

    .line 2291
    invoke-virtual {v7, v5}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :cond_8
    move-wide/from16 v2, p8

    .line 2294
    invoke-virtual {v4, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2295
    invoke-virtual {v7, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    if-nez v6, :cond_9

    .line 2298
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2301
    :cond_9
    invoke-virtual {v7, v6}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    move-wide/from16 v1, p11

    .line 2302
    invoke-virtual {v7, v1, v2}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 2304
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 2305
    invoke-virtual {p0, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static a(Landroid/view/View;IILandroid/view/animation/Interpolator;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 2497
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 2502
    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 2503
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    int-to-long v1, p1

    .line 2504
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    int-to-long p1, p2

    .line 2505
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    if-eqz p3, :cond_2

    .line 2508
    invoke-virtual {v0, p3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2511
    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/16 p1, 0x8

    .line 2512
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static a(Landroid/view/View;IILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V
    .locals 3

    if-eqz p0, :cond_4

    if-gez p2, :cond_0

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    .line 2158
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void

    .line 2162
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2164
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2165
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 2166
    :goto_0
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    sub-int/2addr v1, v0

    if-nez v1, :cond_3

    return-void

    .line 2172
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p3, p4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    new-instance p4, Lcom/oplus/camera/util/Util$5;

    invoke-direct {p4, p0, v0, v1, p1}, Lcom/oplus/camera/util/Util$5;-><init>(Landroid/view/View;III)V

    .line 2173
    invoke-virtual {p3, p4}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    int-to-long p1, p2

    .line 2183
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_4
    :goto_1
    return-void
.end method

.method public static a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V
    .locals 8

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 2188
    invoke-static/range {v0 .. v7}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;JJLandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public static a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;JJLandroid/view/animation/Interpolator;)V
    .locals 10

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move-object/from16 v7, p7

    .line 2193
    invoke-static/range {v0 .. v9}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;JJLandroid/view/animation/Interpolator;FF)V

    return-void
.end method

.method public static a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;JJLandroid/view/animation/Interpolator;FF)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    .line 2203
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x4

    const/16 v1, 0x8

    if-ne v1, p1, :cond_2

    .line 2207
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v0, v2, :cond_3

    :cond_2
    if-ne v0, p1, :cond_4

    .line 2208
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v1, v0, :cond_4

    :cond_3
    return-void

    .line 2212
    :cond_4
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-nez p1, :cond_5

    .line 2216
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v3, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_0

    .line 2218
    :cond_5
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v3, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2221
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    if-nez p1, :cond_6

    .line 2226
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v1, p8, v2, p9, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_1

    .line 2228
    :cond_6
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v1, v2, p8, v2, p9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2231
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    if-nez p2, :cond_7

    .line 2234
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    if-eqz p7, :cond_8

    .line 2238
    invoke-virtual {v0, p7}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2241
    :cond_8
    invoke-virtual {v0, p2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2242
    invoke-virtual {v0, p3, p4}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 2243
    invoke-virtual {v0, p5, p6}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 2245
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 2246
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static a(Landroid/view/View;ILandroid/view/animation/Interpolator;)V
    .locals 7

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    int-to-long v3, p1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v6, p2

    .line 2481
    invoke-static/range {v0 .. v6}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;FFJLandroid/view/animation/Animation$AnimationListener;Landroid/view/animation/Interpolator;)V

    const/4 p1, 0x1

    .line 2483
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public static a(Landroid/view/View;ZFFLandroid/animation/TimeInterpolator;JLandroid/animation/TimeInterpolator;JLandroid/animation/Animator$AnimatorListener;J)V
    .locals 13

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p10

    .line 2312
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setViewVisibilityWithAnimator, view: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", visible: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", listener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Util"

    invoke-static {v4, v3}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    return-void

    .line 2318
    :cond_0
    sget-object v3, Lcom/oplus/camera/util/Util;->ax:Ljava/util/HashMap;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2319
    sget-object v3, Lcom/oplus/camera/util/Util;->ax:Ljava/util/HashMap;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    .line 2320
    sget-object v3, Lcom/oplus/camera/util/Util;->ax:Ljava/util/HashMap;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v3, "alpha"

    const/4 v4, 0x2

    if-eqz v1, :cond_2

    .line 2326
    new-array v5, v4, [F

    fill-array-data v5, :array_0

    invoke-static {p0, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    goto :goto_0

    .line 2328
    :cond_2
    new-array v5, v4, [F

    fill-array-data v5, :array_1

    invoke-static {p0, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    :goto_0
    move-object v5, v3

    move-object/from16 v3, p4

    .line 2331
    invoke-virtual {v5, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-wide/from16 v6, p5

    .line 2332
    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2334
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2335
    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    .line 2337
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v6

    .line 2338
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v7

    const v8, 0x7f09005a

    .line 2339
    new-instance v9, Landroid/graphics/PointF;

    invoke-direct {v9, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, v8, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const-string v8, "translationX"

    const-string v9, "translationY"

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v1, :cond_4

    cmpl-float v10, v10, p2

    if-eqz v10, :cond_3

    add-float v9, v6, p2

    .line 2344
    new-array v4, v4, [F

    aput v9, v4, v12

    aput v6, v4, v11

    invoke-static {p0, v8, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    goto :goto_1

    :cond_3
    add-float v8, v7, p3

    .line 2348
    new-array v4, v4, [F

    aput v8, v4, v12

    aput v7, v4, v11

    invoke-static {p0, v9, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    goto :goto_1

    :cond_4
    cmpl-float v10, v10, p2

    if-eqz v10, :cond_5

    add-float v9, v6, p2

    .line 2354
    new-array v4, v4, [F

    aput v6, v4, v12

    aput v9, v4, v11

    invoke-static {p0, v8, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    goto :goto_1

    :cond_5
    add-float v8, v7, p3

    .line 2358
    new-array v4, v4, [F

    aput v7, v4, v12

    aput v8, v4, v11

    invoke-static {p0, v9, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    :goto_1
    move-object v8, v4

    move-object/from16 v4, p7

    .line 2363
    invoke-virtual {v8, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-wide/from16 v9, p8

    .line 2364
    invoke-virtual {v8, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2365
    invoke-virtual {v5, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-wide/from16 v4, p11

    .line 2366
    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 2367
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v4

    if-nez v2, :cond_6

    .line 2370
    new-instance v2, Lcom/oplus/camera/util/Util$6;

    move-object p2, v2

    move/from16 p3, p1

    move-object/from16 p4, p0

    move/from16 p5, v6

    move/from16 p6, v7

    move/from16 p7, v4

    invoke-direct/range {p2 .. p7}, Lcom/oplus/camera/util/Util$6;-><init>(ZLandroid/view/View;FFZ)V

    .line 2430
    :cond_6
    sget-object v1, Lcom/oplus/camera/util/Util;->ax:Ljava/util/HashMap;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2432
    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2433
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static a(Landroid/widget/TextView;)V
    .locals 4

    .line 7176
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 7177
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/oplus/camera/util/Util;->a:I

    const v3, 0x7f0706a5

    invoke-static {v1, v3, v2}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;II)F

    move-result v1

    .line 7178
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f060069

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    float-to-int v2, v1

    .line 7179
    invoke-virtual {p0, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v2, 0x0

    .line 7180
    invoke-virtual {p0, v1, v2, v2, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    return-void
.end method

.method public static a(Lcom/oplus/camera/gl/c;Ljava/lang/String;)V
    .locals 2

    .line 3161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dumpAndSaveTexture, dumpDir: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Util"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 3163
    invoke-virtual {p0}, Lcom/oplus/camera/gl/c;->e()I

    move-result v0

    invoke-virtual {p0}, Lcom/oplus/camera/gl/c;->h()I

    move-result v1

    invoke-virtual {p0}, Lcom/oplus/camera/gl/c;->i()I

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/oplus/camera/util/Util;->c(III)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 3164
    invoke-static {p0, p1}, Lcom/oplus/camera/util/Util;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1072
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1074
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static a(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 6670
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 p1, 0x400

    .line 6671
    :try_start_1
    new-array p1, p1, [B

    :goto_0
    const/4 v0, -0x1

    .line 6674
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    .line 6676
    invoke-virtual {v1, p1, v0, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6683
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    if-eqz p0, :cond_1

    .line 6686
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 6690
    :cond_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 6680
    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 6683
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    if-eqz p0, :cond_2

    .line 6686
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_2
    if-eqz v0, :cond_3

    .line 6690
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    .line 6693
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_2
    return-void

    .line 6683
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    if-eqz p0, :cond_4

    .line 6686
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_4
    if-eqz v0, :cond_5

    .line 6690
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception p0

    .line 6693
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 6695
    :cond_5
    :goto_4
    throw p1
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 1

    .line 727
    sget-object v0, Lcom/oplus/camera/util/Util;->R:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 728
    invoke-static {}, Lcom/oplus/camera/util/Util;->j()V

    .line 731
    :cond_0
    sget-object v0, Lcom/oplus/camera/util/Util;->R:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 6638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "copySourceToTarget, sourcePath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , targetPath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Util"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6642
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6643
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6646
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6649
    array-length v2, v0

    if-lez v2, :cond_0

    .line 6650
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 6654
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 6655
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/oplus/camera/util/Util;->a(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 6657
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "copySourceToTarget X"

    .line 6663
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 7006
    new-instance v0, Lcom/oplus/camera/util/-$$Lambda$Util$_wWOSaQw6lIk4_hbUdcJDEydh44;

    invoke-direct {v0, p1}, Lcom/oplus/camera/util/-$$Lambda$Util$_wWOSaQw6lIk4_hbUdcJDEydh44;-><init>(Z)V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    return-void
.end method

.method public static a(Z)V
    .locals 2

    .line 706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInitState, sbInit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Util"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    sget-object v0, Lcom/oplus/camera/util/Util;->at:Ljava/lang/Object;

    monitor-enter v0

    .line 709
    :try_start_0
    sput-boolean p0, Lcom/oplus/camera/util/Util;->ar:Z

    .line 710
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static a([BIIII)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v1, p2, :cond_1

    move v3, v0

    :goto_1
    shr-int/lit8 v4, p1, 0x1

    if-ge v3, v4, :cond_0

    add-int v4, v2, v3

    .line 1763
    aget-byte v5, p0, v4

    add-int v6, v2, p1

    add-int/lit8 v6, v6, -0x1

    sub-int/2addr v6, v3

    .line 1764
    aget-byte v7, p0, v6

    aput-byte v7, p0, v4

    .line 1765
    aput-byte v5, p0, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/2addr v2, p3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    mul-int/2addr p4, p3

    move v1, p4

    move p4, v0

    :goto_2
    shr-int/lit8 v2, p2, 0x1

    if-ge p4, v2, :cond_3

    move v2, v0

    :goto_3
    shr-int/lit8 v3, p1, 0x1

    if-ge v2, v3, :cond_2

    add-int v3, v1, v2

    .line 1776
    aget-byte v4, p0, v3

    add-int v5, v1, p1

    add-int/lit8 v6, v5, -0x2

    sub-int/2addr v6, v2

    .line 1777
    aget-byte v7, p0, v6

    aput-byte v7, p0, v3

    .line 1778
    aput-byte v4, p0, v6

    add-int/lit8 v3, v3, 0x1

    .line 1780
    aget-byte v4, p0, v3

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v2

    .line 1781
    aget-byte v6, p0, v5

    aput-byte v6, p0, v3

    .line 1782
    aput-byte v4, p0, v5

    add-int/lit8 v2, v2, 0x2

    goto :goto_3

    :cond_2
    add-int/2addr v1, p3

    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public static a()Z
    .locals 2

    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isBinauralRecordSupport, sbBinauralRecordSupport: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/oplus/camera/util/Util;->ap:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Util"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    sget-boolean v0, Lcom/oplus/camera/util/Util;->ap:Z

    return v0
.end method

.method private static synthetic a(IILandroid/util/Size;)Z
    .locals 6

    int-to-double v0, p0

    int-to-double v2, p1

    div-double/2addr v0, v2

    .line 1396
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    sub-double/2addr v2, v0

    .line 1398
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3fa999999999999aL    # 0.05

    cmpl-double v0, v2, v0

    if-ltz v0, :cond_0

    .line 1399
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    if-lt v0, p0, :cond_0

    .line 1400
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p0

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static a(ILjava/lang/String;)Z
    .locals 3

    const-string v0, "video_size_720p"

    .line 6609
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 6610
    invoke-static {p0}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "com.oplus.feature.video.720p.60fps.support"

    .line 6611
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    const-string v0, "video_size_1080p"

    .line 6612
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6613
    invoke-static {p0}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "com.oplus.feature.video.front.1080p.60fps.support"

    .line 6614
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    goto :goto_1

    :cond_2
    const-string p0, "com.oplus.feature.video.1080p.60fps.support"

    .line 6615
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    :goto_1
    return p0

    :cond_3
    const-string v0, "video_size_4kuhd"

    .line 6616
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 6617
    invoke-static {p0}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "com.oplus.feature.video.4k.60fps.support"

    .line 6618
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    return v1

    :cond_5
    return v2
.end method

.method public static a(Landroid/app/Activity;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 6297
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6298
    invoke-virtual {p0, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 6299
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "checkRuntimePermission, ungrant permission: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Util"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 3

    const/4 v0, 0x0

    .line 6453
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-nez p0, :cond_0

    return v0

    :cond_0
    int-to-long p1, p2

    .line 6459
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long p0, p1, v1

    if-gtz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    move-exception p0

    .line 6461
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return v0
.end method

.method public static a(Landroid/net/Uri;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 5836
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "/video/media"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static a(Landroid/net/Uri;Landroid/content/ContentResolver;)Z
    .locals 12

    .line 1600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isUriValid, uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Util"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    const-string v4, "r"

    .line 1609
    invoke-virtual {p1, p0, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_2

    .line 1612
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isUriValid, Fail to open uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v4, :cond_1

    .line 1653
    :try_start_2
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    return v0

    :cond_2
    if-eqz v4, :cond_3

    :try_start_3
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_3
    return v3

    :catchall_0
    move-exception p0

    move-object v4, v2

    goto/16 :goto_4

    :catch_2
    move-object v4, v2

    .line 1617
    :catch_3
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isUriValid, IOException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, p1

    move-object v7, p0

    .line 1622
    :try_start_5
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 1625
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const-string p0, "_data"

    .line 1626
    invoke-interface {v2, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v2, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "is_pending"

    .line 1627
    invoke-interface {v2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    const-string v5, "_tmp"

    .line 1629
    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "dng"

    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    if-ne v3, p1, :cond_a

    const-string p0, "isUriValid, but from IS_PENDING file!"

    .line 1636
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_5

    .line 1645
    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_5
    if-eqz v4, :cond_6

    .line 1653
    :try_start_7
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :catch_4
    :cond_6
    return v3

    :cond_7
    :goto_0
    :try_start_8
    const-string p0, "isUriValid, but from tmp file!"

    .line 1630
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v2, :cond_8

    .line 1645
    :try_start_9
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :cond_8
    if-eqz v4, :cond_9

    .line 1653
    :try_start_a
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    :catch_5
    :cond_9
    return v3

    :cond_a
    if-eqz v2, :cond_b

    .line 1645
    :goto_1
    :try_start_b
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_6
    move-exception p0

    :try_start_c
    const-string p1, "isUriValid, get cursor failed!"

    .line 1642
    invoke-static {v1, p1, p0}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-eqz v2, :cond_b

    goto :goto_1

    :cond_b
    :goto_2
    if-eqz v4, :cond_c

    .line 1653
    :try_start_d
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    :catch_7
    :cond_c
    return v0

    :goto_3
    if-eqz v2, :cond_d

    .line 1645
    :try_start_e
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1647
    :cond_d
    throw p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :catchall_2
    move-exception p0

    :goto_4
    if-eqz v4, :cond_e

    .line 1653
    :try_start_f
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8

    .line 1659
    :catch_8
    :cond_e
    throw p0
.end method

.method public static a(Landroid/net/Uri;Ljava/lang/String;II)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-gez p2, :cond_1

    if-gez p3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static a(Landroid/util/Size;)Z
    .locals 1

    .line 3691
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-static {v0, p0}, Lcom/oplus/camera/util/Util;->d(II)I

    move-result p0

    invoke-static {p0}, Lcom/oplus/camera/util/Util;->c(I)Z

    move-result p0

    return p0
.end method

.method public static a(Landroid/util/Size;D)Z
    .locals 4

    .line 1329
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    int-to-double v2, p0

    div-double/2addr v0, v2

    sub-double/2addr v0, p1

    .line 1331
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide v0, 0x3fa999999999999aL    # 0.05

    cmpg-double p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static a(Landroid/view/View;FF)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x2

    .line 7118
    new-array v1, v1, [I

    .line 7119
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 7121
    aget v2, v1, v0

    const/4 v3, 0x1

    .line 7122
    aget v1, v1, v3

    .line 7123
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v2

    .line 7124
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    add-int/2addr p0, v1

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_1

    int-to-float p0, p0

    cmpg-float p0, p2, p0

    if-gtz p0, :cond_1

    int-to-float p0, v2

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_1

    int-to-float p0, v4

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_1

    return v3

    :cond_1
    return v0
.end method

.method public static a(Landroid/view/View;II)Z
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 7188
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7189
    invoke-virtual {p0, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    const v1, 0x7f0903d8

    .line 7191
    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    if-nez v1, :cond_1

    .line 7194
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0

    .line 7197
    :cond_1
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_2

    .line 7198
    invoke-virtual {p0, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 7201
    :cond_2
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 7202
    invoke-virtual {p0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 7203
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 7204
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method public static a(Landroid/view/View;IIZZLandroid/view/animation/Animation$AnimationListener;)Z
    .locals 4

    const/4 p4, 0x0

    const-string v0, "Util"

    if-nez p0, :cond_0

    .line 5037
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setViewVisibilityWithAnimation, view: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return p4

    .line 5042
    :cond_0
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->c(Landroid/view/View;)I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 5045
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setViewVisibilityWithAnimation, viewVisibilityOrAnimationTo is same as visibility ("

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return p4

    :cond_1
    const/4 v2, 0x4

    const/16 v3, 0x8

    if-ne v3, p1, :cond_2

    if-eq v2, v1, :cond_3

    :cond_2
    if-ne v2, p1, :cond_4

    if-ne v3, v1, :cond_4

    .line 5053
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setViewVisibilityWithAnimation, visibility: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", viewVisibilityOrAnimationTo: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return p4

    .line 5059
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v1

    if-nez v1, :cond_6

    if-eqz p3, :cond_5

    .line 5061
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    goto :goto_0

    :cond_5
    const-string p0, "setViewVisibilityWithAnimation, view had animation but not cancel"

    .line 5063
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return p4

    .line 5069
    :cond_6
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    if-nez p2, :cond_7

    .line 5072
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "setViewVisibilityWithAnimation, animation: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return p4

    .line 5077
    :cond_7
    new-instance p3, Lcom/oplus/camera/util/Util$7;

    invoke-direct {p3, p5, p1, p0}, Lcom/oplus/camera/util/Util$7;-><init>(Landroid/view/animation/Animation$AnimationListener;ILandroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const p3, 0x7f090424

    .line 5108
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 5109
    invoke-virtual {p0, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static a(Ljava/lang/String;Z)Z
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "com.oplus.feature.none.sat.front.mode"

    goto :goto_0

    :cond_0
    const-string p1, "com.oplus.feature.none.sat.rear.mode"

    .line 5602
    :goto_0
    invoke-static {p0, p1}, Lcom/oplus/camera/util/Util;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/util/List;Landroid/util/Size;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;",
            "Landroid/util/Size;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 4922
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    if-eqz v1, :cond_1

    .line 4923
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-ne v2, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method private static a(Ljava/util/Locale;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 5335
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "zh"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/util/Map;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)Z"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 5740
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-gtz p0, :cond_0

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

.method public static a([Ljava/lang/Object;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 3669
    array-length p0, p0

    if-gtz p0, :cond_0

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

.method public static a([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 5535
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    if-eqz v3, :cond_0

    .line 5536
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static a(I[B)[B
    .locals 2

    if-eqz p1, :cond_0

    .line 5561
    array-length v0, p1

    sget v1, Lcom/oplus/camera/util/Util;->f:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 5564
    :cond_0
    sget p1, Lcom/oplus/camera/util/Util;->f:I

    new-array p1, p1, [B

    :goto_0
    const/4 v0, 0x0

    .line 5567
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_1

    and-int/lit16 v1, p0, 0xff

    .line 5568
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->byteValue()B

    move-result v1

    aput-byte v1, p1, v0

    .line 5569
    sget v1, Lcom/oplus/camera/util/Util;->g:I

    shr-int/2addr p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method public static a(Landroid/graphics/Bitmap;I)[B
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 809
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_4

    .line 817
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 818
    :try_start_1
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v2, p1, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 819
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    array-length p1, p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 825
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 828
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v1, v0

    goto :goto_2

    :catch_2
    move-exception p0

    move-object v1, v0

    .line 821
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_1

    .line 825
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_1
    :goto_1
    return-object v0

    :catchall_1
    move-exception p0

    :goto_2
    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 828
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 831
    :cond_2
    :goto_3
    throw p0

    :cond_3
    :goto_4
    return-object v0
.end method

.method public static a(Landroid/media/Image;I)[B
    .locals 1

    const/4 v0, 0x0

    .line 4797
    invoke-static {p0, p1, v0}, Lcom/oplus/camera/util/Util;->a(Landroid/media/Image;I[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/media/Image;I[B)[B
    .locals 8

    if-eqz p0, :cond_9

    .line 4801
    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result v0

    const/16 v1, 0x23

    if-eq v0, v1, :cond_0

    goto/16 :goto_4

    .line 4807
    :cond_0
    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v0

    .line 4808
    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v1

    .line 4809
    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result v2

    .line 4810
    invoke-virtual {p0}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 4812
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 4813
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    mul-int/2addr v4, v3

    .line 4814
    invoke-static {v2}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v2

    mul-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x8

    if-eqz p2, :cond_1

    if-eqz p2, :cond_2

    .line 4816
    array-length v2, p2

    if-ge v2, v4, :cond_2

    .line 4818
    :cond_1
    new-array p2, v4, [B

    .line 4821
    :cond_2
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    const/4 v3, 0x0

    .line 4822
    aget-object v4, v2, v3

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    const/4 v5, 0x1

    .line 4823
    aget-object v5, v2, v5

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    const/16 v6, 0x11

    const/4 v7, 0x2

    if-ne v6, p1, :cond_3

    .line 4826
    aget-object p1, v2, v7

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 4829
    :cond_3
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p1

    aget-object p1, p1, v3

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result p1

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v2

    if-ne p1, v2, :cond_4

    .line 4836
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    invoke-virtual {v4, p2, v3, p0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 4837
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result p0

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    invoke-virtual {v5, p2, p0, p1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_3

    .line 4847
    :cond_4
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p0

    aget-object p0, p0, v3

    invoke-virtual {p0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result p0

    sub-int/2addr p0, v0

    move p1, v3

    move v2, p1

    :goto_0
    if-ge p1, v1, :cond_6

    .line 4852
    invoke-virtual {v4, p2, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/lit8 v6, v1, -0x1

    if-eq p1, v6, :cond_5

    .line 4855
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v6, p0

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_5
    add-int/lit8 p1, p1, 0x1

    add-int/2addr v2, v0

    goto :goto_0

    .line 4860
    :cond_6
    :goto_1
    div-int/lit8 p1, v1, 0x2

    if-ge v3, p1, :cond_8

    add-int/lit8 p1, p1, -0x1

    if-eq v3, p1, :cond_7

    .line 4862
    invoke-virtual {v5, p2, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 4863
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    add-int/2addr p1, p0

    invoke-virtual {v5, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_2

    :cond_7
    add-int/lit8 p1, v0, -0x1

    .line 4865
    invoke-virtual {v5, p2, v2, p1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v0

    goto :goto_1

    :cond_8
    :goto_3
    return-object p2

    :cond_9
    :goto_4
    const-string p0, "Util"

    const-string p1, "getYuvDataWithoutPadding, only support YUV_420_888"

    .line 4802
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/io/File;)[B
    .locals 0

    .line 3645
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/camera/q/a;->d(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static a([BII)[B
    .locals 8

    mul-int v0, p1, p2

    mul-int/lit8 v1, v0, 0x3

    shr-int/lit8 v1, v1, 0x1

    .line 1978
    new-array v1, v1, [B

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, p1, :cond_1

    add-int/lit8 v5, p2, -0x1

    :goto_1
    if-ltz v5, :cond_0

    add-int/lit8 v6, v4, 0x1

    mul-int v7, p1, v5

    add-int/2addr v7, v3

    .line 1983
    aget-byte v7, p0, v7

    aput-byte v7, v1, v4

    add-int/lit8 v5, v5, -0x1

    move v4, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    if-ge v2, p1, :cond_3

    shr-int/lit8 v3, p2, 0x1

    add-int/lit8 v3, v3, -0x1

    :goto_3
    if-ltz v3, :cond_2

    mul-int v5, p1, v3

    add-int/2addr v5, v0

    add-int/2addr v5, v2

    .line 1990
    aget-byte v6, p0, v5

    aput-byte v6, v1, v4

    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    .line 1991
    aget-byte v5, p0, v5

    aput-byte v5, v1, v6

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x2

    goto :goto_2

    :cond_3
    return-object v1
.end method

.method public static a([BIII)[B
    .locals 10

    const/4 v0, 0x0

    const-string v1, "Util"

    if-nez p0, :cond_0

    const-string p0, "cutYUV420SP, Error: data is null!"

    .line 2571
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 2576
    :cond_0
    array-length v2, p0

    int-to-float v2, v2

    mul-int v3, p1, p2

    int-to-float v4, v3

    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float/2addr v4, v5

    cmpg-float v2, v2, v4

    if-gez v2, :cond_1

    .line 2577
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cutYUV420SP, Error, width: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", height: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", data.length: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 2582
    :cond_1
    rem-int v0, p1, p3

    sub-int v0, p1, v0

    .line 2583
    rem-int v1, p2, p3

    sub-int/2addr p2, v1

    .line 2589
    div-int/2addr v0, p3

    .line 2590
    div-int/2addr p2, p3

    .line 2592
    rem-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_2

    add-int/lit8 p2, p2, 0x1

    :cond_2
    mul-int v1, v0, p2

    mul-int/lit8 v1, v1, 0x3

    .line 2596
    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    move v4, v2

    move v5, v4

    :goto_0
    if-ge v4, p2, :cond_4

    move v6, v5

    move v5, v2

    :goto_1
    if-ge v5, v0, :cond_3

    mul-int v7, v4, p3

    mul-int/2addr v7, p1

    mul-int v8, v5, p3

    add-int/2addr v7, v8

    .line 2600
    aget-byte v7, p0, v7

    aput-byte v7, v1, v6

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    move v5, v6

    goto :goto_0

    :cond_4
    move v4, v2

    .line 2605
    :goto_2
    div-int/lit8 v6, p2, 0x2

    if-ge v4, v6, :cond_6

    move v6, v5

    move v5, v2

    .line 2606
    :goto_3
    div-int/lit8 v7, v0, 0x2

    if-ge v5, v7, :cond_5

    mul-int v7, v4, p3

    mul-int/2addr v7, p1

    add-int/2addr v7, v3

    mul-int/lit8 v8, v5, 0x2

    mul-int/2addr v8, p3

    add-int v9, v7, v8

    .line 2607
    aget-byte v9, p0, v9

    aput-byte v9, v1, v6

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v7, v8

    .line 2609
    aget-byte v7, p0, v7

    aput-byte v7, v1, v6

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v4, 0x1

    move v5, v6

    goto :goto_2

    :cond_6
    return-object v1
.end method

.method public static a([BIIIIZ)[B
    .locals 10

    mul-int v0, p1, p2

    mul-int/lit8 v0, v0, 0x3

    shr-int/lit8 v0, v0, 0x1

    .line 1898
    new-array v0, v0, [B

    shr-int/lit8 v1, p2, 0x1

    add-int/lit8 v2, p2, -0x1

    mul-int/2addr v2, p3

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, p1, :cond_1

    move v7, v2

    move v6, v5

    move v5, v3

    :goto_1
    if-ge v5, p2, :cond_0

    add-int/lit8 v8, v6, 0x1

    add-int v9, v7, v4

    .line 1909
    aget-byte v9, p0, v9

    aput-byte v9, v0, v6

    sub-int/2addr v7, p3

    add-int/lit8 v5, v5, 0x1

    move v6, v8

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    move v5, v6

    goto :goto_0

    .line 1915
    :cond_1
    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, p4

    add-int/lit8 p2, p2, -0x1

    mul-int/2addr p2, p3

    move p4, v3

    :goto_2
    if-ge p4, p1, :cond_4

    move v4, p2

    move v2, v3

    :goto_3
    if-ge v2, v1, :cond_3

    if-eqz p5, :cond_2

    add-int/lit8 v6, v5, 0x1

    add-int/lit8 v7, v4, 0x1

    add-int/2addr v7, p4

    .line 1922
    aget-byte v7, p0, v7

    aput-byte v7, v0, v5

    add-int/lit8 v5, v6, 0x1

    add-int v7, v4, p4

    .line 1923
    aget-byte v7, p0, v7

    aput-byte v7, v0, v6

    goto :goto_4

    :cond_2
    add-int/lit8 v6, v5, 0x1

    add-int v7, v4, p4

    .line 1925
    aget-byte v7, p0, v7

    aput-byte v7, v0, v5

    add-int/lit8 v5, v6, 0x1

    add-int/lit8 v7, v4, 0x1

    add-int/2addr v7, p4

    .line 1926
    aget-byte v7, p0, v7

    aput-byte v7, v0, v6

    :goto_4
    sub-int/2addr v4, p3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 p4, p4, 0x2

    goto :goto_2

    :cond_4
    return-object v0
.end method

.method public static a([I)[I
    .locals 6

    if-eqz p0, :cond_0

    .line 5616
    array-length v0, p0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 5617
    new-array v0, v1, [I

    const/4 v1, 0x0

    .line 5618
    aget v2, p0, v1

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 5619
    aget v2, p0, v1

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 5620
    aget v2, p0, v1

    const/4 v3, 0x2

    aput v2, v0, v3

    const/4 v2, 0x4

    .line 5621
    aget v4, p0, v2

    const/4 v5, 0x3

    aput v4, v0, v5

    .line 5622
    aget v3, p0, v3

    aput v3, v0, v2

    .line 5623
    aget v2, p0, v5

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 5624
    aget v2, p0, v1

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 5625
    aget p0, p0, v1

    aput p0, v0, v1

    return-object v0

    :cond_0
    return-object p0
.end method

.method public static aA()Z
    .locals 1

    .line 5778
    invoke-static {}, Lcom/oplus/camera/util/Util;->az()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static aB()Ljava/lang/String;
    .locals 1

    .line 5809
    sget v0, Lcom/oplus/camera/util/Util;->am:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static aC()Ljava/lang/String;
    .locals 2

    .line 5813
    sget-wide v0, Lcom/oplus/camera/util/Util;->an:D

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static aD()I
    .locals 8

    const-string v0, "Util"

    const-string v1, "getTotalRam"

    .line 5871
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/proc/meminfo"

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 5880
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5881
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v5, 0x2000

    invoke-direct {v1, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5882
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v2, "\\s+"

    .line 5885
    invoke-virtual {v5, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    aget-object v2, v2, v5

    :cond_0
    if-eqz v2, :cond_1

    .line 5889
    new-instance v5, Ljava/lang/Float;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v6, 0x49800000    # 1048576.0f

    div-float/2addr v2, v6

    invoke-direct {v5, v2}, Ljava/lang/Float;-><init>(F)V

    .line 5890
    invoke-virtual {v5}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v5

    .line 5891
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    double-to-int v2, v2

    move v3, v2

    .line 5898
    :cond_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 5902
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 5905
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v4, v1

    goto :goto_2

    :catch_3
    move-exception v1

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    .line 5894
    :goto_0
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v1, :cond_2

    .line 5898
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_2
    if-eqz v4, :cond_3

    .line 5902
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 5909
    :cond_3
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTotalRam X, totalRam: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :catchall_2
    move-exception v0

    :goto_2
    if-eqz v1, :cond_4

    .line 5898
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_4

    :cond_4
    :goto_3
    if-eqz v4, :cond_5

    .line 5902
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_5

    .line 5905
    :goto_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 5907
    :cond_5
    :goto_5
    throw v0
.end method

.method public static aE()V
    .locals 1

    .line 5915
    sget-object v0, Lcom/oplus/camera/util/Util;->aw:Ljava/text/DecimalFormat;

    if-nez v0, :cond_0

    .line 5916
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    sput-object v0, Lcom/oplus/camera/util/Util;->aw:Ljava/text/DecimalFormat;

    :cond_0
    return-void
.end method

.method public static aF()V
    .locals 1

    const/4 v0, 0x0

    .line 5921
    sput-object v0, Lcom/oplus/camera/util/Util;->aw:Ljava/text/DecimalFormat;

    return-void
.end method

.method public static aG()I
    .locals 3

    const/4 v0, 0x0

    .line 5960
    :try_start_0
    sget-object v1, Lcom/oplus/camera/util/Util;->J:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "navigation_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5962
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    move v1, v0

    :goto_0
    const/4 v2, 0x2

    if-ne v2, v1, :cond_0

    return v0

    .line 5969
    :cond_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->Z()I

    move-result v0

    return v0
.end method

.method public static aH()I
    .locals 6

    const-string v0, "com.oplus.high.picturesize"

    .line 5974
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getSizeConfigValue(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    const/4 v1, 0x0

    .line 5973
    invoke-static {v1, v0}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;Landroid/util/Size;)D

    move-result-wide v0

    .line 5976
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHighPictureSize, highPictureSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Util"

    invoke-static {v3, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/high16 v2, 0x4048000000000000L    # 48.0

    sub-double v2, v0, v2

    .line 5978
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    const/16 v0, 0x30

    return v0

    :cond_0
    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    sub-double v2, v0, v2

    .line 5980
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1

    const/16 v0, 0x32

    return v0

    :cond_1
    const-wide/high16 v2, 0x4050000000000000L    # 64.0

    sub-double v2, v0, v2

    .line 5982
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v4

    if-gez v2, :cond_2

    const/16 v0, 0x40

    return v0

    :cond_2
    const-wide/high16 v2, 0x405b000000000000L    # 108.0

    sub-double/2addr v0, v2

    .line 5984
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, v4

    if-gez v0, :cond_3

    const/16 v0, 0x6c

    return v0

    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method public static aI()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "ro.oplus.flashlight.rio.switch"

    .line 6235
    invoke-static {v1}, Lcom/oplus/compat/os/SystemPropertiesNative;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Util"

    .line 6237
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRioFlashLightFuncOpen, key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6239
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6240
    invoke-static {v1, v0}, Lcom/oplus/compat/os/SystemPropertiesNative;->getInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Lcom/oplus/compat/b/a/b; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    move v0, v2

    :cond_0
    return v0

    :catch_0
    move-exception v1

    .line 6243
    invoke-virtual {v1}, Lcom/oplus/compat/b/a/b;->printStackTrace()V

    :cond_1
    return v0
.end method

.method public static aJ()Z
    .locals 2

    :try_start_0
    const-string v0, "12"

    const-string v1, "ro.build.version.release"

    .line 6251
    invoke-static {v1}, Lcom/oplus/compat/os/SystemPropertiesNative;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const-string v0, "Util"

    const-string v1, "isAndroidSMigrationAvailable, fail to check system property: ro.build.version.release"

    .line 6253
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public static aK()Z
    .locals 2

    :try_start_0
    const-string v0, "11"

    const-string v1, "ro.build.version.release"

    .line 6260
    invoke-static {v1}, Lcom/oplus/compat/os/SystemPropertiesNative;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const-string v0, "Util"

    const-string v1, "isAndroidRMigrationAvailable, fail to check system property: ro.build.version.release"

    .line 6262
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public static aL()V
    .locals 9

    const-string v0, "com.oplus.athena.support"

    .line 6390
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.oplus.athena.memory.threshold"

    .line 6391
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigFloatValue(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x4e800000

    mul-float/2addr v0, v1

    float-to-long v0, v0

    .line 6393
    invoke-static {}, Lcom/oplus/camera/MyApplication;->d()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/camera/util/Util;->g(Landroid/content/Context;)Landroid/app/ActivityManager$MemoryInfo;

    move-result-object v2

    iget-wide v2, v2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 6394
    invoke-static {}, Lcom/oplus/camera/util/Util;->w()[J

    move-result-object v4

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    .line 6396
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkNotifyAthena, athenaMemoryThreshold: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", availableMemoryFromProc: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", availableMemory: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Util"

    invoke-static {v7, v6}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_0

    move-wide v2, v4

    .line 6404
    :cond_0
    invoke-static {}, Lcom/oplus/camera/MyApplication;->d()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/oplus/camera/util/Util;->h(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    cmp-long v4, v0, v6

    if-lez v4, :cond_2

    cmp-long v0, v2, v0

    if-gez v0, :cond_2

    .line 6406
    :cond_1
    invoke-static {}, Lcom/oplus/camera/MyApplication;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->C(Landroid/content/Context;)V

    :cond_2
    return-void
.end method

.method public static aM()Ljava/lang/String;
    .locals 3

    .line 6510
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 6511
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    .line 6513
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 6517
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public static aN()Z
    .locals 3

    const-string v0, "0"

    :try_start_0
    const-string v1, "vendor.camera.mem.debug.enable"

    .line 6525
    invoke-static {v1, v0}, Lcom/oplus/compat/os/SystemPropertiesNative;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Lcom/oplus/compat/b/a/b; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v1, "Util"

    const-string v2, "debugApsMem error."

    .line 6527
    invoke-static {v1, v2, v0}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public static aO()Z
    .locals 4

    const-string v0, "Util"

    const-string v1, "requestKeyguard"

    .line 6713
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6716
    new-instance v1, Landroid/view/OplusWindowManager;

    invoke-direct {v1}, Landroid/view/OplusWindowManager;-><init>()V

    :try_start_0
    const-string v2, "unlockOrShowSecurity"

    .line 6719
    invoke-virtual {v1, v2}, Landroid/view/OplusWindowManager;->requestKeyguard(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 6722
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestKeyguard: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static aP()Ljava/lang/String;
    .locals 1

    .line 6749
    invoke-static {}, Lcom/oplus/camera/v;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static aQ()Z
    .locals 3

    :try_start_0
    const-string v0, "0"

    const-string v1, "persist.sys.oplus.camera.open.torch"

    const-string v2, "1"

    .line 7095
    invoke-static {v1, v2}, Lcom/oplus/compat/os/SystemPropertiesNative;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Lcom/oplus/compat/b/a/b; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "Util"

    const-string v2, "isGovernmentTorchDisable error."

    .line 7097
    invoke-static {v1, v2, v0}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public static aR()Z
    .locals 4

    .line 7148
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic aS()Landroid/content/Context;
    .locals 1

    .line 240
    sget-object v0, Lcom/oplus/camera/util/Util;->J:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic aT()Ljava/lang/Object;
    .locals 1

    .line 240
    sget-object v0, Lcom/oplus/camera/util/Util;->G:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic aU()Landroid/renderscript/RenderScript;
    .locals 1

    .line 240
    sget-object v0, Lcom/oplus/camera/util/Util;->N:Landroid/renderscript/RenderScript;

    return-object v0
.end method

.method static synthetic aV()Lcom/coui/appcompat/dialog/app/b;
    .locals 1

    .line 240
    sget-object v0, Lcom/oplus/camera/util/Util;->L:Lcom/coui/appcompat/dialog/app/b;

    return-object v0
.end method

.method static synthetic aW()Ljava/util/HashMap;
    .locals 1

    .line 240
    sget-object v0, Lcom/oplus/camera/util/Util;->ax:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic aX()Ljava/lang/String;
    .locals 1

    .line 240
    sget-object v0, Lcom/oplus/camera/util/Util;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic aY()Ljava/lang/String;
    .locals 1

    .line 240
    sget-object v0, Lcom/oplus/camera/util/Util;->n:Ljava/lang/String;

    return-object v0
.end method

.method private static aZ()Ljava/lang/String;
    .locals 3

    const-string v0, "ro.vendor.oplus.market.watermark"

    .line 3209
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVendorMarketName, marketName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Util"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    .line 3213
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "ro.vendor.oplus.market.enname"

    .line 3214
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3216
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "ro.vendor.oplus.market.name"

    .line 3217
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static aa()Z
    .locals 3

    .line 4527
    sget-object v0, Lcom/oplus/camera/util/Util;->J:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "hide_navigationbar_enable"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-eq v2, v0, :cond_0

    const/4 v2, 0x3

    if-eq v2, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static ab()Z
    .locals 3

    .line 4533
    sget-object v0, Lcom/oplus/camera/util/Util;->J:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "navigation_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v2, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static ac()Z
    .locals 4

    const/4 v0, 0x1

    .line 4575
    :try_start_0
    invoke-static {}, Lcom/oplus/compat/os/UserHandleNative;->myUserId()I

    move-result v1
    :try_end_0
    .catch Lcom/oplus/compat/b/a/b; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    .line 4577
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentUser Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Util"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static ad()V
    .locals 3

    .line 4585
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    sput-boolean v0, Lcom/oplus/camera/util/Util;->ao:Z

    :try_start_0
    const-string v0, "persist.sys.oplus.autotest.monkeyRunning"

    const/4 v1, 0x0

    .line 4589
    invoke-static {v0, v1}, Lcom/oplus/camera/util/Util;->c(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/camera/util/Util;->aq:Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4591
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMonkeyRunningState, error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Util"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static ae()Z
    .locals 1

    .line 4597
    sget-boolean v0, Lcom/oplus/camera/util/Util;->ao:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/oplus/camera/util/Util;->aq:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static af()Z
    .locals 1

    .line 4601
    sget-boolean v0, Lcom/oplus/camera/util/Util;->ao:Z

    return v0
.end method

.method public static ag()Z
    .locals 1

    .line 4605
    sget-boolean v0, Lcom/oplus/camera/util/Util;->aq:Z

    return v0
.end method

.method public static ah()Z
    .locals 2

    const-string v0, "sys.oplus.otest.monkey.enable"

    const/4 v1, 0x0

    .line 4609
    invoke-static {v0, v1}, Lcom/oplus/camera/util/Util;->c(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static ai()Z
    .locals 1

    const-string v0, "oplus.software.display.screen_heteromorphism"

    .line 4613
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->h(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static aj()I
    .locals 1

    .line 4617
    invoke-static {}, Lcom/oplus/camera/util/Util;->ai()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4618
    invoke-static {}, Lcom/oplus/camera/util/Util;->ba()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static ak()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static al()Z
    .locals 2

    .line 4673
    invoke-static {}, Lcom/oplus/camera/v;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPLUS_R"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static am()Z
    .locals 2

    .line 4677
    invoke-static {}, Lcom/oplus/camera/v;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPLUS_P"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static an()Z
    .locals 1

    const-string v0, "com.oplus.hasselblad.watermark.support.default"

    .line 4685
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static ao()Z
    .locals 1

    const-string v0, "com.oplus.use.hasselblad.style.support"

    .line 4689
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static ap()Z
    .locals 2

    .line 4693
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static aq()Z
    .locals 1

    .line 5307
    invoke-static {}, Lcom/oplus/camera/util/Util;->bb()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->a(Ljava/util/Locale;)Z

    move-result v0

    return v0
.end method

.method public static ar()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "ro.build.version.ota"

    .line 5355
    invoke-static {v1}, Lcom/oplus/compat/os/SystemPropertiesNative;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ro.build.mea"

    .line 5356
    invoke-static {v2}, Lcom/oplus/compat/os/SystemPropertiesNative;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_0

    .line 5357
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "pre"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-eqz v2, :cond_2

    const-string v1, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Lcom/oplus/compat/b/a/b; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5359
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMeaVersion Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Util"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return v0
.end method

.method public static as()Z
    .locals 1

    .line 5389
    sget-boolean v0, Lcom/oplus/camera/util/Util;->x:Z

    return v0
.end method

.method public static declared-synchronized at()Z
    .locals 4

    const-class v0, Lcom/oplus/camera/util/Util;

    monitor-enter v0

    .line 5393
    :try_start_0
    sget-object v1, Lcom/oplus/camera/util/Util;->av:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 5394
    sget-object v1, Lcom/oplus/camera/util/Util;->av:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :cond_0
    :try_start_1
    const-string v1, "pref_video_size_key"

    const/4 v2, 0x0

    .line 5397
    invoke-static {v1, v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getSupportedList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v3, "video_size_8k"

    .line 5400
    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v1, 0x1e00

    const/16 v3, 0x10e0

    .line 5401
    invoke-static {v1, v3}, Lcom/oplus/camera/util/Util;->g(II)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/oplus/camera/util/Util;->av:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    const-string v3, "video_size_4kuhd"

    .line 5403
    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v1, 0xf00

    const/16 v3, 0x870

    .line 5404
    invoke-static {v1, v3}, Lcom/oplus/camera/util/Util;->g(II)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/oplus/camera/util/Util;->av:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    const-string v3, "video_size_1080p"

    .line 5406
    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v1, 0x780

    const/16 v3, 0x438

    .line 5407
    invoke-static {v1, v3}, Lcom/oplus/camera/util/Util;->g(II)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/oplus/camera/util/Util;->av:Ljava/lang/Boolean;

    goto :goto_0

    :cond_3
    const-string v3, "video_size_720p"

    .line 5409
    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x500

    const/16 v3, 0x2d0

    .line 5410
    invoke-static {v1, v3}, Lcom/oplus/camera/util/Util;->g(II)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/oplus/camera/util/Util;->av:Ljava/lang/Boolean;

    .line 5415
    :cond_4
    :goto_0
    sget-object v1, Lcom/oplus/camera/util/Util;->av:Ljava/lang/Boolean;

    if-nez v1, :cond_5

    .line 5416
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/oplus/camera/util/Util;->av:Ljava/lang/Boolean;

    .line 5419
    :cond_5
    sget-object v1, Lcom/oplus/camera/util/Util;->av:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static au()Z
    .locals 3

    const/4 v0, 0x1

    const-string v1, "night"

    const-string v2, "aps_algo_portrait_supernight"

    .line 5454
    invoke-static {v1, v0, v2}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportCaptureAlgo(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.oplus.yuv.night.support"

    .line 5456
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "com.oplus.feature.front.supernight.support"

    .line 5457
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static av()Z
    .locals 3

    const-string v0, "ultraHD"

    const/4 v1, 0x1

    const-string v2, "aps_algo_superphoto"

    .line 5461
    invoke-static {v0, v1, v2}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportCaptureAlgo(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static aw()Ljava/lang/String;
    .locals 1

    .line 5514
    sget-object v0, Lcom/oplus/camera/util/Util;->C:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "persist.sys.oplus.region"

    .line 5515
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/camera/util/Util;->C:Ljava/lang/String;

    .line 5518
    :cond_0
    sget-object v0, Lcom/oplus/camera/util/Util;->C:Ljava/lang/String;

    return-object v0
.end method

.method public static ax()Ljava/lang/String;
    .locals 1

    .line 5522
    sget-object v0, Lcom/oplus/camera/util/Util;->D:Ljava/lang/String;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "persist.sys.locale"

    .line 5524
    invoke-static {v0}, Lcom/oplus/compat/os/SystemPropertiesNative;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/camera/util/Util;->D:Ljava/lang/String;
    :try_end_0
    .catch Lcom/oplus/compat/b/a/b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5526
    invoke-virtual {v0}, Lcom/oplus/compat/b/a/b;->printStackTrace()V

    .line 5530
    :cond_0
    :goto_0
    sget-object v0, Lcom/oplus/camera/util/Util;->D:Ljava/lang/String;

    return-object v0
.end method

.method public static ay()Landroid/os/Handler;
    .locals 2

    .line 5652
    sget-object v0, Lcom/oplus/camera/util/Util;->K:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 5653
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/oplus/camera/util/Util;->K:Landroid/os/Handler;

    .line 5656
    :cond_0
    sget-object v0, Lcom/oplus/camera/util/Util;->K:Landroid/os/Handler;

    return-object v0
.end method

.method public static az()Ljava/lang/String;
    .locals 1

    const-string v0, "ro.oplus.display.screenhole.positon"

    .line 5774
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(F)F
    .locals 2

    const/high16 v0, 0x40800000    # 4.0f

    cmpg-float v0, v0, p0

    const/high16 v1, 0x40a00000    # 5.0f

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p0, v0

    const/high16 v0, 0x40400000    # 3.0f

    div-float/2addr p0, v0

    mul-float/2addr v1, p0

    :goto_0
    const/4 p0, 0x0

    cmpl-float v0, p0, v1

    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    return p0
.end method

.method public static b([BI)F
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 v0, p1, 0x0

    .line 3880
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    add-int/lit8 v2, p1, 0x1

    .line 3882
    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    long-to-int v0, v0

    const v1, 0xffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    add-int/lit8 v2, p1, 0x2

    .line 3884
    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    long-to-int v0, v0

    const v1, 0xffffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    add-int/lit8 p1, p1, 0x3

    .line 3886
    aget-byte p0, p0, p1

    int-to-long p0, p0

    const/16 v2, 0x18

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    long-to-int p0, p0

    .line 3888
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public static b(II)I
    .locals 3

    const/16 v0, 0x2d

    if-le p0, v0, :cond_0

    const/16 p0, 0xb4

    return p0

    :cond_0
    const/4 v1, 0x0

    const/16 v2, -0x2d

    if-lt p0, v2, :cond_3

    if-lt p1, v0, :cond_1

    const/16 p0, 0x5a

    return p0

    :cond_1
    if-le p1, v2, :cond_2

    return v1

    :cond_2
    const/16 p0, 0x10e

    return p0

    :cond_3
    return v1
.end method

.method private static b(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 8

    .line 1023
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v0, v0

    .line 1024
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v2, p0

    const/4 p0, 0x1

    if-gez p2, :cond_0

    move v4, p0

    goto :goto_0

    :cond_0
    mul-double v4, v0, v2

    int-to-double v6, p2

    div-double/2addr v4, v6

    .line 1026
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    :goto_0
    if-gez p1, :cond_1

    const/16 v0, 0x80

    goto :goto_1

    :cond_1
    int-to-double v5, p1

    div-double/2addr v0, v5

    .line 1028
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    div-double/2addr v2, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-int v0, v0

    :goto_1
    if-ge v0, v4, :cond_2

    return v4

    :cond_2
    if-gez p2, :cond_3

    if-gez p1, :cond_3

    return p0

    :cond_3
    if-gez p1, :cond_4

    return v4

    :cond_4
    return v0
.end method

.method private static synthetic b(Landroid/util/Size;Landroid/util/Size;)I
    .locals 1

    .line 1402
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    add-int/2addr v0, p0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    add-int/2addr p0, p1

    sub-int/2addr v0, p0

    return v0
.end method

.method public static b([B)I
    .locals 11

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    move v1, v0

    :goto_0
    add-int/lit8 v2, v1, 0x3

    .line 4302
    array-length v3, p0

    const/4 v4, 0x4

    const-string v5, "Util"

    const/4 v6, 0x1

    const/16 v7, 0x8

    const/4 v8, 0x2

    if-ge v2, v3, :cond_9

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p0, v1

    const/16 v3, 0xff

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_8

    .line 4303
    aget-byte v1, p0, v2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0xd8

    if-eq v1, v3, :cond_7

    if-ne v1, v6, :cond_2

    goto :goto_2

    :cond_2
    const/16 v3, 0xd9

    if-eq v1, v3, :cond_8

    const/16 v3, 0xda

    if-ne v1, v3, :cond_3

    goto :goto_3

    .line 4322
    :cond_3
    invoke-static {p0, v2, v8, v0}, Lcom/oplus/camera/util/Util;->a([BIIZ)I

    move-result v3

    if-lt v3, v8, :cond_6

    add-int v9, v2, v3

    .line 4324
    array-length v10, p0

    if-le v9, v10, :cond_4

    goto :goto_1

    :cond_4
    const/16 v10, 0xe1

    if-ne v1, v10, :cond_5

    if-lt v3, v7, :cond_5

    add-int/lit8 v1, v2, 0x2

    .line 4333
    invoke-static {p0, v1, v4, v0}, Lcom/oplus/camera/util/Util;->a([BIIZ)I

    move-result v1

    const v10, 0x45786966

    if-ne v1, v10, :cond_5

    add-int/lit8 v1, v2, 0x6

    .line 4334
    invoke-static {p0, v1, v8, v0}, Lcom/oplus/camera/util/Util;->a([BIIZ)I

    move-result v1

    if-nez v1, :cond_5

    add-int/lit8 v1, v2, 0x8

    add-int/lit8 v2, v3, -0x8

    goto :goto_4

    :cond_5
    move v1, v9

    goto :goto_0

    :cond_6
    :goto_1
    const-string p0, "getOrientation, Invalid length"

    .line 4325
    invoke-static {v5, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_7
    :goto_2
    move v1, v2

    goto :goto_0

    :cond_8
    :goto_3
    move v1, v2

    :cond_9
    move v2, v0

    :goto_4
    if-le v2, v7, :cond_13

    .line 4348
    invoke-static {p0, v1, v4, v0}, Lcom/oplus/camera/util/Util;->a([BIIZ)I

    move-result v3

    const v9, 0x49492a00    # 823968.0f

    if-eq v3, v9, :cond_a

    const v10, 0x4d4d002a    # 2.14958752E8f

    if-eq v3, v10, :cond_a

    const-string p0, "getOrientation, Invalid byte order"

    .line 4351
    invoke-static {v5, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_a
    if-ne v3, v9, :cond_b

    move v3, v6

    goto :goto_5

    :cond_b
    move v3, v0

    :goto_5
    add-int/lit8 v9, v1, 0x4

    .line 4359
    invoke-static {p0, v9, v4, v3}, Lcom/oplus/camera/util/Util;->a([BIIZ)I

    move-result v4

    add-int/2addr v4, v8

    const/16 v9, 0xa

    if-lt v4, v9, :cond_12

    if-le v4, v2, :cond_c

    goto :goto_7

    :cond_c
    add-int/2addr v1, v4

    sub-int/2addr v2, v4

    add-int/lit8 v4, v1, -0x2

    .line 4371
    invoke-static {p0, v4, v8, v3}, Lcom/oplus/camera/util/Util;->a([BIIZ)I

    move-result v4

    :goto_6
    add-int/lit8 v9, v4, -0x1

    if-lez v4, :cond_13

    const/16 v4, 0xc

    if-lt v2, v4, :cond_13

    .line 4375
    invoke-static {p0, v1, v8, v3}, Lcom/oplus/camera/util/Util;->a([BIIZ)I

    move-result v4

    const/16 v10, 0x112

    if-ne v4, v10, :cond_11

    add-int/2addr v1, v7

    .line 4379
    invoke-static {p0, v1, v8, v3}, Lcom/oplus/camera/util/Util;->a([BIIZ)I

    move-result p0

    if-eq p0, v6, :cond_10

    const/4 v1, 0x3

    if-eq p0, v1, :cond_f

    const/4 v1, 0x6

    if-eq p0, v1, :cond_e

    if-eq p0, v7, :cond_d

    const-string p0, "getOrientation, Unsupported orientation"

    .line 4395
    invoke-static {v5, p0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_d
    const/16 p0, 0x10e

    return p0

    :cond_e
    const/16 p0, 0x5a

    return p0

    :cond_f
    const/16 p0, 0xb4

    return p0

    :cond_10
    return v0

    :cond_11
    add-int/lit8 v1, v1, 0xc

    add-int/lit8 v2, v2, -0xc

    move v4, v9

    goto :goto_6

    :cond_12
    :goto_7
    const-string p0, "getOrientation, Invalid offset"

    .line 4362
    invoke-static {v5, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_13
    const-string p0, "getOrientation, Orientation not found"

    .line 4406
    invoke-static {v5, p0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static b(Landroid/content/Context;IFI)Landroid/graphics/Bitmap;
    .locals 4

    .line 6133
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 6134
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 6135
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 6140
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    if-eq v1, p3, :cond_0

    .line 6141
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    .line 6142
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    int-to-float p3, p3

    mul-float/2addr v1, p3

    mul-float/2addr v1, p2

    float-to-int v1, v1

    .line 6143
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    .line 6144
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v2, v2

    div-float/2addr v3, v2

    mul-float/2addr v3, p3

    mul-float/2addr v3, p2

    float-to-int p2, v3

    goto :goto_0

    .line 6146
    :cond_0
    iget p3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float p3, p3

    mul-float/2addr p3, p2

    float-to-int v1, p3

    .line 6147
    iget p3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float p3, p3

    mul-float/2addr p3, p2

    float-to-int p2, p3

    :goto_0
    const/4 p3, 0x0

    .line 6150
    iput-boolean p3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 6151
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0, v1, p2, p3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .line 843
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    .line 844
    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 845
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    if-eqz p0, :cond_0

    .line 5235
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 5236
    invoke-virtual {v6, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 p1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 5241
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/oplus/camera/util/Util;->a(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5243
    invoke-virtual {p0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    :goto_0
    return-object p1

    :cond_0
    return-object p0
.end method

.method public static b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 938
    invoke-static {p0, p1, v0}, Lcom/oplus/camera/util/Util;->a(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .line 7208
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 7210
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 7211
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 7212
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 7213
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->e(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static b([BIIIIZ)Landroid/graphics/Bitmap;
    .locals 4

    .line 2968
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "yuvToBitmap, width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", orientation: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", scale: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mirror: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Util"

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2971
    div-int v0, p2, p4

    .line 2973
    rem-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 2977
    :cond_0
    invoke-static {p0, p1, p2, p4}, Lcom/oplus/camera/util/Util;->a([BIII)[B

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 2983
    :cond_1
    div-int/2addr p1, p4

    invoke-static {p0, p1, v0}, Lcom/oplus/camera/util/Util;->c([BII)[I

    move-result-object p0

    .line 2985
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v0, p2}, Lcom/oplus/camera/util/Util;->a([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 2986
    invoke-static {p0, p3, p5}, Lcom/oplus/camera/util/Util;->a(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 2988
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "yuvToBitmap X, bitmap width: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 6273
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Landroid/media/ExifInterface;
    .locals 3

    .line 4073
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4075
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getExif error, path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Util"

    invoke-static {v1, p0, v0}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static b(Ljava/util/List;D)Landroid/util/Size;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;D)",
            "Landroid/util/Size;"
        }
    .end annotation

    const/4 v0, -0x1

    .line 1407
    invoke-static {p0, p1, p2, v0}, Lcom/oplus/camera/util/Util;->b(Ljava/util/List;DI)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/util/List;DI)Landroid/util/Size;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;DI)",
            "Landroid/util/Size;"
        }
    .end annotation

    const/4 v0, -0x1

    .line 1411
    invoke-static {p0, p1, p2, p3, v0}, Lcom/oplus/camera/util/Util;->a(Ljava/util/List;DII)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized b(J)Ljava/lang/String;
    .locals 4

    const-class v0, Lcom/oplus/camera/util/Util;

    monitor-enter v0

    .line 1723
    :try_start_0
    sget-object v1, Lcom/oplus/camera/util/Util;->p:Lcom/oplus/camera/util/Util$a;

    if-nez v1, :cond_0

    .line 1724
    new-instance v1, Lcom/oplus/camera/util/Util$a;

    sget-object v2, Lcom/oplus/camera/util/Util;->J:Landroid/content/Context;

    const v3, 0x7f100203

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/oplus/camera/util/Util$a;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/oplus/camera/util/Util;->p:Lcom/oplus/camera/util/Util$a;

    .line 1727
    :cond_0
    sget-object v1, Lcom/oplus/camera/util/Util;->p:Lcom/oplus/camera/util/Util$a;

    invoke-virtual {v1, p0, p1}, Lcom/oplus/camera/util/Util$a;->a(J)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static b(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .line 7143
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2f

    .line 7144
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Z)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    const-string p0, "commonVideo"

    goto :goto_0

    :cond_0
    const-string p0, "common"

    :goto_0
    return-object p0
.end method

.method public static b(I)V
    .locals 2

    .line 3695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSizeRatioType, type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Util"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3697
    sput p0, Lcom/oplus/camera/util/Util;->h:I

    return-void
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 4

    .line 3767
    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    .line 3769
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eq v0, v1, :cond_0

    .line 3772
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRequestedOrientation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Util"

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3774
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1

    const-string v0, "attachApplication"

    .line 502
    invoke-static {v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 504
    sput-object p0, Lcom/oplus/camera/util/Util;->J:Landroid/content/Context;

    const-string p0, "oplus.software.video.wnr_support"

    .line 505
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->h(Ljava/lang/String;)Z

    move-result p0

    sput-boolean p0, Lcom/oplus/camera/util/Util;->q:Z

    .line 507
    invoke-static {v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/util/Size;)V
    .locals 2

    .line 3705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPreviewSize, size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Util"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3707
    sput-object p0, Lcom/oplus/camera/util/Util;->ay:Landroid/util/Size;

    return-void
.end method

.method public static b(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x190

    .line 2487
    invoke-static {p0, v0}, Lcom/oplus/camera/util/Util;->b(Landroid/view/View;I)V

    return-void
.end method

.method public static b(Landroid/view/View;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2491
    invoke-static {p0, p1, v0, v1}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;IILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public static b(Ljava/lang/Runnable;)V
    .locals 1

    .line 735
    sget-object v0, Lcom/oplus/camera/util/Util;->R:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 736
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static b()Z
    .locals 1

    .line 597
    sget-boolean v0, Lcom/oplus/camera/util/Util;->s:Z

    return v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 5470
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {}, Lcom/oplus/camera/util/Util;->aP()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 5472
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string p0, "Util"

    .line 5474
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isGallerySupportFeature, feature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", support: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5476
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    return v0
.end method

.method public static b(Ljava/lang/String;I)Z
    .locals 2

    const-string v0, "pref_video_size_key"

    .line 6594
    invoke-static {v0, p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getSupportedList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 6598
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6599
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 5579
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 5583
    :cond_0
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigStringArrayValue(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 5585
    array-length v0, p1

    if-gtz v0, :cond_1

    goto :goto_1

    .line 5589
    :cond_1
    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    .line 5590
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method public static b(Ljava/lang/String;Z)Z
    .locals 1

    const-string v0, "com.oplus.ultrawide.support"

    .line 5607
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5608
    invoke-static {p0, p1}, Lcom/oplus/camera/util/Util;->a(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static b(Ljava/util/Locale;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 5343
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    const-string v0, "cn"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Ljava/util/Map;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 5744
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->a(Ljava/util/Map;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static b([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 6703
    :cond_0
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 6704
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static b([BII)[B
    .locals 10

    shr-int/lit8 v0, p2, 0x1

    mul-int v1, p1, p2

    mul-int/lit8 v2, v1, 0x3

    shr-int/lit8 v2, v2, 0x1

    .line 2024
    new-array v2, v2, [B

    add-int/lit8 v3, p1, -0x1

    const/4 v4, 0x0

    move v5, v3

    move v6, v4

    :goto_0
    if-ltz v5, :cond_1

    move v7, v6

    move v6, v4

    :goto_1
    if-ge v6, p2, :cond_0

    add-int/lit8 v8, v7, 0x1

    mul-int v9, p1, v6

    add-int/2addr v9, v5

    .line 2029
    aget-byte v9, p0, v9

    aput-byte v9, v2, v7

    add-int/lit8 v6, v6, 0x1

    move v7, v8

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, -0x1

    move v6, v7

    goto :goto_0

    :cond_1
    :goto_2
    if-lez v3, :cond_3

    move p2, v4

    :goto_3
    if-ge p2, v0, :cond_2

    add-int/lit8 v5, v6, 0x1

    mul-int v7, p1, p2

    add-int/2addr v7, v1

    add-int/2addr v7, v3

    add-int/lit8 v8, v7, -0x1

    .line 2036
    aget-byte v8, p0, v8

    aput-byte v8, v2, v6

    add-int/lit8 v6, v5, 0x1

    .line 2037
    aget-byte v7, p0, v7

    aput-byte v7, v2, v5

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, -0x2

    goto :goto_2

    :cond_3
    return-object v2
.end method

.method private static b([BIII)[B
    .locals 3

    mul-int/2addr p2, p1

    mul-int/lit8 p2, p2, 0x3

    shr-int/lit8 p2, p2, 0x1

    .line 2810
    new-array p2, p2, [B

    const/4 v0, 0x0

    move v1, v0

    .line 2811
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 2812
    invoke-static {p0, v0, p2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, p1

    add-int/2addr v0, p3

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public static b([BIIII)[B
    .locals 2

    .line 2783
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "yuvDropPadding, nv21: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", stride: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", scanLine: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Util"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-ne p1, p3, :cond_0

    if-ne p2, p4, :cond_0

    return-object p0

    :cond_0
    if-le p4, p2, :cond_1

    .line 2793
    invoke-static {p0, p3, p2, p4}, Lcom/oplus/camera/util/Util;->c([BIII)[B

    move-result-object p0

    :cond_1
    if-le p3, p1, :cond_2

    .line 2799
    invoke-static {p0, p1, p2, p3}, Lcom/oplus/camera/util/Util;->b([BIII)[B

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static b([I)[I
    .locals 6

    if-eqz p0, :cond_0

    .line 5634
    array-length v0, p0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 5635
    new-array v0, v1, [I

    const/4 v1, 0x0

    .line 5636
    aget v2, p0, v1

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 5637
    aget v2, p0, v1

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 5638
    aget v2, p0, v1

    const/4 v3, 0x2

    aput v2, v0, v3

    const/4 v2, 0x5

    .line 5639
    aget v4, p0, v2

    const/4 v5, 0x3

    aput v4, v0, v5

    .line 5640
    aget v4, p0, v5

    aput v4, v0, v1

    .line 5641
    aget v1, p0, v3

    aput v1, v0, v2

    const/4 v1, 0x6

    .line 5642
    aget v2, p0, v1

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 5643
    aget p0, p0, v1

    aput p0, v0, v1

    return-object v0

    :cond_0
    return-object p0
.end method

.method public static b(III)[Ljava/lang/String;
    .locals 2

    mul-int/lit8 v0, p0, -0x26

    mul-int/lit8 v1, p1, 0x4a

    sub-int/2addr v0, v1

    mul-int/lit8 v1, p2, 0x70

    add-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x80

    shr-int/lit8 v0, v0, 0x8

    add-int/lit16 v0, v0, 0x80

    mul-int/lit8 p0, p0, 0x70

    mul-int/lit8 p1, p1, 0x5e

    sub-int/2addr p0, p1

    mul-int/lit8 p2, p2, 0x12

    sub-int/2addr p0, p2

    add-int/lit16 p0, p0, 0x80

    shr-int/lit8 p0, p0, 0x8

    add-int/lit16 p0, p0, 0x80

    const/4 p1, 0x0

    const/16 p2, 0xff

    if-gez p0, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    if-le p0, p2, :cond_1

    move p0, p2

    :cond_1
    :goto_0
    if-gez v0, :cond_2

    move p2, p1

    goto :goto_1

    :cond_2
    if-le v0, p2, :cond_3

    goto :goto_1

    :cond_3
    move p2, v0

    :goto_1
    const/4 v0, 0x2

    .line 2119
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, p1

    const/4 p0, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, p0

    return-object v0
.end method

.method private static ba()I
    .locals 4

    .line 4699
    sget-object v0, Lcom/oplus/camera/util/Util;->J:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 4702
    sget-object v1, Lcom/oplus/camera/util/Util;->J:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static bb()Ljava/util/Locale;
    .locals 2

    .line 5325
    invoke-static {}, Lcom/oplus/camera/MyApplication;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5327
    invoke-virtual {v0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 5328
    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static c(II)I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    sub-int v1, p0, p1

    .line 1209
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    rsub-int v2, v1, 0x168

    .line 1210
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v2, 0x41

    if-lt v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    add-int/lit8 p0, p0, 0x1e

    .line 1215
    div-int/lit8 p0, p0, 0x5a

    mul-int/lit8 p0, p0, 0x5a

    rem-int/lit16 p0, p0, 0x168

    return p0

    :cond_2
    return p1
.end method

.method public static c(Landroid/content/Context;IFI)I
    .locals 2

    .line 6156
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 6157
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 6158
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 6161
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->y(Landroid/content/Context;)Z

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez p1, :cond_1

    .line 6162
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    if-eq p1, p3, :cond_0

    .line 6163
    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float p1, p1

    mul-float/2addr p1, v1

    .line 6164
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    goto :goto_0

    .line 6166
    :cond_0
    iget p0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float p0, p0

    mul-float/2addr p0, p2

    float-to-int p0, p0

    goto :goto_1

    :cond_1
    const/16 p0, 0x1e0

    const-string p1, "com.oplus.device.ultra.high.density.support"

    .line 6171
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 6172
    sget p0, Lcom/oplus/camera/util/Util;->a:I

    .line 6175
    :cond_2
    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float p1, p1

    mul-float/2addr p1, v1

    :goto_0
    int-to-float p0, p0

    div-float/2addr p1, p0

    int-to-float p0, p3

    mul-float/2addr p1, p0

    mul-float/2addr p1, p2

    float-to-int p0, p1

    .line 6179
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getBitmapFromVectorDrawableWidth, options.outWidth: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", width: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Util"

    invoke-static {p2, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method private static c(Landroid/view/View;)I
    .locals 3

    .line 5115
    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5117
    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const v0, 0x7f090424

    .line 5118
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 5120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getViewVisibilityOrAnimationTo, visibilityObj: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Util"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_1

    .line 5122
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    goto :goto_0

    :cond_1
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0

    .line 5125
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    return p0
.end method

.method public static varargs c([I)I
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 5678
    :cond_0
    array-length v1, p0

    const/4 v2, 0x1

    :goto_0
    if-ge v0, v1, :cond_1

    aget v3, p0, v0

    shl-int/lit8 v4, v2, 0x5

    sub-int/2addr v4, v2

    xor-int v2, v4, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static c(III)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v0, 0x1

    .line 3176
    new-array v1, v0, [I

    .line 3177
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v2}, Lcom/oplus/camera/util/Util;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v9, 0x0

    .line 3179
    invoke-static {v0, v1, v9}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 3180
    aget v3, v1, v9

    const v4, 0x8d40

    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v3, 0x8ce0

    const/16 v5, 0xde1

    .line 3181
    invoke-static {v4, v3, v5, p0, v9}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 3182
    new-instance v3, Lcom/oplus/camera/jni/FormatConverter;

    invoke-direct {v3}, Lcom/oplus/camera/jni/FormatConverter;-><init>()V

    const/16 v7, 0x1908

    const/16 v8, 0x1401

    move-object v4, v2

    move v5, p1

    move v6, p2

    invoke-virtual/range {v3 .. v8}, Lcom/oplus/camera/jni/FormatConverter;->glReadPixelsToBitmap(Landroid/graphics/Bitmap;IIII)V

    .line 3183
    invoke-static {v0, v1, v9}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    return-object v2
.end method

.method public static c(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .line 2516
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2517
    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 2518
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2521
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/oplus/camera/util/Util;->a(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq p0, v0, :cond_0

    .line 2524
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2528
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    :cond_0
    :goto_0
    return-object p0
.end method

.method public static c(Z)Landroid/graphics/Typeface;
    .locals 2

    .line 3412
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const-string v0, "Util"

    const-string v1, "sys-sans-en"

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 3416
    :try_start_0
    invoke-static {v1, p0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "getSansEnTypeface, Create Typeface from /system/fonts/SysSans-En-Medium.otf failed!"

    .line 3418
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3420
    sget-object p0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    :goto_0
    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 3426
    :try_start_1
    invoke-static {v1, p0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string p0, "getSansEnTypeface, Create Typeface from /system/fonts/SysSans-En-Regular.otf failed!"

    .line 3428
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3430
    sget-object p0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_1
    return-object p0
.end method

.method public static c(Ljava/util/List;D)Landroid/util/Size;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;D)",
            "Landroid/util/Size;"
        }
    .end annotation

    const/4 v0, -0x1

    .line 1447
    invoke-static {p0, p1, p2, v0}, Lcom/oplus/camera/util/Util;->c(Ljava/util/List;DI)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/util/List;DI)Landroid/util/Size;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;DI)",
            "Landroid/util/Size;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    .line 1451
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 1457
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    .line 1458
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    sub-double/2addr v2, p1

    .line 1460
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3fa999999999999aL    # 0.05

    cmpl-double v2, v2, v4

    if-lez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    if-eq v2, p3, :cond_3

    .line 1464
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v2

    if-gt v2, p3, :cond_1

    :cond_3
    if-eqz v0, :cond_4

    .line 1465
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_1

    :cond_4
    move-object v0, v1

    goto :goto_0

    :cond_5
    const-string p0, "Util"

    if-eqz v0, :cond_6

    .line 1471
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getImpreciseMaxSizeByRatio, size: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", targetRatio: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string p1, "getImpreciseMaxSizeByRatio, optimalSize is null"

    .line 1474
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_1
    return-object v0
.end method

.method public static c(Landroid/content/Context;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6575
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0300cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "video_size_720p"

    .line 6578
    invoke-static {v1, p1}, Lcom/oplus/camera/util/Util;->b(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f1004f1

    .line 6579
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    const-string v1, "video_size_4kuhd"

    .line 6582
    invoke-static {v1, p1}, Lcom/oplus/camera/util/Util;->b(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1

    const v1, 0x7f1004f0

    .line 6583
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    const-string v1, "video_size_8k"

    .line 6586
    invoke-static {v1, p1}, Lcom/oplus/camera/util/Util;->b(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_2

    const p1, 0x7f1004f2

    .line 6587
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method public static declared-synchronized c(Landroid/content/Context;)V
    .locals 6

    const-class v0, Lcom/oplus/camera/util/Util;

    monitor-enter v0

    :try_start_0
    const-string v1, "Util"

    .line 511
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initialize, sbInit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/oplus/camera/util/Util;->ar:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    sget-boolean v1, Lcom/oplus/camera/util/Util;->ar:Z

    if-nez v1, :cond_0

    const-string v1, "initialize"

    .line 514
    invoke-static {v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 516
    invoke-static {}, Lcom/oplus/camera/ui/control/e;->a()V

    .line 517
    invoke-static {}, Lcom/oplus/camera/util/Util;->at()Z

    const/4 v1, 0x0

    .line 518
    invoke-static {p0, v1}, Lcom/oplus/camera/q/a;->a(Landroid/content/Context;Lcom/oplus/camera/q/a$a;)V

    .line 519
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v2, "window"

    .line 520
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 521
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const-string v3, "Util"

    .line 523
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "displaycontent, getDefaultDisplay().getHeight(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " wm.getDefaultDisplay().getWidth(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " metrics.density: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " metrics.densityDpi: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 523
    invoke-static {v3, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lcom/oplus/camera/util/Util;->o:F

    .line 528
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/oplus/camera/util/Util;->K:Landroid/os/Handler;

    .line 530
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->f(Landroid/content/Context;)V

    .line 532
    sget-object p0, Lcom/oplus/camera/util/Util;->J:Landroid/content/Context;

    invoke-static {p0}, Lcom/oplus/camera/util/Util;->q(Landroid/content/Context;)Landroid/content/Context;

    .line 533
    invoke-static {}, Lcom/oplus/camera/util/Util;->m()V

    const/4 p0, 0x1

    .line 534
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->a(Z)V

    .line 535
    invoke-static {}, Lcom/oplus/camera/util/Util;->ad()V

    const-string p0, "initialize"

    .line 537
    invoke-static {p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    :cond_0
    const-string p0, "Util"

    const-string v1, "initialize X"

    .line 540
    invoke-static {p0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 541
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static c(Ljava/lang/Runnable;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 5664
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5665
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 5667
    :cond_1
    invoke-static {}, Lcom/oplus/camera/util/Util;->ay()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public static c()Z
    .locals 1

    .line 601
    sget-boolean v0, Lcom/oplus/camera/util/Util;->t:Z

    return v0
.end method

.method public static c(I)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 3749
    sget-boolean v1, Lcom/oplus/camera/util/Util;->r:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x5

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 5689
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 5690
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5692
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPackageExist, packageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", e: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Util"

    invoke-static {v1, p1, p0}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static c(Landroid/util/Size;)Z
    .locals 1

    .line 3754
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-static {v0, p0}, Lcom/oplus/camera/util/Util;->d(II)I

    move-result p0

    invoke-static {p0}, Lcom/oplus/camera/util/Util;->d(I)Z

    move-result p0

    return p0
.end method

.method public static c(Ljava/lang/String;Z)Z
    .locals 1

    .line 6225
    :try_start_0
    invoke-static {p0, p1}, Landroid/os/OplusSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "Util"

    const-string v0, "getSystemProperties fail, return default value"

    .line 6227
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method public static c(J)[B
    .locals 4

    .line 5547
    sget v0, Lcom/oplus/camera/util/Util;->g:I

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 5549
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    const-wide/16 v2, 0xff

    and-long/2addr v2, p0

    .line 5550
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    .line 5551
    sget v2, Lcom/oplus/camera/util/Util;->g:I

    shr-long/2addr p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static c(Ljava/lang/String;)[B
    .locals 2

    .line 4448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getThumbnail, filepath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Util"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4450
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4452
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 4454
    invoke-virtual {v0}, Landroid/media/ExifInterface;->hasThumbnail()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4455
    invoke-virtual {v0}, Landroid/media/ExifInterface;->getThumbnail()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4458
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static c([BIII)[B
    .locals 2

    mul-int/2addr p2, p1

    mul-int/2addr p1, p3

    mul-int/lit8 p3, p2, 0x3

    shr-int/lit8 p3, p3, 0x1

    .line 2822
    new-array v0, p3, [B

    const/4 v1, 0x0

    .line 2823
    invoke-static {p0, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr p3, p2

    .line 2824
    invoke-static {p0, p1, v0, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static c([BII)[I
    .locals 18

    move/from16 v0, p1

    move/from16 v1, p2

    .line 2618
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decodeYUV420SP, width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Util"

    invoke-static {v3, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    mul-int v2, v0, v1

    .line 2621
    new-array v4, v2, [I

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v6, v1, :cond_9

    shr-int/lit8 v8, v6, 0x1

    mul-int/2addr v8, v0

    add-int/2addr v8, v2

    move v10, v5

    move v11, v10

    move v9, v8

    move v8, v7

    move v7, v11

    :goto_1
    if-ge v7, v0, :cond_8

    .line 2629
    aget-byte v12, p0, v8

    and-int/lit16 v12, v12, 0xff

    add-int/lit8 v12, v12, -0x10

    if-gez v12, :cond_0

    move v12, v5

    :cond_0
    and-int/lit8 v13, v7, 0x1

    if-nez v13, :cond_1

    add-int/lit8 v10, v9, 0x1

    .line 2636
    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    add-int/lit8 v9, v9, -0x80

    add-int/lit8 v11, v10, 0x1

    .line 2637
    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    add-int/lit8 v10, v10, -0x80

    move/from16 v17, v11

    move v11, v9

    move/from16 v9, v17

    :cond_1
    add-int/lit8 v12, v12, 0xa

    mul-int/lit16 v12, v12, 0x4a8

    mul-int/lit16 v13, v11, 0x662

    add-int/2addr v13, v12

    mul-int/lit16 v14, v11, 0x341

    sub-int v14, v12, v14

    mul-int/lit16 v15, v10, 0x190

    sub-int/2addr v14, v15

    mul-int/lit16 v15, v10, 0x812

    add-int/2addr v12, v15

    const v15, 0x3ffff

    if-gez v13, :cond_2

    move v13, v5

    goto :goto_2

    :cond_2
    if-le v13, v15, :cond_3

    move v13, v15

    :cond_3
    :goto_2
    if-gez v14, :cond_4

    move v14, v5

    goto :goto_3

    :cond_4
    if-le v14, v15, :cond_5

    move v14, v15

    :cond_5
    :goto_3
    if-gez v12, :cond_6

    move v15, v5

    goto :goto_4

    :cond_6
    if-le v12, v15, :cond_7

    goto :goto_4

    :cond_7
    move v15, v12

    :goto_4
    const/high16 v12, -0x1000000

    shl-int/lit8 v13, v13, 0x6

    const/high16 v16, 0xff0000

    and-int v13, v13, v16

    or-int/2addr v12, v13

    shr-int/lit8 v13, v14, 0x2

    const v14, 0xff00

    and-int/2addr v13, v14

    or-int/2addr v12, v13

    shr-int/lit8 v13, v15, 0xa

    and-int/lit16 v13, v13, 0xff

    or-int/2addr v12, v13

    .line 2664
    aput v12, v4, v8

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_8
    add-int/lit8 v6, v6, 0x1

    move v7, v8

    goto :goto_0

    :cond_9
    const-string v0, "decodeYUV420SP X"

    .line 2668
    invoke-static {v3, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method public static d(II)I
    .locals 5

    const/4 v0, -0x1

    if-eqz p0, :cond_a

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    int-to-double v1, p0

    int-to-double p0, p1

    div-double/2addr v1, p0

    const-wide p0, 0x3ff5555555555555L    # 1.3333333333333333

    sub-double p0, v1, p0

    .line 3717
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide v3, 0x3f847ae147ae147bL    # 0.01

    cmpg-double p0, p0, v3

    if-gez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const-wide p0, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    sub-double p0, v1, p0

    .line 3720
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    cmpg-double p0, p0, v3

    if-gez p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    sub-double p0, v1, p0

    .line 3723
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    cmpg-double p0, p0, v3

    if-gez p0, :cond_3

    const/4 p0, 0x2

    return p0

    :cond_3
    const-wide/high16 p0, 0x3ff8000000000000L    # 1.5

    sub-double p0, v1, p0

    .line 3726
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    cmpg-double p0, p0, v3

    if-gez p0, :cond_4

    const/4 p0, 0x3

    return p0

    :cond_4
    const-wide p0, 0x3ff38e38e38e38e4L    # 1.2222222222222223

    sub-double p0, v1, p0

    .line 3729
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    cmpg-double p0, p0, v3

    if-gez p0, :cond_5

    const/4 p0, 0x4

    return p0

    :cond_5
    const-wide p0, 0x3feddddddddddddeL    # 0.9333333333333333

    sub-double p0, v1, p0

    .line 3732
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    cmpg-double p0, p0, v3

    if-gez p0, :cond_6

    const/4 p0, 0x6

    return p0

    :cond_6
    const-wide p0, 0x4002aaaaaaaaaaabL    # 2.3333333333333335

    sub-double p0, v1, p0

    .line 3735
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    cmpg-double p0, p0, v3

    if-gez p0, :cond_7

    const/4 p0, 0x7

    return p0

    .line 3738
    :cond_7
    invoke-static {}, Lcom/oplus/camera/util/Util;->X()D

    move-result-wide p0

    sub-double p0, v1, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    cmpg-double p0, p0, v3

    if-ltz p0, :cond_9

    .line 3740
    invoke-static {}, Lcom/oplus/camera/util/Util;->am()Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-static {}, Lcom/oplus/camera/util/Util;->X()D

    move-result-wide p0

    sub-double/2addr v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide v1, 0x3f9eb851eb851eb8L    # 0.03

    cmpg-double p0, p0, v1

    if-gez p0, :cond_8

    goto :goto_0

    :cond_8
    return v0

    :cond_9
    :goto_0
    const/4 p0, 0x5

    return p0

    :cond_a
    :goto_1
    return v0
.end method

.method public static d(J)I
    .locals 2

    .line 6563
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 6564
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    .line 6566
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static d(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 5193
    invoke-static {p0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/camera/util/Util;->e(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "getAssertData, close stream failed!"

    const-string v1, "Util"

    const/4 v2, 0x0

    .line 4712
    :try_start_0
    sget-object v3, Lcom/oplus/camera/util/Util;->J:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4713
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v3

    .line 4714
    new-array v3, v3, [B

    .line 4715
    invoke-virtual {p0, v3}, Ljava/io/InputStream;->read([B)I

    .line 4716
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_0

    .line 4722
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 4724
    :catch_0
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v4

    :catch_1
    move-exception v3

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v5, v2

    move-object v2, p0

    move-object p0, v5

    goto :goto_3

    :catch_2
    move-exception v3

    move-object p0, v2

    .line 4718
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p0, :cond_1

    .line 4722
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    .line 4724
    :catch_3
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-object v2

    :catchall_1
    move-exception v2

    :goto_3
    if-eqz p0, :cond_2

    .line 4722
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    .line 4724
    :catch_4
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 4727
    :cond_2
    :goto_4
    throw v2
.end method

.method public static declared-synchronized d(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/oplus/camera/util/Util;

    monitor-enter v0

    .line 544
    :try_start_0
    sget-boolean v1, Lcom/oplus/camera/util/Util;->as:Z

    if-nez v1, :cond_0

    .line 545
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->H(Landroid/content/Context;)V

    .line 546
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->I(Landroid/content/Context;)V

    .line 547
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->e(Landroid/content/Context;)V

    const/4 p0, 0x1

    .line 548
    sput-boolean p0, Lcom/oplus/camera/util/Util;->as:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 550
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static d(Z)V
    .locals 0

    .line 3653
    sput-boolean p0, Lcom/oplus/camera/util/Util;->y:Z

    return-void
.end method

.method public static d([BII)V
    .locals 3

    mul-int/2addr p1, p2

    mul-int/lit8 p2, p1, 0x3

    shr-int/lit8 p2, p2, 0x1

    :goto_0
    if-ge p1, p2, :cond_0

    .line 2850
    aget-byte v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    .line 2851
    aget-byte v2, p0, v1

    aput-byte v2, p0, p1

    .line 2852
    aput-byte v0, p0, v1

    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static d()Z
    .locals 1

    .line 605
    sget-boolean v0, Lcom/oplus/camera/util/Util;->u:Z

    return v0
.end method

.method public static d(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x5

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 6350
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 6351
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static e()I
    .locals 3

    .line 636
    sget-object v0, Lcom/oplus/camera/util/Util;->J:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oplus_system_folding_angle"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 638
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFolderAngle, folderAngle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Util"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private static e(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    .line 5197
    sget v0, Lcom/oplus/camera/util/Util;->a:I

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    return-object p0
.end method

.method public static e(Z)Ljava/lang/String;
    .locals 2

    const-string v0, "on"

    const-string v1, "off"

    if-eqz p0, :cond_1

    const-string p0, "com.oplus.feature.ai.enhancement.video.front.open.default.support"

    .line 7105
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    const-string p0, "com.oplus.feature.ai.enhancement.video.rear.open.default.support"

    .line 7108
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    return-object v0
.end method

.method public static e(I)V
    .locals 2

    .line 3779
    sget v0, Lcom/oplus/camera/util/Util;->i:I

    if-eq v0, p0, :cond_0

    .line 3780
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFolderAngle, sFoldAngle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/oplus/camera/util/Util;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", current: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Util"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3783
    :cond_0
    sput p0, Lcom/oplus/camera/util/Util;->aC:I

    .line 3784
    sput p0, Lcom/oplus/camera/util/Util;->i:I

    return-void
.end method

.method public static e(Landroid/content/Context;)V
    .locals 1

    const-string v0, "audio"

    .line 580
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    const-string v0, "binaural_recording_standby"

    .line 583
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "yes"

    .line 582
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 584
    sput-boolean p0, Lcom/oplus/camera/util/Util;->ap:Z

    .line 587
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkAudioBinauralRecord, sbBinauralRecordSupport: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/oplus/camera/util/Util;->ap:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Util"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 6361
    invoke-static {}, Lcom/oplus/camera/w/d;->a()Lcom/oplus/camera/w/d;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/util/Util$10;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/util/Util$10;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p0, "notifyAthena"

    invoke-virtual {v0, v1, p0}, Lcom/oplus/camera/w/d;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public static e(II)Z
    .locals 2

    .line 4735
    invoke-static {}, Lcom/oplus/camera/util/Util;->ai()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eq p0, p1, :cond_0

    if-eq p0, v1, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.oplus.feature.raw.camera.type.support"

    .line 5612
    invoke-static {p0, v0}, Lcom/oplus/camera/util/Util;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static e([BII)[B
    .locals 6

    mul-int/2addr p1, p2

    mul-int/lit8 p2, p1, 0x3

    shr-int/lit8 p2, p2, 0x1

    .line 2859
    new-array p2, p2, [B

    const/4 v0, 0x0

    .line 2860
    invoke-static {p0, v0, p2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, p1, -0x1

    mul-int/lit8 v2, p1, 0x5

    .line 2865
    div-int/lit8 v2, v2, 0x4

    move v3, v0

    .line 2867
    :goto_0
    div-int/lit8 v4, p1, 0x2

    if-ge v0, v4, :cond_0

    add-int v4, p1, v3

    add-int v5, v1, v0

    .line 2868
    aget-byte v5, p0, v5

    aput-byte v5, p2, v4

    add-int v4, v2, v3

    add-int v5, p1, v0

    .line 2869
    aget-byte v5, p0, v5

    aput-byte v5, p2, v4

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public static f(I)I
    .locals 1

    .line 4625
    invoke-static {}, Lcom/oplus/camera/util/Util;->al()Z

    move-result v0

    if-nez v0, :cond_0

    return p0

    :cond_0
    sparse-switch p0, :sswitch_data_0

    return p0

    :sswitch_0
    const p0, 0x7f100436

    return p0

    :sswitch_1
    const p0, 0x7f100438

    return p0

    :sswitch_2
    const p0, 0x7f100430

    return p0

    :sswitch_3
    const p0, 0x7f100422

    return p0

    :sswitch_4
    const p0, 0x7f100330

    return p0

    :sswitch_5
    const p0, 0x7f1002d4

    return p0

    :sswitch_6
    const p0, 0x7f1002d1

    return p0

    :sswitch_7
    const p0, 0x7f1002cd

    return p0

    :sswitch_8
    const p0, 0x7f10022a

    return p0

    :sswitch_9
    const p0, 0x7f100228

    return p0

    :sswitch_a
    const p0, 0x7f10022c

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100225 -> :sswitch_a
        0x7f100227 -> :sswitch_9
        0x7f100229 -> :sswitch_8
        0x7f1002cc -> :sswitch_7
        0x7f1002d0 -> :sswitch_6
        0x7f1002d3 -> :sswitch_5
        0x7f10032f -> :sswitch_4
        0x7f100424 -> :sswitch_3
        0x7f10042f -> :sswitch_2
        0x7f100434 -> :sswitch_1
        0x7f100435 -> :sswitch_0
    .end sparse-switch
.end method

.method public static f(II)I
    .locals 0

    add-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x1

    .line 5805
    div-int/2addr p0, p1

    mul-int/2addr p0, p1

    return p0
.end method

.method public static f([BII)I
    .locals 5

    const/4 v0, 0x0

    const-string v1, "Util"

    if-ltz p1, :cond_5

    if-nez p0, :cond_0

    goto :goto_3

    .line 3931
    :cond_0
    array-length v2, p0

    if-ge v2, p2, :cond_1

    const-string p0, "parseDataByteToInt, to index is error!"

    .line 3932
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 3937
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_0
    if-gt p1, p2, :cond_4

    .line 3940
    new-instance v1, Ljava/lang/StringBuffer;

    aget-byte v2, p0, p1

    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 3942
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    const/16 v3, 0x8

    if-le v2, v3, :cond_2

    .line 3943
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_2

    .line 3944
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-ge v2, v3, :cond_3

    .line 3945
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-ge v2, v3, :cond_3

    .line 3946
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v4, "0"

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-object v1, v2

    goto :goto_1

    .line 3951
    :cond_3
    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x1

    move-object v0, v1

    goto :goto_0

    .line 3954
    :cond_4
    new-instance p0, Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    invoke-direct {p0, p1, p2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    return p0

    :cond_5
    :goto_3
    const-string p0, "parseDataByteToInt, from index or data is error!"

    .line 3926
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static f(Ljava/lang/String;)Landroid/graphics/Rect;
    .locals 5

    const-string v0, ","

    .line 5782
    invoke-static {}, Lcom/oplus/camera/util/Util;->aA()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, ":"

    .line 5784
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 5785
    aget-object v3, p0, v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 5786
    aget-object p0, p0, v4

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 5788
    aget-object v0, v3, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 5789
    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 5790
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 5791
    aget-object p0, p0, v4

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 5793
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v0, v3, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    const-string p0, "Util"

    const-string v0, "getScreenHolePosition, hole position is incorrect"

    .line 5795
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v2
.end method

.method public static f()V
    .locals 2

    .line 644
    sget v0, Lcom/oplus/camera/util/Util;->aC:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 645
    sput v0, Lcom/oplus/camera/util/Util;->i:I

    goto :goto_0

    .line 647
    :cond_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->e()I

    move-result v0

    sput v0, Lcom/oplus/camera/util/Util;->i:I

    .line 650
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateFolderAngle, sFoldAngle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/oplus/camera/util/Util;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Util"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized f(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/oplus/camera/util/Util;

    monitor-enter v0

    .line 613
    :try_start_0
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->y(Landroid/content/Context;)Z

    move-result p0

    .line 615
    sget-object v1, Lcom/oplus/camera/util/Util;->S:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    if-nez v1, :cond_0

    if-eqz p0, :cond_0

    .line 616
    sget-object p0, Lcom/oplus/camera/util/Util;->S:Landroid/view/Display;

    invoke-virtual {p0}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object p0

    .line 617
    sget-object v1, Lcom/oplus/camera/util/Util;->T:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sput p0, Lcom/oplus/camera/util/Util;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 620
    :try_start_1
    invoke-static {p0}, Lcom/oplus/compat/view/WindowManagerNative;->getInitialDisplayDensity(I)I

    move-result p0

    sput p0, Lcom/oplus/camera/util/Util;->a:I
    :try_end_1
    .catch Lcom/oplus/compat/b/a/b; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 622
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p0, -0x1

    .line 626
    sget v1, Lcom/oplus/camera/util/Util;->aC:I

    if-eq p0, v1, :cond_1

    .line 627
    sget p0, Lcom/oplus/camera/util/Util;->aC:I

    sput p0, Lcom/oplus/camera/util/Util;->i:I

    goto :goto_1

    .line 629
    :cond_1
    invoke-static {}, Lcom/oplus/camera/util/Util;->e()I

    move-result p0

    sput p0, Lcom/oplus/camera/util/Util;->i:I

    :goto_1
    const-string p0, "Util"

    .line 632
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeDefaultDisplay, acquire sDefaultDensity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/oplus/camera/util/Util;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 633
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static g()I
    .locals 3

    .line 656
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 657
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 664
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFoldingMode, foldingMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Util"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static g(Landroid/content/Context;)Landroid/app/ActivityManager$MemoryInfo;
    .locals 3

    const-string v0, "activity"

    .line 3308
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 3309
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 3312
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3316
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMemoryInfo, mi.totalMem"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mi.availMem: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Util"

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "http://"

    .line 6073
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "https://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "HTTP://"

    .line 6075
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6076
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v1, "HTTPS://"

    .line 6077
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6080
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_3
    :goto_0
    return-object p0
.end method

.method public static g(I)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static g(II)Z
    .locals 12

    .line 5424
    new-instance v0, Landroid/media/MediaCodecList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 5425
    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 5428
    array-length v3, v0

    move v4, v2

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v6, v0, v4

    .line 5429
    invoke-virtual {v6}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 5431
    invoke-virtual {v6}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 5432
    array-length v8, v7

    move v9, v2

    :goto_1
    if-ge v9, v8, :cond_1

    aget-object v10, v7, v9

    const-string v11, "video/hevc"

    .line 5433
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 5434
    invoke-virtual {v6, v10}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 5437
    invoke-virtual {v10}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 5438
    invoke-virtual {v10}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v10

    invoke-virtual {v10, p0, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result v10

    if-eqz v10, :cond_0

    move v5, v1

    goto :goto_2

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move v2, v5

    .line 5448
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSupportH265Encoder, width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", height: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", support: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Util"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public static getModeNameByRank(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6989
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6990
    invoke-static {}, Lcom/oplus/camera/ui/modepanel/b;->a()Lcom/oplus/camera/ui/modepanel/b;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/oplus/camera/ui/modepanel/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 6992
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6993
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v1, Lcom/oplus/camera/util/-$$Lambda$W2ZbH78ZdPmvIDG_VbnTW6dpYS4;->INSTANCE:Lcom/oplus/camera/util/-$$Lambda$W2ZbH78ZdPmvIDG_VbnTW6dpYS4;

    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 6994
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 6996
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/modepanel/i;

    .line 6997
    invoke-virtual {v1}, Lcom/oplus/camera/ui/modepanel/i;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getScreenHeight()I
    .locals 1

    .line 4256
    sget v0, Lcom/oplus/camera/util/Util;->ac:I

    return v0
.end method

.method public static getScreenWidth()I
    .locals 1

    .line 4264
    sget v0, Lcom/oplus/camera/util/Util;->ab:I

    return v0
.end method

.method public static getSettingMenuPanelHeight()I
    .locals 1

    .line 4219
    sget v0, Lcom/oplus/camera/util/Util;->ae:I

    return v0
.end method

.method public static h(I)F
    .locals 1

    .line 5027
    sget-object v0, Lcom/oplus/camera/util/Util;->J:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public static h()I
    .locals 3

    .line 670
    sget-object v0, Lcom/oplus/camera/util/Util;->J:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oplus_emulate_software_folding_mode"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static h(Landroid/content/Context;)Z
    .locals 4

    .line 3322
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->g(Landroid/content/Context;)Landroid/app/ActivityManager$MemoryInfo;

    move-result-object p0

    .line 3324
    iget-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    const-wide v2, 0x100000000L

    cmp-long p0, v2, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static h(Ljava/lang/String;)Z
    .locals 1

    .line 6195
    const/4 p0, 0x0

    return p0
.end method

.method public static i(I)I
    .locals 1

    .line 5031
    sget-object v0, Lcom/oplus/camera/util/Util;->J:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    .line 6205
    :try_start_0
    invoke-static {p0, v0}, Landroid/os/OplusSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "Util"

    const-string v1, "getSystemProperties fail, return default value"

    .line 6207
    invoke-static {p0, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static i()Z
    .locals 2

    .line 698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getInitState, sbInit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/oplus/camera/util/Util;->ar:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Util"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    sget-object v0, Lcom/oplus/camera/util/Util;->at:Ljava/lang/Object;

    monitor-enter v0

    .line 701
    :try_start_0
    sget-boolean v1, Lcom/oplus/camera/util/Util;->ar:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 702
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static i(Landroid/content/Context;)Z
    .locals 4

    .line 3328
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->g(Landroid/content/Context;)Landroid/app/ActivityManager$MemoryInfo;

    move-result-object p0

    .line 3330
    iget-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    const-wide v2, 0xc0000000L

    cmp-long p0, v2, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static j(Ljava/lang/String;)I
    .locals 2

    :try_start_0
    const-string v0, "android.view.KeyEvent"

    .line 6335
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 6336
    invoke-virtual {v0, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x0

    .line 6337
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFingerKeyCode, exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Util"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static j()V
    .locals 3

    .line 714
    sget-object v0, Lcom/oplus/camera/util/Util;->au:Ljava/lang/Object;

    monitor-enter v0

    .line 715
    :try_start_0
    sget-object v1, Lcom/oplus/camera/util/Util;->Q:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    .line 716
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "WorkerThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/oplus/camera/util/Util;->Q:Landroid/os/HandlerThread;

    .line 717
    sget-object v1, Lcom/oplus/camera/util/Util;->Q:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 720
    :cond_0
    sget-object v1, Lcom/oplus/camera/util/Util;->R:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 721
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/oplus/camera/util/Util;->Q:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/oplus/camera/util/Util;->R:Landroid/os/Handler;

    .line 723
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static j(I)V
    .locals 1

    .line 5748
    invoke-static {p0}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/oplus/camera/util/Util;->aA()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Util"

    const-string v0, "broadcastFrontCameraOpened"

    .line 5749
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5751
    new-instance p0, Lcom/oplus/camera/util/Util$8;

    invoke-direct {p0}, Lcom/oplus/camera/util/Util$8;-><init>()V

    invoke-static {p0}, Lcom/oplus/camera/util/Util;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static j(Landroid/content/Context;)V
    .locals 0

    .line 3334
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->i(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "com.oplus.low.memory.max.burst.shot.num"

    .line 3335
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result p0

    sput p0, Lcom/oplus/camera/util/Util;->d:I

    goto :goto_0

    :cond_0
    const/16 p0, 0x14

    .line 3337
    sput p0, Lcom/oplus/camera/util/Util;->d:I

    :goto_0
    return-void
.end method

.method public static k(Landroid/content/Context;)J
    .locals 3

    const-string v0, "activity"

    .line 3342
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 3343
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 3346
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3350
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAvailMemory, mi.availMem: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Util"

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 3352
    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    return-wide v0
.end method

.method public static k()V
    .locals 2

    .line 741
    sget-object v0, Lcom/oplus/camera/util/Util;->R:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 742
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 743
    sput-object v1, Lcom/oplus/camera/util/Util;->R:Landroid/os/Handler;

    .line 746
    :cond_0
    sget-object v0, Lcom/oplus/camera/util/Util;->Q:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 747
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 748
    sput-object v1, Lcom/oplus/camera/util/Util;->Q:Landroid/os/HandlerThread;

    :cond_1
    return-void
.end method

.method public static k(I)V
    .locals 1

    .line 5761
    invoke-static {p0}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/oplus/camera/util/Util;->aA()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Util"

    const-string v0, "broadcastFrontCameraClosed"

    .line 5762
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5764
    new-instance p0, Lcom/oplus/camera/util/Util$9;

    invoke-direct {p0}, Lcom/oplus/camera/util/Util$9;-><init>()V

    invoke-static {p0}, Lcom/oplus/camera/util/Util;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static k(Ljava/lang/String;)[B
    .locals 5

    .line 6767
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const v1, 0x19000

    .line 6769
    new-array v1, v1, [B

    const/4 v2, 0x0

    .line 6773
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6775
    :goto_0
    :try_start_1
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result p0

    const/4 v4, -0x1

    if-eq p0, v4, :cond_0

    const/4 v4, 0x0

    .line 6776
    invoke-virtual {v0, v1, v4, p0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 6779
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6785
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 6787
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 6794
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v3, v2

    :goto_2
    if-eqz v3, :cond_1

    .line 6785
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 6787
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 6792
    :cond_1
    :goto_3
    throw p0

    :catch_2
    move-object v3, v2

    :catch_3
    if-eqz v3, :cond_2

    .line 6785
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception p0

    .line 6787
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_4
    return-object v2
.end method

.method public static l()Landroid/content/Context;
    .locals 1

    .line 753
    sget-object v0, Lcom/oplus/camera/util/Util;->J:Landroid/content/Context;

    return-object v0
.end method

.method public static l(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 1

    .line 3370
    sget-object v0, Lcom/oplus/camera/util/Util;->B:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3371
    invoke-static {p0, v0}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;Z)Landroid/graphics/Typeface;

    move-result-object p0

    sput-object p0, Lcom/oplus/camera/util/Util;->B:Landroid/graphics/Typeface;

    .line 3374
    :cond_0
    sget-object p0, Lcom/oplus/camera/util/Util;->B:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public static l(I)Ljava/lang/String;
    .locals 3

    .line 5925
    sget-object v0, Lcom/oplus/camera/util/Util;->aw:Ljava/text/DecimalFormat;

    if-nez v0, :cond_0

    .line 5926
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    int-to-long v1, p0

    .line 5929
    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static l(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 6800
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "starVideo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x19

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "highDefinition"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x14

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "idPhoto"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xc

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "microscope"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x7

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "panorama"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x10

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "3dPhoto"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x1c

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "professional"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xb

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "slowVideo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xe

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "portrait"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "microscopeVideo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "night"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "movie"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xf

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "macro"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x9

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "xpan"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x15

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "longExposure"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x1b

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "fastVideo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xa

    goto/16 :goto_1

    :sswitch_10
    const-string v0, "superText"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto/16 :goto_1

    :sswitch_11
    const-string v0, "ultraHD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x12

    goto/16 :goto_1

    :sswitch_12
    const-string v0, "tiltShift"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x16

    goto/16 :goto_1

    :sswitch_13
    const-string v0, "highPixel"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x1d

    goto/16 :goto_1

    :sswitch_14
    const-string v0, "multiCamera"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x11

    goto :goto_1

    :sswitch_15
    const-string v0, "fishEye"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xd

    goto :goto_1

    :sswitch_16
    const-string v0, "street"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x1a

    goto :goto_1

    :sswitch_17
    const-string v0, "starry"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x18

    goto :goto_1

    :sswitch_18
    const-string v0, "tiltShiftFastVideo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x17

    goto :goto_1

    :sswitch_19
    const-string v0, "double_exposure"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto :goto_1

    :sswitch_1a
    const-string v0, "timelapsePro"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x13

    goto :goto_1

    :sswitch_1b
    const-string v0, "common"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_1c
    const-string v0, "sticker"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_1d
    const-string v0, "commonVideo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    const-string v0, "fastvideo_mode"

    const-string v1, "photo_mode"

    packed-switch p0, :pswitch_data_0

    const-string p0, "Util"

    const-string v0, "toCameraUnitMode, no defined mode"

    .line 6919
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto/16 :goto_2

    :pswitch_0
    const-string v0, "high_pixel_mode"

    goto :goto_2

    :pswitch_1
    const-string v0, "3d_photo_mode"

    goto :goto_2

    :pswitch_2
    const-string v0, "long_exposure_mode"

    goto :goto_2

    :pswitch_3
    const-string v0, "street_mode"

    goto :goto_2

    :pswitch_4
    const-string v0, "star_video_mode"

    goto :goto_2

    :pswitch_5
    const-string v0, "star_capture_mode"

    goto :goto_2

    :pswitch_6
    const-string v0, "xpan_mode"

    goto :goto_2

    :pswitch_7
    const-string v0, "high_definition_mode"

    goto :goto_2

    :pswitch_8
    const-string v0, "time_lapse_pro_mode"

    goto :goto_2

    :pswitch_9
    const-string v0, "ultraHD_mode"

    goto :goto_2

    :pswitch_a
    const-string v0, "multi_camera_mode"

    goto :goto_2

    :pswitch_b
    const-string v0, "panorama_mode"

    goto :goto_2

    :pswitch_c
    const-string v0, "movie_mode"

    goto :goto_2

    :pswitch_d
    const-string v0, "slowvideo_mode"

    goto :goto_2

    :pswitch_e
    const-string v0, "fisheye_mode"

    goto :goto_2

    :pswitch_f
    const-string v0, "id_photo_mode"

    goto :goto_2

    :pswitch_10
    const-string v0, "professional_mode"

    goto :goto_2

    :pswitch_11
    const-string v0, "macro_mode"

    goto :goto_2

    :pswitch_12
    const-string v0, "microscope_video_mode"

    goto :goto_2

    :pswitch_13
    const-string v0, "microscope_capture_mode"

    goto :goto_2

    :pswitch_14
    const-string v0, "super_text_mode"

    goto :goto_2

    :pswitch_15
    const-string v0, "video_mode"

    goto :goto_2

    :pswitch_16
    const-string v0, "sticker_mode"

    goto :goto_2

    :pswitch_17
    const-string v0, "night_mode"

    goto :goto_2

    :pswitch_18
    const-string v0, "portrait_mode"

    goto :goto_2

    :pswitch_19
    move-object v0, v1

    :goto_2
    :pswitch_1a
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x733d8ab0 -> :sswitch_1d
        -0x70aaf6c3 -> :sswitch_1c
        -0x50c0d615 -> :sswitch_1b
        -0x4b90eff3 -> :sswitch_1a
        -0x3f2f124b -> :sswitch_19
        -0x358924c6 -> :sswitch_18
        -0x353237e7 -> :sswitch_17
        -0x352aaffd -> :sswitch_16
        -0x3292a347 -> :sswitch_15
        -0x2bdb0a42 -> :sswitch_14
        -0x2a24c5fc -> :sswitch_13
        -0x19cca83b -> :sswitch_12
        -0x13e39a58 -> :sswitch_11
        -0x13d70cb8 -> :sswitch_10
        -0x21dda81 -> :sswitch_f
        -0x1bf945d -> :sswitch_e
        0x383d25 -> :sswitch_d
        0x62d9bcc -> :sswitch_c
        0x6343f30 -> :sswitch_b
        0x63f6418 -> :sswitch_a
        0x136c544b -> :sswitch_9
        0x2b77bb9b -> :sswitch_8
        0x2d8e52fa -> :sswitch_7
        0x34289e27 -> :sswitch_6
        0x391aba21 -> :sswitch_5
        0x3fc6a675 -> :sswitch_4
        0x51de9a10 -> :sswitch_3
        0x61ab39d7 -> :sswitch_2
        0x6594cc95 -> :sswitch_1
        0x7f784149 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_1a
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
        :pswitch_19
        :pswitch_1a
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic lambda$DBGNOagioPDoHzan1N4T4F80efc(IILandroid/util/Size;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/oplus/camera/util/Util;->a(IILandroid/util/Size;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$_wWOSaQw6lIk4_hbUdcJDEydh44(ZLandroid/util/Size;Landroid/util/Size;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/oplus/camera/util/Util;->a(ZLandroid/util/Size;Landroid/util/Size;)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$bocYwBQLMmJRgXeP5jItCElMHEU(Landroid/util/Size;Landroid/util/Size;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/oplus/camera/util/Util;->b(Landroid/util/Size;Landroid/util/Size;)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$pyPrMXEwCpKAIaarngXQqcplqhE(Landroid/util/Size;Landroid/util/Size;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/oplus/camera/util/Util;->a(Landroid/util/Size;Landroid/util/Size;)I

    move-result p0

    return p0
.end method

.method public static m(I)F
    .locals 4

    .line 6049
    sget v0, Lcom/oplus/camera/capmode/x;->a:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    div-double/2addr v2, v0

    int-to-double v0, p0

    .line 6050
    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    mul-double/2addr v2, v0

    double-to-float p0, v2

    return p0
.end method

.method public static m()V
    .locals 2

    .line 757
    sget-object v0, Lcom/oplus/camera/util/Util;->M:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    const-string v0, "Util"

    const-string v1, "initRenderScript, sRSInitThread not null, so return"

    .line 758
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 763
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oplus/camera/util/Util$1;

    invoke-direct {v1}, Lcom/oplus/camera/util/Util$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/oplus/camera/util/Util;->M:Ljava/lang/Thread;

    .line 781
    sget-object v0, Lcom/oplus/camera/util/Util;->M:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static m(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    .line 3658
    :try_start_0
    invoke-static {p0}, Lcom/oplus/compat/content/a;->a(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3660
    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    move-result p0

    invoke-static {p0}, Lcom/oplus/compat/view/WindowManagerNative;->hasNavigationBar(I)Z

    move-result p0
    :try_end_0
    .catch Lcom/oplus/compat/b/a/b; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    .line 3662
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static m(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "video_size_1080p"

    .line 7137
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "video_size_4kuhd"

    .line 7138
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "com.oplus.feature.video.super.eis.4k.support"

    .line 7139
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

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

.method public static n(I)Landroid/graphics/Bitmap;
    .locals 1

    .line 6190
    invoke-static {}, Lcom/oplus/camera/MyApplication;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/camera/util/Util;->d(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static n()V
    .locals 5

    .line 898
    sget-object v0, Lcom/oplus/camera/util/Util;->M:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 900
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 902
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 906
    :cond_0
    :goto_0
    sget-object v0, Lcom/oplus/camera/util/Util;->G:Ljava/lang/Object;

    monitor-enter v0

    .line 907
    :try_start_1
    sget-object v1, Lcom/oplus/camera/util/Util;->O:Landroid/renderscript/ScriptIntrinsicBlur;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 908
    sget-object v1, Lcom/oplus/camera/util/Util;->O:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v1}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    .line 909
    sput-object v2, Lcom/oplus/camera/util/Util;->O:Landroid/renderscript/ScriptIntrinsicBlur;

    .line 912
    :cond_1
    sget-object v1, Lcom/oplus/camera/util/Util;->N:Landroid/renderscript/RenderScript;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 914
    :try_start_2
    sget-object v1, Lcom/oplus/camera/util/Util;->N:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->destroy()V

    .line 915
    sput-object v2, Lcom/oplus/camera/util/Util;->N:Landroid/renderscript/RenderScript;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v1

    .line 917
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "Util"

    .line 919
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finishRSInitThread, renderScript destroy, exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    :cond_2
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v0, "Util"

    const-string v1, "finishRSInitThread X"

    .line 924
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    .line 922
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public static n(Landroid/content/Context;)V
    .locals 11

    .line 4146
    sget-object v0, Lcom/oplus/camera/util/Util;->J:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 4147
    invoke-static {}, Lcom/oplus/camera/util/Util;->J()V

    .line 4148
    sget v1, Lcom/oplus/camera/util/Util;->ac:I

    int-to-double v1, v1

    sget v3, Lcom/oplus/camera/util/Util;->ab:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    const-wide v3, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    cmpl-double v3, v1, v3

    const/4 v4, 0x0

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v4

    .line 4150
    :goto_0
    sput-boolean v3, Lcom/oplus/camera/util/Util;->r:Z

    const v3, 0x7f070c57

    .line 4152
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/oplus/camera/util/Util;->ad:I

    const v3, 0x7f07075b

    .line 4153
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/oplus/camera/util/Util;->ae:I

    const v3, 0x7f0705e6

    .line 4154
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/oplus/camera/util/Util;->ai:I

    .line 4155
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result v3

    sget v5, Lcom/oplus/camera/util/Util;->ae:I

    sub-int/2addr v3, v5

    int-to-double v5, v3

    .line 4156
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v3

    int-to-double v7, v3

    const-wide v9, 0x3ff5555555555555L    # 1.3333333333333333

    mul-double/2addr v7, v9

    sub-double/2addr v5, v7

    double-to-int v3, v5

    sput v3, Lcom/oplus/camera/util/Util;->af:I

    .line 4158
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4159
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result v3

    sget v5, Lcom/oplus/camera/util/Util;->ae:I

    sub-int/2addr v3, v5

    int-to-double v5, v3

    .line 4160
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v3

    int-to-double v7, v3

    mul-double/2addr v7, v9

    sub-double/2addr v5, v7

    const v3, 0x7f070182

    .line 4161
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-double v7, v3

    add-double/2addr v5, v7

    double-to-int v3, v5

    sput v3, Lcom/oplus/camera/util/Util;->af:I

    .line 4164
    :cond_1
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->m(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4165
    invoke-static {}, Lcom/oplus/camera/util/Util;->K()I

    move-result v3

    sput v3, Lcom/oplus/camera/util/Util;->al:I

    .line 4168
    :cond_2
    sget-boolean v3, Lcom/oplus/camera/util/Util;->r:Z

    const v5, 0x7f070181

    if-eqz v3, :cond_3

    .line 4169
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/oplus/camera/util/Util;->ag:I

    .line 4170
    sget v0, Lcom/oplus/camera/util/Util;->ae:I

    sput v0, Lcom/oplus/camera/util/Util;->ah:I

    .line 4171
    sput v0, Lcom/oplus/camera/util/Util;->aj:I

    .line 4172
    sget v0, Lcom/oplus/camera/util/Util;->al:I

    sput v0, Lcom/oplus/camera/util/Util;->ak:I

    goto :goto_1

    .line 4174
    :cond_3
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/oplus/camera/util/Util;->ag:I

    const v3, 0x7f070766

    .line 4175
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/oplus/camera/util/Util;->ah:I

    .line 4176
    sput v4, Lcom/oplus/camera/util/Util;->aj:I

    .line 4177
    sput v4, Lcom/oplus/camera/util/Util;->ak:I

    .line 4180
    :goto_1
    invoke-static {p0}, Lcom/oplus/camera/k;->a(Landroid/content/Context;)V

    .line 4182
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initMenuControlPanelHeight, sbLongScreen: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/oplus/camera/util/Util;->r:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isFoldProject: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4183
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", sSettingMenuPanelHeight: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/oplus/camera/util/Util;->ae:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", sControlPanelHeight: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/oplus/camera/util/Util;->af:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", sControlPanelButtonHeight: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/oplus/camera/util/Util;->ag:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", sSettingMenuItemHeight: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/oplus/camera/util/Util;->ah:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", sPreviewMarginTop: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/oplus/camera/util/Util;->aj:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", sHeadLineHeight: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/oplus/camera/util/Util;->ai:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", sNavigationBarHeight: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/oplus/camera/util/Util;->al:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", ratio: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", screenHeight: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4192
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Util"

    .line 4182
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static native nativeGetYuvDataWithoutPadding(Landroid/hardware/HardwareBuffer;Ljava/nio/ByteBuffer;I)Z
.end method

.method public static o()F
    .locals 1

    .line 932
    sget v0, Lcom/oplus/camera/util/Util;->o:F

    return v0
.end method

.method public static o(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x0

    .line 4506
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "navigation_gesture"

    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4508
    invoke-virtual {p0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    move p0, v0

    :goto_0
    if-nez p0, :cond_0

    .line 4512
    invoke-static {}, Lcom/oplus/camera/util/Util;->K()I

    move-result v0

    .line 4515
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNavigationBarHeight, navBarHeight: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Util"

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4517
    sput v0, Lcom/oplus/camera/util/Util;->al:I

    return v0
.end method

.method public static o(I)Ljava/lang/String;
    .locals 1

    .line 6625
    invoke-static {p0}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result p0

    const-string v0, "video_size_720p"

    if-eqz p0, :cond_1

    const-string p0, "com.oplus.feature.front.slow.video.support"

    .line 6626
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "com.oplus.feature.front.720p.slow.video.support"

    .line 6627
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    const-string p0, "video_size_1080p"

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static p(I)I
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_3

    const/4 v2, 0x3

    if-eq p0, v2, :cond_2

    const/4 v1, 0x4

    if-eq p0, v1, :cond_2

    const/16 v3, 0xd

    if-eq p0, v3, :cond_3

    const/16 v0, 0x15

    if-eq p0, v0, :cond_1

    const/16 v0, 0x16

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 7256
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad audio format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v2

    :cond_2
    :goto_0
    return v1

    :cond_3
    return v0
.end method

.method public static p()Z
    .locals 1

    .line 1080
    sget-object v0, Lcom/oplus/camera/util/Util;->L:Lcom/coui/appcompat/dialog/app/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/app/b;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static p(Landroid/content/Context;)Z
    .locals 1

    .line 4522
    sget v0, Lcom/oplus/camera/util/Util;->al:I

    .line 4523
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->o(Landroid/content/Context;)I

    move-result p0

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static q(Landroid/content/Context;)Landroid/content/Context;
    .locals 3

    .line 5129
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_1

    .line 5130
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 5132
    sget v1, Lcom/oplus/camera/util/Util;->b:I

    if-nez v1, :cond_0

    .line 5133
    iget v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    sput v1, Lcom/oplus/camera/util/Util;->b:I

    .line 5136
    :cond_0
    sget v1, Lcom/oplus/camera/util/Util;->a:I

    iput v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 5138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDefaultDisplay, config sDefaultDensity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/oplus/camera/util/Util;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sysDensityDpi: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/oplus/camera/util/Util;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Util"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5141
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_1
    return-object p0
.end method

.method public static q()V
    .locals 2

    .line 1117
    sget-object v0, Lcom/oplus/camera/util/Util;->K:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 1121
    :cond_0
    sget-object v1, Lcom/oplus/camera/util/Util;->L:Lcom/coui/appcompat/dialog/app/b;

    if-nez v1, :cond_1

    return-void

    .line 1125
    :cond_1
    new-instance v1, Lcom/oplus/camera/util/Util$4;

    invoke-direct {v1}, Lcom/oplus/camera/util/Util$4;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static r(Landroid/content/Context;)Landroid/content/Context;
    .locals 5

    .line 5148
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_2

    .line 5149
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 5151
    sget v1, Lcom/oplus/camera/util/Util;->b:I

    const-string v2, " -> "

    const-string v3, "Util"

    if-eqz v1, :cond_0

    .line 5152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "followSystemDisplay, densityDpi: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/oplus/camera/util/Util;->b:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5154
    sget v1, Lcom/oplus/camera/util/Util;->b:I

    iput v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    :cond_0
    const/4 v1, 0x0

    .line 5157
    sget v4, Lcom/oplus/camera/util/Util;->c:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_1

    .line 5158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "followSystemDisplay, fontScale: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/oplus/camera/util/Util;->c:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5160
    sget v1, Lcom/oplus/camera/util/Util;->c:F

    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 5163
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_2
    return-object p0
.end method

.method public static declared-synchronized r()V
    .locals 2

    const-class v0, Lcom/oplus/camera/util/Util;

    monitor-enter v0

    .line 2105
    :try_start_0
    sget-object v1, Lcom/oplus/camera/util/Util;->p:Lcom/oplus/camera/util/Util$a;

    if-eqz v1, :cond_0

    .line 2106
    sget-object v1, Lcom/oplus/camera/util/Util;->p:Lcom/oplus/camera/util/Util$a;

    invoke-virtual {v1}, Lcom/oplus/camera/util/Util$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2108
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static s()V
    .locals 2

    .line 2536
    sget-object v0, Lcom/oplus/camera/util/Util;->H:Ljava/lang/Object;

    monitor-enter v0

    .line 2537
    :try_start_0
    sget-object v1, Lcom/oplus/camera/util/Util;->P:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 2538
    sget-object v1, Lcom/oplus/camera/util/Util;->P:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const/4 v1, 0x0

    .line 2539
    sput-object v1, Lcom/oplus/camera/util/Util;->P:Ljava/util/HashMap;

    .line 2541
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static s(Landroid/content/Context;)Z
    .locals 1

    .line 5302
    invoke-static {}, Lcom/oplus/camera/util/Util;->bb()Ljava/util/Locale;

    move-result-object p0

    .line 5303
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->a(Ljava/util/Locale;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/oplus/camera/util/Util;->b(Ljava/util/Locale;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static t()Z
    .locals 3

    .line 3225
    sget-object v0, Lcom/oplus/camera/util/Util;->aB:Landroid/view/WindowManager;

    if-nez v0, :cond_2

    .line 3226
    sget-object v0, Lcom/oplus/camera/util/Util;->J:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    sput-object v0, Lcom/oplus/camera/util/Util;->aB:Landroid/view/WindowManager;

    .line 3227
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 3228
    sget-object v1, Lcom/oplus/camera/util/Util;->aB:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 3229
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3230
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v2, 0x3dc

    if-eq v2, v1, :cond_1

    const/16 v1, 0x780

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 3231
    :goto_1
    sput-boolean v0, Lcom/oplus/camera/util/Util;->aD:Z

    .line 3235
    :cond_2
    sget-boolean v0, Lcom/oplus/camera/util/Util;->aD:Z

    return v0
.end method

.method public static t(Landroid/content/Context;)Z
    .locals 3

    .line 5311
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 5313
    invoke-virtual {p0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5314
    invoke-virtual {p0, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 5316
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "zh"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    const-string v1, "cn"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public static u(Landroid/content/Context;)V
    .locals 2

    const-string v0, "Util"

    :try_start_0
    const-string v1, "shortcut"

    .line 5375
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ShortcutManager;

    .line 5376
    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->getDynamicShortcuts()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5378
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 5379
    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->removeAllDynamicShortcuts()V

    :cond_0
    const-string p0, "removeDynamicShortcuts, successful."

    .line 5382
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "removeDynamicShortcuts, failed."

    .line 5384
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static u()Z
    .locals 3

    .line 3239
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3240
    sget-object v0, Lcom/oplus/camera/util/Util;->aB:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 3241
    sget-object v0, Lcom/oplus/camera/util/Util;->J:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    sput-object v0, Lcom/oplus/camera/util/Util;->aB:Landroid/view/WindowManager;

    .line 3244
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 3245
    sget-object v2, Lcom/oplus/camera/util/Util;->aB:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 3246
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v2, 0x3dc

    if-ne v2, v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public static v()Ljava/lang/String;
    .locals 2

    .line 3261
    sget-object v0, Lcom/oplus/camera/util/Util;->z:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 3265
    :cond_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->aZ()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/camera/util/Util;->z:Ljava/lang/String;

    .line 3267
    sget-object v0, Lcom/oplus/camera/util/Util;->z:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3268
    sget-object v0, Lcom/oplus/camera/util/Util;->z:Ljava/lang/String;

    return-object v0

    :cond_1
    const-string v0, "ro.vendor.oplus.market.enname"

    .line 3271
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/camera/util/Util;->z:Ljava/lang/String;

    .line 3273
    sget-object v0, Lcom/oplus/camera/util/Util;->z:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ro.vendor.oplus.market.name"

    .line 3274
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/camera/util/Util;->z:Ljava/lang/String;

    .line 3276
    sget-object v0, Lcom/oplus/camera/util/Util;->z:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3277
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/oplus/camera/util/Util;->z:Ljava/lang/String;

    .line 3281
    :cond_2
    sget-object v0, Lcom/oplus/camera/util/Util;->z:Ljava/lang/String;

    return-object v0
.end method

.method public static v(Landroid/content/Context;)Z
    .locals 1

    .line 5484
    sget-object v0, Lcom/oplus/camera/util/Util;->aA:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const-string v0, "isSupportAIIDPhoto"

    .line 5485
    invoke-static {p0, v0}, Lcom/oplus/camera/util/Util;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/oplus/camera/util/Util;->aA:Ljava/lang/Boolean;

    .line 5488
    :cond_0
    sget-object p0, Lcom/oplus/camera/util/Util;->aA:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static w(Landroid/content/Context;)Z
    .locals 1

    .line 5492
    sget-object v0, Lcom/oplus/camera/util/Util;->az:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const-string v0, "isSupportQuickPhoto"

    .line 5493
    invoke-static {p0, v0}, Lcom/oplus/camera/util/Util;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/oplus/camera/util/Util;->az:Ljava/lang/Boolean;

    .line 5496
    :cond_0
    sget-object p0, Lcom/oplus/camera/util/Util;->az:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static w()[J
    .locals 13

    const-string v0, "/proc/meminfo"

    const-wide/16 v1, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3291
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    .line 3292
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    const/16 v6, 0x2000

    invoke-direct {v0, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    .line 3293
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 3294
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 3295
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    const-string v8, "\\s+"

    if-nez v6, :cond_0

    move v6, v4

    goto :goto_0

    .line 3296
    :cond_0
    :try_start_3
    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    :goto_0
    int-to-long v9, v6

    const-wide/16 v11, 0x400

    mul-long/2addr v9, v11

    if-nez v7, :cond_1

    move v1, v4

    goto :goto_1

    .line 3298
    :cond_1
    :try_start_4
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :goto_1
    int-to-long v1, v1

    mul-long/2addr v1, v11

    .line 3300
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_7

    :catch_0
    move-exception v6

    goto :goto_2

    :catch_1
    move-exception v6

    move-wide v9, v1

    .line 3291
    :goto_2
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    :try_start_8
    invoke-virtual {v6, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v6
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    :catch_4
    move-exception v0

    move-wide v6, v1

    move-wide v1, v9

    goto :goto_4

    :catch_5
    move-exception v0

    move-wide v6, v1

    :goto_4
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_5

    :catch_6
    move-exception v0

    move-wide v9, v1

    move-wide v1, v6

    goto :goto_6

    :catch_7
    move-exception v5

    :try_start_a
    invoke-virtual {v0, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    :catch_8
    move-exception v0

    move-wide v9, v1

    .line 3301
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_7
    const/4 v0, 0x2

    .line 3304
    new-array v0, v0, [J

    aput-wide v9, v0, v4

    aput-wide v1, v0, v3

    return-object v0
.end method

.method public static x()Landroid/graphics/Typeface;
    .locals 2

    .line 3438
    sget-object v0, Lcom/oplus/camera/util/Util;->aa:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    return-object v0

    .line 3443
    :cond_0
    :try_start_0
    new-instance v0, Landroid/graphics/Typeface$Builder;

    const-string v1, "/system/fonts/SysSans-En-Regular.ttf"

    invoke-direct {v0, v1}, Landroid/graphics/Typeface$Builder;-><init>(Ljava/lang/String;)V

    const-string v1, "\'wght\' 550"

    .line 3444
    invoke-virtual {v0, v1}, Landroid/graphics/Typeface$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/Typeface$Builder;

    .line 3445
    invoke-virtual {v0}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/oplus/camera/util/Util;->aa:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3447
    :catch_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    sput-object v0, Lcom/oplus/camera/util/Util;->aa:Landroid/graphics/Typeface;

    const-string v0, "Util"

    const-string v1, "getSansEnRegularTypeface, create special typeface fail"

    .line 3449
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 3452
    :goto_0
    sget-object v0, Lcom/oplus/camera/util/Util;->aa:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public static x(Landroid/content/Context;)Z
    .locals 3

    .line 5500
    sget-object v0, Lcom/oplus/camera/util/Util;->I:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 5501
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    sput-object p0, Lcom/oplus/camera/util/Util;->I:Landroid/location/LocationManager;

    .line 5504
    :cond_0
    sget-object p0, Lcom/oplus/camera/util/Util;->I:Landroid/location/LocationManager;

    invoke-virtual {p0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result p0

    .line 5505
    sget-object v0, Lcom/oplus/camera/util/Util;->I:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 5507
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLocationAvailable, locationAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", netAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Util"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_1

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static y()Landroid/graphics/Typeface;
    .locals 2

    .line 3456
    sget-object v0, Lcom/oplus/camera/util/Util;->Y:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    return-object v0

    .line 3461
    :cond_0
    :try_start_0
    new-instance v0, Landroid/graphics/Typeface$Builder;

    const-string v1, "/system/fonts/SysSans-En-Regular.ttf"

    invoke-direct {v0, v1}, Landroid/graphics/Typeface$Builder;-><init>(Ljava/lang/String;)V

    const-string v1, "\'wght\' 350"

    .line 3462
    invoke-virtual {v0, v1}, Landroid/graphics/Typeface$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/Typeface$Builder;

    .line 3463
    invoke-virtual {v0}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/oplus/camera/util/Util;->Y:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3465
    :catch_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    sput-object v0, Lcom/oplus/camera/util/Util;->Y:Landroid/graphics/Typeface;

    const-string v0, "Util"

    const-string v1, "getSansEnLightTypeface, create special typeface fail"

    .line 3467
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 3470
    :goto_0
    sget-object v0, Lcom/oplus/camera/util/Util;->Y:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public static y(Landroid/content/Context;)Z
    .locals 5

    const-string v0, "display"

    .line 5992
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x0

    .line 5993
    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    sput-object p0, Lcom/oplus/camera/util/Util;->S:Landroid/view/Display;

    .line 5994
    sget-object p0, Lcom/oplus/camera/util/Util;->S:Landroid/view/Display;

    invoke-virtual {p0}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object p0

    .line 5995
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v2, v0

    .line 5997
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    const/4 v3, -0x1

    .line 5998
    aget-object v4, p0, v2

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 5999
    aget-object v3, p0, v2

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6001
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "supportResolutionSwitch, getPhysicalWidth: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p0, v2

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Util"

    invoke-static {v4, v3}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6005
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v2, 0x1

    if-ne v2, p0, :cond_2

    return v0

    .line 6007
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge v2, p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public static z()Landroid/graphics/Typeface;
    .locals 2

    .line 3474
    sget-object v0, Lcom/oplus/camera/util/Util;->U:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    return-object v0

    .line 3479
    :cond_0
    :try_start_0
    new-instance v0, Landroid/graphics/Typeface$Builder;

    const-string v1, "/system/fonts/SysSans-En-Regular.ttf"

    invoke-direct {v0, v1}, Landroid/graphics/Typeface$Builder;-><init>(Ljava/lang/String;)V

    const-string v1, "\'wght\' 350"

    .line 3480
    invoke-virtual {v0, v1}, Landroid/graphics/Typeface$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/Typeface$Builder;

    .line 3481
    invoke-virtual {v0}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/oplus/camera/util/Util;->U:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3483
    :catch_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    sput-object v0, Lcom/oplus/camera/util/Util;->U:Landroid/graphics/Typeface;

    const-string v0, "Util"

    const-string v1, "getSansEnLightTypeface, create 350 weight sans typeface fail"

    .line 3485
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 3488
    :goto_0
    sget-object v0, Lcom/oplus/camera/util/Util;->U:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public static z(Landroid/content/Context;)Z
    .locals 1

    .line 6015
    sget-boolean v0, Lcom/oplus/camera/util/Util;->w:Z

    if-nez v0, :cond_0

    const-string v0, "android.permission.CAMERA"

    .line 6016
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Util"

    const-string v0, "checkCameraPermission not granted"

    .line 6017
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    .line 6022
    sput-boolean p0, Lcom/oplus/camera/util/Util;->w:Z

    return p0
.end method
