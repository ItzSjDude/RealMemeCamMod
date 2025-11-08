.class Lcom/oplus/camera/CameraManager$12;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Lcom/oplus/camera/a/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/CameraManager;


# direct methods
.method constructor <init>(Lcom/oplus/camera/CameraManager;)V
    .locals 0

    .line 971
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$12;->a:Lcom/oplus/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Lcom/oplus/camera/ui/control/e;ZIZZJ)V
    .locals 12

    move-object v1, p0

    .line 984
    iget-object v0, v1, Lcom/oplus/camera/CameraManager$12;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 988
    :cond_0
    iget-object v0, v1, Lcom/oplus/camera/CameraManager$12;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v10

    new-instance v11, Lcom/oplus/camera/CameraManager$12$1;

    move-object v0, v11

    move-object v1, p0

    move v2, p3

    move-object v3, p1

    move/from16 v4, p5

    move-object v5, p2

    move/from16 v6, p4

    move-wide/from16 v7, p7

    move/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/oplus/camera/CameraManager$12$1;-><init>(Lcom/oplus/camera/CameraManager$12;ZLandroid/graphics/Bitmap;ZLcom/oplus/camera/ui/control/e;IJZ)V

    invoke-virtual {v10, v11}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
