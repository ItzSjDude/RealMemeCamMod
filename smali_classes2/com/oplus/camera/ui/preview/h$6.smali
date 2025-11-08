.class Lcom/oplus/camera/ui/preview/h$6;
.super Ljava/lang/Object;
.source "CameraScreenNail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/h;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/h;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/h;)V
    .locals 0

    .line 866
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/h$6;->a:Lcom/oplus/camera/ui/preview/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 869
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/h$6;->a:Lcom/oplus/camera/ui/preview/h;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/h;->m(Lcom/oplus/camera/ui/preview/h;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 870
    :try_start_0
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/h$6;->a:Lcom/oplus/camera/ui/preview/h;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/h;->n(Lcom/oplus/camera/ui/preview/h;)Lcom/oplus/camera/ui/preview/h$c;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ui/preview/h$c;->Z()V

    .line 871
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
