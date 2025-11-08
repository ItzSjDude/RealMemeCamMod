.class public final Lcom/oplus/camera/j/b$b;
.super Landroidx/recyclerview/widget/RecyclerView$w;
.source "VideoViewPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/j/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/j/b;

.field private b:Lcom/oplus/camera/doubleexposure/DoubleExposureVideoView;

.field private c:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method public constructor <init>(Lcom/oplus/camera/j/b;Landroid/view/View;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/oplus/camera/j/b$b;->a:Lcom/oplus/camera/j/b;

    .line 138
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$w;-><init>(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 134
    iput-object p1, p0, Lcom/oplus/camera/j/b$b;->b:Lcom/oplus/camera/doubleexposure/DoubleExposureVideoView;

    .line 135
    iput-object p1, p0, Lcom/oplus/camera/j/b$b;->c:Landroidx/appcompat/widget/AppCompatTextView;

    const p1, 0x7f090138

    .line 139
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lcom/oplus/camera/j/b$b;->c:Landroidx/appcompat/widget/AppCompatTextView;

    const p1, 0x7f09040f

    .line 140
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/doubleexposure/DoubleExposureVideoView;

    iput-object p1, p0, Lcom/oplus/camera/j/b$b;->b:Lcom/oplus/camera/doubleexposure/DoubleExposureVideoView;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/j/b$b;)Landroidx/appcompat/widget/AppCompatTextView;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/oplus/camera/j/b$b;->c:Landroidx/appcompat/widget/AppCompatTextView;

    return-object p0
.end method

.method static synthetic b(Lcom/oplus/camera/j/b$b;)Lcom/oplus/camera/doubleexposure/DoubleExposureVideoView;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/oplus/camera/j/b$b;->b:Lcom/oplus/camera/doubleexposure/DoubleExposureVideoView;

    return-object p0
.end method
