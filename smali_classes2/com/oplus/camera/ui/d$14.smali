.class Lcom/oplus/camera/ui/d$14;
.super Ljava/lang/Object;
.source "CameraUIManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/d;->a(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Lcom/oplus/camera/ui/d;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/d;IZ)V
    .locals 0

    .line 2454
    iput-object p1, p0, Lcom/oplus/camera/ui/d$14;->c:Lcom/oplus/camera/ui/d;

    iput p2, p0, Lcom/oplus/camera/ui/d$14;->a:I

    iput-boolean p3, p0, Lcom/oplus/camera/ui/d$14;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 2457
    iget-object v0, p0, Lcom/oplus/camera/ui/d$14;->c:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->Y(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/preview/q;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2458
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    .line 2461
    iget-object v2, p0, Lcom/oplus/camera/ui/d$14;->c:Lcom/oplus/camera/ui/d;

    invoke-static {v2}, Lcom/oplus/camera/ui/d;->Z(Lcom/oplus/camera/ui/d;)I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oplus/camera/ui/d$14;->c:Lcom/oplus/camera/ui/d;

    invoke-static {v2}, Lcom/oplus/camera/ui/d;->Z(Lcom/oplus/camera/ui/d;)I

    move-result v2

    if-ne v2, v1, :cond_0

    goto :goto_0

    .line 2465
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/ui/d$14;->c:Lcom/oplus/camera/ui/d;

    invoke-static {v1}, Lcom/oplus/camera/ui/d;->f(Lcom/oplus/camera/ui/d;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0705c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_1

    .line 2462
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/oplus/camera/ui/d$14;->c:Lcom/oplus/camera/ui/d;

    invoke-static {v2}, Lcom/oplus/camera/ui/d;->J(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/preview/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/camera/ui/preview/g;->y()Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/oplus/camera/ui/d$14;->c:Lcom/oplus/camera/ui/d;

    .line 2463
    invoke-static {v3}, Lcom/oplus/camera/ui/d;->J(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/preview/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/ui/preview/g;->y()Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    div-int/2addr v3, v1

    add-int v1, v2, v3

    .line 2468
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showGradienterView, top: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/camera/ui/d$14;->c:Lcom/oplus/camera/ui/d;

    invoke-static {v3}, Lcom/oplus/camera/ui/d;->J(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/preview/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/ui/preview/g;->y()Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/camera/ui/d$14;->c:Lcom/oplus/camera/ui/d;

    .line 2469
    invoke-static {v3}, Lcom/oplus/camera/ui/d;->J(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/preview/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/ui/preview/g;->y()Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", centerY: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mSizeRatioType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/camera/ui/d$14;->c:Lcom/oplus/camera/ui/d;

    .line 2470
    invoke-static {v3}, Lcom/oplus/camera/ui/d;->Z(Lcom/oplus/camera/ui/d;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CameraUIManager"

    .line 2468
    invoke-static {v3, v2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2472
    iget-object v2, p0, Lcom/oplus/camera/ui/d$14;->c:Lcom/oplus/camera/ui/d;

    new-instance v3, Lcom/oplus/camera/ui/preview/q;

    invoke-static {v2}, Lcom/oplus/camera/ui/d;->f(Lcom/oplus/camera/ui/d;)Landroid/app/Activity;

    move-result-object v4

    iget v5, p0, Lcom/oplus/camera/ui/d$14;->a:I

    invoke-direct {v3, v4, v0, v1, v5}, Lcom/oplus/camera/ui/preview/q;-><init>(Landroid/content/Context;III)V

    invoke-static {v2, v3}, Lcom/oplus/camera/ui/d;->a(Lcom/oplus/camera/ui/d;Lcom/oplus/camera/ui/preview/q;)Lcom/oplus/camera/ui/preview/q;

    .line 2473
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2475
    iget-object v1, p0, Lcom/oplus/camera/ui/d$14;->c:Lcom/oplus/camera/ui/d;

    invoke-static {v1}, Lcom/oplus/camera/ui/d;->Y(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/preview/q;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/preview/q;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2476
    iget-object v0, p0, Lcom/oplus/camera/ui/d$14;->c:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->R(Lcom/oplus/camera/ui/d;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/ui/d$14;->c:Lcom/oplus/camera/ui/d;

    invoke-static {v1}, Lcom/oplus/camera/ui/d;->Y(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/preview/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2477
    iget-object v0, p0, Lcom/oplus/camera/ui/d$14;->c:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->Y(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/preview/q;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/q;->setVisibility(I)V

    .line 2480
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/d$14;->c:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->Y(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/preview/q;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/oplus/camera/ui/d$14;->b:Z

    if-eqz v0, :cond_3

    .line 2481
    iget-object p0, p0, Lcom/oplus/camera/ui/d$14;->c:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->Y(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/preview/q;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/q;->a()V

    :cond_3
    return-void
.end method
