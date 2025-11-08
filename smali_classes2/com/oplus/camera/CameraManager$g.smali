.class public Lcom/oplus/camera/CameraManager$g;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Landroid/graphics/Bitmap;

.field final synthetic e:Lcom/oplus/camera/CameraManager;


# direct methods
.method public constructor <init>(Lcom/oplus/camera/CameraManager;)V
    .locals 0

    .line 9404
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$g;->e:Lcom/oplus/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 9405
    iput-boolean p1, p0, Lcom/oplus/camera/CameraManager$g;->a:Z

    .line 9406
    iput-boolean p1, p0, Lcom/oplus/camera/CameraManager$g;->b:Z

    .line 9407
    iput-boolean p1, p0, Lcom/oplus/camera/CameraManager$g;->c:Z

    const/4 p1, 0x0

    .line 9408
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$g;->d:Landroid/graphics/Bitmap;

    return-void
.end method
