.class public Lcom/oplus/camera/n;
.super Ljava/lang/Object;
.source "GalleryPreCodeClient.java"


# instance fields
.field private a:Z

.field private b:Lcom/oplus/gallery/predecode/IPreDecode;

.field private c:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/oplus/camera/n;->a:Z

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/oplus/camera/n;->b:Lcom/oplus/gallery/predecode/IPreDecode;

    .line 42
    new-instance v0, Lcom/oplus/camera/n$1;

    invoke-direct {v0, p0}, Lcom/oplus/camera/n$1;-><init>(Lcom/oplus/camera/n;)V

    iput-object v0, p0, Lcom/oplus/camera/n;->c:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/n;Lcom/oplus/gallery/predecode/IPreDecode;)Lcom/oplus/gallery/predecode/IPreDecode;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/oplus/camera/n;->b:Lcom/oplus/gallery/predecode/IPreDecode;

    return-object p1
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 4

    .line 65
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 66
    new-instance v1, Landroid/content/ComponentName;

    invoke-static {}, Lcom/oplus/camera/util/Util;->aP()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.oplus.gallery.picture_page.predecode.OplusPreTileDecodeService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/n;->c:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oplus/camera/n;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 72
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 75
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindPreDecodeService context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "mbBinded: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oplus/camera/n;->a:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", intent: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GalleryPreCodeClient"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;JZ)V
    .locals 6

    .line 95
    iget-object v0, p0, Lcom/oplus/camera/n;->b:Lcom/oplus/gallery/predecode/IPreDecode;

    if-nez v0, :cond_0

    const-string p0, "GalleryPreCodeClient"

    const-string p1, "call, null == preDecodeService"

    .line 96
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v0, p4, v0

    if-nez v0, :cond_1

    const-string p0, "GalleryPreCodeClient"

    const-string p1, "call, date == -1 not support pre encode!"

    .line 102
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez p2, :cond_2

    const-string p0, "GalleryPreCodeClient"

    const-string p1, "call, null == image_uri "

    .line 108
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    if-nez p1, :cond_3

    const-string p0, "GalleryPreCodeClient"

    const-string p1, "call, null == mContext "

    .line 114
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 119
    :cond_3
    invoke-static {p1}, Lcom/oplus/camera/util/Util;->g(Landroid/content/Context;)Landroid/app/ActivityManager$MemoryInfo;

    move-result-object v0

    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    const-wide/32 v2, 0x40000000

    cmp-long v0, v0, v2

    if-gtz v0, :cond_4

    .line 120
    invoke-static {p1}, Lcom/oplus/camera/util/Util;->k(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/32 v2, 0xfa00000

    cmp-long p1, v0, v2

    if-gtz p1, :cond_5

    const-string p0, "GalleryPreCodeClient"

    const-string p1, "call, AvailMemory < 250M, will cause lmk and kill com.oplus.gallery.provider.AlbumsProvider."

    .line 121
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 127
    :cond_4
    invoke-static {p1}, Lcom/oplus/camera/util/Util;->k(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/32 v2, 0x15e00000

    cmp-long p1, v0, v2

    if-gtz p1, :cond_5

    const-string p0, "GalleryPreCodeClient"

    const-string p1, "call, AvailMemory < 350M, will cause lmk and kill com.oplus.gallery.provider.AlbumsProvider."

    .line 128
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 135
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "call, image_uri: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", image_path: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", image_date: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GalleryPreCodeClient"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :try_start_1
    iget-object p1, p0, Lcom/oplus/camera/n;->b:Lcom/oplus/gallery/predecode/IPreDecode;

    if-eqz p1, :cond_6

    .line 140
    iget-object v0, p0, Lcom/oplus/camera/n;->b:Lcom/oplus/gallery/predecode/IPreDecode;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, p3

    move-wide v3, p4

    move v5, p6

    invoke-interface/range {v0 .. v5}, Lcom/oplus/gallery/predecode/IPreDecode;->a(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 142
    :cond_6
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 144
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unBindPreDecodeService context: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mbBinded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/n;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalleryPreCodeClient"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-boolean v0, p0, Lcom/oplus/camera/n;->a:Z

    if-eqz v0, :cond_0

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/n;->c:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 85
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    .line 88
    iput-boolean p1, p0, Lcom/oplus/camera/n;->a:Z

    :cond_0
    const/4 p1, 0x0

    .line 91
    iput-object p1, p0, Lcom/oplus/camera/n;->c:Landroid/content/ServiceConnection;

    return-void
.end method
