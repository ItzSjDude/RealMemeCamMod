.class Lcom/oplus/camera/util/n$1;
.super Landroid/util/LruCache;
.source "ThumbnailCacheUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/util/n;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/String;",
        "Lcom/oplus/camera/util/n$b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/util/n;


# direct methods
.method constructor <init>(Lcom/oplus/camera/util/n;I)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/oplus/camera/util/n$1;->a:Lcom/oplus/camera/util/n;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Lcom/oplus/camera/util/n$b;)I
    .locals 0

    .line 94
    invoke-virtual {p2}, Lcom/oplus/camera/util/n$b;->c()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p0

    return p0
.end method

.method protected a(ZLjava/lang/String;Lcom/oplus/camera/util/n$b;Lcom/oplus/camera/util/n$b;)V
    .locals 2

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "entryRemoved, remove the bitmap\'s key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThumbnailCacheUtil"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lcom/oplus/camera/util/n;->d()Landroid/util/LruCache;

    move-result-object v0

    monitor-enter v0

    if-eqz p3, :cond_1

    .line 103
    :try_start_0
    invoke-virtual {p3}, Lcom/oplus/camera/util/n$b;->c()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 104
    invoke-virtual {p3}, Lcom/oplus/camera/util/n$b;->c()Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 p3, 0x0

    .line 110
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 111
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 91
    check-cast p2, Ljava/lang/String;

    check-cast p3, Lcom/oplus/camera/util/n$b;

    check-cast p4, Lcom/oplus/camera/util/n$b;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oplus/camera/util/n$1;->a(ZLjava/lang/String;Lcom/oplus/camera/util/n$b;Lcom/oplus/camera/util/n$b;)V

    return-void
.end method

.method protected synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 91
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/oplus/camera/util/n$b;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/util/n$1;->a(Ljava/lang/String;Lcom/oplus/camera/util/n$b;)I

    move-result p0

    return p0
.end method
