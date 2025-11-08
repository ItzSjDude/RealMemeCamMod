.class Lcom/oplus/camera/professional/o$1;
.super Ljava/lang/Object;
.source "NightProMenuManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/o;->a(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/oplus/camera/professional/o;


# direct methods
.method constructor <init>(Lcom/oplus/camera/professional/o;Z)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/oplus/camera/professional/o$1;->b:Lcom/oplus/camera/professional/o;

    iput-boolean p2, p0, Lcom/oplus/camera/professional/o$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBeforeSnapping isInNightProProcess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/professional/o$1;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NightProMenuManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-boolean v0, p0, Lcom/oplus/camera/professional/o$1;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/professional/o$1;->b:Lcom/oplus/camera/professional/o;

    iget-object v0, v0, Lcom/oplus/camera/professional/o;->h:Lcom/oplus/camera/professional/r$b;

    invoke-interface {v0}, Lcom/oplus/camera/professional/r$b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/oplus/camera/professional/o$1;->b:Lcom/oplus/camera/professional/o;

    iget-object v0, v0, Lcom/oplus/camera/professional/o;->j:Lcom/oplus/camera/professional/r$a;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const-wide/16 v3, 0x12c

    invoke-static {v0, v1, v2, v3, v4}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    .line 119
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/professional/o$1;->b:Lcom/oplus/camera/professional/o;

    iget-object p0, p0, Lcom/oplus/camera/professional/o;->j:Lcom/oplus/camera/professional/r$a;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/r$a;->setTouchState(Z)V

    return-void
.end method
