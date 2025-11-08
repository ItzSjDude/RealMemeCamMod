.class Lcom/oplus/camera/sticker/ui/h$11;
.super Ljava/lang/Object;
.source "StickerMenu.java"

# interfaces
.implements Lcom/oplus/camera/sticker/ui/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/sticker/ui/h;-><init>(Landroid/app/Activity;IZ)V
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

    .line 204
    iput-object p1, p0, Lcom/oplus/camera/sticker/ui/h$11;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IILjava/lang/String;Z)V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/h$11;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {v0}, Lcom/oplus/camera/sticker/ui/h;->b(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/sticker/ui/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/h$11;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {v0}, Lcom/oplus/camera/sticker/ui/h;->b(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/sticker/ui/i;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/oplus/camera/sticker/ui/i;->b(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/h$11;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {v0, p1}, Lcom/oplus/camera/sticker/ui/h;->a(Lcom/oplus/camera/sticker/ui/h;I)I

    .line 210
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/h$11;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-virtual {v0, p3, p4}, Lcom/oplus/camera/sticker/ui/h;->a(Ljava/lang/String;Z)V

    .line 211
    iget-object p4, p0, Lcom/oplus/camera/sticker/ui/h$11;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {p4}, Lcom/oplus/camera/sticker/ui/h;->h(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/sticker/ui/StickerPageView;

    move-result-object p4

    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/h$11;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {v0}, Lcom/oplus/camera/sticker/ui/h;->d(Lcom/oplus/camera/sticker/ui/h;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p4, v0, v1}, Lcom/oplus/camera/sticker/ui/StickerPageView;->a(IZ)V

    .line 212
    iget-object p4, p0, Lcom/oplus/camera/sticker/ui/h$11;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-virtual {p4, p2}, Lcom/oplus/camera/sticker/ui/h;->a(I)V

    .line 213
    iget-object p2, p0, Lcom/oplus/camera/sticker/ui/h$11;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {p2}, Lcom/oplus/camera/sticker/ui/h;->g(Lcom/oplus/camera/sticker/ui/h;)Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2}, Lcom/oplus/camera/ui/preview/a/q;->b(Landroid/content/Context;)Lcom/oplus/camera/ui/preview/a/q;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/oplus/camera/ui/preview/a/q;->b(Ljava/lang/String;)V

    .line 216
    :cond_0
    iget-object p2, p0, Lcom/oplus/camera/sticker/ui/h$11;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {p2}, Lcom/oplus/camera/sticker/ui/h;->i(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/sticker/ui/e;

    move-result-object p2

    if-eqz p2, :cond_1

    if-nez p1, :cond_1

    .line 217
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h$11;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {p1}, Lcom/oplus/camera/sticker/ui/h;->i(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/sticker/ui/e;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lcom/oplus/camera/sticker/ui/e;->b(I)V

    .line 220
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/h$11;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {p0}, Lcom/oplus/camera/sticker/ui/h;->j(Lcom/oplus/camera/sticker/ui/h;)V

    return-void
.end method

.method public a()Z
    .locals 0

    .line 225
    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/h$11;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {p0}, Lcom/oplus/camera/sticker/ui/h;->k(Lcom/oplus/camera/sticker/ui/h;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public b()V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/oplus/camera/sticker/ui/h$11;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {v0}, Lcom/oplus/camera/sticker/ui/h;->b(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/sticker/ui/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 235
    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/h$11;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {p0}, Lcom/oplus/camera/sticker/ui/h;->b(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/sticker/ui/i;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/sticker/ui/i;->d()V

    :cond_0
    return-void
.end method
