.class Lcom/oplus/camera/capmode/t$a$2;
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
.field final synthetic a:Lcom/oplus/camera/sticker/data/StickerItem;

.field final synthetic b:Lcom/oplus/camera/capmode/t$a;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/t$a;Lcom/oplus/camera/sticker/data/StickerItem;)V
    .locals 0

    .line 2609
    iput-object p1, p0, Lcom/oplus/camera/capmode/t$a$2;->b:Lcom/oplus/camera/capmode/t$a;

    iput-object p2, p0, Lcom/oplus/camera/capmode/t$a$2;->a:Lcom/oplus/camera/sticker/data/StickerItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2612
    iget-object v0, p0, Lcom/oplus/camera/capmode/t$a$2;->b:Lcom/oplus/camera/capmode/t$a;

    iget-object v0, v0, Lcom/oplus/camera/capmode/t$a;->a:Lcom/oplus/camera/capmode/t;

    iget-object p0, p0, Lcom/oplus/camera/capmode/t$a$2;->a:Lcom/oplus/camera/sticker/data/StickerItem;

    invoke-static {v0, p0}, Lcom/oplus/camera/capmode/t;->b(Lcom/oplus/camera/capmode/t;Lcom/oplus/camera/sticker/data/StickerItem;)V

    return-void
.end method
