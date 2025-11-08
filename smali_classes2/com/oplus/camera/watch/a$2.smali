.class Lcom/oplus/camera/watch/a$2;
.super Ljava/lang/Object;
.source "WatchAgentCodec.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/watch/a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/watch/a;


# direct methods
.method constructor <init>(Lcom/oplus/camera/watch/a;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/oplus/camera/watch/a$2;->a:Lcom/oplus/camera/watch/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/watch/a$2;->a:Lcom/oplus/camera/watch/a;

    invoke-virtual {v0}, Lcom/oplus/camera/watch/a;->a()V

    .line 121
    iget-object p0, p0, Lcom/oplus/camera/watch/a$2;->a:Lcom/oplus/camera/watch/a;

    invoke-static {p0}, Lcom/oplus/camera/watch/a;->e(Lcom/oplus/camera/watch/a;)Landroid/media/MediaCodec;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaCodec;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 123
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
