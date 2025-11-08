.class Lcom/oplus/camera/timelapsepro/h$4;
.super Lcom/oplus/camera/gl/t$b;
.source "TimeLapseProMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/timelapsepro/h;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/timelapsepro/h;


# direct methods
.method constructor <init>(Lcom/oplus/camera/timelapsepro/h;)V
    .locals 0

    .line 1343
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/h$4;->a:Lcom/oplus/camera/timelapsepro/h;

    invoke-direct {p0}, Lcom/oplus/camera/gl/t$b;-><init>()V

    return-void
.end method

.method private synthetic b(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1350
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h$4;->a:Lcom/oplus/camera/timelapsepro/h;

    invoke-static {v0}, Lcom/oplus/camera/timelapsepro/h;->t(Lcom/oplus/camera/timelapsepro/h;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1351
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h$4;->a:Lcom/oplus/camera/timelapsepro/h;

    invoke-static {v0}, Lcom/oplus/camera/timelapsepro/h;->u(Lcom/oplus/camera/timelapsepro/h;)V

    .line 1354
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h$4;->a:Lcom/oplus/camera/timelapsepro/h;

    invoke-static {v0}, Lcom/oplus/camera/timelapsepro/h;->v(Lcom/oplus/camera/timelapsepro/h;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1355
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h$4;->a:Lcom/oplus/camera/timelapsepro/h;

    invoke-static {p0}, Lcom/oplus/camera/timelapsepro/h;->v(Lcom/oplus/camera/timelapsepro/h;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$gkSzpIWQAVEgNRsjg9J8pdvKl94(Lcom/oplus/camera/timelapsepro/h$4;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/h$4;->b(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;Landroid/graphics/Bitmap;JJLandroid/hardware/camera2/CaptureResult;)V
    .locals 2

    .line 1346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreviewCaptured, which: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimeLapseProMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1348
    invoke-super/range {p0 .. p7}, Lcom/oplus/camera/gl/t$b;->a(Ljava/lang/Integer;Landroid/graphics/Bitmap;JJLandroid/hardware/camera2/CaptureResult;)V

    .line 1349
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h$4;->a:Lcom/oplus/camera/timelapsepro/h;

    new-instance p3, Lcom/oplus/camera/timelapsepro/-$$Lambda$h$4$gkSzpIWQAVEgNRsjg9J8pdvKl94;

    invoke-direct {p3, p0, p2}, Lcom/oplus/camera/timelapsepro/-$$Lambda$h$4$gkSzpIWQAVEgNRsjg9J8pdvKl94;-><init>(Lcom/oplus/camera/timelapsepro/h$4;Landroid/graphics/Bitmap;)V

    invoke-static {p1, p3}, Lcom/oplus/camera/timelapsepro/h;->a(Lcom/oplus/camera/timelapsepro/h;Ljava/lang/Runnable;)V

    return-void
.end method
