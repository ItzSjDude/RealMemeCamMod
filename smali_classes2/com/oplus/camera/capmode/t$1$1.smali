.class Lcom/oplus/camera/capmode/t$1$1;
.super Ljava/lang/Object;
.source "StickerMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/t$1;->a(Ljava/util/ArrayList;ILcom/oplus/camera/sticker/data/StickerItem;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Lcom/oplus/camera/capmode/t$1;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/t$1;IZ)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/oplus/camera/capmode/t$1$1;->c:Lcom/oplus/camera/capmode/t$1;

    iput p2, p0, Lcom/oplus/camera/capmode/t$1$1;->a:I

    iput-boolean p3, p0, Lcom/oplus/camera/capmode/t$1$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 187
    iget-object v0, p0, Lcom/oplus/camera/capmode/t$1$1;->c:Lcom/oplus/camera/capmode/t$1;

    iget-object v0, v0, Lcom/oplus/camera/capmode/t$1;->a:Lcom/oplus/camera/capmode/t;

    invoke-static {v0}, Lcom/oplus/camera/capmode/t;->b(Lcom/oplus/camera/capmode/t;)Lcom/oplus/camera/sticker/ui/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/oplus/camera/capmode/t$1$1;->c:Lcom/oplus/camera/capmode/t$1;

    iget-object v0, v0, Lcom/oplus/camera/capmode/t$1;->a:Lcom/oplus/camera/capmode/t;

    invoke-static {v0}, Lcom/oplus/camera/capmode/t;->b(Lcom/oplus/camera/capmode/t;)Lcom/oplus/camera/sticker/ui/h;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/capmode/t$1$1;->c:Lcom/oplus/camera/capmode/t$1;

    iget-object v1, v1, Lcom/oplus/camera/capmode/t$1;->a:Lcom/oplus/camera/capmode/t;

    invoke-static {v1}, Lcom/oplus/camera/capmode/t;->a(Lcom/oplus/camera/capmode/t;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/oplus/camera/capmode/t$1$1;->a:I

    iget-boolean p0, p0, Lcom/oplus/camera/capmode/t$1$1;->b:Z

    invoke-virtual {v0, v1, v2, p0}, Lcom/oplus/camera/sticker/ui/h;->a(Ljava/util/ArrayList;IZ)V

    :cond_0
    return-void
.end method
