.class Lcom/oplus/camera/m$3;
.super Ljava/lang/Object;
.source "FrontCameraZoomManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/m;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/oplus/camera/m;


# direct methods
.method constructor <init>(Lcom/oplus/camera/m;Z)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/oplus/camera/m$3;->b:Lcom/oplus/camera/m;

    iput-boolean p2, p0, Lcom/oplus/camera/m$3;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 184
    iget-object v0, p0, Lcom/oplus/camera/m$3;->b:Lcom/oplus/camera/m;

    monitor-enter v0

    .line 185
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/m$3;->b:Lcom/oplus/camera/m;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/oplus/camera/m;->a(Lcom/oplus/camera/m;I)I

    .line 186
    iget-object v1, p0, Lcom/oplus/camera/m$3;->b:Lcom/oplus/camera/m;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/oplus/camera/m;->a(Lcom/oplus/camera/m;Z)Z

    .line 187
    iget-object v1, p0, Lcom/oplus/camera/m$3;->b:Lcom/oplus/camera/m;

    invoke-static {v1}, Lcom/oplus/camera/m;->e(Lcom/oplus/camera/m;)F

    move-result v1

    .line 189
    iget-boolean v3, p0, Lcom/oplus/camera/m$3;->a:Z

    if-eqz v3, :cond_0

    .line 190
    iget-object v3, p0, Lcom/oplus/camera/m$3;->b:Lcom/oplus/camera/m;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Lcom/oplus/camera/m;->a(Lcom/oplus/camera/m;F)F

    goto :goto_0

    .line 192
    :cond_0
    iget-object v3, p0, Lcom/oplus/camera/m$3;->b:Lcom/oplus/camera/m;

    const v4, 0x3f95c28f    # 1.17f

    invoke-static {v3, v4}, Lcom/oplus/camera/m;->a(Lcom/oplus/camera/m;F)F

    .line 195
    :goto_0
    iget-object v3, p0, Lcom/oplus/camera/m$3;->b:Lcom/oplus/camera/m;

    invoke-static {v3, v2}, Lcom/oplus/camera/m;->b(Lcom/oplus/camera/m;I)V

    .line 197
    iget-object v2, p0, Lcom/oplus/camera/m$3;->b:Lcom/oplus/camera/m;

    invoke-static {v2}, Lcom/oplus/camera/m;->e(Lcom/oplus/camera/m;)F

    move-result v2

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_1

    .line 198
    iget-object p0, p0, Lcom/oplus/camera/m$3;->b:Lcom/oplus/camera/m;

    invoke-static {p0, v1}, Lcom/oplus/camera/m;->b(Lcom/oplus/camera/m;F)V

    .line 200
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
