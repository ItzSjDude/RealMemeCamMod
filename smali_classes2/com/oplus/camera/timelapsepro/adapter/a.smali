.class public abstract Lcom/oplus/camera/timelapsepro/adapter/a;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "BaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lcom/oplus/camera/timelapsepro/adapter/BaseViewHolder;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$a<",
        "TVH;>;"
    }
.end annotation


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected c:I

.field protected d:I

.field protected e:Z

.field private f:J

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 46
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/adapter/a;->b:Ljava/util/List;

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/oplus/camera/timelapsepro/adapter/a;->c:I

    .line 35
    iput v0, p0, Lcom/oplus/camera/timelapsepro/adapter/a;->d:I

    .line 36
    iput-boolean v0, p0, Lcom/oplus/camera/timelapsepro/adapter/a;->e:Z

    const-wide/16 v0, 0x0

    .line 37
    iput-wide v0, p0, Lcom/oplus/camera/timelapsepro/adapter/a;->f:J

    .line 47
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/adapter/a;->a:Landroid/content/Context;

    .line 48
    iput p2, p0, Lcom/oplus/camera/timelapsepro/adapter/a;->g:I

    return-void
.end method

.method private a(Landroid/view/View;)Lcom/oplus/camera/timelapsepro/adapter/BaseViewHolder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TVH;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 67
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    if-nez p0, :cond_0

    return-object v0

    .line 73
    :cond_0
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    const/4 v1, 0x0

    aget-object p0, p0, v1

    check-cast p0, Ljava/lang/Class;

    const/4 v2, 0x1

    .line 74
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/view/View;

    aput-object v4, v3, v1

    .line 75
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    .line 76
    invoke-virtual {p0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    .line 77
    invoke-virtual {p0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/timelapsepro/adapter/BaseViewHolder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 79
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private synthetic a(ILcom/oplus/camera/timelapsepro/adapter/BaseViewHolder;Landroid/view/View;)V
    .locals 4

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oplus/camera/timelapsepro/adapter/a;->f:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long p3, v2, v0

    if-ltz p3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oplus/camera/timelapsepro/adapter/a;->f:J

    cmp-long p3, v0, v2

    if-lez p3, :cond_0

    return-void

    .line 96
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/camera/timelapsepro/adapter/a;->f:J

    .line 97
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/timelapsepro/adapter/a;->b(ILcom/oplus/camera/timelapsepro/adapter/BaseViewHolder;)V

    return-void
.end method

.method public static synthetic lambda$M4ON2kimgP3u2ohzJrZxc0WNbvM(Lcom/oplus/camera/timelapsepro/adapter/a;ILcom/oplus/camera/timelapsepro/adapter/BaseViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/timelapsepro/adapter/a;->a(ILcom/oplus/camera/timelapsepro/adapter/BaseViewHolder;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/oplus/camera/timelapsepro/adapter/BaseViewHolder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    .line 58
    iget p2, p0, Lcom/oplus/camera/timelapsepro/adapter/a;->g:I

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/oplus/camera/timelapsepro/adapter/a;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Lcom/oplus/camera/timelapsepro/adapter/a;->g:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/adapter/a;->b()Landroid/view/View;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/adapter/a;->a(Landroid/view/View;)Lcom/oplus/camera/timelapsepro/adapter/BaseViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/adapter/a;->a:Landroid/content/Context;

    .line 53
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/adapter/a;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected a(ILcom/oplus/camera/timelapsepro/adapter/BaseViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITVH;)V"
        }
    .end annotation

    return-void
.end method

.method protected abstract a(ILcom/oplus/camera/timelapsepro/adapter/BaseViewHolder;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITVH;TT;)V"
        }
    .end annotation
.end method

.method public a(Lcom/oplus/camera/screen/b/a;II)V
    .locals 0

    .line 111
    iput p2, p0, Lcom/oplus/camera/timelapsepro/adapter/a;->c:I

    .line 112
    iput p3, p0, Lcom/oplus/camera/timelapsepro/adapter/a;->d:I

    .line 113
    invoke-virtual {p1}, Lcom/oplus/camera/screen/b/a;->r()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/oplus/camera/screen/b/a;->q()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/oplus/camera/timelapsepro/adapter/a;->e:Z

    .line 114
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/adapter/a;->notifyDataSetChanged()V

    return-void
.end method

.method public a(Lcom/oplus/camera/timelapsepro/adapter/BaseViewHolder;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/adapter/a;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p2, p1, v0}, Lcom/oplus/camera/timelapsepro/adapter/a;->a(ILcom/oplus/camera/timelapsepro/adapter/BaseViewHolder;Ljava/lang/Object;)V

    .line 89
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/adapter/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 90
    invoke-virtual {p0, p2, p1}, Lcom/oplus/camera/timelapsepro/adapter/a;->a(ILcom/oplus/camera/timelapsepro/adapter/BaseViewHolder;)V

    .line 91
    new-instance v0, Lcom/oplus/camera/timelapsepro/adapter/-$$Lambda$a$M4ON2kimgP3u2ohzJrZxc0WNbvM;

    invoke-direct {v0, p0, p2, p1}, Lcom/oplus/camera/timelapsepro/adapter/-$$Lambda$a$M4ON2kimgP3u2ohzJrZxc0WNbvM;-><init>(Lcom/oplus/camera/timelapsepro/adapter/a;ILcom/oplus/camera/timelapsepro/adapter/BaseViewHolder;)V

    invoke-virtual {p1, v0}, Lcom/oplus/camera/timelapsepro/adapter/BaseViewHolder;->setItemClickCallback(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 130
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/adapter/a;->b:Ljava/util/List;

    .line 131
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/adapter/a;->notifyDataSetChanged()V

    return-void
.end method

.method protected b()Landroid/view/View;
    .locals 1

    .line 62
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/adapter/a;->a:Landroid/content/Context;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected b(ILcom/oplus/camera/timelapsepro/adapter/BaseViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITVH;)V"
        }
    .end annotation

    return-void
.end method

.method public c()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 140
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/adapter/a;->b:Ljava/util/List;

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/adapter/a;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$w;I)V
    .locals 0

    .line 30
    check-cast p1, Lcom/oplus/camera/timelapsepro/adapter/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/timelapsepro/adapter/a;->a(Lcom/oplus/camera/timelapsepro/adapter/BaseViewHolder;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$w;
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/timelapsepro/adapter/a;->a(Landroid/view/ViewGroup;I)Lcom/oplus/camera/timelapsepro/adapter/BaseViewHolder;

    move-result-object p0

    return-object p0
.end method
