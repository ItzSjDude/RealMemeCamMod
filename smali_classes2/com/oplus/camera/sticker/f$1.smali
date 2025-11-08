.class Lcom/oplus/camera/sticker/f$1;
.super Landroid/content/BroadcastReceiver;
.source "StickerDataRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/sticker/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/sticker/f;


# direct methods
.method constructor <init>(Lcom/oplus/camera/sticker/f;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/oplus/camera/sticker/f$1;->a:Lcom/oplus/camera/sticker/f;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 64
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive intent: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StickerDataRequest"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.sticker.thumbnail.service"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 67
    iget-object p1, p0, Lcom/oplus/camera/sticker/f$1;->a:Lcom/oplus/camera/sticker/f;

    invoke-static {p1}, Lcom/oplus/camera/sticker/f;->a(Lcom/oplus/camera/sticker/f;)Lcom/oplus/camera/sticker/f$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 68
    iget-object p0, p0, Lcom/oplus/camera/sticker/f$1;->a:Lcom/oplus/camera/sticker/f;

    invoke-static {p0}, Lcom/oplus/camera/sticker/f;->a(Lcom/oplus/camera/sticker/f;)Lcom/oplus/camera/sticker/f$a;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/oplus/camera/sticker/f$a;->a(I)V

    :cond_0
    return-void
.end method
