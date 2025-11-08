.class Lcom/oplus/camera/n$1;
.super Ljava/lang/Object;
.source "GalleryPreCodeClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/n;


# direct methods
.method constructor <init>(Lcom/oplus/camera/n;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/oplus/camera/n$1;->a:Lcom/oplus/camera/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "GalleryPreCodeClient"

    const-string v0, "onServiceConnected"

    .line 45
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object p0, p0, Lcom/oplus/camera/n$1;->a:Lcom/oplus/camera/n;

    invoke-static {p2}, Lcom/oplus/gallery/predecode/IPreDecode$Stub;->a(Landroid/os/IBinder;)Lcom/oplus/gallery/predecode/IPreDecode;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/camera/n;->a(Lcom/oplus/camera/n;Lcom/oplus/gallery/predecode/IPreDecode;)Lcom/oplus/gallery/predecode/IPreDecode;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "GalleryPreCodeClient"

    const-string v0, "onServiceDisconnected"

    .line 52
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    monitor-enter p0

    .line 55
    :try_start_0
    iget-object p1, p0, Lcom/oplus/camera/n$1;->a:Lcom/oplus/camera/n;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oplus/camera/n;->a(Lcom/oplus/camera/n;Lcom/oplus/gallery/predecode/IPreDecode;)Lcom/oplus/gallery/predecode/IPreDecode;

    .line 56
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
