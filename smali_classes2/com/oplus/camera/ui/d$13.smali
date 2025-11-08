.class Lcom/oplus/camera/ui/d$13;
.super Ljava/lang/Object;
.source "CameraUIManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/d;->eO()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/oplus/camera/ui/d;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/d;Z)V
    .locals 0

    .line 2149
    iput-object p1, p0, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    iput-boolean p2, p0, Lcom/oplus/camera/ui/d$13;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2152
    iget-boolean v0, p0, Lcom/oplus/camera/ui/d$13;->a:Z

    const/16 v1, 0x32

    if-nez v0, :cond_1

    .line 2153
    iget-object v0, p0, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->E(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/control/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    .line 2154
    invoke-static {v0}, Lcom/oplus/camera/ui/d;->E(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/control/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/a;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    .line 2155
    invoke-static {v0}, Lcom/oplus/camera/ui/d;->E(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/control/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/control/a;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2156
    iget-object v0, p0, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/d;->a(Lcom/oplus/camera/ui/d;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 2158
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->f(Lcom/oplus/camera/ui/d;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/oplus/c/a/f;->a(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/d;->a(Lcom/oplus/camera/ui/d;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 2161
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->f(Lcom/oplus/camera/ui/d;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/oplus/c/a/f;->b(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/d;->a(Lcom/oplus/camera/ui/d;Ljava/util/List;)Ljava/util/List;

    .line 2164
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->f(Lcom/oplus/camera/ui/d;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2165
    iget-object v0, p0, Lcom/oplus/camera/ui/d$13;->b:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->f(Lcom/oplus/camera/ui/d;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/ui/d$13$1;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/d$13$1;-><init>(Lcom/oplus/camera/ui/d$13;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method
