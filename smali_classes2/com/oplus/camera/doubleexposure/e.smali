.class public Lcom/oplus/camera/doubleexposure/e;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "EffectMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/doubleexposure/e$b;,
        Lcom/oplus/camera/doubleexposure/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$a<",
        "Lcom/oplus/camera/doubleexposure/e$a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/camera/doubleexposure/f;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/oplus/camera/doubleexposure/f;

.field private d:Lcom/oplus/camera/doubleexposure/e$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/oplus/camera/doubleexposure/f;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/oplus/camera/doubleexposure/e;->a:Landroid/content/Context;

    .line 19
    iput-object v0, p0, Lcom/oplus/camera/doubleexposure/e;->b:Ljava/util/List;

    .line 20
    iput-object v0, p0, Lcom/oplus/camera/doubleexposure/e;->c:Lcom/oplus/camera/doubleexposure/f;

    .line 21
    iput-object v0, p0, Lcom/oplus/camera/doubleexposure/e;->d:Lcom/oplus/camera/doubleexposure/e$b;

    .line 24
    iput-object p1, p0, Lcom/oplus/camera/doubleexposure/e;->a:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/oplus/camera/doubleexposure/e;->b:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/doubleexposure/e;)Lcom/oplus/camera/doubleexposure/f;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/oplus/camera/doubleexposure/e;->c:Lcom/oplus/camera/doubleexposure/f;

    return-object p0
.end method

.method static synthetic a(Lcom/oplus/camera/doubleexposure/e;Lcom/oplus/camera/doubleexposure/f;)Lcom/oplus/camera/doubleexposure/f;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/oplus/camera/doubleexposure/e;->c:Lcom/oplus/camera/doubleexposure/f;

    return-object p1
.end method

.method static synthetic b(Lcom/oplus/camera/doubleexposure/e;)Lcom/oplus/camera/doubleexposure/e$b;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/oplus/camera/doubleexposure/e;->d:Lcom/oplus/camera/doubleexposure/e$b;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/oplus/camera/doubleexposure/e$a;
    .locals 2

    .line 35
    new-instance p1, Lcom/oplus/camera/doubleexposure/e$a;

    iget-object p0, p0, Lcom/oplus/camera/doubleexposure/e;->a:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const/4 p2, 0x0

    const v0, 0x7f0c00e3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/oplus/camera/doubleexposure/e$a;-><init>(Landroid/view/View;)V

    .line 36
    invoke-virtual {p1, p2}, Lcom/oplus/camera/doubleexposure/e$a;->setIsRecyclable(Z)V

    return-object p1
.end method

.method public a(Lcom/oplus/camera/doubleexposure/e$a;I)V
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/oplus/camera/doubleexposure/e;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oplus/camera/doubleexposure/f;

    .line 44
    iget-object v0, p1, Lcom/oplus/camera/doubleexposure/e$a;->a:Lcom/oplus/camera/ui/widget/RoundRingImageView;

    iget-object v1, p0, Lcom/oplus/camera/doubleexposure/e;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p2}, Lcom/oplus/camera/doubleexposure/f;->b()I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/widget/RoundRingImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 45
    iget-object v0, p1, Lcom/oplus/camera/doubleexposure/e$a;->a:Lcom/oplus/camera/ui/widget/RoundRingImageView;

    invoke-virtual {v0, p2}, Lcom/oplus/camera/ui/widget/RoundRingImageView;->setParam(Lcom/oplus/camera/doubleexposure/f;)V

    .line 47
    invoke-virtual {p2}, Lcom/oplus/camera/doubleexposure/f;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iput-object p2, p0, Lcom/oplus/camera/doubleexposure/e;->c:Lcom/oplus/camera/doubleexposure/f;

    .line 51
    :cond_0
    iget-object p1, p1, Lcom/oplus/camera/doubleexposure/e$a;->a:Lcom/oplus/camera/ui/widget/RoundRingImageView;

    new-instance v0, Lcom/oplus/camera/doubleexposure/e$1;

    invoke-direct {v0, p0, p2}, Lcom/oplus/camera/doubleexposure/e$1;-><init>(Lcom/oplus/camera/doubleexposure/e;Lcom/oplus/camera/doubleexposure/f;)V

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/widget/RoundRingImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a(Lcom/oplus/camera/doubleexposure/e$b;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/oplus/camera/doubleexposure/e;->d:Lcom/oplus/camera/doubleexposure/e$b;

    return-void
.end method

.method public getItemCount()I
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/oplus/camera/doubleexposure/e;->b:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 81
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$w;I)V
    .locals 0

    .line 17
    check-cast p1, Lcom/oplus/camera/doubleexposure/e$a;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/doubleexposure/e;->a(Lcom/oplus/camera/doubleexposure/e$a;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$w;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/doubleexposure/e;->a(Landroid/view/ViewGroup;I)Lcom/oplus/camera/doubleexposure/e$a;

    move-result-object p0

    return-object p0
.end method
