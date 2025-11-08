.class public Lcom/oplus/camera/longexposure/c;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "LongExposureEffectMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/longexposure/c$a;,
        Lcom/oplus/camera/longexposure/c$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$a<",
        "Lcom/oplus/camera/longexposure/c$b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/camera/longexposure/j;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/oplus/camera/longexposure/c$a;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/oplus/camera/longexposure/j;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/oplus/camera/longexposure/c;->a:Landroid/content/Context;

    .line 27
    iput-object v0, p0, Lcom/oplus/camera/longexposure/c;->c:Lcom/oplus/camera/longexposure/c$a;

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/oplus/camera/longexposure/c;->d:Z

    .line 31
    iput-object p1, p0, Lcom/oplus/camera/longexposure/c;->a:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/oplus/camera/longexposure/c;->b:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/longexposure/c;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/oplus/camera/longexposure/c;->d:Z

    return p0
.end method

.method static synthetic b(Lcom/oplus/camera/longexposure/c;)Ljava/util/List;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/oplus/camera/longexposure/c;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lcom/oplus/camera/longexposure/c;)Lcom/oplus/camera/longexposure/c$a;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/oplus/camera/longexposure/c;->c:Lcom/oplus/camera/longexposure/c$a;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/oplus/camera/longexposure/c$b;
    .locals 2

    .line 42
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c00f1

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 43
    new-instance p2, Lcom/oplus/camera/longexposure/c$b;

    invoke-direct {p2, p0, p1}, Lcom/oplus/camera/longexposure/c$b;-><init>(Lcom/oplus/camera/longexposure/c;Landroid/view/View;)V

    const/4 p0, 0x1

    .line 44
    invoke-virtual {p2, p0}, Lcom/oplus/camera/longexposure/c$b;->setIsRecyclable(Z)V

    return-object p2
.end method

.method public a(Lcom/oplus/camera/longexposure/c$a;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/oplus/camera/longexposure/c;->c:Lcom/oplus/camera/longexposure/c$a;

    return-void
.end method

.method public a(Lcom/oplus/camera/longexposure/c$b;I)V
    .locals 7

    .line 50
    iget-object v0, p0, Lcom/oplus/camera/longexposure/c;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/longexposure/j;

    .line 52
    iget-boolean v1, p0, Lcom/oplus/camera/longexposure/c;->d:Z

    if-eqz v1, :cond_3

    .line 53
    iget-object v1, p1, Lcom/oplus/camera/longexposure/c$b;->d:Landroid/widget/TextView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 54
    iget-object v1, p1, Lcom/oplus/camera/longexposure/c$b;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/oplus/camera/longexposure/j;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v1, p1, Lcom/oplus/camera/longexposure/c$b;->d:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/oplus/camera/longexposure/c;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0706e4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 56
    iget-object v1, p1, Lcom/oplus/camera/longexposure/c$b;->d:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/oplus/camera/util/Util;->c(Z)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 57
    iget-object v1, p1, Lcom/oplus/camera/longexposure/c$b;->d:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/oplus/camera/longexposure/c;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0706f4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iget-object v5, p0, Lcom/oplus/camera/longexposure/c;->a:Landroid/content/Context;

    .line 58
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06006a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const/4 v6, 0x0

    .line 57
    invoke-virtual {v1, v4, v6, v6, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 61
    :cond_0
    iget-object v1, p1, Lcom/oplus/camera/longexposure/c$b;->c:Lcom/oplus/camera/ui/widget/RoundImageView;

    if-eqz v1, :cond_1

    .line 62
    iget-object v1, p1, Lcom/oplus/camera/longexposure/c$b;->c:Lcom/oplus/camera/ui/widget/RoundImageView;

    iget-object v4, p0, Lcom/oplus/camera/longexposure/c;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 63
    invoke-virtual {v0}, Lcom/oplus/camera/longexposure/j;->c()I

    move-result v5

    .line 62
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/oplus/camera/ui/widget/RoundImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 64
    iget-object v1, p1, Lcom/oplus/camera/longexposure/c$b;->c:Lcom/oplus/camera/ui/widget/RoundImageView;

    iget-object v4, p0, Lcom/oplus/camera/longexposure/c;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0706c4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v1, v4}, Lcom/oplus/camera/ui/widget/RoundImageView;->setMRadius(F)V

    .line 67
    :cond_1
    invoke-virtual {v0}, Lcom/oplus/camera/longexposure/j;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 68
    iget-object v1, p1, Lcom/oplus/camera/longexposure/c$b;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 70
    :cond_2
    iget-object v1, p1, Lcom/oplus/camera/longexposure/c$b;->itemView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 74
    :cond_3
    :goto_0
    iget-object v1, p1, Lcom/oplus/camera/longexposure/c$b;->a:Lcom/oplus/camera/longexposure/LongExposureItemBaseView;

    new-instance v2, Lcom/oplus/camera/longexposure/c$1;

    invoke-direct {v2, p0, v0, p2, p1}, Lcom/oplus/camera/longexposure/c$1;-><init>(Lcom/oplus/camera/longexposure/c;Lcom/oplus/camera/longexposure/j;ILcom/oplus/camera/longexposure/c$b;)V

    invoke-virtual {v1, v2}, Lcom/oplus/camera/longexposure/LongExposureItemBaseView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 130
    iput-boolean p1, p0, Lcom/oplus/camera/longexposure/c;->d:Z

    return-void
.end method

.method public getItemCount()I
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/oplus/camera/longexposure/c;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$w;I)V
    .locals 0

    .line 23
    check-cast p1, Lcom/oplus/camera/longexposure/c$b;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/longexposure/c;->a(Lcom/oplus/camera/longexposure/c$b;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$w;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/longexposure/c;->a(Landroid/view/ViewGroup;I)Lcom/oplus/camera/longexposure/c$b;

    move-result-object p0

    return-object p0
.end method
