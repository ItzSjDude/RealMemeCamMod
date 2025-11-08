.class Lcom/oplus/camera/ui/x$3;
.super Ljava/lang/Object;
.source "ZoomClickChangeView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/x;->b(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/x;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/x;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/oplus/camera/ui/x$3;->a:Lcom/oplus/camera/ui/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 240
    iget-object p1, p0, Lcom/oplus/camera/ui/x$3;->a:Lcom/oplus/camera/ui/x;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/x;->a(Lcom/oplus/camera/ui/x;Z)Z

    .line 241
    iget-object p0, p0, Lcom/oplus/camera/ui/x$3;->a:Lcom/oplus/camera/ui/x;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/oplus/camera/ui/x;->a(Lcom/oplus/camera/ui/x;J)J

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/oplus/camera/ui/x$3;->a:Lcom/oplus/camera/ui/x;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/oplus/camera/ui/x;->a(Lcom/oplus/camera/ui/x;Z)Z

    return-void
.end method
