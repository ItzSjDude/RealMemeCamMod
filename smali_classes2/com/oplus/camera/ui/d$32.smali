.class Lcom/oplus/camera/ui/d$32;
.super Ljava/lang/Object;
.source "CameraUIManager.java"

# interfaces
.implements Lcom/oplus/camera/ui/preview/a/p;


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

    .line 620
    iput-object p1, p0, Lcom/oplus/camera/ui/d$32;->a:Lcom/oplus/camera/ui/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/oplus/camera/ui/menu/levelcontrol/i;)V
    .locals 2

    const-string v0, "CameraUIManager"

    const-string v1, "imageReady"

    .line 623
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    iget-object v0, p0, Lcom/oplus/camera/ui/d$32;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->k(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/levelcontrol/g;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/d$32;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->m(Lcom/oplus/camera/ui/d;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 626
    iget-object p0, p0, Lcom/oplus/camera/ui/d$32;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->k(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/levelcontrol/g;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/g;->a(Lcom/oplus/camera/ui/menu/levelcontrol/i;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/ArrayList;ILcom/oplus/camera/sticker/data/StickerItem;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/camera/sticker/ui/h$b;",
            ">;I",
            "Lcom/oplus/camera/sticker/data/StickerItem;",
            "Z)V"
        }
    .end annotation

    return-void
.end method
