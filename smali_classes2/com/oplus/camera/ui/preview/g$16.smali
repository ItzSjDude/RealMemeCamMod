.class Lcom/oplus/camera/ui/preview/g$16;
.super Ljava/lang/Object;
.source "CameraPreviewUI.java"

# interfaces
.implements Lcom/oplus/camera/ui/preview/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/g;->a(Landroid/util/Size;Landroid/util/Size;Lcom/oplus/camera/ui/preview/g$a;IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/g$a;

.field final synthetic b:Lcom/oplus/camera/ui/preview/g;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/g;Lcom/oplus/camera/ui/preview/g$a;)V
    .locals 0

    .line 2932
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/g$16;->b:Lcom/oplus/camera/ui/preview/g;

    iput-object p2, p0, Lcom/oplus/camera/ui/preview/g$16;->a:Lcom/oplus/camera/ui/preview/g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 2935
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$16;->b:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->j(Lcom/oplus/camera/ui/preview/g;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2936
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g$16;->b:Lcom/oplus/camera/ui/preview/g;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/oplus/camera/ui/preview/g;->c(Lcom/oplus/camera/ui/preview/g;Z)Z

    .line 2937
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2939
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$16;->b:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->ad(Lcom/oplus/camera/ui/preview/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2943
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g$16;->a:Lcom/oplus/camera/ui/preview/g$a;

    if-eqz p0, :cond_1

    .line 2944
    invoke-interface {p0}, Lcom/oplus/camera/ui/preview/g$a;->a()V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 2937
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
