.class Lcom/oplus/camera/capmode/t$11;
.super Ljava/lang/Object;
.source "StickerMode.java"

# interfaces
.implements Lcom/oplus/camera/sticker/ui/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/t;->a(Lcom/oplus/camera/sticker/data/StickerItem;I)Z
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

    .line 2252
    iput-object p1, p0, Lcom/oplus/camera/capmode/t$11;->a:Lcom/oplus/camera/capmode/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 2255
    iget-object p0, p0, Lcom/oplus/camera/capmode/t$11;->a:Lcom/oplus/camera/capmode/t;

    invoke-static {p0}, Lcom/oplus/camera/capmode/t;->d(Lcom/oplus/camera/capmode/t;)I

    return-void
.end method

.method public a(IZ)V
    .locals 1

    .line 2260
    iget-object p0, p0, Lcom/oplus/camera/capmode/t$11;->a:Lcom/oplus/camera/capmode/t;

    const-string v0, "delete"

    invoke-static {p0, p1, p2, v0}, Lcom/oplus/camera/capmode/t;->a(Lcom/oplus/camera/capmode/t;IZLjava/lang/String;)V

    return-void
.end method

.method public b(IZ)V
    .locals 1

    .line 2265
    iget-object p0, p0, Lcom/oplus/camera/capmode/t$11;->a:Lcom/oplus/camera/capmode/t;

    const-string v0, "cancel"

    invoke-static {p0, p1, p2, v0}, Lcom/oplus/camera/capmode/t;->a(Lcom/oplus/camera/capmode/t;IZLjava/lang/String;)V

    return-void
.end method
