.class public Lcom/oplus/camera/screen/out/a;
.super Ljava/lang/Object;
.source "Frame.java"


# instance fields
.field public a:I

.field public b:Landroid/hardware/HardwareBuffer;

.field public c:I

.field public d:I

.field public e:I

.field public f:Ljava/util/concurrent/locks/Lock;

.field public g:J


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/oplus/camera/screen/out/a;->a:I

    const/4 v1, 0x0

    .line 13
    iput-object v1, p0, Lcom/oplus/camera/screen/out/a;->b:Landroid/hardware/HardwareBuffer;

    .line 14
    iput v0, p0, Lcom/oplus/camera/screen/out/a;->c:I

    .line 15
    iput v0, p0, Lcom/oplus/camera/screen/out/a;->d:I

    const/16 v0, 0x10e

    .line 16
    iput v0, p0, Lcom/oplus/camera/screen/out/a;->e:I

    .line 17
    iput-object v1, p0, Lcom/oplus/camera/screen/out/a;->f:Ljava/util/concurrent/locks/Lock;

    const-wide/16 v0, 0x0

    .line 18
    iput-wide v0, p0, Lcom/oplus/camera/screen/out/a;->g:J

    .line 34
    iput p1, p0, Lcom/oplus/camera/screen/out/a;->a:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/oplus/camera/screen/out/a;->a:I

    const/4 v1, 0x0

    .line 13
    iput-object v1, p0, Lcom/oplus/camera/screen/out/a;->b:Landroid/hardware/HardwareBuffer;

    .line 14
    iput v0, p0, Lcom/oplus/camera/screen/out/a;->c:I

    .line 15
    iput v0, p0, Lcom/oplus/camera/screen/out/a;->d:I

    const/16 v0, 0x10e

    .line 16
    iput v0, p0, Lcom/oplus/camera/screen/out/a;->e:I

    .line 17
    iput-object v1, p0, Lcom/oplus/camera/screen/out/a;->f:Ljava/util/concurrent/locks/Lock;

    const-wide/16 v0, 0x0

    .line 18
    iput-wide v0, p0, Lcom/oplus/camera/screen/out/a;->g:J

    const/4 v0, 0x1

    .line 28
    iput v0, p0, Lcom/oplus/camera/screen/out/a;->a:I

    .line 29
    iput p1, p0, Lcom/oplus/camera/screen/out/a;->c:I

    .line 30
    iput p2, p0, Lcom/oplus/camera/screen/out/a;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/hardware/HardwareBuffer;Ljava/util/concurrent/locks/Lock;)V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/oplus/camera/screen/out/a;->a:I

    const/4 v1, 0x0

    .line 13
    iput-object v1, p0, Lcom/oplus/camera/screen/out/a;->b:Landroid/hardware/HardwareBuffer;

    .line 14
    iput v0, p0, Lcom/oplus/camera/screen/out/a;->c:I

    .line 15
    iput v0, p0, Lcom/oplus/camera/screen/out/a;->d:I

    const/16 v0, 0x10e

    .line 16
    iput v0, p0, Lcom/oplus/camera/screen/out/a;->e:I

    .line 17
    iput-object v1, p0, Lcom/oplus/camera/screen/out/a;->f:Ljava/util/concurrent/locks/Lock;

    const-wide/16 v0, 0x0

    .line 18
    iput-wide v0, p0, Lcom/oplus/camera/screen/out/a;->g:J

    .line 21
    iput-object p1, p0, Lcom/oplus/camera/screen/out/a;->b:Landroid/hardware/HardwareBuffer;

    .line 22
    iget-object p1, p0, Lcom/oplus/camera/screen/out/a;->b:Landroid/hardware/HardwareBuffer;

    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/screen/out/a;->c:I

    .line 23
    iget-object p1, p0, Lcom/oplus/camera/screen/out/a;->b:Landroid/hardware/HardwareBuffer;

    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/screen/out/a;->d:I

    .line 24
    iput-object p2, p0, Lcom/oplus/camera/screen/out/a;->f:Ljava/util/concurrent/locks/Lock;

    return-void
.end method
