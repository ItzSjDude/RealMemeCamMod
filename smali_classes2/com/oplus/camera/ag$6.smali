.class Lcom/oplus/camera/ag$6;
.super Ljava/lang/Object;
.source "ZoomManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ag;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ag;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ag;)V
    .locals 0

    .line 1564
    iput-object p1, p0, Lcom/oplus/camera/ag$6;->a:Lcom/oplus/camera/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1567
    iget-object v0, p0, Lcom/oplus/camera/ag$6;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->i(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/preview/ai;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1568
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1569
    iget-object v0, p0, Lcom/oplus/camera/ag$6;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->i(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/preview/ai;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/ai;->setAlpha(F)V

    .line 1572
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ag$6;->a:Lcom/oplus/camera/ag;

    invoke-static {p0}, Lcom/oplus/camera/ag;->i(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/preview/ai;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/ai;->setVisibility(I)V

    :cond_1
    return-void
.end method
