.class public Lcom/oplus/camera/j/b;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "VideoViewPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/j/b$b;,
        Lcom/oplus/camera/j/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$a<",
        "Lcom/oplus/camera/j/b$b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:[I

.field private b:[Landroid/net/Uri;

.field private c:Landroid/graphics/Bitmap;

.field private d:Landroid/content/Context;

.field private e:I

.field private f:I

.field private g:Lcom/oplus/camera/doubleexposure/DoubleExposureVideoView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;[I[Landroid/net/Uri;)V
    .locals 2

    .line 33
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/oplus/camera/j/b;->a:[I

    .line 26
    iput-object v0, p0, Lcom/oplus/camera/j/b;->b:[Landroid/net/Uri;

    .line 27
    iput-object v0, p0, Lcom/oplus/camera/j/b;->c:Landroid/graphics/Bitmap;

    .line 28
    iput-object v0, p0, Lcom/oplus/camera/j/b;->d:Landroid/content/Context;

    const/4 v1, -0x1

    .line 29
    iput v1, p0, Lcom/oplus/camera/j/b;->e:I

    const/4 v1, 0x1

    .line 30
    iput v1, p0, Lcom/oplus/camera/j/b;->f:I

    .line 31
    iput-object v0, p0, Lcom/oplus/camera/j/b;->g:Lcom/oplus/camera/doubleexposure/DoubleExposureVideoView$a;

    .line 34
    iput-object p2, p0, Lcom/oplus/camera/j/b;->a:[I

    .line 35
    iput-object p3, p0, Lcom/oplus/camera/j/b;->b:[Landroid/net/Uri;

    .line 36
    iput-object p1, p0, Lcom/oplus/camera/j/b;->d:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/j/b;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/oplus/camera/j/b;->f:I

    return p0
.end method

.method static synthetic a(Lcom/oplus/camera/j/b;I)I
    .locals 0

    .line 20
    iput p1, p0, Lcom/oplus/camera/j/b;->f:I

    return p1
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 52
    iget p0, p0, Lcom/oplus/camera/j/b;->e:I

    return p0
.end method

.method public a(Landroid/view/ViewGroup;I)Lcom/oplus/camera/j/b$b;
    .locals 2

    .line 61
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    const v1, 0x7f0c0050

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 62
    new-instance p2, Lcom/oplus/camera/j/b$b;

    invoke-direct {p2, p0, p1}, Lcom/oplus/camera/j/b$b;-><init>(Lcom/oplus/camera/j/b;Landroid/view/View;)V

    .line 63
    invoke-virtual {p2, v0}, Lcom/oplus/camera/j/b$b;->setIsRecyclable(Z)V

    return-object p2
.end method

.method public a(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/oplus/camera/j/b;->e:I

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/oplus/camera/j/b;->c:Landroid/graphics/Bitmap;

    return-void
.end method

.method public a(Lcom/oplus/camera/doubleexposure/DoubleExposureVideoView$a;)V
    .locals 3

    .line 40
    iput-object p1, p0, Lcom/oplus/camera/j/b;->g:Lcom/oplus/camera/doubleexposure/DoubleExposureVideoView$a;

    .line 42
    iget-object p1, p0, Lcom/oplus/camera/j/b;->b:[Landroid/net/Uri;

    array-length v0, p1

    if-lez v0, :cond_0

    .line 43
    new-instance v0, Lcom/oplus/camera/j/b$a;

    iget-object v1, p0, Lcom/oplus/camera/j/b;->d:Landroid/content/Context;

    const/4 v2, 0x0

    aget-object p1, p1, v2

    iget-object p0, p0, Lcom/oplus/camera/j/b;->g:Lcom/oplus/camera/doubleexposure/DoubleExposureVideoView$a;

    invoke-direct {v0, v1, p1, p0}, Lcom/oplus/camera/j/b$a;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/oplus/camera/doubleexposure/DoubleExposureVideoView$a;)V

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/camera/j/b$b;I)V
    .locals 2

    .line 69
    invoke-static {p1}, Lcom/oplus/camera/j/b$b;->a(Lcom/oplus/camera/j/b$b;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/j/b;->a:[I

    aget v1, v1, p2

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 70
    invoke-static {p1}, Lcom/oplus/camera/j/b$b;->a(Lcom/oplus/camera/j/b$b;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/j/b$1;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/j/b$1;-><init>(Lcom/oplus/camera/j/b;Lcom/oplus/camera/j/b$b;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    if-nez p2, :cond_0

    .line 85
    invoke-static {p1}, Lcom/oplus/camera/j/b$b;->b(Lcom/oplus/camera/j/b$b;)Lcom/oplus/camera/doubleexposure/DoubleExposureVideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/j/b;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/doubleexposure/DoubleExposureVideoView;->setVideoThumb(Landroid/graphics/Bitmap;)V

    .line 88
    :cond_0
    invoke-static {p1}, Lcom/oplus/camera/j/b$b;->b(Lcom/oplus/camera/j/b$b;)Lcom/oplus/camera/doubleexposure/DoubleExposureVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/doubleexposure/DoubleExposureVideoView;->getVideoUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    .line 89
    invoke-static {p1}, Lcom/oplus/camera/j/b$b;->b(Lcom/oplus/camera/j/b$b;)Lcom/oplus/camera/doubleexposure/DoubleExposureVideoView;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/camera/j/b;->b:[Landroid/net/Uri;

    aget-object p0, p0, p2

    invoke-virtual {p1, p0}, Lcom/oplus/camera/doubleexposure/DoubleExposureVideoView;->setVideoUri(Landroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method public getItemCount()I
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/oplus/camera/j/b;->a:[I

    array-length p0, p0

    return p0
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$w;I)V
    .locals 0

    .line 20
    check-cast p1, Lcom/oplus/camera/j/b$b;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/j/b;->a(Lcom/oplus/camera/j/b$b;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$w;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/j/b;->a(Landroid/view/ViewGroup;I)Lcom/oplus/camera/j/b$b;

    move-result-object p0

    return-object p0
.end method
