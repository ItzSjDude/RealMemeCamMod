.class public Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter;
.super Lcom/oplus/camera/timelapsepro/adapter/a;
.source "SubSettingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter$a;,
        Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter$SubSettingHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/camera/timelapsepro/adapter/a<",
        "Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter$SubSettingHolder;",
        "Lcom/oplus/camera/timelapsepro/a/j;",
        ">;"
    }
.end annotation


# instance fields
.field private f:Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter$a;

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0c00e9

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/timelapsepro/adapter/a;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter;->f:Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter$a;

    const/4 p1, 0x0

    .line 24
    iput p1, p0, Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter;->g:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter;->f:Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter$a;

    .line 33
    invoke-super {p0}, Lcom/oplus/camera/timelapsepro/adapter/a;->a()V

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 79
    iget v0, p0, Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter;->g:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter;->g:I

    return-void
.end method

.method protected bridge synthetic a(ILcom/oplus/camera/timelapsepro/adapter/BaseViewHolder;)V
    .locals 0

    .line 22
    check-cast p2, Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter$SubSettingHolder;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter;->a(ILcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter$SubSettingHolder;)V

    return-void
.end method

.method protected bridge synthetic a(ILcom/oplus/camera/timelapsepro/adapter/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p2, Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter$SubSettingHolder;

    check-cast p3, Lcom/oplus/camera/timelapsepro/a/j;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter;->a(ILcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter$SubSettingHolder;Lcom/oplus/camera/timelapsepro/a/j;)V

    return-void
.end method

.method protected a(ILcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter$SubSettingHolder;)V
    .locals 0

    .line 75
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/timelapsepro/adapter/a;->a(ILcom/oplus/camera/timelapsepro/adapter/BaseViewHolder;)V

    return-void
.end method

.method protected a(ILcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter$SubSettingHolder;Lcom/oplus/camera/timelapsepro/a/j;)V
    .locals 4

    .line 38
    iget-object p1, p2, Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter$SubSettingHolder;->name:Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$j;

    const/4 v0, 0x0

    iput v0, p1, Landroidx/recyclerview/widget/RecyclerView$j;->leftMargin:I

    .line 39
    iget-object p1, p2, Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter$SubSettingHolder;->name:Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$j;

    iput v0, p1, Landroidx/recyclerview/widget/RecyclerView$j;->rightMargin:I

    .line 41
    iget p1, p0, Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter;->c:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f070a4c

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 44
    iget-object v2, p2, Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter$SubSettingHolder;->name:Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;

    invoke-virtual {v2, p1}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->setMaxWidth(I)V

    .line 46
    iget p1, p0, Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter;->g:I

    if-lez p1, :cond_2

    iget-object p1, p2, Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter$SubSettingHolder;->name:Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->getWidth()I

    move-result p1

    iget v2, p0, Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter;->g:I

    if-ge p1, v2, :cond_2

    .line 47
    iget-object p1, p2, Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter$SubSettingHolder;->name:Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->getWidth()I

    move-result p1

    sub-int/2addr v2, p1

    div-int/lit8 p1, v2, 0x2

    if-gez p1, :cond_1

    move p1, v0

    .line 53
    :cond_1
    iget-object v2, p2, Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter$SubSettingHolder;->name:Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$j;

    iput p1, v2, Landroidx/recyclerview/widget/RecyclerView$j;->leftMargin:I

    .line 54
    iget-object v2, p2, Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter$SubSettingHolder;->name:Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$j;

    iput p1, v2, Landroidx/recyclerview/widget/RecyclerView$j;->rightMargin:I

    .line 66
    :cond_2
    :goto_0
    iget-object p1, p2, Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter$SubSettingHolder;->name:Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->getWidth()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter;->a(I)V

    .line 68
    iget-object p1, p2, Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter$SubSettingHolder;->name:Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;

    iget-object v2, p3, Lcom/oplus/camera/timelapsepro/a/j;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object p1, p2, Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter$SubSettingHolder;->name:Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;

    iget v2, p0, Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter;->c:I

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    iget v3, p0, Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter;->c:I

    if-ne v2, v3, :cond_4

    iget-boolean p0, p0, Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter;->e:Z

    if-nez p0, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->setLightBgColor(Z)V

    .line 70
    iget-object p0, p2, Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter$SubSettingHolder;->name:Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;

    iget-boolean p1, p3, Lcom/oplus/camera/timelapsepro/a/j;->b:Z

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/TabContainerTextView;->setSelected(Z)V

    return-void
.end method

.method public a(Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter$a;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter;->f:Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter$a;

    return-void
.end method

.method protected bridge synthetic b(ILcom/oplus/camera/timelapsepro/adapter/BaseViewHolder;)V
    .locals 0

    .line 22
    check-cast p2, Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter$SubSettingHolder;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter;->b(ILcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter$SubSettingHolder;)V

    return-void
.end method

.method protected b(ILcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter$SubSettingHolder;)V
    .locals 0

    .line 103
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/timelapsepro/adapter/a;->b(ILcom/oplus/camera/timelapsepro/adapter/BaseViewHolder;)V

    .line 105
    iget-object p2, p0, Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter;->f:Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter$a;

    if-eqz p2, :cond_0

    .line 106
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter;->b:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/timelapsepro/a/j;

    invoke-interface {p2, p1, p0}, Lcom/oplus/camera/timelapsepro/adapter/SubSettingAdapter$a;->a(ILcom/oplus/camera/timelapsepro/a/j;)V

    :cond_0
    return-void
.end method
