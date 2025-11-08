.class Lcom/oplus/camera/capmode/y$2;
.super Lcom/oplus/camera/gl/t$b;
.source "XPanMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/y;->onStartCapturePreviewData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/y;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/y;)V
    .locals 0

    .line 637
    iput-object p1, p0, Lcom/oplus/camera/capmode/y$2;->a:Lcom/oplus/camera/capmode/y;

    invoke-direct {p0}, Lcom/oplus/camera/gl/t$b;-><init>()V

    return-void
.end method

.method private synthetic b(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 645
    iget-object p0, p0, Lcom/oplus/camera/capmode/y$2;->a:Lcom/oplus/camera/capmode/y;

    invoke-static {p0, p1}, Lcom/oplus/camera/capmode/y;->a(Lcom/oplus/camera/capmode/y;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic lambda$RNKW3bNtx9oRl6GTyvUB2s4ClEo(Lcom/oplus/camera/capmode/y$2;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/y$2;->b(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;Landroid/graphics/Bitmap;JJLandroid/hardware/camera2/CaptureResult;)V
    .locals 0

    .line 642
    invoke-static {}, Lcom/oplus/camera/capmode/y;->a()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onPreviewCaptured, timestamp: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, ", bitmap: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ", width: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", height: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 642
    invoke-static {p1, p3}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    iget-object p1, p0, Lcom/oplus/camera/capmode/y$2;->a:Lcom/oplus/camera/capmode/y;

    iget-object p1, p1, Lcom/oplus/camera/capmode/y;->mActivity:Landroid/app/Activity;

    new-instance p3, Lcom/oplus/camera/capmode/-$$Lambda$y$2$RNKW3bNtx9oRl6GTyvUB2s4ClEo;

    invoke-direct {p3, p0, p2}, Lcom/oplus/camera/capmode/-$$Lambda$y$2$RNKW3bNtx9oRl6GTyvUB2s4ClEo;-><init>(Lcom/oplus/camera/capmode/y$2;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, p3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
