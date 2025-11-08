.class public Lcom/oplus/camera/photo3d/ui/f;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "SceneMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/photo3d/ui/f$a;,
        Lcom/oplus/camera/photo3d/ui/f$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$a<",
        "Lcom/oplus/camera/photo3d/ui/f$b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/camera/photo3d/ui/d;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Landroid/content/Context;

.field private d:Lcom/oplus/camera/photo3d/ui/f$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/oplus/camera/photo3d/ui/d;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/oplus/camera/photo3d/ui/f;->b:Z

    .line 30
    iput-object p1, p0, Lcom/oplus/camera/photo3d/ui/f;->c:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/oplus/camera/photo3d/ui/f;->a:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/photo3d/ui/f;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcom/oplus/camera/photo3d/ui/f;->b:Z

    return p0
.end method

.method static synthetic b(Lcom/oplus/camera/photo3d/ui/f;)Ljava/util/List;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/f;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lcom/oplus/camera/photo3d/ui/f;)Lcom/oplus/camera/photo3d/ui/f$a;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/f;->d:Lcom/oplus/camera/photo3d/ui/f$a;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/oplus/camera/photo3d/ui/f$b;
    .locals 2

    .line 37
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0032

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 38
    new-instance p2, Lcom/oplus/camera/photo3d/ui/f$b;

    invoke-direct {p2, p0, p1}, Lcom/oplus/camera/photo3d/ui/f$b;-><init>(Lcom/oplus/camera/photo3d/ui/f;Landroid/view/View;)V

    const/4 p0, 0x1

    .line 39
    invoke-virtual {p2, p0}, Lcom/oplus/camera/photo3d/ui/f$b;->setIsRecyclable(Z)V

    return-object p2
.end method

.method public a(Lcom/oplus/camera/photo3d/ui/f$a;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/oplus/camera/photo3d/ui/f;->d:Lcom/oplus/camera/photo3d/ui/f$a;

    return-void
.end method

.method public a(Lcom/oplus/camera/photo3d/ui/f$b;I)V
    .locals 5

    .line 46
    iget-boolean v0, p0, Lcom/oplus/camera/photo3d/ui/f;->b:Z

    if-nez v0, :cond_0

    const-string p0, "EffectMenuAdapter"

    const-string p1, "onBindViewHolder, return for not enable"

    .line 47
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/f;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/photo3d/ui/d;

    .line 54
    iget-object v1, p1, Lcom/oplus/camera/photo3d/ui/f$b;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/oplus/camera/photo3d/ui/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v1, p1, Lcom/oplus/camera/photo3d/ui/f$b;->b:Landroid/widget/TextView;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/oplus/camera/photo3d/ui/f;->c:Landroid/content/Context;

    .line 56
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0706e4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 55
    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 57
    iget-object v1, p1, Lcom/oplus/camera/photo3d/ui/f$b;->b:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/oplus/camera/util/Util;->c(Z)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 58
    iget-object v1, p1, Lcom/oplus/camera/photo3d/ui/f$b;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/oplus/camera/photo3d/ui/f;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0706f4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iget-object v3, p0, Lcom/oplus/camera/photo3d/ui/f;->c:Landroid/content/Context;

    .line 59
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06006a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    const/4 v4, 0x0

    .line 58
    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 60
    iget-object v1, p1, Lcom/oplus/camera/photo3d/ui/f$b;->a:Lcom/oplus/camera/photo3d/ui/GifView;

    invoke-virtual {v0}, Lcom/oplus/camera/photo3d/ui/d;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oplus/camera/photo3d/ui/GifView;->setGifResource(I)V

    .line 61
    iget-object v1, p1, Lcom/oplus/camera/photo3d/ui/f$b;->a:Lcom/oplus/camera/photo3d/ui/GifView;

    invoke-virtual {v0}, Lcom/oplus/camera/photo3d/ui/d;->d()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oplus/camera/photo3d/ui/GifView;->setSelected(Z)V

    .line 62
    iget-object v1, p1, Lcom/oplus/camera/photo3d/ui/f$b;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Lcom/oplus/camera/photo3d/ui/d;->d()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 64
    iget-object v1, p1, Lcom/oplus/camera/photo3d/ui/f$b;->c:Lcom/oplus/camera/longexposure/LongExposureItemBaseView;

    new-instance v2, Lcom/oplus/camera/photo3d/ui/f$1;

    invoke-direct {v2, p0, v0, p2, p1}, Lcom/oplus/camera/photo3d/ui/f$1;-><init>(Lcom/oplus/camera/photo3d/ui/f;Lcom/oplus/camera/photo3d/ui/d;ILcom/oplus/camera/photo3d/ui/f$b;)V

    invoke-virtual {v1, v2}, Lcom/oplus/camera/longexposure/LongExposureItemBaseView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public getItemCount()I
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/f;->a:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$w;I)V
    .locals 0

    .line 22
    check-cast p1, Lcom/oplus/camera/photo3d/ui/f$b;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/photo3d/ui/f;->a(Lcom/oplus/camera/photo3d/ui/f$b;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$w;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/photo3d/ui/f;->a(Landroid/view/ViewGroup;I)Lcom/oplus/camera/photo3d/ui/f$b;

    move-result-object p0

    return-object p0
.end method
