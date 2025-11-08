.class Lcom/oplus/camera/ui/preview/a/ab$1;
.super Ljava/lang/Object;
.source "TiltShiftTexturePreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/a/ab;->a(Lcom/oplus/camera/ui/preview/a/aa;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/a/aa;

.field final synthetic b:Lcom/oplus/camera/ui/preview/a/ab;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/a/ab;Lcom/oplus/camera/ui/preview/a/aa;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/ab$1;->b:Lcom/oplus/camera/ui/preview/a/ab;

    iput-object p2, p0, Lcom/oplus/camera/ui/preview/a/ab$1;->a:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ab$1;->b:Lcom/oplus/camera/ui/preview/a/ab;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/ab;->a(Lcom/oplus/camera/ui/preview/a/ab;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 171
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/ab$1;->b:Lcom/oplus/camera/ui/preview/a/ab;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/a/ab;->b(Lcom/oplus/camera/ui/preview/a/ab;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/ab$1;->b:Lcom/oplus/camera/ui/preview/a/ab;

    new-instance v2, Lcom/oplus/camera/tiltshift/TiltShiftPreview;

    invoke-direct {v2}, Lcom/oplus/camera/tiltshift/TiltShiftPreview;-><init>()V

    invoke-static {v1, v2}, Lcom/oplus/camera/ui/preview/a/ab;->a(Lcom/oplus/camera/ui/preview/a/ab;Lcom/oplus/camera/tiltshift/TiltShiftPreview;)Lcom/oplus/camera/tiltshift/TiltShiftPreview;

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/ab$1;->b:Lcom/oplus/camera/ui/preview/a/ab;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/oplus/camera/ui/preview/a/ab;->a(Lcom/oplus/camera/ui/preview/a/ab;Z)Z

    .line 176
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/ab$1;->b:Lcom/oplus/camera/ui/preview/a/ab;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/ab$1;->a:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-static {v1, p0}, Lcom/oplus/camera/ui/preview/a/ab;->a(Lcom/oplus/camera/ui/preview/a/ab;Lcom/oplus/camera/ui/preview/a/aa;)Lcom/oplus/camera/ui/preview/a/aa;

    const-string p0, "TiltShiftTexturePreview"

    const-string v1, "createEngine X"

    .line 178
    invoke-static {p0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
