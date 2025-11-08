.class public Lcom/oplus/camera/o/a;
.super Ljava/lang/Object;
.source "QrCodeRequest.java"


# instance fields
.field private a:[B

.field private b:Landroid/graphics/Rect;

.field private c:Landroid/util/Size;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>([BLandroid/graphics/Rect;Landroid/util/Size;II)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/oplus/camera/o/a;->a:[B

    .line 8
    iput-object v0, p0, Lcom/oplus/camera/o/a;->b:Landroid/graphics/Rect;

    .line 9
    iput-object v0, p0, Lcom/oplus/camera/o/a;->c:Landroid/util/Size;

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/oplus/camera/o/a;->d:I

    .line 11
    iput v0, p0, Lcom/oplus/camera/o/a;->e:I

    .line 14
    iput-object p1, p0, Lcom/oplus/camera/o/a;->a:[B

    .line 15
    iput-object p2, p0, Lcom/oplus/camera/o/a;->b:Landroid/graphics/Rect;

    .line 16
    iput-object p3, p0, Lcom/oplus/camera/o/a;->c:Landroid/util/Size;

    .line 17
    iput p4, p0, Lcom/oplus/camera/o/a;->d:I

    .line 18
    iput p5, p0, Lcom/oplus/camera/o/a;->e:I

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/oplus/camera/o/a;->a:[B

    return-object p0
.end method

.method public b()I
    .locals 0

    .line 34
    iget p0, p0, Lcom/oplus/camera/o/a;->d:I

    return p0
.end method

.method public c()I
    .locals 0

    .line 38
    iget p0, p0, Lcom/oplus/camera/o/a;->e:I

    return p0
.end method
