.class Lcom/oplus/camera/ui/preview/a/ac$1;
.super Ljava/lang/Object;
.source "VideoBlurTexturePreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/a/ac;->a(Lcom/oplus/camera/ui/preview/a/aa;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/a/aa;

.field final synthetic b:Lcom/oplus/camera/ui/preview/a/ac;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/a/ac;Lcom/oplus/camera/ui/preview/a/aa;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/ac$1;->b:Lcom/oplus/camera/ui/preview/a/ac;

    iput-object p2, p0, Lcom/oplus/camera/ui/preview/a/ac$1;->a:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ac$1;->b:Lcom/oplus/camera/ui/preview/a/ac;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/ac;->a(Lcom/oplus/camera/ui/preview/a/ac;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 175
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/ac$1;->b:Lcom/oplus/camera/ui/preview/a/ac;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/ac$1;->a:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-static {v1, p0}, Lcom/oplus/camera/ui/preview/a/ac;->a(Lcom/oplus/camera/ui/preview/a/ac;Lcom/oplus/camera/ui/preview/a/aa;)Lcom/oplus/camera/ui/preview/a/aa;

    const-string p0, "VideoBlurTexturePreview"

    const-string v1, "createEngine X"

    .line 177
    invoke-static {p0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
