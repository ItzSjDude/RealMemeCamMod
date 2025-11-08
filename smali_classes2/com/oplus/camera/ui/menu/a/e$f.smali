.class Lcom/oplus/camera/ui/menu/a/e$f;
.super Lcom/a/a/e;
.source "ModePickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/menu/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/menu/a/e;


# direct methods
.method private constructor <init>(Lcom/oplus/camera/ui/menu/a/e;)V
    .locals 0

    .line 2409
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/a/e$f;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-direct {p0}, Lcom/a/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/ui/menu/a/e;Lcom/oplus/camera/ui/menu/a/e$1;)V
    .locals 0

    .line 2409
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/a/e$f;-><init>(Lcom/oplus/camera/ui/menu/a/e;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/f;)V
    .locals 4

    .line 2412
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e$f;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/a/e;->h(Lcom/oplus/camera/ui/menu/a/e;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2413
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/a/e$f;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-virtual {p1}, Lcom/a/a/f;->c()D

    move-result-wide v2

    double-to-float p1, v2

    invoke-static {v1, p1}, Lcom/oplus/camera/ui/menu/a/e;->d(Lcom/oplus/camera/ui/menu/a/e;F)F

    .line 2415
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/e$f;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/e;->invalidate()V

    .line 2416
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public b(Lcom/a/a/f;)V
    .locals 1

    const-string p1, "ModePickerView"

    const-string v0, "onSpringAtRest, mSlideAnim completed"

    .line 2421
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2423
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e$f;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/a/e;->i(Lcom/oplus/camera/ui/menu/a/e;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2424
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e$f;->a:Lcom/oplus/camera/ui/menu/a/e;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/menu/a/e;->c(Lcom/oplus/camera/ui/menu/a/e;Z)Z

    .line 2425
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/e$f;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-static {p0}, Lcom/oplus/camera/ui/menu/a/e;->b(Lcom/oplus/camera/ui/menu/a/e;)Landroid/text/TextPaint;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/camera/ui/menu/a/e;->a(Lcom/oplus/camera/ui/menu/a/e;Landroid/text/TextPaint;)V

    :cond_0
    return-void
.end method
