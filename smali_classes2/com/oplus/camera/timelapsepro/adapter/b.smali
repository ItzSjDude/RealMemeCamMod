.class public Lcom/oplus/camera/timelapsepro/adapter/b;
.super Lcom/oplus/camera/timelapsepro/adapter/a;
.source "TemplateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/timelapsepro/adapter/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/camera/timelapsepro/adapter/a<",
        "Lcom/oplus/camera/timelapsepro/adapter/TemplateViewHolder;",
        "Lcom/oplus/camera/timelapsepro/a/k;",
        ">;"
    }
.end annotation


# instance fields
.field private f:Lcom/oplus/camera/timelapsepro/adapter/b$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0c00ea

    .line 23
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/timelapsepro/adapter/a;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/adapter/b;->f:Lcom/oplus/camera/timelapsepro/adapter/b$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/adapter/b;->f:Lcom/oplus/camera/timelapsepro/adapter/b$a;

    .line 29
    invoke-super {p0}, Lcom/oplus/camera/timelapsepro/adapter/a;->a()V

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/adapter/b;->f:Lcom/oplus/camera/timelapsepro/adapter/b$a;

    if-eqz v0, :cond_0

    .line 98
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/adapter/b;->b:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/timelapsepro/a/k;

    invoke-interface {v0, p1, p0}, Lcom/oplus/camera/timelapsepro/adapter/b$a;->a(ILcom/oplus/camera/timelapsepro/a/k;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic a(ILcom/oplus/camera/timelapsepro/adapter/BaseViewHolder;)V
    .locals 0

    .line 19
    check-cast p2, Lcom/oplus/camera/timelapsepro/adapter/TemplateViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/timelapsepro/adapter/b;->a(ILcom/oplus/camera/timelapsepro/adapter/TemplateViewHolder;)V

    return-void
.end method

.method protected bridge synthetic a(ILcom/oplus/camera/timelapsepro/adapter/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p2, Lcom/oplus/camera/timelapsepro/adapter/TemplateViewHolder;

    check-cast p3, Lcom/oplus/camera/timelapsepro/a/k;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/camera/timelapsepro/adapter/b;->a(ILcom/oplus/camera/timelapsepro/adapter/TemplateViewHolder;Lcom/oplus/camera/timelapsepro/a/k;)V

    return-void
.end method

.method protected a(ILcom/oplus/camera/timelapsepro/adapter/TemplateViewHolder;)V
    .locals 0

    .line 84
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/timelapsepro/adapter/a;->a(ILcom/oplus/camera/timelapsepro/adapter/BaseViewHolder;)V

    .line 85
    invoke-virtual {p2}, Lcom/oplus/camera/timelapsepro/adapter/TemplateViewHolder;->setItemTouchListener()V

    return-void
.end method

.method protected a(ILcom/oplus/camera/timelapsepro/adapter/TemplateViewHolder;Lcom/oplus/camera/timelapsepro/a/k;)V
    .locals 10

    .line 34
    iget-object v0, p2, Lcom/oplus/camera/timelapsepro/adapter/TemplateViewHolder;->mIconSelect:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 35
    iget-object v1, p2, Lcom/oplus/camera/timelapsepro/adapter/TemplateViewHolder;->mIconBg:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 36
    iget-object v2, p2, Lcom/oplus/camera/timelapsepro/adapter/TemplateViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$j;

    .line 38
    iget v3, p0, Lcom/oplus/camera/timelapsepro/adapter/b;->c:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v3, v5, :cond_2

    const/4 v6, 0x2

    const v7, 0x7f070bba

    const v8, 0x7f070bc6

    const v9, 0x7f070bc8

    if-eq v3, v6, :cond_1

    const/4 v6, 0x3

    if-eq v3, v6, :cond_1

    const/4 v6, 0x4

    if-eq v3, v6, :cond_0

    goto/16 :goto_0

    .line 63
    :cond_0
    iget-object v3, p2, Lcom/oplus/camera/timelapsepro/adapter/TemplateViewHolder;->mIconBg:Landroid/widget/RelativeLayout;

    iget-boolean v6, p0, Lcom/oplus/camera/timelapsepro/adapter/b;->e:Z

    xor-int/2addr v6, v5

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 64
    iget-object v3, p0, Lcom/oplus/camera/timelapsepro/adapter/b;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 65
    iget-object v3, p0, Lcom/oplus/camera/timelapsepro/adapter/b;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 66
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/adapter/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 67
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/adapter/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 69
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/adapter/b;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    iput p0, v2, Landroidx/recyclerview/widget/RecyclerView$j;->height:I

    goto/16 :goto_0

    .line 52
    :cond_1
    iget-object v3, p2, Lcom/oplus/camera/timelapsepro/adapter/TemplateViewHolder;->mIconBg:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 53
    iget-object v3, p0, Lcom/oplus/camera/timelapsepro/adapter/b;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 54
    iget-object v3, p0, Lcom/oplus/camera/timelapsepro/adapter/b;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 55
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/adapter/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 56
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/adapter/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 58
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/adapter/b;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    iput p0, v2, Landroidx/recyclerview/widget/RecyclerView$j;->height:I

    goto :goto_0

    .line 40
    :cond_2
    iget-object v3, p2, Lcom/oplus/camera/timelapsepro/adapter/TemplateViewHolder;->mIconBg:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 41
    iget-object v3, p0, Lcom/oplus/camera/timelapsepro/adapter/b;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f070bc7

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 42
    iget-object v3, p0, Lcom/oplus/camera/timelapsepro/adapter/b;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 43
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/adapter/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070bc5

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 44
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/adapter/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 46
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/adapter/b;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070bbb

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    iput p0, v2, Landroidx/recyclerview/widget/RecyclerView$j;->height:I

    .line 77
    :goto_0
    invoke-virtual {p3}, Lcom/oplus/camera/timelapsepro/a/k;->c()Z

    move-result p0

    if-nez p1, :cond_3

    move v4, v5

    :cond_3
    invoke-virtual {p2, p0, v4}, Lcom/oplus/camera/timelapsepro/adapter/TemplateViewHolder;->setSelected(ZZ)V

    .line 78
    invoke-virtual {p3}, Lcom/oplus/camera/timelapsepro/a/k;->a()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/oplus/camera/timelapsepro/adapter/TemplateViewHolder;->setImageSource(I)V

    .line 79
    invoke-virtual {p3}, Lcom/oplus/camera/timelapsepro/a/k;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/oplus/camera/timelapsepro/adapter/TemplateViewHolder;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/oplus/camera/timelapsepro/adapter/b$a;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/adapter/b;->f:Lcom/oplus/camera/timelapsepro/adapter/b$a;

    return-void
.end method

.method protected bridge synthetic b(ILcom/oplus/camera/timelapsepro/adapter/BaseViewHolder;)V
    .locals 0

    .line 19
    check-cast p2, Lcom/oplus/camera/timelapsepro/adapter/TemplateViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/timelapsepro/adapter/b;->b(ILcom/oplus/camera/timelapsepro/adapter/TemplateViewHolder;)V

    return-void
.end method

.method protected b(ILcom/oplus/camera/timelapsepro/adapter/TemplateViewHolder;)V
    .locals 0

    .line 90
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/timelapsepro/adapter/a;->b(ILcom/oplus/camera/timelapsepro/adapter/BaseViewHolder;)V

    .line 91
    iget-object p2, p0, Lcom/oplus/camera/timelapsepro/adapter/b;->f:Lcom/oplus/camera/timelapsepro/adapter/b$a;

    if-eqz p2, :cond_0

    .line 92
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/adapter/b;->b:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/timelapsepro/a/k;

    invoke-interface {p2, p1, p0}, Lcom/oplus/camera/timelapsepro/adapter/b$a;->a(ILcom/oplus/camera/timelapsepro/a/k;)V

    :cond_0
    return-void
.end method
