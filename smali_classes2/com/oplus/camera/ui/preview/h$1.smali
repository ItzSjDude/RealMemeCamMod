.class Lcom/oplus/camera/ui/preview/h$1;
.super Ljava/lang/Object;
.source "CameraScreenNail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/h;->q()V
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

    .line 200
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/h$1;->a:Lcom/oplus/camera/ui/preview/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/h$1;->a:Lcom/oplus/camera/ui/preview/h;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/h;->a(Lcom/oplus/camera/ui/preview/h;)Lcom/oplus/camera/gl/p;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/h$1;->a:Lcom/oplus/camera/ui/preview/h;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/h;->b(Lcom/oplus/camera/ui/preview/h;)Lcom/oplus/camera/gl/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/gl/p;->a()V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/h$1;->a:Lcom/oplus/camera/ui/preview/h;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/h;->c(Lcom/oplus/camera/ui/preview/h;)Lcom/oplus/camera/gl/w;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/h$1;->a:Lcom/oplus/camera/ui/preview/h;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/h;->d(Lcom/oplus/camera/ui/preview/h;)Lcom/oplus/camera/gl/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/gl/w;->b()V

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/h$1;->a:Lcom/oplus/camera/ui/preview/h;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/h;->e(Lcom/oplus/camera/ui/preview/h;)Lcom/oplus/camera/gl/a/b;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 212
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/h$1;->a:Lcom/oplus/camera/ui/preview/h;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/h;->e(Lcom/oplus/camera/ui/preview/h;)Lcom/oplus/camera/gl/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/gl/a/b;->c()V

    .line 213
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/h$1;->a:Lcom/oplus/camera/ui/preview/h;

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/preview/h;->a(Lcom/oplus/camera/ui/preview/h;Lcom/oplus/camera/gl/a/b;)Lcom/oplus/camera/gl/a/b;

    .line 216
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/h$1;->a:Lcom/oplus/camera/ui/preview/h;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/h;->f(Lcom/oplus/camera/ui/preview/h;)Lcom/oplus/camera/gl/a/a;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 217
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/h$1;->a:Lcom/oplus/camera/ui/preview/h;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/h;->f(Lcom/oplus/camera/ui/preview/h;)Lcom/oplus/camera/gl/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/gl/a/a;->b()V

    .line 218
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/h$1;->a:Lcom/oplus/camera/ui/preview/h;

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/preview/h;->a(Lcom/oplus/camera/ui/preview/h;Lcom/oplus/camera/gl/a/a;)Lcom/oplus/camera/gl/a/a;

    .line 221
    :cond_3
    monitor-enter p0

    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/h$1;->a:Lcom/oplus/camera/ui/preview/h;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/h;->g(Lcom/oplus/camera/ui/preview/h;)Lcom/oplus/camera/gl/b/f;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 223
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/h$1;->a:Lcom/oplus/camera/ui/preview/h;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/h;->h(Lcom/oplus/camera/ui/preview/h;)Lcom/oplus/camera/gl/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/gl/b/f;->b()V

    .line 224
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/h$1;->a:Lcom/oplus/camera/ui/preview/h;

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/preview/h;->a(Lcom/oplus/camera/ui/preview/h;Lcom/oplus/camera/gl/b/f;)Lcom/oplus/camera/gl/b/f;

    .line 226
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
