.class Lcom/oplus/camera/CameraManager$1$4;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/CameraManager$1;->b(Lcom/oplus/camera/Storage$CameraPicture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/Storage$CameraPicture;

.field final synthetic b:I

.field final synthetic c:Lcom/oplus/camera/CameraManager$1;


# direct methods
.method constructor <init>(Lcom/oplus/camera/CameraManager$1;Lcom/oplus/camera/Storage$CameraPicture;I)V
    .locals 0

    .line 933
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$1$4;->c:Lcom/oplus/camera/CameraManager$1;

    iput-object p2, p0, Lcom/oplus/camera/CameraManager$1$4;->a:Lcom/oplus/camera/Storage$CameraPicture;

    iput p3, p0, Lcom/oplus/camera/CameraManager$1$4;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 936
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 938
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$1$4;->a:Lcom/oplus/camera/Storage$CameraPicture;

    iget v1, v1, Lcom/oplus/camera/Storage$CameraPicture;->o:I

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$1$4;->a:Lcom/oplus/camera/Storage$CameraPicture;

    iget v2, v2, Lcom/oplus/camera/Storage$CameraPicture;->p:I

    mul-int/2addr v1, v2

    const-string v2, "8000000"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 939
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$1$4;->a:Lcom/oplus/camera/Storage$CameraPicture;

    iget v1, v1, Lcom/oplus/camera/Storage$CameraPicture;->o:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$1$4;->a:Lcom/oplus/camera/Storage$CameraPicture;

    iget v2, v2, Lcom/oplus/camera/Storage$CameraPicture;->p:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 942
    :cond_0
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 943
    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 946
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$1$4;->a:Lcom/oplus/camera/Storage$CameraPicture;

    iget-object v1, v1, Lcom/oplus/camera/Storage$CameraPicture;->e:[B

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$1$4;->a:Lcom/oplus/camera/Storage$CameraPicture;

    iget-object v2, v2, Lcom/oplus/camera/Storage$CameraPicture;->e:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 948
    iget v1, p0, Lcom/oplus/camera/CameraManager$1$4;->b:I

    if-eqz v1, :cond_2

    .line 949
    invoke-static {v0, v1, v3}, Lcom/oplus/camera/util/Util;->a(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 952
    :cond_2
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$1$4;->c:Lcom/oplus/camera/CameraManager$1;

    iget-object v1, v1, Lcom/oplus/camera/CameraManager$1;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->r(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/watch/b$b;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$1$4;->a:Lcom/oplus/camera/Storage$CameraPicture;

    iget-boolean v1, v1, Lcom/oplus/camera/Storage$CameraPicture;->Y:Z

    if-eqz v1, :cond_3

    .line 953
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$1$4;->c:Lcom/oplus/camera/CameraManager$1;

    iget-object v1, v1, Lcom/oplus/camera/CameraManager$1;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->r(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/watch/b$b;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2, v0}, Lcom/oplus/camera/watch/b$b;->a(ILandroid/graphics/Bitmap;)V

    .line 956
    :cond_3
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$1$4;->c:Lcom/oplus/camera/CameraManager$1;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/CameraManager$1;->a(Landroid/graphics/Bitmap;)V

    .line 957
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$1$4;->c:Lcom/oplus/camera/CameraManager$1;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$1;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v0

    const-string v1, "off"

    invoke-interface {v0, v1}, Lcom/oplus/camera/e/d;->b(Ljava/lang/String;)V

    .line 958
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$1$4;->c:Lcom/oplus/camera/CameraManager$1;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$1;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    .line 960
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$1$4;->c:Lcom/oplus/camera/CameraManager$1;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$1;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w/b;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/CameraManager$1$4$1;

    invoke-direct {v1, p0}, Lcom/oplus/camera/CameraManager$1$4$1;-><init>(Lcom/oplus/camera/CameraManager$1$4;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/w/b;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
