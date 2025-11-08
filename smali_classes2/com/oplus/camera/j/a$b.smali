.class Lcom/oplus/camera/j/a$b;
.super Ljava/lang/Object;
.source "CommonBottomGuide.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/j/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/os/Handler;

.field private c:Landroid/net/Uri;

.field private d:Landroid/widget/ImageView;

.field private e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/net/Uri;Landroid/widget/ImageView;Ljava/lang/Runnable;)V
    .locals 0

    .line 1552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1553
    iput-object p1, p0, Lcom/oplus/camera/j/a$b;->a:Landroid/content/Context;

    .line 1554
    iput-object p2, p0, Lcom/oplus/camera/j/a$b;->b:Landroid/os/Handler;

    .line 1555
    iput-object p3, p0, Lcom/oplus/camera/j/a$b;->c:Landroid/net/Uri;

    .line 1556
    iput-object p4, p0, Lcom/oplus/camera/j/a$b;->d:Landroid/widget/ImageView;

    .line 1557
    iput-object p5, p0, Lcom/oplus/camera/j/a$b;->e:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/j/a$b;)Landroid/widget/ImageView;
    .locals 0

    .line 1545
    iget-object p0, p0, Lcom/oplus/camera/j/a$b;->d:Landroid/widget/ImageView;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1562
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 1563
    iget-object v1, p0, Lcom/oplus/camera/j/a$b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/oplus/camera/j/a$b;->c:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const/4 v1, 0x2

    .line 1566
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->getFrameAtIndex(I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1568
    iget-object v2, p0, Lcom/oplus/camera/j/a$b;->b:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 1569
    new-instance v2, Lcom/oplus/camera/j/a$b$1;

    invoke-direct {v2, p0, v1}, Lcom/oplus/camera/j/a$b$1;-><init>(Lcom/oplus/camera/j/a$b;Landroid/graphics/Bitmap;)V

    .line 1579
    iget-object v1, p0, Lcom/oplus/camera/j/a$b;->b:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1580
    iget-object v1, p0, Lcom/oplus/camera/j/a$b;->b:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oplus/camera/j/a$b;->e:Ljava/lang/Runnable;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1588
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 1583
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1585
    invoke-static {}, Lcom/oplus/camera/j/a;->h()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LoadThumbTask error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 1588
    :goto_2
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->close()V

    .line 1591
    throw p0
.end method
