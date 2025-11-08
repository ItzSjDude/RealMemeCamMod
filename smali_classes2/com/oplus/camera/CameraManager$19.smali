.class Lcom/oplus/camera/CameraManager$19;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/CameraManager;->b(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Lcom/oplus/camera/CameraManager;


# direct methods
.method constructor <init>(Lcom/oplus/camera/CameraManager;F)V
    .locals 0

    .line 3774
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$19;->b:Lcom/oplus/camera/CameraManager;

    iput p2, p0, Lcom/oplus/camera/CameraManager$19;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 3778
    :try_start_0
    iget p0, p0, Lcom/oplus/camera/CameraManager$19;->a:F

    invoke-static {p0}, Lcom/oplus/compat/hardware/a/a;->a(F)V
    :try_end_0
    .catch Lcom/oplus/compat/b/a/b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3780
    invoke-virtual {p0}, Lcom/oplus/compat/b/a/b;->printStackTrace()V

    :goto_0
    return-void
.end method
