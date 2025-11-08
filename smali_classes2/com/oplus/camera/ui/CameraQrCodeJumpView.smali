.class public Lcom/oplus/camera/ui/CameraQrCodeJumpView;
.super Landroid/widget/LinearLayout;
.source "CameraQrCodeJumpView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Z

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;

.field private l:Lcom/oplus/camera/ui/r;

.field private m:Landroid/os/Handler;

.field private n:Lcom/oplus/camera/ui/r$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 83
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string p1, "CameraQrCodeJumpView"

    .line 20
    iput-object p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->a:Ljava/lang/String;

    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->b:Z

    .line 33
    iput-boolean p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->c:Z

    .line 34
    iput p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->d:I

    .line 35
    iput p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->e:I

    .line 36
    iput p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->f:I

    .line 37
    iput p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->g:I

    .line 38
    iput p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->h:I

    .line 39
    iput p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->i:I

    .line 40
    iput p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->j:I

    .line 42
    new-instance p1, Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;

    invoke-direct {p1, p0}, Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;-><init>(Lcom/oplus/camera/ui/CameraQrCodeJumpView;)V

    iput-object p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->k:Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;

    const/4 p1, 0x0

    .line 43
    iput-object p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->l:Lcom/oplus/camera/ui/r;

    .line 45
    new-instance p1, Lcom/oplus/camera/ui/CameraQrCodeJumpView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/oplus/camera/ui/CameraQrCodeJumpView$1;-><init>(Lcom/oplus/camera/ui/CameraQrCodeJumpView;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->m:Landroid/os/Handler;

    .line 61
    new-instance p1, Lcom/oplus/camera/ui/CameraQrCodeJumpView$2;

    invoke-direct {p1, p0}, Lcom/oplus/camera/ui/CameraQrCodeJumpView$2;-><init>(Lcom/oplus/camera/ui/CameraQrCodeJumpView;)V

    iput-object p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->n:Lcom/oplus/camera/ui/r$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "CameraQrCodeJumpView"

    .line 20
    iput-object p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->a:Ljava/lang/String;

    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->b:Z

    .line 33
    iput-boolean p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->c:Z

    .line 34
    iput p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->d:I

    .line 35
    iput p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->e:I

    .line 36
    iput p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->f:I

    .line 37
    iput p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->g:I

    .line 38
    iput p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->h:I

    .line 39
    iput p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->i:I

    .line 40
    iput p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->j:I

    .line 42
    new-instance p1, Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;

    invoke-direct {p1, p0}, Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;-><init>(Lcom/oplus/camera/ui/CameraQrCodeJumpView;)V

    iput-object p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->k:Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;

    const/4 p1, 0x0

    .line 43
    iput-object p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->l:Lcom/oplus/camera/ui/r;

    .line 45
    new-instance p1, Lcom/oplus/camera/ui/CameraQrCodeJumpView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/oplus/camera/ui/CameraQrCodeJumpView$1;-><init>(Lcom/oplus/camera/ui/CameraQrCodeJumpView;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->m:Landroid/os/Handler;

    .line 61
    new-instance p1, Lcom/oplus/camera/ui/CameraQrCodeJumpView$2;

    invoke-direct {p1, p0}, Lcom/oplus/camera/ui/CameraQrCodeJumpView$2;-><init>(Lcom/oplus/camera/ui/CameraQrCodeJumpView;)V

    iput-object p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->n:Lcom/oplus/camera/ui/r$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "CameraQrCodeJumpView"

    .line 20
    iput-object p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->a:Ljava/lang/String;

    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->b:Z

    .line 33
    iput-boolean p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->c:Z

    .line 34
    iput p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->d:I

    .line 35
    iput p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->e:I

    .line 36
    iput p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->f:I

    .line 37
    iput p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->g:I

    .line 38
    iput p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->h:I

    .line 39
    iput p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->i:I

    .line 40
    iput p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->j:I

    .line 42
    new-instance p1, Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;

    invoke-direct {p1, p0}, Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;-><init>(Lcom/oplus/camera/ui/CameraQrCodeJumpView;)V

    iput-object p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->k:Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;

    const/4 p1, 0x0

    .line 43
    iput-object p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->l:Lcom/oplus/camera/ui/r;

    .line 45
    new-instance p1, Lcom/oplus/camera/ui/CameraQrCodeJumpView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/oplus/camera/ui/CameraQrCodeJumpView$1;-><init>(Lcom/oplus/camera/ui/CameraQrCodeJumpView;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->m:Landroid/os/Handler;

    .line 61
    new-instance p1, Lcom/oplus/camera/ui/CameraQrCodeJumpView$2;

    invoke-direct {p1, p0}, Lcom/oplus/camera/ui/CameraQrCodeJumpView$2;-><init>(Lcom/oplus/camera/ui/CameraQrCodeJumpView;)V

    iput-object p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->n:Lcom/oplus/camera/ui/r$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-string p1, "CameraQrCodeJumpView"

    .line 20
    iput-object p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->a:Ljava/lang/String;

    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->b:Z

    .line 33
    iput-boolean p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->c:Z

    .line 34
    iput p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->d:I

    .line 35
    iput p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->e:I

    .line 36
    iput p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->f:I

    .line 37
    iput p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->g:I

    .line 38
    iput p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->h:I

    .line 39
    iput p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->i:I

    .line 40
    iput p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->j:I

    .line 42
    new-instance p1, Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;

    invoke-direct {p1, p0}, Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;-><init>(Lcom/oplus/camera/ui/CameraQrCodeJumpView;)V

    iput-object p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->k:Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;

    const/4 p1, 0x0

    .line 43
    iput-object p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->l:Lcom/oplus/camera/ui/r;

    .line 45
    new-instance p1, Lcom/oplus/camera/ui/CameraQrCodeJumpView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/oplus/camera/ui/CameraQrCodeJumpView$1;-><init>(Lcom/oplus/camera/ui/CameraQrCodeJumpView;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->m:Landroid/os/Handler;

    .line 61
    new-instance p1, Lcom/oplus/camera/ui/CameraQrCodeJumpView$2;

    invoke-direct {p1, p0}, Lcom/oplus/camera/ui/CameraQrCodeJumpView$2;-><init>(Lcom/oplus/camera/ui/CameraQrCodeJumpView;)V

    iput-object p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->n:Lcom/oplus/camera/ui/r$a;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/CameraQrCodeJumpView;)Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/CameraQrCodeJumpView;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->b:Z

    return p1
.end method

.method static synthetic b(Lcom/oplus/camera/ui/CameraQrCodeJumpView;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->f()V

    return-void
.end method

.method static synthetic c(Lcom/oplus/camera/ui/CameraQrCodeJumpView;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->b:Z

    return p0
.end method

.method static synthetic d(Lcom/oplus/camera/ui/CameraQrCodeJumpView;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->c:Z

    return p0
.end method

.method static synthetic e(Lcom/oplus/camera/ui/CameraQrCodeJumpView;)Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->k:Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;

    return-object p0
.end method

.method private f()V
    .locals 8

    .line 197
    iget v0, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->d:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v2, v0, :cond_0

    move v0, v1

    :cond_0
    iput v0, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->d:I

    .line 198
    iget v0, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->d:I

    rem-int/lit16 v2, v0, 0xb4

    if-nez v2, :cond_1

    move v0, v1

    :cond_1
    iput v0, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->d:I

    .line 200
    invoke-virtual {p0}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->getMeasuredWidth()I

    move-result v0

    .line 201
    invoke-virtual {p0}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->getMeasuredHeight()I

    move-result v2

    if-lez v0, :cond_2

    if-gtz v2, :cond_3

    .line 204
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0709c7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 205
    invoke-virtual {p0}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0709c6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 208
    :cond_3
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    .line 209
    invoke-virtual {p0}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07006b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 211
    iget v4, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->d:I

    const/16 v5, 0x5a

    const/16 v6, 0xa

    if-eq v4, v5, :cond_6

    const/16 v5, 0x9

    const/16 v7, 0xb4

    if-eq v4, v7, :cond_5

    const/16 v7, 0x10e

    if-eq v4, v7, :cond_4

    .line 240
    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 241
    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 242
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    div-int/lit8 v5, v0, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->i:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 243
    iget v4, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->f:I

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 245
    iput v1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->d:I

    goto :goto_0

    .line 231
    :cond_4
    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 232
    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 233
    iget v1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->g:I

    iget v4, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->h:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    div-int/lit8 v4, v2, 0x2

    sub-int/2addr v1, v4

    iget v5, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->i:I

    add-int/2addr v1, v5

    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 234
    iget v1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->j:I

    add-int/2addr v1, v4

    div-int/lit8 v4, v0, 0x2

    add-int/2addr v1, v4

    sub-int/2addr v1, v0

    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 236
    iput v7, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->d:I

    goto :goto_0

    .line 222
    :cond_5
    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 223
    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 224
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v4, v0, 0x2

    sub-int/2addr v1, v4

    iget v4, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->i:I

    add-int/2addr v1, v4

    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 225
    iget v1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->f:I

    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 227
    iput v7, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->d:I

    goto :goto_0

    .line 213
    :cond_6
    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xb

    .line 214
    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 215
    iget v1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->g:I

    iget v4, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->h:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    div-int/lit8 v4, v2, 0x2

    sub-int/2addr v1, v4

    iget v6, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->i:I

    add-int/2addr v1, v6

    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 216
    iget v1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->j:I

    add-int/2addr v1, v4

    div-int/lit8 v4, v0, 0x2

    add-int/2addr v1, v4

    sub-int/2addr v1, v0

    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 218
    iput v5, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->d:I

    .line 249
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mOrientation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->d:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", default: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->e:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", width: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", height: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0, v3}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    iget v0, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->d:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->setRotation(F)V

    return-void
.end method

.method private g()V
    .locals 3

    .line 257
    new-instance v0, Lcom/oplus/camera/ui/r;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/camera/ui/r;-><init>(FF)V

    iput-object v0, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->l:Lcom/oplus/camera/ui/r;

    .line 258
    iget-object v0, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->l:Lcom/oplus/camera/ui/r;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/r;->setDuration(J)V

    .line 259
    iget-object v0, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->l:Lcom/oplus/camera/ui/r;

    iget-object p0, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->n:Lcom/oplus/camera/ui/r$a;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/r;->a(Lcom/oplus/camera/ui/r$a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 128
    iget-object v0, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->a:Ljava/lang/String;

    const-string v1, "startHideDelay"

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->m:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 131
    iget-object p0, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->m:Landroid/os/Handler;

    const-wide/16 v2, 0x9c4

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public a(IIII)V
    .locals 0

    .line 99
    iput p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->f:I

    .line 100
    iput p2, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->g:I

    .line 101
    iput p3, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->h:I

    .line 102
    iput p4, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->i:I

    .line 103
    invoke-virtual {p0}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070971

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->j:I

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->a:Ljava/lang/String;

    const-string v1, "hideQrCodeJumpView"

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-boolean v0, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->c:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 141
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->setAlpha(F)V

    .line 142
    iget v0, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->d:I

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->setOrientation(I)V

    if-eqz p1, :cond_1

    .line 145
    iget-object p0, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->k:Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;->a(I)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 147
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(ZZ)V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->a:Ljava/lang/String;

    const-string v1, "showQrCodeJumpView"

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-boolean v0, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 113
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->setVisibility(I)V

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 116
    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->setAlpha(F)V

    .line 117
    iget-object p2, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->k:Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;

    invoke-virtual {p2, v0}, Lcom/oplus/camera/ui/CameraQrCodeJumpView$a;->a(I)V

    .line 120
    :cond_1
    iget p2, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->d:I

    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->setOrientation(I)V

    if-eqz p1, :cond_2

    .line 123
    invoke-virtual {p0}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->a()V

    :cond_2
    return-void
.end method

.method public b()Z
    .locals 0

    .line 152
    invoke-virtual {p0}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    .line 156
    iput-boolean v0, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->c:Z

    const/4 v0, -0x1

    .line 157
    iput v0, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->d:I

    .line 159
    invoke-virtual {p0}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->clearAnimation()V

    return-void
.end method

.method public clearAnimation()V
    .locals 1

    const/4 v0, 0x0

    .line 164
    iput-boolean v0, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->b:Z

    .line 166
    invoke-super {p0}, Landroid/widget/LinearLayout;->clearAnimation()V

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 170
    iput-boolean v0, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->c:Z

    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, -0x1

    .line 380
    iput v0, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->d:I

    return-void
.end method

.method public getLayoutDirection()I
    .locals 0

    .line 376
    invoke-virtual {p0}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    return p0
.end method

.method public getOrientation()I
    .locals 0

    .line 267
    iget p0, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->d:I

    return p0
.end method

.method public setDefaultPreviewHeight(I)V
    .locals 0

    .line 263
    iput p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->e:I

    return-void
.end method

.method public setOrientation(I)V
    .locals 3

    .line 174
    iget v0, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->d:I

    .line 175
    iput p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->d:I

    .line 177
    iget-object v1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->l:Lcom/oplus/camera/ui/r;

    if-nez v1, :cond_0

    .line 178
    invoke-direct {p0}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->g()V

    :cond_0
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v1, p1, :cond_1

    move p1, v2

    .line 182
    :cond_1
    rem-int/lit16 v1, p1, 0xb4

    if-nez v1, :cond_2

    move p1, v2

    :cond_2
    if-eq v0, p1, :cond_4

    .line 185
    iget-object v0, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->n:Lcom/oplus/camera/ui/r$a;

    if-eqz v0, :cond_3

    .line 186
    invoke-interface {v0}, Lcom/oplus/camera/ui/r$a;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->l:Lcom/oplus/camera/ui/r;

    .line 187
    invoke-virtual {v0}, Lcom/oplus/camera/ui/r;->b()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->l:Lcom/oplus/camera/ui/r;

    .line 188
    invoke-virtual {v0}, Lcom/oplus/camera/ui/r;->a()I

    move-result v0

    if-eq v0, p1, :cond_3

    .line 189
    iget-object v0, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->l:Lcom/oplus/camera/ui/r;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 192
    :cond_3
    iget-object p0, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->l:Lcom/oplus/camera/ui/r;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/ui/r;->a(IZ)V

    :cond_4
    return-void
.end method
