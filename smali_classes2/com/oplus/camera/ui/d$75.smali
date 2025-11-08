.class Lcom/oplus/camera/ui/d$75;
.super Ljava/lang/Object;
.source "CameraUIManager.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/d;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/d;)V
    .locals 0

    .line 771
    iput-object p1, p0, Lcom/oplus/camera/ui/d$75;->a:Lcom/oplus/camera/ui/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 775
    iget-object p1, p0, Lcom/oplus/camera/ui/d$75;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->t(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/preview/a$a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 776
    iget-object p1, p0, Lcom/oplus/camera/ui/d$75;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->r(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/preview/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/a;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 777
    iget-object p0, p0, Lcom/oplus/camera/ui/d$75;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->t(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/preview/a$a;

    move-result-object p0

    sub-int/2addr p4, p2

    invoke-interface {p0, p4}, Lcom/oplus/camera/ui/preview/a$a;->b(I)V

    goto :goto_0

    .line 779
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/d$75;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->t(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/preview/a$a;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/preview/a$a;->b(I)V

    :cond_1
    :goto_0
    return-void
.end method
