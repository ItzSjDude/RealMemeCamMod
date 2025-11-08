.class Lcom/oplus/camera/sticker/ui/h$12;
.super Ljava/lang/Object;
.source "StickerMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/sticker/ui/h;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/oplus/camera/sticker/ui/h;


# direct methods
.method constructor <init>(Lcom/oplus/camera/sticker/ui/h;Ljava/lang/String;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/oplus/camera/sticker/ui/h$12;->b:Lcom/oplus/camera/sticker/ui/h;

    iput-object p2, p0, Lcom/oplus/camera/sticker/ui/h$12;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/h$12;->b:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {v0}, Lcom/oplus/camera/sticker/ui/h;->l(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/sticker/ui/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/h$12;->b:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {v0}, Lcom/oplus/camera/sticker/ui/h;->l(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/sticker/ui/j;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/h$12;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/sticker/ui/j;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
