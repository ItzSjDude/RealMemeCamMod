.class Lcom/oplus/camera/sticker/download/thumbnail/b$2;
.super Ljava/lang/Object;
.source "ThumbnailDownloadThread.java"

# interfaces
.implements Lcom/oplus/camera/sticker/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/sticker/download/thumbnail/b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/oplus/camera/sticker/download/thumbnail/b;


# direct methods
.method constructor <init>(Lcom/oplus/camera/sticker/download/thumbnail/b;Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/oplus/camera/sticker/download/thumbnail/b$2;->b:Lcom/oplus/camera/sticker/download/thumbnail/b;

    iput-object p2, p0, Lcom/oplus/camera/sticker/download/thumbnail/b$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 100
    iget-object v0, p0, Lcom/oplus/camera/sticker/download/thumbnail/b$2;->b:Lcom/oplus/camera/sticker/download/thumbnail/b;

    invoke-static {v0}, Lcom/oplus/camera/sticker/download/thumbnail/b;->b(Lcom/oplus/camera/sticker/download/thumbnail/b;)Lcom/oplus/camera/sticker/download/thumbnail/a;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/sticker/download/thumbnail/b$2;->b:Lcom/oplus/camera/sticker/download/thumbnail/b;

    invoke-static {v1}, Lcom/oplus/camera/sticker/download/thumbnail/b;->a(Lcom/oplus/camera/sticker/download/thumbnail/b;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/sticker/download/thumbnail/b$2;->a:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v3, v2}, Lcom/oplus/camera/sticker/download/thumbnail/a;->onSecondDownloadFinish(Landroid/content/Context;ZLjava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/oplus/camera/sticker/download/thumbnail/b$2;->b:Lcom/oplus/camera/sticker/download/thumbnail/b;

    invoke-static {v0}, Lcom/oplus/camera/sticker/download/thumbnail/b;->c(Lcom/oplus/camera/sticker/download/thumbnail/b;)Lcom/oplus/camera/sticker/download/thumbnail/b$a;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/sticker/download/thumbnail/b$2;->b:Lcom/oplus/camera/sticker/download/thumbnail/b;

    invoke-static {v1}, Lcom/oplus/camera/sticker/download/thumbnail/b;->a(Lcom/oplus/camera/sticker/download/thumbnail/b;)Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/oplus/camera/sticker/download/thumbnail/b$2;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v3, p0}, Lcom/oplus/camera/sticker/download/thumbnail/b$a;->b(Landroid/content/Context;ZLjava/lang/String;)V

    const-string p0, "ThumbnailDownloadThread"

    const-string v0, "onSuccess, second download success!"

    .line 103
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .line 108
    iget-object v0, p0, Lcom/oplus/camera/sticker/download/thumbnail/b$2;->b:Lcom/oplus/camera/sticker/download/thumbnail/b;

    invoke-static {v0}, Lcom/oplus/camera/sticker/download/thumbnail/b;->b(Lcom/oplus/camera/sticker/download/thumbnail/b;)Lcom/oplus/camera/sticker/download/thumbnail/a;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/sticker/download/thumbnail/b$2;->b:Lcom/oplus/camera/sticker/download/thumbnail/b;

    invoke-static {v1}, Lcom/oplus/camera/sticker/download/thumbnail/b;->a(Lcom/oplus/camera/sticker/download/thumbnail/b;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/sticker/download/thumbnail/b$2;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lcom/oplus/camera/sticker/download/thumbnail/a;->onSecondDownloadFinish(Landroid/content/Context;ZLjava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/oplus/camera/sticker/download/thumbnail/b$2;->b:Lcom/oplus/camera/sticker/download/thumbnail/b;

    invoke-static {v0}, Lcom/oplus/camera/sticker/download/thumbnail/b;->c(Lcom/oplus/camera/sticker/download/thumbnail/b;)Lcom/oplus/camera/sticker/download/thumbnail/b$a;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/sticker/download/thumbnail/b$2;->b:Lcom/oplus/camera/sticker/download/thumbnail/b;

    invoke-static {v1}, Lcom/oplus/camera/sticker/download/thumbnail/b;->a(Lcom/oplus/camera/sticker/download/thumbnail/b;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/sticker/download/thumbnail/b$2;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v3, v2}, Lcom/oplus/camera/sticker/download/thumbnail/b$a;->b(Landroid/content/Context;ZLjava/lang/String;)V

    .line 112
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/oplus/camera/sticker/download/thumbnail/b$2;->a:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-static {v0}, Lcom/oplus/camera/sticker/c/b;->a(Ljava/io/File;)Z

    move-result p0

    const-string v0, "ThumbnailDownloadThread"

    if-eqz p0, :cond_0

    const-string p0, "second download fail! delete exist file fail!"

    .line 115
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFail, second download fail! errorMsg: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
