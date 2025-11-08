.class public abstract Lcom/oplus/camera/ui/menu/setting/b;
.super Lcom/oplus/camera/ui/menu/setting/c;
.source "BaseLocationPreferenceFragment.java"


# instance fields
.field private f:Lcom/coui/appcompat/dialog/app/b;

.field private g:Lcom/coui/appcompat/dialog/app/b;

.field private h:Lcom/coui/appcompat/dialog/app/b;

.field private i:Lcom/coui/appcompat/dialog/app/b;

.field private j:Lcom/oplus/camera/ComboPreferences;

.field private k:Landroidx/appcompat/app/f;

.field private l:Landroid/content/BroadcastReceiver;

.field private m:Landroid/content/DialogInterface$OnClickListener;

.field private n:Landroid/content/DialogInterface$OnClickListener;

.field private o:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/c;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/b;->f:Lcom/coui/appcompat/dialog/app/b;

    .line 59
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/b;->g:Lcom/coui/appcompat/dialog/app/b;

    .line 60
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/b;->h:Lcom/coui/appcompat/dialog/app/b;

    .line 61
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/b;->i:Lcom/coui/appcompat/dialog/app/b;

    .line 62
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/b;->j:Lcom/oplus/camera/ComboPreferences;

    .line 63
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/b;->k:Landroidx/appcompat/app/f;

    .line 518
    new-instance v0, Lcom/oplus/camera/ui/menu/setting/b$8;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/menu/setting/b$8;-><init>(Lcom/oplus/camera/ui/menu/setting/b;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/b;->l:Landroid/content/BroadcastReceiver;

    .line 525
    new-instance v0, Lcom/oplus/camera/ui/menu/setting/b$9;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/menu/setting/b$9;-><init>(Lcom/oplus/camera/ui/menu/setting/b;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/b;->m:Landroid/content/DialogInterface$OnClickListener;

    .line 550
    new-instance v0, Lcom/oplus/camera/ui/menu/setting/b$10;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/menu/setting/b$10;-><init>(Lcom/oplus/camera/ui/menu/setting/b;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/b;->n:Landroid/content/DialogInterface$OnClickListener;

    .line 574
    new-instance v0, Lcom/oplus/camera/ui/menu/setting/b$2;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/menu/setting/b$2;-><init>(Lcom/oplus/camera/ui/menu/setting/b;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/b;->o:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/menu/setting/b;Landroidx/appcompat/app/f;)Landroidx/appcompat/app/f;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/b;->k:Landroidx/appcompat/app/f;

    return-object p1
.end method

.method static synthetic a(Lcom/oplus/camera/ui/menu/setting/b;)Lcom/oplus/camera/ComboPreferences;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/b;->j:Lcom/oplus/camera/ComboPreferences;

    return-object p0
.end method

.method private a(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 6

    const-string v0, "BaseLocationPreferenceFragment"

    const-string v1, "showPermissionDialog"

    .line 331
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/b;->getActivity()Landroidx/fragment/app/c;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p0, "showPermissionDialog, return"

    .line 336
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/b;->g:Lcom/coui/appcompat/dialog/app/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/app/b;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/b;->g:Lcom/coui/appcompat/dialog/app/b;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/app/b;->dismiss()V

    :cond_1
    const v0, 0x7f1002aa

    const/4 v2, 0x1

    .line 345
    new-array v2, v2, [Ljava/lang/Object;

    const v3, 0x7f1002ac

    invoke-virtual {p0, v3}, Lcom/oplus/camera/ui/menu/setting/b;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v2}, Lcom/oplus/camera/ui/menu/setting/b;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f1002a1

    .line 346
    invoke-virtual {p0, v2}, Lcom/oplus/camera/ui/menu/setting/b;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 348
    new-instance v3, Lcom/coui/appcompat/dialog/app/b$a;

    invoke-direct {v3, v1}, Lcom/coui/appcompat/dialog/app/b$a;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/oplus/camera/ui/menu/setting/b$3;

    invoke-direct {v5, p0}, Lcom/oplus/camera/ui/menu/setting/b$3;-><init>(Lcom/oplus/camera/ui/menu/setting/b;)V

    .line 349
    invoke-virtual {v3, v5}, Lcom/coui/appcompat/dialog/app/b$a;->a(Landroid/content/DialogInterface$OnKeyListener;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object v3

    .line 359
    invoke-virtual {v3, v0}, Lcom/coui/appcompat/dialog/app/b$a;->a(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object v0

    .line 360
    invoke-virtual {v0, v2}, Lcom/coui/appcompat/dialog/app/b$a;->b(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object v0

    const v2, 0x7f1002a9

    .line 361
    invoke-virtual {v0, v2, p1}, Lcom/coui/appcompat/dialog/app/b$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object v0

    const v2, 0x7f1002a5

    .line 362
    invoke-virtual {v0, v2, p1}, Lcom/coui/appcompat/dialog/app/b$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object p1

    .line 363
    invoke-virtual {p1, v4}, Lcom/coui/appcompat/dialog/app/b$a;->a(Z)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object p1

    .line 365
    invoke-virtual {p1}, Lcom/coui/appcompat/dialog/app/b$a;->a()Lcom/coui/appcompat/dialog/app/b;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/b;->g:Lcom/coui/appcompat/dialog/app/b;

    .line 367
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_2

    .line 368
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/b;->g:Lcom/coui/appcompat/dialog/app/b;

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/app/b;->show()V

    :cond_2
    return-void
.end method

.method private a(Landroid/content/DialogInterface$OnClickListener;I)V
    .locals 3

    const-string v0, "BaseLocationPreferenceFragment"

    const-string v1, "showNetDialog"

    .line 431
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/b;->getActivity()Landroidx/fragment/app/c;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p0, "showNetDialog, return"

    .line 436
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/b;->i:Lcom/coui/appcompat/dialog/app/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/app/b;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 442
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/b;->i:Lcom/coui/appcompat/dialog/app/b;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/app/b;->dismiss()V

    .line 445
    :cond_1
    new-instance v0, Lcom/coui/appcompat/dialog/app/b$a;

    invoke-direct {v0, v1}, Lcom/coui/appcompat/dialog/app/b$a;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/oplus/camera/ui/menu/setting/b$7;

    invoke-direct {v2, p0, v1}, Lcom/oplus/camera/ui/menu/setting/b$7;-><init>(Lcom/oplus/camera/ui/menu/setting/b;Landroid/app/Activity;)V

    .line 446
    invoke-virtual {v0, v2}, Lcom/coui/appcompat/dialog/app/b$a;->a(Landroid/content/DialogInterface$OnKeyListener;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object v0

    const v2, 0x7f100280

    .line 456
    invoke-virtual {v0, v2}, Lcom/coui/appcompat/dialog/app/b$a;->a(I)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object v0

    .line 457
    invoke-virtual {v0, p2}, Lcom/coui/appcompat/dialog/app/b$a;->b(I)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object p2

    const v0, 0x7f10027d

    .line 458
    invoke-virtual {p2, v0, p1}, Lcom/coui/appcompat/dialog/app/b$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object p2

    const v0, 0x7f100281

    .line 459
    invoke-virtual {p2, v0, p1}, Lcom/coui/appcompat/dialog/app/b$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object p1

    const/4 p2, 0x0

    .line 460
    invoke-virtual {p1, p2}, Lcom/coui/appcompat/dialog/app/b$a;->a(Z)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object p1

    .line 462
    invoke-virtual {p1}, Lcom/coui/appcompat/dialog/app/b$a;->a()Lcom/coui/appcompat/dialog/app/b;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/b;->i:Lcom/coui/appcompat/dialog/app/b;

    .line 464
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_2

    .line 465
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/b;->i:Lcom/coui/appcompat/dialog/app/b;

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/app/b;->show()V

    :cond_2
    return-void
.end method

.method private a([Ljava/lang/String;[I)Z
    .locals 3

    const/4 p0, 0x0

    move v0, p0

    .line 479
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 480
    aget-object v1, p1, v0

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    aget v1, p2, v0

    if-nez v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p0
.end method

.method static synthetic b(Lcom/oplus/camera/ui/menu/setting/b;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/b;->t()V

    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 0

    .line 493
    :try_start_0
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p2, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 495
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private t()V
    .locals 2

    .line 87
    new-instance v0, Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/b;->getActivity()Landroidx/fragment/app/c;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oplus/camera/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/b;->j:Lcom/oplus/camera/ComboPreferences;

    return-void
.end method

.method private u()Z
    .locals 3

    .line 309
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/b;->getActivity()Landroidx/fragment/app/c;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/b;->getActivity()Landroidx/fragment/app/c;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->x(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 310
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/b;->f:Lcom/coui/appcompat/dialog/app/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/app/b;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/b;->f:Lcom/coui/appcompat/dialog/app/b;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/app/b;->dismiss()V

    .line 314
    :cond_0
    new-instance v0, Lcom/coui/appcompat/dialog/app/b$a;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/b;->getActivity()Landroidx/fragment/app/c;

    move-result-object v1

    const v2, 0x7f110150

    invoke-direct {v0, v1, v2}, Lcom/coui/appcompat/dialog/app/b$a;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f100220

    .line 315
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/app/b$a;->a(I)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object v0

    const v1, 0x7f100222

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/b;->n:Landroid/content/DialogInterface$OnClickListener;

    .line 316
    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/dialog/app/b$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object v0

    const v1, 0x7f10021f

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/b;->n:Landroid/content/DialogInterface$OnClickListener;

    .line 317
    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/dialog/app/b$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object v0

    .line 318
    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/app/b$a;->a()Lcom/coui/appcompat/dialog/app/b;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/b;->f:Lcom/coui/appcompat/dialog/app/b;

    .line 320
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/b;->getActivity()Landroidx/fragment/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/c;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 321
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/b;->f:Lcom/coui/appcompat/dialog/app/b;

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/app/b;->show()V

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private v()V
    .locals 9

    const-string v0, "BaseLocationPreferenceFragment"

    const-string v1, "showLocationGuideDialog"

    .line 373
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/b;->getActivity()Landroidx/fragment/app/c;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p0, "showLocationGuideDialog, return"

    .line 378
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/b;->h:Lcom/coui/appcompat/dialog/app/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/app/b;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 384
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/b;->h:Lcom/coui/appcompat/dialog/app/b;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/app/b;->dismiss()V

    :cond_1
    const v0, 0x7f100513

    .line 387
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/b;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 389
    new-instance v2, Lcom/coui/appcompat/dialog/app/b$a;

    invoke-direct {v2, v1}, Lcom/coui/appcompat/dialog/app/b$a;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/oplus/camera/ui/menu/setting/b$6;

    invoke-direct {v3, p0}, Lcom/oplus/camera/ui/menu/setting/b$6;-><init>(Lcom/oplus/camera/ui/menu/setting/b;)V

    .line 390
    invoke-virtual {v2, v3}, Lcom/coui/appcompat/dialog/app/b$a;->a(Landroid/content/DialogInterface$OnKeyListener;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object v2

    const v3, 0x7f10051e

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const v6, 0x7f1000b2

    .line 401
    invoke-virtual {p0, v6}, Lcom/oplus/camera/ui/menu/setting/b;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v5, v8

    invoke-virtual {p0, v3, v5}, Lcom/oplus/camera/ui/menu/setting/b;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/dialog/app/b$a;->a(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object v2

    const v3, 0x7f10051c

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 402
    invoke-virtual {p0, v6}, Lcom/oplus/camera/ui/menu/setting/b;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    aput-object v0, v5, v4

    invoke-virtual {p0, v3, v5}, Lcom/oplus/camera/ui/menu/setting/b;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/coui/appcompat/dialog/app/b$a;->b(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object v0

    const v2, 0x7f10051d

    new-instance v3, Lcom/oplus/camera/ui/menu/setting/b$5;

    invoke-direct {v3, p0}, Lcom/oplus/camera/ui/menu/setting/b$5;-><init>(Lcom/oplus/camera/ui/menu/setting/b;)V

    .line 404
    invoke-virtual {v0, v2, v3}, Lcom/coui/appcompat/dialog/app/b$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object v0

    const v2, 0x7f10021f

    new-instance v3, Lcom/oplus/camera/ui/menu/setting/b$4;

    invoke-direct {v3, p0}, Lcom/oplus/camera/ui/menu/setting/b$4;-><init>(Lcom/oplus/camera/ui/menu/setting/b;)V

    .line 413
    invoke-virtual {v0, v2, v3}, Lcom/coui/appcompat/dialog/app/b$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object v0

    .line 421
    invoke-virtual {v0, v8}, Lcom/coui/appcompat/dialog/app/b$a;->a(Z)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object v0

    .line 423
    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/app/b$a;->a()Lcom/coui/appcompat/dialog/app/b;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/b;->h:Lcom/coui/appcompat/dialog/app/b;

    .line 425
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 426
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/b;->h:Lcom/coui/appcompat/dialog/app/b;

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/app/b;->show()V

    :cond_2
    return-void
.end method

.method private w()V
    .locals 3

    .line 506
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/b;->getActivity()Landroidx/fragment/app/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 507
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/b;->getActivity()Landroidx/fragment/app/c;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/b;->l:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.location.MODE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/c;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private x()V
    .locals 1

    .line 513
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/b;->getActivity()Landroidx/fragment/app/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 514
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/b;->getActivity()Landroidx/fragment/app/c;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/b;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/c;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    .line 502
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public a(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 67
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/c;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 68
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/b;->w()V

    return-void
.end method

.method protected a(Lcom/coui/appcompat/preference/COUISwitchPreference;)V
    .locals 0

    .line 629
    invoke-static {}, Lcom/oplus/camera/util/Util;->ap()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f0c012b

    .line 630
    invoke-virtual {p1, p0}, Lcom/coui/appcompat/preference/COUISwitchPreference;->b(I)V

    goto :goto_0

    :cond_0
    const p0, 0x7f0c012a

    .line 632
    invoke-virtual {p1, p0}, Lcom/coui/appcompat/preference/COUISwitchPreference;->b(I)V

    :goto_0
    return-void
.end method

.method protected a(ILandroid/content/DialogInterface$OnClickListener;)Z
    .locals 3

    .line 211
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/b;->u()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 215
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/b;->getActivity()Landroidx/fragment/app/c;

    move-result-object v0

    const-string v2, "pref_allow_network_access"

    invoke-direct {p0, v0, v2, v1}, Lcom/oplus/camera/ui/menu/setting/b;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 216
    invoke-direct {p0, p2, p1}, Lcom/oplus/camera/ui/menu/setting/b;->a(Landroid/content/DialogInterface$OnClickListener;I)V

    return v1

    .line 221
    :cond_1
    invoke-static {}, Lcom/oplus/camera/l/c;->c()Z

    move-result p1

    const-string p2, "BaseLocationPreferenceFragment"

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    if-eqz p1, :cond_5

    .line 222
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/b;->i()Z

    move-result p1

    if-nez p1, :cond_6

    .line 223
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/b;->getActivity()Landroidx/fragment/app/c;

    move-result-object p1

    const-string v2, "key_export_permission_requested"

    invoke-direct {p0, p1, v2, v1}, Lcom/oplus/camera/ui/menu/setting/b;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 227
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/b;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 254
    :cond_2
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/b;->v()V

    goto :goto_1

    .line 228
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/b;->k:Landroidx/appcompat/app/f;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroidx/appcompat/app/f;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 229
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/b;->k:Landroidx/appcompat/app/f;

    invoke-virtual {p1}, Landroidx/appcompat/app/f;->dismiss()V

    .line 232
    :cond_4
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/b;->getActivity()Landroidx/fragment/app/c;

    move-result-object p1

    new-instance v2, Lcom/oplus/camera/ui/menu/setting/b$1;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/menu/setting/b$1;-><init>(Lcom/oplus/camera/ui/menu/setting/b;)V

    invoke-static {p1, v0, v2}, Lcom/oplus/camera/util/g;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/oplus/camera/util/g$b;)V

    const-string p0, "checkBeforeOpenLocation, request code: 5"

    .line 251
    invoke-static {p2, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v1

    .line 260
    :cond_5
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/b;->i()Z

    move-result p1

    if-nez p1, :cond_6

    .line 261
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/b;->l()I

    move-result p1

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    .line 262
    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/ui/menu/setting/b;->requestPermissions([Ljava/lang/String;I)V

    .line 264
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkBeforeOpenLocation, request code: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method protected a(Landroid/os/Bundle;)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "key_location_service_dialog_show"

    .line 275
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 276
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/b;->u()Z

    return v2

    :cond_0
    const-string v1, "key_network_dialog_show"

    .line 280
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 281
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/b;->o:Landroid/content/DialogInterface$OnClickListener;

    const v0, 0x7f10027f

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/menu/setting/b;->a(Landroid/content/DialogInterface$OnClickListener;I)V

    return v2

    .line 286
    :cond_1
    invoke-static {}, Lcom/oplus/camera/l/c;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "key_location_guide_dialog_show"

    .line 287
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 288
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/b;->v()V

    return v2

    :cond_2
    const-string v1, "key_permission_dialog_show"

    .line 292
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 293
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/b;->m:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/setting/b;->a(Landroid/content/DialogInterface$OnClickListener;)V

    return v2

    :cond_3
    return v0
.end method

.method protected b(Landroid/os/Bundle;)V
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/b;->f:Lcom/coui/appcompat/dialog/app/b;

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/app/b;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "key_location_service_dialog_show"

    .line 303
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 305
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/b;->h:Lcom/coui/appcompat/dialog/app/b;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/b;->g:Lcom/coui/appcompat/dialog/app/b;

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/b;->i:Lcom/coui/appcompat/dialog/app/b;

    invoke-static {p1, v0, v1, p0}, Lcom/oplus/camera/l/c;->a(Landroid/os/Bundle;Lcom/coui/appcompat/dialog/app/b;Lcom/coui/appcompat/dialog/app/b;Lcom/coui/appcompat/dialog/app/b;)V

    return-void
.end method

.method protected h()Z
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/b;->o:Landroid/content/DialogInterface$OnClickListener;

    const v1, 0x7f10027f

    invoke-virtual {p0, v1, v0}, Lcom/oplus/camera/ui/menu/setting/b;->a(ILandroid/content/DialogInterface$OnClickListener;)Z

    move-result p0

    return p0
.end method

.method public i()Z
    .locals 2

    .line 470
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/b;->getActivity()Landroidx/fragment/app/c;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 472
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/b;->getActivity()Landroidx/fragment/app/c;

    move-result-object p0

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v0}, Landroidx/fragment/app/c;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method protected j()V
    .locals 0

    return-void
.end method

.method protected k()V
    .locals 0

    return-void
.end method

.method protected l()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected m()V
    .locals 0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 133
    invoke-super {p0, p1, p2, p3}, Lcom/oplus/camera/ui/menu/setting/c;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/b;->i()Z

    move-result p1

    if-nez p1, :cond_1

    .line 151
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/b;->k()V

    return-void

    .line 156
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/b;->h()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 157
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/b;->j()V

    goto :goto_0

    .line 137
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/b;->getActivity()Landroidx/fragment/app/c;

    move-result-object p1

    invoke-static {p1}, Lcom/oplus/camera/util/Util;->x(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 138
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/b;->k()V

    return-void

    .line 143
    :cond_3
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/b;->h()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 144
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/b;->j()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 73
    invoke-super {p0, p1}, Lcom/oplus/camera/ui/menu/setting/c;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/b;->a(Landroid/os/Bundle;)Z

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 98
    invoke-super {p0}, Lcom/oplus/camera/ui/menu/setting/c;->onDestroy()V

    .line 99
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/b;->x()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 104
    invoke-super {p0}, Lcom/oplus/camera/ui/menu/setting/c;->onDestroyView()V

    .line 106
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/b;->f:Lcom/coui/appcompat/dialog/app/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/app/b;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/b;->f:Lcom/coui/appcompat/dialog/app/b;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/app/b;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/b;->f:Lcom/coui/appcompat/dialog/app/b;

    .line 112
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/b;->h:Lcom/coui/appcompat/dialog/app/b;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/coui/appcompat/dialog/app/b;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/b;->h:Lcom/coui/appcompat/dialog/app/b;

    invoke-virtual {v1}, Lcom/coui/appcompat/dialog/app/b;->dismiss()V

    .line 116
    :cond_1
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/b;->h:Lcom/coui/appcompat/dialog/app/b;

    .line 118
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/b;->i:Lcom/coui/appcompat/dialog/app/b;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/coui/appcompat/dialog/app/b;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 119
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/b;->i:Lcom/coui/appcompat/dialog/app/b;

    invoke-virtual {v1}, Lcom/coui/appcompat/dialog/app/b;->dismiss()V

    .line 122
    :cond_2
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/b;->i:Lcom/coui/appcompat/dialog/app/b;

    .line 124
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/b;->g:Lcom/coui/appcompat/dialog/app/b;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/coui/appcompat/dialog/app/b;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 125
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/b;->g:Lcom/coui/appcompat/dialog/app/b;

    invoke-virtual {v1}, Lcom/coui/appcompat/dialog/app/b;->dismiss()V

    .line 128
    :cond_3
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/b;->g:Lcom/coui/appcompat/dialog/app/b;

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .line 169
    invoke-super {p0, p1, p2, p3}, Lcom/oplus/camera/ui/menu/setting/c;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRequestPermissionsResult, requestCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", permissions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", grantResults: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseLocationPreferenceFragment"

    .line 171
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/b;->getActivity()Landroidx/fragment/app/c;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "key_export_permission_requested"

    invoke-virtual {p0, p1, v1, v0}, Lcom/oplus/camera/ui/menu/setting/b;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 178
    invoke-direct {p0, p2, p3}, Lcom/oplus/camera/ui/menu/setting/b;->a([Ljava/lang/String;[I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 179
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/b;->j()V

    goto :goto_1

    .line 181
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/b;->k()V

    goto :goto_1

    .line 189
    :cond_2
    invoke-direct {p0, p2, p3}, Lcom/oplus/camera/ui/menu/setting/b;->a([Ljava/lang/String;[I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 190
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/b;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 191
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/b;->j()V

    goto :goto_0

    .line 194
    :cond_3
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/b;->k()V

    .line 195
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/b;->m:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/setting/b;->a(Landroid/content/DialogInterface$OnClickListener;)V

    .line 198
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/b;->getActivity()Landroidx/fragment/app/c;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/oplus/camera/h;->a(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    :goto_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 92
    invoke-super {p0, p1}, Lcom/oplus/camera/ui/menu/setting/c;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/b;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 82
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/c;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 83
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/b;->t()V

    return-void
.end method
