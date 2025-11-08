.class Lcom/oplus/camera/ui/preview/a/q$1;
.super Ljava/lang/Object;
.source "ImageStickerTools.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/a/q;->a(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/oplus/camera/ui/preview/a/q;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/a/q;I)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/q$1;->b:Lcom/oplus/camera/ui/preview/a/q;

    iput p2, p0, Lcom/oplus/camera/ui/preview/a/q$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 158
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/q;->g()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/q$1;->b:Lcom/oplus/camera/ui/preview/a/q;

    iget p0, p0, Lcom/oplus/camera/ui/preview/a/q$1;->a:I

    invoke-static {v1, p0}, Lcom/oplus/camera/ui/preview/a/q;->a(Lcom/oplus/camera/ui/preview/a/q;I)V

    .line 160
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
