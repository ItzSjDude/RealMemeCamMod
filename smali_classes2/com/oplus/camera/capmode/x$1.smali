.class Lcom/oplus/camera/capmode/x$1;
.super Ljava/lang/Object;
.source "VideoRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/x;->a(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/StringBuilder;

.field final synthetic b:Lcom/oplus/camera/capmode/x;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/x;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 578
    iput-object p1, p0, Lcom/oplus/camera/capmode/x$1;->b:Lcom/oplus/camera/capmode/x;

    iput-object p2, p0, Lcom/oplus/camera/capmode/x$1;->a:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 581
    iget-object v0, p0, Lcom/oplus/camera/capmode/x$1;->b:Lcom/oplus/camera/capmode/x;

    invoke-static {v0}, Lcom/oplus/camera/capmode/x;->f(Lcom/oplus/camera/capmode/x;)Landroid/media/AudioManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 583
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/x$1;->b:Lcom/oplus/camera/capmode/x;

    invoke-static {v0}, Lcom/oplus/camera/capmode/x;->f(Lcom/oplus/camera/capmode/x;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/capmode/x$1;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 585
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 589
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAudioParameters, keyValuePairs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/capmode/x$1;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VideoRecorder"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
