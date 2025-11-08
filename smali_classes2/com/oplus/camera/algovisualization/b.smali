.class public Lcom/oplus/camera/algovisualization/b;
.super Ljava/lang/Object;
.source "AlgoVisualAPSProcessor.java"


# instance fields
.field private a:Lcom/oplus/camera/e/d;

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/oplus/camera/e/d;ZZ)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/oplus/camera/algovisualization/b;->a:Lcom/oplus/camera/e/d;

    .line 18
    iput-boolean p2, p0, Lcom/oplus/camera/algovisualization/b;->b:Z

    .line 19
    iput-boolean p3, p0, Lcom/oplus/camera/algovisualization/b;->c:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/oplus/camera/algovisualization/b;->a:Lcom/oplus/camera/e/d;

    sget-object v1, Lcom/oplus/ocs/camera/CameraParameter;->ALGO_VISUALIZATION_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    iget-boolean p0, p0, Lcom/oplus/camera/algovisualization/b;->b:Z

    if-eqz p0, :cond_0

    const-string p0, "on"

    goto :goto_0

    :cond_0
    const-string p0, "off"

    :goto_0
    invoke-interface {v0, v1, p0}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/oplus/camera/algovisualization/b;->a:Lcom/oplus/camera/e/d;

    sget-object v1, Lcom/oplus/ocs/camera/CameraParameter;->PICTURE_VISUALIZATION_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    iget-boolean p0, p0, Lcom/oplus/camera/algovisualization/b;->c:Z

    if-eqz p0, :cond_0

    const-string p0, "on"

    goto :goto_0

    :cond_0
    const-string p0, "off"

    :goto_0
    invoke-interface {v0, v1, p0}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    return-void
.end method
