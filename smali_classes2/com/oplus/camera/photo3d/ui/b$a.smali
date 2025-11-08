.class public Lcom/oplus/camera/photo3d/ui/b$a;
.super Landroidx/recyclerview/widget/RecyclerView$w;
.source "GuideRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/photo3d/ui/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:Lcom/oplus/camera/ui/widget/GuideTextView;

.field b:Lcom/oplus/camera/ui/widget/GuideTextView;

.field c:Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;

.field final synthetic d:Lcom/oplus/camera/photo3d/ui/b;


# direct methods
.method public constructor <init>(Lcom/oplus/camera/photo3d/ui/b;Landroid/view/View;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/oplus/camera/photo3d/ui/b$a;->d:Lcom/oplus/camera/photo3d/ui/b;

    .line 143
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$w;-><init>(Landroid/view/View;)V

    const p1, 0x7f0901be

    .line 145
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/widget/GuideTextView;

    iput-object p1, p0, Lcom/oplus/camera/photo3d/ui/b$a;->a:Lcom/oplus/camera/ui/widget/GuideTextView;

    const p1, 0x7f0901bd

    .line 146
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/widget/GuideTextView;

    iput-object p1, p0, Lcom/oplus/camera/photo3d/ui/b$a;->b:Lcom/oplus/camera/ui/widget/GuideTextView;

    const p1, 0x7f0901c9

    .line 147
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;

    iput-object p1, p0, Lcom/oplus/camera/photo3d/ui/b$a;->c:Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;

    .line 148
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/b$a;->c:Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;

    const-wide/high16 p1, 0x3fe2000000000000L    # 0.5625

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/photo3d/ui/GuideVideoItemView;->setRatio(D)V

    return-void
.end method
