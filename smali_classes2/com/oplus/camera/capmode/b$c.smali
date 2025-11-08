.class Lcom/oplus/camera/capmode/b$c;
.super Ljava/lang/Object;
.source "CameraMediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/capmode/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public c:Ljava/nio/ByteBuffer;

.field public d:Landroid/media/MediaCodec$BufferInfo;

.field final synthetic e:Lcom/oplus/camera/capmode/b;


# direct methods
.method public constructor <init>(Lcom/oplus/camera/capmode/b;ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)V
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/oplus/camera/capmode/b$c;->e:Lcom/oplus/camera/capmode/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 351
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/b$c;->a:Z

    const/4 p1, -0x1

    .line 352
    iput p1, p0, Lcom/oplus/camera/capmode/b$c;->b:I

    const/4 p1, 0x0

    .line 353
    iput-object p1, p0, Lcom/oplus/camera/capmode/b$c;->c:Ljava/nio/ByteBuffer;

    .line 354
    iput-object p1, p0, Lcom/oplus/camera/capmode/b$c;->d:Landroid/media/MediaCodec$BufferInfo;

    .line 357
    iput p2, p0, Lcom/oplus/camera/capmode/b$c;->b:I

    .line 358
    iput-object p3, p0, Lcom/oplus/camera/capmode/b$c;->c:Ljava/nio/ByteBuffer;

    .line 359
    iput-object p4, p0, Lcom/oplus/camera/capmode/b$c;->d:Landroid/media/MediaCodec$BufferInfo;

    .line 360
    iput-boolean p5, p0, Lcom/oplus/camera/capmode/b$c;->a:Z

    return-void
.end method
