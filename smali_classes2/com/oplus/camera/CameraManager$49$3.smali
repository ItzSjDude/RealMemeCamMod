.class Lcom/oplus/camera/CameraManager$49$3;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/CameraManager$49;->b(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Lcom/oplus/camera/CameraManager$49;


# direct methods
.method constructor <init>(Lcom/oplus/camera/CameraManager$49;F)V
    .locals 0

    .line 15683
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$49$3;->b:Lcom/oplus/camera/CameraManager$49;

    iput p2, p0, Lcom/oplus/camera/CameraManager$49$3;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 15686
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49$3;->b:Lcom/oplus/camera/CameraManager$49;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    iget p0, p0, Lcom/oplus/camera/CameraManager$49$3;->a:F

    invoke-virtual {v0, p0}, Lcom/oplus/camera/CameraManager;->a(F)V

    return-void
.end method
