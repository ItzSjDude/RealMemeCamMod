.class public Lcom/oplus/camera/sticker/download/thumbnail/b;
.super Ljava/lang/Object;
.source "ThumbnailDownloadThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/sticker/download/thumbnail/b$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/oplus/camera/sticker/download/thumbnail/a;

.field private c:Lcom/oplus/camera/sticker/download/thumbnail/b$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oplus/camera/sticker/download/thumbnail/a;Lcom/oplus/camera/sticker/download/thumbnail/b$a;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/oplus/camera/sticker/download/thumbnail/b;->a:Landroid/content/Context;

    .line 32
    iput-object v0, p0, Lcom/oplus/camera/sticker/download/thumbnail/b;->b:Lcom/oplus/camera/sticker/download/thumbnail/a;

    .line 33
    iput-object v0, p0, Lcom/oplus/camera/sticker/download/thumbnail/b;->c:Lcom/oplus/camera/sticker/download/thumbnail/b$a;

    .line 42
    iput-object p1, p0, Lcom/oplus/camera/sticker/download/thumbnail/b;->a:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/oplus/camera/sticker/download/thumbnail/b;->b:Lcom/oplus/camera/sticker/download/thumbnail/a;

    .line 44
    iput-object p3, p0, Lcom/oplus/camera/sticker/download/thumbnail/b;->c:Lcom/oplus/camera/sticker/download/thumbnail/b$a;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/sticker/download/thumbnail/b;)Landroid/content/Context;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/oplus/camera/sticker/download/thumbnail/b;->a:Landroid/content/Context;

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/camera/sticker/b/a$a;)V
    .locals 2

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download, destPath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThumbnailDownloadThread"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    new-instance v0, Lcom/oplus/camera/sticker/b/a;

    iget-object p0, p0, Lcom/oplus/camera/sticker/download/thumbnail/b;->a:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/oplus/camera/sticker/b/a;-><init>(Landroid/content/Context;)V

    .line 135
    sget-object p0, Lcom/oplus/camera/sticker/b/a$b;->POST:Lcom/oplus/camera/sticker/b/a$b;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1, v1}, Lcom/oplus/camera/sticker/b/a;->a(Lcom/oplus/camera/sticker/b/a$b;Ljava/lang/String;Ljava/util/Map;Lokhttp3/RequestBody;)Lokhttp3/Request;

    move-result-object p0

    .line 136
    invoke-virtual {v0, p0, p2, p3}, Lcom/oplus/camera/sticker/b/a;->a(Lokhttp3/Request;Ljava/lang/String;Lcom/oplus/camera/sticker/b/a$a;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 140
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v0, 0x0

    const-string v1, "ThumbnailDownloadThread"

    if-nez p0, :cond_0

    const-string p0, "checkMd5, file not exist!"

    .line 141
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 146
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "checkMd5, empty md5!"

    .line 147
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 152
    :cond_1
    invoke-static {p1, p2}, Lcom/oplus/camera/sticker/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/oplus/camera/sticker/download/thumbnail/b;)Lcom/oplus/camera/sticker/download/thumbnail/a;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/oplus/camera/sticker/download/thumbnail/b;->b:Lcom/oplus/camera/sticker/download/thumbnail/a;

    return-object p0
.end method

.method static synthetic c(Lcom/oplus/camera/sticker/download/thumbnail/b;)Lcom/oplus/camera/sticker/download/thumbnail/b$a;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/oplus/camera/sticker/download/thumbnail/b;->c:Lcom/oplus/camera/sticker/download/thumbnail/b$a;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 49
    iget-object v0, p0, Lcom/oplus/camera/sticker/download/thumbnail/b;->b:Lcom/oplus/camera/sticker/download/thumbnail/a;

    invoke-interface {v0}, Lcom/oplus/camera/sticker/download/thumbnail/a;->getFirstDownloadUrl()Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "run, md5 is verified!, do not need download anymore!"

    const-string v3, "ThumbnailDownloadThread"

    if-nez v1, :cond_1

    .line 52
    iget-object v1, p0, Lcom/oplus/camera/sticker/download/thumbnail/b;->b:Lcom/oplus/camera/sticker/download/thumbnail/a;

    iget-object v4, p0, Lcom/oplus/camera/sticker/download/thumbnail/b;->a:Landroid/content/Context;

    invoke-interface {v1, v4, v0}, Lcom/oplus/camera/sticker/download/thumbnail/a;->getDownloadFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    iget-object v4, p0, Lcom/oplus/camera/sticker/download/thumbnail/b;->b:Lcom/oplus/camera/sticker/download/thumbnail/a;

    invoke-interface {v4}, Lcom/oplus/camera/sticker/download/thumbnail/a;->getFirstDownloadFileMd5()Ljava/lang/String;

    move-result-object v4

    .line 55
    invoke-direct {p0, v1, v4}, Lcom/oplus/camera/sticker/download/thumbnail/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 56
    new-instance v4, Lcom/oplus/camera/sticker/download/thumbnail/b$1;

    invoke-direct {v4, p0, v1}, Lcom/oplus/camera/sticker/download/thumbnail/b$1;-><init>(Lcom/oplus/camera/sticker/download/thumbnail/b;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v4}, Lcom/oplus/camera/sticker/download/thumbnail/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/camera/sticker/b/a$a;)V

    goto :goto_0

    .line 83
    :cond_0
    invoke-static {v3, v2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "firstDownloadUrl is empty!"

    .line 87
    invoke-static {v3, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/sticker/download/thumbnail/b;->b:Lcom/oplus/camera/sticker/download/thumbnail/a;

    invoke-interface {v0}, Lcom/oplus/camera/sticker/download/thumbnail/a;->getSecondDownloadUrl()Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 93
    iget-object v1, p0, Lcom/oplus/camera/sticker/download/thumbnail/b;->b:Lcom/oplus/camera/sticker/download/thumbnail/a;

    iget-object v4, p0, Lcom/oplus/camera/sticker/download/thumbnail/b;->a:Landroid/content/Context;

    invoke-interface {v1, v4, v0}, Lcom/oplus/camera/sticker/download/thumbnail/a;->getDownloadFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    iget-object v4, p0, Lcom/oplus/camera/sticker/download/thumbnail/b;->b:Lcom/oplus/camera/sticker/download/thumbnail/a;

    invoke-interface {v4}, Lcom/oplus/camera/sticker/download/thumbnail/a;->getSecondDownloadFileMd5()Ljava/lang/String;

    move-result-object v4

    .line 96
    invoke-direct {p0, v1, v4}, Lcom/oplus/camera/sticker/download/thumbnail/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 97
    new-instance v2, Lcom/oplus/camera/sticker/download/thumbnail/b$2;

    invoke-direct {v2, p0, v1}, Lcom/oplus/camera/sticker/download/thumbnail/b$2;-><init>(Lcom/oplus/camera/sticker/download/thumbnail/b;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/oplus/camera/sticker/download/thumbnail/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/camera/sticker/b/a$a;)V

    goto :goto_1

    .line 123
    :cond_2
    invoke-static {v3, v2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string p0, "secondDownloadUrl is empty!"

    .line 127
    invoke-static {v3, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
