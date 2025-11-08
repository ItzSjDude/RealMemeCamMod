.class public Lcom/oplus/camera/ui/k$a;
.super Landroidx/recyclerview/widget/RecyclerView$w;
.source "GalleryPreviewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/k;

.field private b:Landroid/widget/RelativeLayout;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/view/TextureView;

.field private e:Landroid/widget/RelativeLayout;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/widget/RelativeLayout;

.field private h:Lcom/oplus/camera/ui/inverse/InverseLinearLayout;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/oplus/camera/ui/k;Landroid/view/View;I)V
    .locals 1

    .line 956
    iput-object p1, p0, Lcom/oplus/camera/ui/k$a;->a:Lcom/oplus/camera/ui/k;

    .line 957
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$w;-><init>(Landroid/view/View;)V

    const/4 v0, 0x4

    if-ne v0, p3, :cond_0

    return-void

    :cond_0
    const p3, 0x7f090197

    .line 963
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/oplus/camera/ui/k$a;->b:Landroid/widget/RelativeLayout;

    const p3, 0x7f09019f

    .line 964
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/oplus/camera/ui/k$a;->c:Landroid/widget/ImageView;

    const p3, 0x7f0901a3

    .line 965
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/TextureView;

    iput-object p3, p0, Lcom/oplus/camera/ui/k$a;->d:Landroid/view/TextureView;

    const p3, 0x7f0901a5

    .line 966
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/oplus/camera/ui/k$a;->f:Landroid/widget/RelativeLayout;

    const p3, 0x7f0901a8

    .line 967
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/oplus/camera/ui/k$a;->g:Landroid/widget/RelativeLayout;

    const p3, 0x7f0901a4

    .line 968
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/oplus/camera/ui/inverse/InverseLinearLayout;

    iput-object p3, p0, Lcom/oplus/camera/ui/k$a;->h:Lcom/oplus/camera/ui/inverse/InverseLinearLayout;

    const p3, 0x7f0901a6

    .line 969
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/oplus/camera/ui/k$a;->i:Landroid/widget/ImageView;

    const p3, 0x7f0901a7

    .line 970
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/oplus/camera/ui/k$a;->j:Landroid/widget/TextView;

    const p3, 0x7f0901a1

    .line 971
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/oplus/camera/ui/k$a;->e:Landroid/widget/RelativeLayout;

    .line 972
    iget-object p2, p0, Lcom/oplus/camera/ui/k$a;->b:Landroid/widget/RelativeLayout;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setClipToOutline(Z)V

    .line 973
    iget-object p2, p0, Lcom/oplus/camera/ui/k$a;->d:Landroid/view/TextureView;

    invoke-virtual {p2, p3}, Landroid/view/TextureView;->setClipToOutline(Z)V

    .line 975
    iget-object p2, p0, Lcom/oplus/camera/ui/k$a;->b:Landroid/widget/RelativeLayout;

    new-instance p3, Lcom/oplus/camera/ui/k$a$1;

    invoke-direct {p3, p0, p1}, Lcom/oplus/camera/ui/k$a$1;-><init>(Lcom/oplus/camera/ui/k$a;Lcom/oplus/camera/ui/k;)V

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 982
    iget-object p2, p0, Lcom/oplus/camera/ui/k$a;->d:Landroid/view/TextureView;

    new-instance p3, Lcom/oplus/camera/ui/k$a$2;

    invoke-direct {p3, p0, p1}, Lcom/oplus/camera/ui/k$a$2;-><init>(Lcom/oplus/camera/ui/k$a;Lcom/oplus/camera/ui/k;)V

    invoke-virtual {p2, p3}, Landroid/view/TextureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/k$a;)Landroid/widget/ImageView;
    .locals 0

    .line 945
    iget-object p0, p0, Lcom/oplus/camera/ui/k$a;->c:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic b(Lcom/oplus/camera/ui/k$a;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 945
    iget-object p0, p0, Lcom/oplus/camera/ui/k$a;->e:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic c(Lcom/oplus/camera/ui/k$a;)Landroid/view/TextureView;
    .locals 0

    .line 945
    iget-object p0, p0, Lcom/oplus/camera/ui/k$a;->d:Landroid/view/TextureView;

    return-object p0
.end method

.method static synthetic d(Lcom/oplus/camera/ui/k$a;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 945
    iget-object p0, p0, Lcom/oplus/camera/ui/k$a;->f:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic e(Lcom/oplus/camera/ui/k$a;)Lcom/oplus/camera/ui/inverse/InverseLinearLayout;
    .locals 0

    .line 945
    iget-object p0, p0, Lcom/oplus/camera/ui/k$a;->h:Lcom/oplus/camera/ui/inverse/InverseLinearLayout;

    return-object p0
.end method

.method static synthetic f(Lcom/oplus/camera/ui/k$a;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 945
    iget-object p0, p0, Lcom/oplus/camera/ui/k$a;->g:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic g(Lcom/oplus/camera/ui/k$a;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 945
    iget-object p0, p0, Lcom/oplus/camera/ui/k$a;->b:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic h(Lcom/oplus/camera/ui/k$a;)Landroid/widget/TextView;
    .locals 0

    .line 945
    iget-object p0, p0, Lcom/oplus/camera/ui/k$a;->j:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic i(Lcom/oplus/camera/ui/k$a;)Landroid/widget/ImageView;
    .locals 0

    .line 945
    iget-object p0, p0, Lcom/oplus/camera/ui/k$a;->i:Landroid/widget/ImageView;

    return-object p0
.end method
