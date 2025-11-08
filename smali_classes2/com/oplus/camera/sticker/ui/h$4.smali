.class Lcom/oplus/camera/sticker/ui/h$4;
.super Ljava/lang/Object;
.source "StickerMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/sticker/ui/h;->d(Ljava/lang/String;)V
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

    .line 805
    iput-object p1, p0, Lcom/oplus/camera/sticker/ui/h$4;->b:Lcom/oplus/camera/sticker/ui/h;

    iput-object p2, p0, Lcom/oplus/camera/sticker/ui/h$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 808
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/h$4;->b:Lcom/oplus/camera/sticker/ui/h;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oplus/camera/sticker/ui/h;->b(Lcom/oplus/camera/sticker/ui/h;Z)Z

    .line 809
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/h$4;->b:Lcom/oplus/camera/sticker/ui/h;

    iget-object v1, p0, Lcom/oplus/camera/sticker/ui/h$4;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/sticker/ui/h;->b(Ljava/lang/String;)V

    .line 811
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/h$4;->b:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {v0}, Lcom/oplus/camera/sticker/ui/h;->q(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x12c

    invoke-static {v0, v1, v2, v3, v4}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    .line 814
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/h$4;->b:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {v0}, Lcom/oplus/camera/sticker/ui/h;->r(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/sticker/ui/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/h$4;->b:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {v0}, Lcom/oplus/camera/sticker/ui/h;->r(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/sticker/ui/f;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/h$4;->b:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {p0}, Lcom/oplus/camera/sticker/ui/h;->s(Lcom/oplus/camera/sticker/ui/h;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/oplus/camera/sticker/ui/f;->a(Z)V

    :cond_0
    return-void
.end method
