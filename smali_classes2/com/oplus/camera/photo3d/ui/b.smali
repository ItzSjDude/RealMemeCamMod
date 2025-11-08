.class public Lcom/oplus/camera/photo3d/ui/b;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "GuideRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/photo3d/ui/b$b;,
        Lcom/oplus/camera/photo3d/ui/b$c;,
        Lcom/oplus/camera/photo3d/ui/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$a<",
        "Landroidx/recyclerview/widget/RecyclerView$w;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/camera/photo3d/ui/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/oplus/camera/photo3d/ui/b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 35
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/oplus/camera/photo3d/ui/b;->b:Ljava/util/List;

    .line 33
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/oplus/camera/photo3d/ui/b;->c:Landroid/util/SparseArray;

    .line 36
    iput-object p1, p0, Lcom/oplus/camera/photo3d/ui/b;->a:Landroid/content/Context;

    .line 37
    invoke-direct {p0}, Lcom/oplus/camera/photo3d/ui/b;->a()V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/photo3d/ui/b;)Landroid/util/SparseArray;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/b;->c:Landroid/util/SparseArray;

    return-object p0
.end method

.method private a()V
    .locals 8

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/photo3d/ui/b;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f0f0025

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 42
    iget-object v3, p0, Lcom/oplus/camera/photo3d/ui/b;->b:Ljava/util/List;

    new-instance v4, Lcom/oplus/camera/photo3d/ui/a;

    const v5, 0x7f10066d

    const v6, 0x7f10066c

    const v7, 0x7f0803bb

    invoke-direct {v4, v5, v6, v7, v0}, Lcom/oplus/camera/photo3d/ui/a;-><init>(IIILandroid/net/Uri;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/camera/photo3d/ui/b;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f0f0024

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 46
    iget-object v3, p0, Lcom/oplus/camera/photo3d/ui/b;->b:Ljava/util/List;

    new-instance v4, Lcom/oplus/camera/photo3d/ui/a;

    const v5, 0x7f10066b

    const v6, 0x7f10066a

    const v7, 0x7f0803ba

    invoke-direct {v4, v5, v6, v7, v0}, Lcom/oplus/camera/photo3d/ui/a;-><init>(IIILandroid/net/Uri;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/camera/photo3d/ui/b;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f0f0029

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 50
    iget-object v3, p0, Lcom/oplus/camera/photo3d/ui/b;->b:Ljava/util/List;

    new-instance v4, Lcom/oplus/camera/photo3d/ui/a;

    const v5, 0x7f100671

    const v6, 0x7f100670

    const v7, 0x7f0803bd

    invoke-direct {v4, v5, v6, v7, v0}, Lcom/oplus/camera/photo3d/ui/a;-><init>(IIILandroid/net/Uri;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/photo3d/ui/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f0f0028

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 54
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/b;->b:Ljava/util/List;

    new-instance v1, Lcom/oplus/camera/photo3d/ui/a;

    const v2, 0x7f10066f

    const v3, 0x7f10066e

    const v4, 0x7f0803bc

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/oplus/camera/photo3d/ui/a;-><init>(IIILandroid/net/Uri;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private b()I
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/b;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 119
    invoke-direct {p0}, Lcom/oplus/camera/photo3d/ui/b;->b()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public getItemViewType(I)I
    .locals 1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    return v0

    .line 64
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/photo3d/ui/b;->b()I

    move-result p0

    add-int/2addr p0, v0

    if-lt p1, p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x3

    return p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$w;I)V
    .locals 3

    .line 93
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$w;->getItemViewType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v1, v0, :cond_0

    add-int/lit8 p2, p2, -0x1

    .line 95
    check-cast p1, Lcom/oplus/camera/photo3d/ui/b$a;

    .line 96
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/b;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/photo3d/ui/a;

    .line 98
    iget-object v1, p1, Lcom/oplus/camera/photo3d/ui/b$a;->a:Lcom/oplus/camera/ui/widget/GuideTextView;

    invoke-virtual {v0}, Lcom/oplus/camera/photo3d/ui/a;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/widget/GuideTextView;->setText(I)V

    .line 99
    iget-object v1, p1, Lcom/oplus/camera/photo3d/ui/b$a;->b:Lcom/oplus/camera/ui/widget/GuideTextView;

    invoke-virtual {v0}, Lcom/oplus/camera/photo3d/ui/a;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/widget/GuideTextView;->setText(I)V

    .line 100
    iget-object v1, p1, Lcom/oplus/camera/photo3d/ui/b$a;->c:Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;

    invoke-virtual {v0}, Lcom/oplus/camera/photo3d/ui/a;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;->setVideoCover(I)V

    .line 101
    iget-object v1, p1, Lcom/oplus/camera/photo3d/ui/b$a;->c:Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;

    invoke-virtual {v0}, Lcom/oplus/camera/photo3d/ui/a;->d()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;->setVideoURI(Landroid/net/Uri;)V

    .line 102
    iget-object v1, p1, Lcom/oplus/camera/photo3d/ui/b$a;->c:Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;

    invoke-virtual {v0}, Lcom/oplus/camera/photo3d/ui/a;->e()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;->setSelected(Z)V

    .line 104
    iget-object p1, p1, Lcom/oplus/camera/photo3d/ui/b$a;->c:Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;

    new-instance v0, Lcom/oplus/camera/photo3d/ui/b$1;

    invoke-direct {v0, p0, p2}, Lcom/oplus/camera/photo3d/ui/b$1;-><init>(Lcom/oplus/camera/photo3d/ui/b;I)V

    invoke-virtual {p1, v0}, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$w;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne v1, p2, :cond_0

    .line 75
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c00de

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 77
    new-instance p2, Lcom/oplus/camera/photo3d/ui/b$c;

    invoke-direct {p2, p0, p1}, Lcom/oplus/camera/photo3d/ui/b$c;-><init>(Lcom/oplus/camera/photo3d/ui/b;Landroid/view/View;)V

    return-object p2

    :cond_0
    const/4 v1, 0x2

    if-ne v1, p2, :cond_1

    .line 81
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c00dd

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 83
    new-instance p2, Lcom/oplus/camera/photo3d/ui/b$b;

    invoke-direct {p2, p0, p1}, Lcom/oplus/camera/photo3d/ui/b$b;-><init>(Lcom/oplus/camera/photo3d/ui/b;Landroid/view/View;)V

    return-object p2

    .line 86
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c00dc

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 88
    new-instance p2, Lcom/oplus/camera/photo3d/ui/b$a;

    invoke-direct {p2, p0, p1}, Lcom/oplus/camera/photo3d/ui/b$a;-><init>(Lcom/oplus/camera/photo3d/ui/b;Landroid/view/View;)V

    return-object p2
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 2

    .line 128
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$a;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$w;)V

    .line 130
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$w;->getItemViewType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v1, v0, :cond_0

    .line 131
    check-cast p1, Lcom/oplus/camera/photo3d/ui/b$a;

    .line 132
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/b;->c:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/oplus/camera/photo3d/ui/b$a;->getLayoutPosition()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 133
    iget-object p0, p1, Lcom/oplus/camera/photo3d/ui/b$a;->c:Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;

    invoke-virtual {p0}, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;->b()V

    :cond_0
    return-void
.end method
