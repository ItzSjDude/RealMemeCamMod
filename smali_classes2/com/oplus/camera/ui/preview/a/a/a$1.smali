.class Lcom/oplus/camera/ui/preview/a/a/a$1;
.super Ljava/lang/Object;
.source "DoubleExposureTexturePreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/preview/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/a/a/a;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/a/a/a;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/a/a$1;->a:Lcom/oplus/camera/ui/preview/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 94
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a$1;->a:Lcom/oplus/camera/ui/preview/a/a/a;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/a/a;->a(Lcom/oplus/camera/ui/preview/a/a/a;)Lcom/oplus/camera/doubleexposure/d;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a$1;->a:Lcom/oplus/camera/ui/preview/a/a/a;

    new-instance v2, Lcom/oplus/camera/doubleexposure/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/a/a;->b(Lcom/oplus/camera/ui/preview/a/a/a;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/oplus/camera/doubleexposure/d;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v2}, Lcom/oplus/camera/ui/preview/a/a/a;->a(Lcom/oplus/camera/ui/preview/a/a/a;Lcom/oplus/camera/doubleexposure/d;)Lcom/oplus/camera/doubleexposure/d;

    .line 96
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a$1;->a:Lcom/oplus/camera/ui/preview/a/a/a;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/a/a;->a(Lcom/oplus/camera/ui/preview/a/a/a;)Lcom/oplus/camera/doubleexposure/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/doubleexposure/d;->a()I

    move-result v0

    .line 97
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/a/a$1;->a:Lcom/oplus/camera/ui/preview/a/a/a;

    invoke-static {v2}, Lcom/oplus/camera/ui/preview/a/a/a;->a(Lcom/oplus/camera/ui/preview/a/a/a;)Lcom/oplus/camera/doubleexposure/d;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/camera/ui/preview/a/a/a$1;->a:Lcom/oplus/camera/ui/preview/a/a/a;

    invoke-static {v3}, Lcom/oplus/camera/ui/preview/a/a/a;->c(Lcom/oplus/camera/ui/preview/a/a/a;)Lcom/oplus/camera/ui/preview/a/aa;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/ui/preview/a/aa;->J()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/oplus/camera/doubleexposure/d;->a(I)V

    .line 98
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/a/a$1;->a:Lcom/oplus/camera/ui/preview/a/a/a;

    invoke-static {v2, v1}, Lcom/oplus/camera/ui/preview/a/a/a;->a(Lcom/oplus/camera/ui/preview/a/a/a;Z)Z

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "process, initResult: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DoubleExposureTexturePreview"

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a$1;->a:Lcom/oplus/camera/ui/preview/a/a/a;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/a/a;->d(Lcom/oplus/camera/ui/preview/a/a/a;)Lcom/oplus/camera/ui/preview/a/a/c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a$1;->a:Lcom/oplus/camera/ui/preview/a/a/a;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/a/a;->e(Lcom/oplus/camera/ui/preview/a/a/a;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/a/a$1;->a:Lcom/oplus/camera/ui/preview/a/a/a;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/a/a;->f(Lcom/oplus/camera/ui/preview/a/a/a;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 108
    :try_start_0
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/a/a$1;->a:Lcom/oplus/camera/ui/preview/a/a/a;

    iget-object v3, p0, Lcom/oplus/camera/ui/preview/a/a/a$1;->a:Lcom/oplus/camera/ui/preview/a/a/a;

    invoke-static {v3}, Lcom/oplus/camera/ui/preview/a/a/a;->g(Lcom/oplus/camera/ui/preview/a/a/a;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/oplus/camera/ui/preview/a/a/a;->b(Lcom/oplus/camera/ui/preview/a/a/a;Z)Z

    .line 109
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/a/a$1;->a:Lcom/oplus/camera/ui/preview/a/a/a;

    invoke-static {p0, v1}, Lcom/oplus/camera/ui/preview/a/a/a;->c(Lcom/oplus/camera/ui/preview/a/a/a;Z)Z

    return-void

    :catchall_0
    move-exception p0

    .line 109
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
