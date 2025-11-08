.class public Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter;
.super Lcom/oplus/camera/timelapsepro/adapter/a;
.source "ParamsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter$b;,
        Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter$a;,
        Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter$ParamsHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/camera/timelapsepro/adapter/a<",
        "Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter$ParamsHolder;",
        "Lcom/oplus/camera/timelapsepro/a/e;",
        ">;"
    }
.end annotation


# instance fields
.field private final f:Lcom/oplus/camera/timelapsepro/a/e$b;

.field private g:Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter$a;

.field private h:Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0c00e8

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/timelapsepro/adapter/a;-><init>(Landroid/content/Context;I)V

    .line 29
    new-instance p1, Lcom/oplus/camera/timelapsepro/adapter/-$$Lambda$ParamsAdapter$hmX2B9795Eoq8y9ecknbxT_K6XI;

    invoke-direct {p1, p0}, Lcom/oplus/camera/timelapsepro/adapter/-$$Lambda$ParamsAdapter$hmX2B9795Eoq8y9ecknbxT_K6XI;-><init>(Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter;)V

    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter;->f:Lcom/oplus/camera/timelapsepro/a/e$b;

    return-void
.end method

.method private synthetic a(II)V
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter;->h:Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter$b;

    if-eqz p0, :cond_0

    .line 31
    invoke-interface {p0, p1, p2}, Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter$b;->onValueChanged(II)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$hmX2B9795Eoq8y9ecknbxT_K6XI(Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter;->a(II)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter;->g:Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter$a;

    .line 39
    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter;->h:Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter$b;

    .line 40
    invoke-super {p0}, Lcom/oplus/camera/timelapsepro/adapter/a;->a()V

    return-void
.end method

.method protected bridge synthetic a(ILcom/oplus/camera/timelapsepro/adapter/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p2, Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter$ParamsHolder;

    check-cast p3, Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter;->a(ILcom/oplus/camera/timelapsepro/adapter/ParamsAdapter$ParamsHolder;Lcom/oplus/camera/timelapsepro/a/e;)V

    return-void
.end method

.method protected a(ILcom/oplus/camera/timelapsepro/adapter/ParamsAdapter$ParamsHolder;)V
    .locals 0

    .line 63
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/timelapsepro/adapter/a;->b(ILcom/oplus/camera/timelapsepro/adapter/BaseViewHolder;)V

    if-nez p1, :cond_0

    .line 66
    iget-object p2, p2, Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter$ParamsHolder;->item:Lcom/oplus/camera/timelapsepro/ParameterItem;

    invoke-virtual {p2}, Lcom/oplus/camera/timelapsepro/ParameterItem;->b()V

    .line 69
    :cond_0
    iget-object p2, p0, Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter;->g:Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter$a;

    if-eqz p2, :cond_1

    .line 70
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter;->b:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/timelapsepro/a/e;

    invoke-interface {p2, p1, p0}, Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter$a;->clickItem(ILcom/oplus/camera/timelapsepro/a/e;)V

    :cond_1
    return-void
.end method

.method protected a(ILcom/oplus/camera/timelapsepro/adapter/ParamsAdapter$ParamsHolder;Lcom/oplus/camera/timelapsepro/a/e;)V
    .locals 4

    .line 45
    iget-object v0, p2, Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter$ParamsHolder;->item:Lcom/oplus/camera/timelapsepro/ParameterItem;

    invoke-virtual {v0}, Lcom/oplus/camera/timelapsepro/ParameterItem;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$j;

    if-nez p1, :cond_0

    const/4 v1, 0x1

    .line 46
    iget v2, p0, Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter;->c:I

    if-ne v1, v2, :cond_0

    .line 47
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070c15

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$j;->topMargin:I

    .line 49
    iget-object v0, p2, Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter$ParamsHolder;->item:Lcom/oplus/camera/timelapsepro/ParameterItem;

    iget v1, p0, Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter;->c:I

    iget v2, p0, Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter;->d:I

    iget-boolean v3, p0, Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter;->e:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/oplus/camera/timelapsepro/ParameterItem;->a(IIZ)V

    .line 50
    iget-object p2, p2, Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter$ParamsHolder;->item:Lcom/oplus/camera/timelapsepro/ParameterItem;

    if-eqz p1, :cond_2

    const/4 v0, 0x3

    if-ne v0, p1, :cond_1

    goto :goto_1

    .line 52
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter;->f:Lcom/oplus/camera/timelapsepro/a/e$b;

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, 0x0

    .line 50
    :goto_2
    invoke-virtual {p2, p3, p0}, Lcom/oplus/camera/timelapsepro/ParameterItem;->a(Lcom/oplus/camera/timelapsepro/a/e;Lcom/oplus/camera/timelapsepro/a/e$b;)V

    return-void
.end method

.method public a(Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter$ParamsHolder;)V
    .locals 0

    .line 57
    invoke-super {p0, p1}, Lcom/oplus/camera/timelapsepro/adapter/a;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$w;)V

    .line 58
    iget-object p0, p1, Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter$ParamsHolder;->item:Lcom/oplus/camera/timelapsepro/ParameterItem;

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/ParameterItem;->a()V

    return-void
.end method

.method public a(Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter$a;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter;->g:Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter$a;

    return-void
.end method

.method public a(Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter$b;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter;->h:Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter$b;

    return-void
.end method

.method protected synthetic b(ILcom/oplus/camera/timelapsepro/adapter/BaseViewHolder;)V
    .locals 0

    .line 20
    check-cast p2, Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter$ParamsHolder;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter;->a(ILcom/oplus/camera/timelapsepro/adapter/ParamsAdapter$ParamsHolder;)V

    return-void
.end method

.method public synthetic onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 0

    .line 20
    check-cast p1, Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter$ParamsHolder;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter;->a(Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter$ParamsHolder;)V

    return-void
.end method
