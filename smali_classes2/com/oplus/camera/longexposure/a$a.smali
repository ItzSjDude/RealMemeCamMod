.class public Lcom/oplus/camera/longexposure/a$a;
.super Landroidx/recyclerview/widget/RecyclerView$w;
.source "LongExposureBottomGuideAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/longexposure/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:Lcom/oplus/camera/ui/widget/GuideTextView;

.field b:Lcom/oplus/camera/ui/widget/GuideTextView;

.field c:Landroid/widget/ImageView;

.field final synthetic d:Lcom/oplus/camera/longexposure/a;


# direct methods
.method public constructor <init>(Lcom/oplus/camera/longexposure/a;Landroid/view/View;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/oplus/camera/longexposure/a$a;->d:Lcom/oplus/camera/longexposure/a;

    .line 93
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$w;-><init>(Landroid/view/View;)V

    const p1, 0x7f090231

    .line 95
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/widget/GuideTextView;

    iput-object p1, p0, Lcom/oplus/camera/longexposure/a$a;->a:Lcom/oplus/camera/ui/widget/GuideTextView;

    const p1, 0x7f090230

    .line 96
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/widget/GuideTextView;

    iput-object p1, p0, Lcom/oplus/camera/longexposure/a$a;->b:Lcom/oplus/camera/ui/widget/GuideTextView;

    const p1, 0x7f0901ff

    .line 97
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/oplus/camera/longexposure/a$a;->c:Landroid/widget/ImageView;

    return-void
.end method
