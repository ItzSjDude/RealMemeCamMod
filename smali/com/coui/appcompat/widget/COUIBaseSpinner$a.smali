.class Lcom/coui/appcompat/widget/COUIBaseSpinner$a;
.super Ljava/lang/Object;
.source "COUIBaseSpinner.java"

# interfaces
.implements Landroid/widget/ListAdapter;
.implements Landroid/widget/SpinnerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUIBaseSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/widget/SpinnerAdapter;

.field private b:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Landroid/widget/SpinnerAdapter;)V
    .locals 1

    .line 778
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 779
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$a;->a:Landroid/widget/SpinnerAdapter;

    .line 780
    instance-of v0, p1, Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 781
    check-cast p1, Landroid/widget/ListAdapter;

    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$a;->b:Landroid/widget/ListAdapter;

    :cond_0
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 0

    .line 827
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$a;->b:Landroid/widget/ListAdapter;

    if-eqz p0, :cond_0

    .line 829
    invoke-interface {p0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public getCount()I
    .locals 0

    .line 786
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$a;->a:Landroid/widget/SpinnerAdapter;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 802
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$a;->a:Landroid/widget/SpinnerAdapter;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 803
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Landroid/widget/SpinnerAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 790
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$a;->a:Landroid/widget/SpinnerAdapter;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Landroid/widget/SpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    .line 794
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$a;->a:Landroid/widget/SpinnerAdapter;

    if-nez p0, :cond_0

    const-wide/16 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 798
    invoke-virtual {p0, p1, p2, p3}, Lcom/coui/appcompat/widget/COUIBaseSpinner$a;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getViewTypeCount()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public hasStableIds()Z
    .locals 0

    .line 807
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$a;->a:Landroid/widget/SpinnerAdapter;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/widget/SpinnerAdapter;->hasStableIds()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEmpty()Z
    .locals 0

    .line 857
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIBaseSpinner$a;->getCount()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEnabled(I)Z
    .locals 0

    .line 840
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$a;->b:Landroid/widget/ListAdapter;

    if-eqz p0, :cond_0

    .line 842
    invoke-interface {p0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    .line 811
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$a;->a:Landroid/widget/SpinnerAdapter;

    if-eqz p0, :cond_0

    .line 812
    invoke-interface {p0, p1}, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    .line 817
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$a;->a:Landroid/widget/SpinnerAdapter;

    if-eqz p0, :cond_0

    .line 818
    invoke-interface {p0, p1}, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    return-void
.end method
