.class Lcom/oplus/camera/j/a$9;
.super Ljava/lang/Object;
.source "CommonBottomGuide.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/j/a;->m(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/j/a;


# direct methods
.method constructor <init>(Lcom/oplus/camera/j/a;)V
    .locals 0

    .line 864
    iput-object p1, p0, Lcom/oplus/camera/j/a$9;->a:Lcom/oplus/camera/j/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0

    .line 867
    iget-object p0, p0, Lcom/oplus/camera/j/a$9;->a:Lcom/oplus/camera/j/a;

    invoke-static {p0}, Lcom/oplus/camera/j/a;->j(Lcom/oplus/camera/j/a;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    const p1, 0x7f09040f

    .line 868
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/doubleexposure/DoubleExposureVideoView;

    if-eqz p0, :cond_0

    .line 871
    invoke-virtual {p0}, Lcom/oplus/camera/doubleexposure/DoubleExposureVideoView;->a()V

    :cond_0
    return-void
.end method
