.class Lcom/oplus/camera/r/g$2;
.super Ljava/lang/Object;
.source "SlowVideoMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/r/g;->onAfterStartPreview(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/r/g;


# direct methods
.method constructor <init>(Lcom/oplus/camera/r/g;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/oplus/camera/r/g$2;->a:Lcom/oplus/camera/r/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 386
    iget-object v0, p0, Lcom/oplus/camera/r/g$2;->a:Lcom/oplus/camera/r/g;

    invoke-static {v0}, Lcom/oplus/camera/r/g;->c(Lcom/oplus/camera/r/g;)V

    .line 387
    iget-object v0, p0, Lcom/oplus/camera/r/g$2;->a:Lcom/oplus/camera/r/g;

    invoke-static {v0}, Lcom/oplus/camera/r/g;->d(Lcom/oplus/camera/r/g;)V

    .line 388
    iget-object v0, p0, Lcom/oplus/camera/r/g$2;->a:Lcom/oplus/camera/r/g;

    invoke-static {v0}, Lcom/oplus/camera/r/g;->e(Lcom/oplus/camera/r/g;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/oplus/camera/r/g;->a(Lcom/oplus/camera/r/g;ZZZ)V

    .line 390
    iget-object v0, p0, Lcom/oplus/camera/r/g$2;->a:Lcom/oplus/camera/r/g;

    const-string v1, "pref_intelligent_high_frame_selected_key"

    invoke-virtual {v0, v1}, Lcom/oplus/camera/r/g;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/r/g$2;->a:Lcom/oplus/camera/r/g;

    const-string v3, "key_intelligent_high_frame_usage_key"

    .line 391
    invoke-virtual {v0, v3}, Lcom/oplus/camera/r/g;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/r/g$2;->a:Lcom/oplus/camera/r/g;

    .line 392
    invoke-static {v0}, Lcom/oplus/camera/r/g;->g(Lcom/oplus/camera/r/g;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v3, p0, Lcom/oplus/camera/r/g$2;->a:Lcom/oplus/camera/r/g;

    .line 393
    invoke-static {v3}, Lcom/oplus/camera/r/g;->f(Lcom/oplus/camera/r/g;)Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f100208

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 392
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/oplus/camera/r/g$2;->a:Lcom/oplus/camera/r/g;

    invoke-static {v0, v2}, Lcom/oplus/camera/r/g;->a(Lcom/oplus/camera/r/g;I)V

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/r/g$2;->a:Lcom/oplus/camera/r/g;

    invoke-static {v0}, Lcom/oplus/camera/r/g;->h(Lcom/oplus/camera/r/g;)Lcom/oplus/camera/capmode/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 398
    iget-object p0, p0, Lcom/oplus/camera/r/g$2;->a:Lcom/oplus/camera/r/g;

    invoke-static {p0}, Lcom/oplus/camera/r/g;->i(Lcom/oplus/camera/r/g;)Lcom/oplus/camera/capmode/a;

    move-result-object p0

    invoke-interface {p0, v2}, Lcom/oplus/camera/capmode/a;->i(Z)V

    :cond_1
    return-void
.end method
