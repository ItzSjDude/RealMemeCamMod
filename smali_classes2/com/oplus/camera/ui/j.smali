.class public Lcom/oplus/camera/ui/j;
.super Lcom/oplus/camera/ui/inverse/InverseLinearLayout;
.source "GalleryBottomMenuLayout.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/content/Context;

.field private d:Landroid/widget/ImageButton;

.field private e:Landroid/widget/ImageButton;

.field private f:Landroid/widget/ImageButton;

.field private g:Landroid/view/animation/PathInterpolator;

.field private h:Landroid/animation/AnimatorSet;

.field private i:Landroid/animation/AnimatorSet;

.field private j:Lcom/oplus/camera/ui/CameraUIListener;

.field private k:Lcom/coui/appcompat/dialog/app/b;

.field private l:Lcom/oplus/camera/ComboPreferences;

.field private m:Lcom/oplus/camera/Camera;

.field private n:Lcom/oplus/camera/ui/k;

.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 60
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/inverse/InverseLinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/oplus/camera/ui/j;->a:I

    .line 43
    iput v0, p0, Lcom/oplus/camera/ui/j;->b:I

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/oplus/camera/ui/j;->c:Landroid/content/Context;

    .line 46
    iput-object v0, p0, Lcom/oplus/camera/ui/j;->d:Landroid/widget/ImageButton;

    .line 47
    iput-object v0, p0, Lcom/oplus/camera/ui/j;->e:Landroid/widget/ImageButton;

    .line 48
    iput-object v0, p0, Lcom/oplus/camera/ui/j;->f:Landroid/widget/ImageButton;

    .line 49
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const/4 v3, 0x0

    const v4, 0x3f2b851f    # 0.67f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/oplus/camera/ui/j;->g:Landroid/view/animation/PathInterpolator;

    .line 50
    iput-object v0, p0, Lcom/oplus/camera/ui/j;->h:Landroid/animation/AnimatorSet;

    .line 51
    iput-object v0, p0, Lcom/oplus/camera/ui/j;->i:Landroid/animation/AnimatorSet;

    .line 52
    iput-object v0, p0, Lcom/oplus/camera/ui/j;->j:Lcom/oplus/camera/ui/CameraUIListener;

    .line 53
    iput-object v0, p0, Lcom/oplus/camera/ui/j;->k:Lcom/coui/appcompat/dialog/app/b;

    .line 54
    iput-object v0, p0, Lcom/oplus/camera/ui/j;->l:Lcom/oplus/camera/ComboPreferences;

    .line 55
    iput-object v0, p0, Lcom/oplus/camera/ui/j;->m:Lcom/oplus/camera/Camera;

    .line 56
    iput-object v0, p0, Lcom/oplus/camera/ui/j;->n:Lcom/oplus/camera/ui/k;

    const-string v0, ""

    .line 57
    iput-object v0, p0, Lcom/oplus/camera/ui/j;->o:Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lcom/oplus/camera/ui/j;->c:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/j;)Landroid/widget/ImageButton;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/oplus/camera/ui/j;->e:Landroid/widget/ImageButton;

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 323
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    const-string p0, "\\."

    .line 327
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_a

    .line 329
    array-length p1, p0

    const/4 v1, 0x1

    if-le v1, p1, :cond_1

    goto :goto_3

    .line 333
    :cond_1
    array-length p1, p0

    sub-int/2addr p1, v1

    aget-object p0, p0, p1

    const-string p1, "jpeg"

    .line 335
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_9

    const-string p1, "jpg"

    .line 336
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const-string p1, "raw"

    .line 338
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "dng"

    .line 339
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const-string p1, "heic_8bits"

    .line 341
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "heic_10bits"

    .line 342
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "heic"

    .line 343
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const-string p1, "mp4"

    .line 345
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p0, "video/mp4"

    return-object p0

    :cond_5
    const-string p1, "3gp"

    .line 347
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "video/3gp"

    return-object p0

    :cond_6
    return-object v0

    :cond_7
    :goto_0
    const-string p0, "image/heic"

    return-object p0

    :cond_8
    :goto_1
    const-string p0, "image/x-adobe-dng"

    return-object p0

    :cond_9
    :goto_2
    const-string p0, "image/jpeg"

    return-object p0

    :cond_a
    :goto_3
    return-object v0
.end method

.method private a(Landroid/app/Activity;)V
    .locals 3

    .line 411
    iget-object v0, p0, Lcom/oplus/camera/ui/j;->k:Lcom/coui/appcompat/dialog/app/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/app/b;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/oplus/camera/ui/j;->k:Lcom/coui/appcompat/dialog/app/b;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/app/b;->dismiss()V

    .line 415
    :cond_0
    new-instance v0, Lcom/coui/appcompat/dialog/app/b$a;

    invoke-direct {v0, p1}, Lcom/coui/appcompat/dialog/app/b$a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 416
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/app/b$a;->f(I)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object v0

    const v1, 0x7f1003c2

    new-instance v2, Lcom/oplus/camera/ui/j$6;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/j$6;-><init>(Lcom/oplus/camera/ui/j;)V

    .line 417
    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/dialog/app/b$a;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/oplus/camera/ui/j$5;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/j$5;-><init>(Lcom/oplus/camera/ui/j;)V

    .line 430
    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/dialog/app/b$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object v0

    .line 437
    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/app/b$a;->a()Lcom/coui/appcompat/dialog/app/b;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/j;->k:Lcom/coui/appcompat/dialog/app/b;

    .line 439
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 440
    iget-object p0, p0, Lcom/oplus/camera/ui/j;->k:Lcom/coui/appcompat/dialog/app/b;

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/app/b;->show()V

    :cond_1
    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 107
    iget-object p1, p0, Lcom/oplus/camera/ui/j;->m:Lcom/oplus/camera/Camera;

    if-eqz p1, :cond_0

    .line 108
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/j;->a(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/j;Z)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/j;->b(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/oplus/camera/ui/j;->h:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/oplus/camera/ui/j;->h:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/j;->e:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 158
    iget-object p1, p0, Lcom/oplus/camera/ui/j;->e:Landroid/widget/ImageButton;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 160
    iget-object v0, p0, Lcom/oplus/camera/ui/j;->g:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0xfa

    .line 161
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 163
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/j;->i:Landroid/animation/AnimatorSet;

    .line 164
    iget-object v0, p0, Lcom/oplus/camera/ui/j;->i:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 166
    iget-object p1, p0, Lcom/oplus/camera/ui/j;->i:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/oplus/camera/ui/j$2;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/j$2;-><init>(Lcom/oplus/camera/ui/j;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 189
    iget-object p0, p0, Lcom/oplus/camera/ui/j;->i:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 191
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/ui/j;->e:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 192
    iget-object p1, p0, Lcom/oplus/camera/ui/j;->e:Landroid/widget/ImageButton;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    const/4 p1, 0x1

    .line 193
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/j;->b(Z)V

    :cond_3
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private a(Landroid/net/Uri;)Z
    .locals 4

    const/4 v0, 0x0

    .line 361
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/ui/j;->m:Lcom/oplus/camera/Camera;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 362
    iget-object p0, p0, Lcom/oplus/camera/ui/j;->m:Lcom/oplus/camera/Camera;

    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v3, v3}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/ContentResolver;->loadThumbnail(Landroid/net/Uri;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    if-eqz v2, :cond_1

    move v0, v3

    :cond_1
    return v0

    .line 367
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkFileOk: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GalleryBottomMenuLayout"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private a(Landroid/net/Uri;Z)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 300
    iget-object v1, p0, Lcom/oplus/camera/ui/j;->m:Lcom/oplus/camera/Camera;

    if-nez v1, :cond_0

    goto :goto_1

    .line 304
    :cond_0
    invoke-virtual {v1}, Lcom/oplus/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/oplus/camera/util/Util;->a(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v1

    .line 306
    invoke-direct {p0}, Lcom/oplus/camera/ui/j;->i()Z

    move-result v2

    if-nez v2, :cond_3

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 315
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/j;->a(Landroid/net/Uri;)Z

    move-result p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0

    .line 307
    :cond_3
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onThumbNailClick, imageCaptureListIsEmpty: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-static {}, Lcom/oplus/camera/m/b;->a()Lcom/oplus/camera/m/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/m/b;->j()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", imageSaveListIsEmpty: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-static {}, Lcom/oplus/camera/m/b;->a()Lcom/oplus/camera/m/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/m/b;->g()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isUriValid: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GalleryBottomMenuLayout"

    .line 307
    invoke-static {p1, p0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return v0
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/oplus/camera/ui/j;->f()V

    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/ui/j;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/oplus/camera/ui/j;->g()V

    return-void
.end method

.method private b(Z)V
    .locals 3

    .line 198
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/oplus/camera/ui/j;->a:I

    iget v2, p0, Lcom/oplus/camera/ui/j;->b:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 199
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-eqz p1, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/oplus/camera/ui/j;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f07058a

    .line 203
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 202
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_0

    .line 205
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/j;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070589

    .line 206
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 205
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 209
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/ui/j;->d:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic c(Landroid/view/View;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/oplus/camera/ui/j;->e()V

    return-void
.end method

.method static synthetic c(Lcom/oplus/camera/ui/j;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/oplus/camera/ui/j;->j()V

    return-void
.end method

.method static synthetic d(Lcom/oplus/camera/ui/j;)Lcom/oplus/camera/ui/k;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/oplus/camera/ui/j;->n:Lcom/oplus/camera/ui/k;

    return-object p0
.end method

.method private d()V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/oplus/camera/ui/j;->i:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/oplus/camera/ui/j;->i:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/j;->e:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/j;->e:Landroid/widget/ImageButton;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/oplus/camera/ui/j;->g:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xfa

    .line 131
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 133
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/oplus/camera/ui/j;->h:Landroid/animation/AnimatorSet;

    .line 134
    iget-object v1, p0, Lcom/oplus/camera/ui/j;->h:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 135
    iget-object v0, p0, Lcom/oplus/camera/ui/j;->h:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/oplus/camera/ui/j$1;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/j$1;-><init>(Lcom/oplus/camera/ui/j;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 145
    iget-object p0, p0, Lcom/oplus/camera/ui/j;->h:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_2
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private e()V
    .locals 3

    .line 213
    invoke-static {}, Lcom/oplus/camera/w/d;->a()Lcom/oplus/camera/w/d;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/ui/j$3;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/j$3;-><init>(Lcom/oplus/camera/ui/j;)V

    const-string v2, "share"

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/w/d;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/oplus/camera/ui/j;->l:Lcom/oplus/camera/ComboPreferences;

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {v0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "share_edit_video_show_expand"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    const/16 v0, 0x2e

    .line 224
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/j;->b(I)V

    return-void
.end method

.method private f()V
    .locals 3

    .line 228
    invoke-static {}, Lcom/oplus/camera/w/d;->a()Lcom/oplus/camera/w/d;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/ui/j$4;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/j$4;-><init>(Lcom/oplus/camera/ui/j;)V

    const-string v2, "mark"

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/w/d;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/oplus/camera/ui/j;->l:Lcom/oplus/camera/ComboPreferences;

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "share_edit_video_show_expand"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    const/16 v0, 0x2f

    .line 239
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/j;->b(I)V

    return-void
.end method

.method private g()V
    .locals 5

    .line 243
    iget-object v0, p0, Lcom/oplus/camera/ui/j;->n:Lcom/oplus/camera/ui/k;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/k;->e()Lcom/oplus/c/a/b/a;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_7

    .line 245
    iget-object v2, p0, Lcom/oplus/camera/ui/j;->m:Lcom/oplus/camera/Camera;

    if-nez v2, :cond_1

    goto :goto_2

    .line 249
    :cond_1
    invoke-virtual {v0}, Lcom/oplus/c/a/b/a;->g()Landroid/net/Uri;

    move-result-object v2

    .line 251
    invoke-static {v2}, Lcom/oplus/camera/util/Util;->a(Landroid/net/Uri;)Z

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/oplus/camera/ui/j;->a(Landroid/net/Uri;Z)Z

    move-result v3

    if-nez v3, :cond_2

    return-void

    .line 255
    :cond_2
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v0}, Lcom/oplus/c/a/b/a;->d()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    .line 259
    invoke-virtual {v0}, Lcom/oplus/c/a/b/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_3
    if-nez v4, :cond_5

    .line 263
    invoke-static {v2}, Lcom/oplus/camera/util/Util;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "image/*"

    goto :goto_1

    :cond_4
    const-string v0, "video/*"

    :goto_1
    move-object v4, v0

    .line 266
    :cond_5
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.STREAM"

    .line 267
    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 269
    invoke-virtual {p0}, Lcom/oplus/camera/ui/j;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x10008000

    .line 270
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 273
    :cond_6
    invoke-direct {p0}, Lcom/oplus/camera/ui/j;->h()V

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/ui/j;->m:Lcom/oplus/camera/Camera;

    invoke-static {v3, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/Camera;->startActivity(Landroid/content/Intent;)V

    .line 277
    iget-object p0, p0, Lcom/oplus/camera/ui/j;->m:Lcom/oplus/camera/Camera;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/oplus/camera/Camera;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jumpSystemShare: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GalleryBottomMenuLayout"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_2
    return-void
.end method

.method private h()V
    .locals 3

    const-string v0, "GalleryBottomMenuLayout"

    .line 284
    invoke-virtual {p0}, Lcom/oplus/camera/ui/j;->b()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 288
    :cond_0
    new-instance p0, Landroid/view/OplusWindowManager;

    invoke-direct {p0}, Landroid/view/OplusWindowManager;-><init>()V

    :try_start_0
    const-string v1, "unlockOrShowSecurity"

    .line 291
    invoke-virtual {p0, v1}, Landroid/view/OplusWindowManager;->requestKeyguard(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "OplusWindowManager error:"

    .line 295
    invoke-static {v0, v1, p0}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OplusWindowManager exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private i()Z
    .locals 0

    .line 355
    invoke-static {}, Lcom/oplus/camera/m/b;->a()Lcom/oplus/camera/m/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/m/b;->j()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 356
    invoke-static {}, Lcom/oplus/camera/m/b;->a()Lcom/oplus/camera/m/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/m/b;->g()Z

    move-result p0

    if-nez p0, :cond_0

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

.method private j()V
    .locals 4

    .line 374
    iget-object v0, p0, Lcom/oplus/camera/ui/j;->n:Lcom/oplus/camera/ui/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/k;->e()Lcom/oplus/c/a/b/a;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 376
    iget-object v1, p0, Lcom/oplus/camera/ui/j;->m:Lcom/oplus/camera/Camera;

    if-nez v1, :cond_1

    goto/16 :goto_1

    .line 380
    :cond_1
    invoke-virtual {v0}, Lcom/oplus/c/a/b/a;->g()Landroid/net/Uri;

    move-result-object v0

    .line 382
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->a(Landroid/net/Uri;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/ui/j;->a(Landroid/net/Uri;Z)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 386
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v0, "edit_skill"

    const-string v2, "doodle"

    .line 388
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "finish_operate"

    const-string v2, "save,share"

    .line 389
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 390
    iget-object v0, p0, Lcom/oplus/camera/ui/j;->o:Ljava/lang/String;

    const-string v2, "from"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    const-string v2, "isInternalSdcard"

    .line 391
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "editor_state_item"

    const-string v3, "graffiti"

    .line 392
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    invoke-static {}, Lcom/oplus/camera/util/Util;->aP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 396
    invoke-virtual {p0}, Lcom/oplus/camera/ui/j;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x10008000

    .line 397
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 400
    :cond_3
    invoke-direct {p0}, Lcom/oplus/camera/ui/j;->h()V

    .line 403
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/ui/j;->m:Lcom/oplus/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/Camera;->startActivity(Landroid/content/Intent;)V

    .line 404
    iget-object p0, p0, Lcom/oplus/camera/ui/j;->m:Lcom/oplus/camera/Camera;

    const v0, 0x7f010092

    const v1, 0x7f010041

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/Camera;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "split screen mode jumpMark: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GalleryBottomMenuLayout"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public static synthetic lambda$D96y8EcUnV4L2vkBoBYWYhBsp2o(Lcom/oplus/camera/ui/j;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/j;->b(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$UU0oNqlyvYX0dAlvUck3N9_Fzc0(Lcom/oplus/camera/ui/j;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/j;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$qzgT2McSJNVfFmhctzgAHR1jR9A(Lcom/oplus/camera/ui/j;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/j;->c(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 445
    iget-object v0, p0, Lcom/oplus/camera/ui/j;->n:Lcom/oplus/camera/ui/k;

    if-nez v0, :cond_0

    return-void

    .line 449
    :cond_0
    invoke-virtual {v0}, Lcom/oplus/camera/ui/k;->h()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/ui/j;->a(ZZ)V

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/oplus/camera/ui/j;->n:Lcom/oplus/camera/ui/k;

    if-nez v0, :cond_0

    return-void

    .line 457
    :cond_0
    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/k;->c(I)Z

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/ui/j;->a(ZZ)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 0

    .line 483
    iget-object p0, p0, Lcom/oplus/camera/ui/j;->j:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz p0, :cond_0

    .line 484
    invoke-interface {p0, p1, p2}, Lcom/oplus/camera/ui/CameraUIListener;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/camera/ui/CameraUIListener;Lcom/oplus/camera/ComboPreferences;Landroid/app/Activity;Lcom/oplus/camera/ui/k;)V
    .locals 2

    const-string v0, "GalleryBottomMenuLayout"

    const-string v1, "initGalleryBottomMenu"

    .line 70
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iput-object p1, p0, Lcom/oplus/camera/ui/j;->j:Lcom/oplus/camera/ui/CameraUIListener;

    .line 73
    iput-object p2, p0, Lcom/oplus/camera/ui/j;->l:Lcom/oplus/camera/ComboPreferences;

    .line 74
    check-cast p3, Lcom/oplus/camera/Camera;

    iput-object p3, p0, Lcom/oplus/camera/ui/j;->m:Lcom/oplus/camera/Camera;

    .line 75
    iget-object p1, p0, Lcom/oplus/camera/ui/j;->m:Lcom/oplus/camera/Camera;

    invoke-virtual {p1}, Lcom/oplus/camera/Camera;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/j;->o:Ljava/lang/String;

    .line 76
    iput-object p4, p0, Lcom/oplus/camera/ui/j;->n:Lcom/oplus/camera/ui/k;

    .line 77
    invoke-virtual {p0}, Lcom/oplus/camera/ui/j;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07058f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/j;->a:I

    .line 78
    invoke-virtual {p0}, Lcom/oplus/camera/ui/j;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07058c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/j;->b:I

    .line 80
    new-instance p1, Landroid/widget/ImageButton;

    iget-object p2, p0, Lcom/oplus/camera/ui/j;->c:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oplus/camera/ui/j;->f:Landroid/widget/ImageButton;

    .line 81
    iget-object p1, p0, Lcom/oplus/camera/ui/j;->f:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/j;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/4 p3, 0x0

    const p4, 0x7f080493

    invoke-virtual {p2, p4, p3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    iget-object p1, p0, Lcom/oplus/camera/ui/j;->f:Landroid/widget/ImageButton;

    const p2, 0x7f080421

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 83
    iget-object p1, p0, Lcom/oplus/camera/ui/j;->f:Landroid/widget/ImageButton;

    new-instance p4, Lcom/oplus/camera/ui/-$$Lambda$j$qzgT2McSJNVfFmhctzgAHR1jR9A;

    invoke-direct {p4, p0}, Lcom/oplus/camera/ui/-$$Lambda$j$qzgT2McSJNVfFmhctzgAHR1jR9A;-><init>(Lcom/oplus/camera/ui/j;)V

    invoke-virtual {p1, p4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    iget p4, p0, Lcom/oplus/camera/ui/j;->a:I

    iget v0, p0, Lcom/oplus/camera/ui/j;->b:I

    invoke-direct {p1, p4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 p4, 0x11

    .line 87
    iput p4, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/4 v0, 0x0

    .line 88
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 89
    invoke-virtual {p0}, Lcom/oplus/camera/ui/j;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07058e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 90
    iget-object v0, p0, Lcom/oplus/camera/ui/j;->f:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/ui/j;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    new-instance p1, Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/oplus/camera/ui/j;->c:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oplus/camera/ui/j;->e:Landroid/widget/ImageButton;

    .line 93
    iget-object p1, p0, Lcom/oplus/camera/ui/j;->e:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/j;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08045a

    invoke-virtual {v0, v1, p3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    iget-object p1, p0, Lcom/oplus/camera/ui/j;->e:Landroid/widget/ImageButton;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 95
    iget-object p1, p0, Lcom/oplus/camera/ui/j;->e:Landroid/widget/ImageButton;

    new-instance v0, Lcom/oplus/camera/ui/-$$Lambda$j$D96y8EcUnV4L2vkBoBYWYhBsp2o;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/-$$Lambda$j$D96y8EcUnV4L2vkBoBYWYhBsp2o;-><init>(Lcom/oplus/camera/ui/j;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, p0, Lcom/oplus/camera/ui/j;->a:I

    iget v1, p0, Lcom/oplus/camera/ui/j;->b:I

    invoke-direct {p1, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 99
    iput p4, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 100
    invoke-virtual {p0}, Lcom/oplus/camera/ui/j;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07058b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 101
    iget-object v0, p0, Lcom/oplus/camera/ui/j;->e:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/ui/j;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    new-instance p1, Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/oplus/camera/ui/j;->c:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oplus/camera/ui/j;->d:Landroid/widget/ImageButton;

    .line 104
    iget-object p1, p0, Lcom/oplus/camera/ui/j;->d:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/j;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080459

    invoke-virtual {v0, v1, p3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    iget-object p1, p0, Lcom/oplus/camera/ui/j;->d:Landroid/widget/ImageButton;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 106
    iget-object p1, p0, Lcom/oplus/camera/ui/j;->d:Landroid/widget/ImageButton;

    new-instance p2, Lcom/oplus/camera/ui/-$$Lambda$j$UU0oNqlyvYX0dAlvUck3N9_Fzc0;

    invoke-direct {p2, p0}, Lcom/oplus/camera/ui/-$$Lambda$j$UU0oNqlyvYX0dAlvUck3N9_Fzc0;-><init>(Lcom/oplus/camera/ui/j;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    iget p2, p0, Lcom/oplus/camera/ui/j;->a:I

    iget p3, p0, Lcom/oplus/camera/ui/j;->b:I

    invoke-direct {p1, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 112
    iput p4, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 113
    invoke-virtual {p0}, Lcom/oplus/camera/ui/j;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070589

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 114
    iget-object p2, p0, Lcom/oplus/camera/ui/j;->d:Landroid/widget/ImageButton;

    invoke-virtual {p0, p2, p1}, Lcom/oplus/camera/ui/j;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    invoke-virtual {p0}, Lcom/oplus/camera/ui/j;->a()V

    return-void
.end method

.method public a(ZZ)V
    .locals 0

    if-nez p1, :cond_0

    .line 462
    invoke-direct {p0}, Lcom/oplus/camera/ui/j;->d()V

    goto :goto_0

    .line 464
    :cond_0
    invoke-direct {p0, p2}, Lcom/oplus/camera/ui/j;->a(Z)V

    :goto_0
    return-void
.end method

.method public b(I)V
    .locals 0

    .line 477
    iget-object p0, p0, Lcom/oplus/camera/ui/j;->j:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz p0, :cond_0

    .line 478
    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/CameraUIListener;->i(I)V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 0

    .line 469
    iget-object p0, p0, Lcom/oplus/camera/ui/j;->j:Lcom/oplus/camera/ui/CameraUIListener;

    if-eqz p0, :cond_0

    .line 470
    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIListener;->bc()Lcom/oplus/camera/entry/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/entry/b;->w()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 489
    iput-object v0, p0, Lcom/oplus/camera/ui/j;->m:Lcom/oplus/camera/Camera;

    .line 490
    iput-object v0, p0, Lcom/oplus/camera/ui/j;->l:Lcom/oplus/camera/ComboPreferences;

    .line 491
    iput-object v0, p0, Lcom/oplus/camera/ui/j;->n:Lcom/oplus/camera/ui/k;

    .line 492
    iput-object v0, p0, Lcom/oplus/camera/ui/j;->j:Lcom/oplus/camera/ui/CameraUIListener;

    return-void
.end method
