.class Lcom/oplus/camera/CameraManager$49$4;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/CameraManager$49;->aZ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/CameraManager$49;


# direct methods
.method constructor <init>(Lcom/oplus/camera/CameraManager$49;)V
    .locals 0

    .line 15975
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$49$4;->a:Lcom/oplus/camera/CameraManager$49;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 15978
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49$4;->a:Lcom/oplus/camera/CameraManager$49;

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->aR(Lcom/oplus/camera/CameraManager;)V

    return-void
.end method
