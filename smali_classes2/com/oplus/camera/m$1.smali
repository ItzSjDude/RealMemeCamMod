.class Lcom/oplus/camera/m$1;
.super Ljava/lang/Object;
.source "FrontCameraZoomManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/m;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/oplus/camera/m;


# direct methods
.method constructor <init>(Lcom/oplus/camera/m;I)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/oplus/camera/m$1;->b:Lcom/oplus/camera/m;

    iput p2, p0, Lcom/oplus/camera/m$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/oplus/camera/m$1;->b:Lcom/oplus/camera/m;

    monitor-enter v0

    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/m$1;->b:Lcom/oplus/camera/m;

    invoke-static {v1}, Lcom/oplus/camera/m;->a(Lcom/oplus/camera/m;)Lcom/oplus/camera/ag$a;

    move-result-object v1

    const-string v2, "pref_front_zoom_key"

    invoke-interface {v1, v2}, Lcom/oplus/camera/ag$a;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 93
    monitor-exit v0

    return-void

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/m$1;->b:Lcom/oplus/camera/m;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/oplus/camera/m;->a(Lcom/oplus/camera/m;I)I

    .line 98
    iget-object v1, p0, Lcom/oplus/camera/m$1;->b:Lcom/oplus/camera/m;

    invoke-static {v1}, Lcom/oplus/camera/m;->b(Lcom/oplus/camera/m;)I

    move-result v1

    iget v2, p0, Lcom/oplus/camera/m$1;->a:I

    if-eq v1, v2, :cond_1

    .line 99
    iget-object p0, p0, Lcom/oplus/camera/m$1;->b:Lcom/oplus/camera/m;

    invoke-static {p0}, Lcom/oplus/camera/m;->c(Lcom/oplus/camera/m;)V

    .line 101
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
