.class Lcom/oplus/camera/capmode/t$6;
.super Ljava/lang/Object;
.source "StickerMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/t;->onBeforeSnapping(Lcom/oplus/camera/e/c;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/t;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/t;)V
    .locals 0

    .line 1486
    iput-object p1, p0, Lcom/oplus/camera/capmode/t$6;->a:Lcom/oplus/camera/capmode/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1489
    iget-object v0, p0, Lcom/oplus/camera/capmode/t$6;->a:Lcom/oplus/camera/capmode/t;

    iget-boolean v0, v0, Lcom/oplus/camera/capmode/t;->mbPaused:Z

    if-eqz v0, :cond_0

    const-string p0, "StickerMode"

    const-string v0, "onBeforeSnapping, return after pause"

    .line 1490
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1495
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/t$6;->a:Lcom/oplus/camera/capmode/t;

    invoke-static {v0}, Lcom/oplus/camera/capmode/t;->b(Lcom/oplus/camera/capmode/t;)Lcom/oplus/camera/sticker/ui/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/sticker/ui/h;->a(Z)V

    .line 1496
    iget-object p0, p0, Lcom/oplus/camera/capmode/t$6;->a:Lcom/oplus/camera/capmode/t;

    invoke-static {p0}, Lcom/oplus/camera/capmode/t;->b(Lcom/oplus/camera/capmode/t;)Lcom/oplus/camera/sticker/ui/h;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/oplus/camera/sticker/ui/h;->b(Z)V

    return-void
.end method
