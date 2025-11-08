.class Lcom/oplus/camera/capmode/t$a$1;
.super Ljava/lang/Object;
.source "StickerMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/t$a;->b(Lcom/oplus/camera/sticker/data/StickerItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/t$a;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/t$a;)V
    .locals 0

    .line 2599
    iput-object p1, p0, Lcom/oplus/camera/capmode/t$a$1;->a:Lcom/oplus/camera/capmode/t$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2602
    iget-object v0, p0, Lcom/oplus/camera/capmode/t$a$1;->a:Lcom/oplus/camera/capmode/t$a;

    iget-object v0, v0, Lcom/oplus/camera/capmode/t$a;->a:Lcom/oplus/camera/capmode/t;

    invoke-static {v0}, Lcom/oplus/camera/capmode/t;->e(Lcom/oplus/camera/capmode/t;)Lcom/oplus/camera/sticker/ui/l;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/t$a$1;->a:Lcom/oplus/camera/capmode/t$a;

    iget-object v0, v0, Lcom/oplus/camera/capmode/t$a;->a:Lcom/oplus/camera/capmode/t;

    invoke-static {v0}, Lcom/oplus/camera/capmode/t;->e(Lcom/oplus/camera/capmode/t;)Lcom/oplus/camera/sticker/ui/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/sticker/ui/l;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2603
    iget-object p0, p0, Lcom/oplus/camera/capmode/t$a$1;->a:Lcom/oplus/camera/capmode/t$a;

    iget-object p0, p0, Lcom/oplus/camera/capmode/t$a;->a:Lcom/oplus/camera/capmode/t;

    invoke-static {p0}, Lcom/oplus/camera/capmode/t;->e(Lcom/oplus/camera/capmode/t;)Lcom/oplus/camera/sticker/ui/l;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/sticker/ui/l;->a()V

    :cond_0
    return-void
.end method
