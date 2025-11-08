.class Lcom/oplus/camera/j/a$11;
.super Ljava/lang/Object;
.source "CommonBottomGuide.java"

# interfaces
.implements Lcom/oplus/camera/doubleexposure/DoubleExposureVideoView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/j/a;->n(Landroid/app/Activity;)Lcom/oplus/camera/ui/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/j/b;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/oplus/camera/j/a;


# direct methods
.method constructor <init>(Lcom/oplus/camera/j/a;Lcom/oplus/camera/j/b;Landroid/app/Activity;)V
    .locals 0

    .line 953
    iput-object p1, p0, Lcom/oplus/camera/j/a$11;->c:Lcom/oplus/camera/j/a;

    iput-object p2, p0, Lcom/oplus/camera/j/a$11;->a:Lcom/oplus/camera/j/b;

    iput-object p3, p0, Lcom/oplus/camera/j/a$11;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 968
    invoke-static {}, Lcom/oplus/camera/j/a;->h()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VideoViewPagerAdapter onLoadVideoThumbFail "

    invoke-static {p0, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 956
    iget-object v0, p0, Lcom/oplus/camera/j/a$11;->c:Lcom/oplus/camera/j/a;

    invoke-static {v0}, Lcom/oplus/camera/j/a;->o(Lcom/oplus/camera/j/a;)Lcom/oplus/camera/ui/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/s;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 957
    iget-object v0, p0, Lcom/oplus/camera/j/a$11;->a:Lcom/oplus/camera/j/b;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/j/b;->a(Landroid/graphics/Bitmap;)V

    .line 958
    iget-object p1, p0, Lcom/oplus/camera/j/a$11;->b:Landroid/app/Activity;

    check-cast p1, Landroidx/appcompat/app/c;

    invoke-virtual {p1}, Landroidx/appcompat/app/c;->j()Landroidx/fragment/app/h;

    move-result-object p1

    .line 960
    iget-object v0, p0, Lcom/oplus/camera/j/a$11;->c:Lcom/oplus/camera/j/a;

    invoke-static {v0}, Lcom/oplus/camera/j/a;->o(Lcom/oplus/camera/j/a;)Lcom/oplus/camera/ui/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/s;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/h;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 961
    iget-object p0, p0, Lcom/oplus/camera/j/a$11;->c:Lcom/oplus/camera/j/a;

    invoke-static {p0}, Lcom/oplus/camera/j/a;->o(Lcom/oplus/camera/j/a;)Lcom/oplus/camera/ui/s;

    move-result-object p0

    const-string v0, "showDoubleExposureBottomGuide"

    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/ui/s;->show(Landroidx/fragment/app/h;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
