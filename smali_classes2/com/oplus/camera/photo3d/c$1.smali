.class Lcom/oplus/camera/photo3d/c$1;
.super Ljava/lang/Object;
.source "ThreeDPhotoMode.java"

# interfaces
.implements Lcom/oplus/camera/photo3d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/photo3d/c;->onInitCameraMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/photo3d/c;


# direct methods
.method constructor <init>(Lcom/oplus/camera/photo3d/c;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/oplus/camera/photo3d/c$1;->a:Lcom/oplus/camera/photo3d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 8

    .line 58
    iget-object v0, p0, Lcom/oplus/camera/photo3d/c$1;->a:Lcom/oplus/camera/photo3d/c;

    invoke-static {v0}, Lcom/oplus/camera/photo3d/c;->a(Lcom/oplus/camera/photo3d/c;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/oplus/camera/photo3d/c$1;->a:Lcom/oplus/camera/photo3d/c;

    invoke-static {v0}, Lcom/oplus/camera/photo3d/c;->b(Lcom/oplus/camera/photo3d/c;)Lcom/oplus/camera/photo3d/ui/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/photo3d/ui/g;->c()V

    .line 60
    iget-object v1, p0, Lcom/oplus/camera/photo3d/c$1;->a:Lcom/oplus/camera/photo3d/c;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/oplus/camera/photo3d/c;->getImageFormat()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/oplus/camera/photo3d/c;->onPictureCallback([BIIIZI)V

    .line 61
    iget-object p0, p0, Lcom/oplus/camera/photo3d/c$1;->a:Lcom/oplus/camera/photo3d/c;

    invoke-static {p0}, Lcom/oplus/camera/photo3d/c;->a(Lcom/oplus/camera/photo3d/c;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 63
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onRecordingStop, identity: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ThreeDPhoto"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
