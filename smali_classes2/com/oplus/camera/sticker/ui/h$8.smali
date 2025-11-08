.class Lcom/oplus/camera/sticker/ui/h$8;
.super Ljava/lang/Object;
.source "StickerMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/sticker/ui/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/sticker/ui/h;


# direct methods
.method constructor <init>(Lcom/oplus/camera/sticker/ui/h;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/oplus/camera/sticker/ui/h$8;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 124
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h$8;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {p1}, Lcom/oplus/camera/sticker/ui/h;->d(Lcom/oplus/camera/sticker/ui/h;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 125
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h$8;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {p1}, Lcom/oplus/camera/sticker/ui/h;->f(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/sticker/ui/g;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/h$8;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {p0}, Lcom/oplus/camera/sticker/ui/h;->e(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/sticker/ui/h$b;

    move-result-object p0

    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/h$b;->c:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {p1, v0, v0, p0, v0}, Lcom/oplus/camera/sticker/ui/g;->a(IILjava/lang/String;Z)V

    :cond_0
    return-void
.end method
