.class Lcom/oplus/camera/CameraManager$45;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Lcom/oplus/camera/o$c;


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

    .line 1054
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$45;->a:Lcom/oplus/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;)V
    .locals 2

    const-string p1, "CameraManager"

    const-string v0, "old gesture open Hand"

    .line 1057
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$45;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w/b;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/CameraManager$45$1;

    invoke-direct {v1, p0}, Lcom/oplus/camera/CameraManager$45$1;-><init>(Lcom/oplus/camera/CameraManager$45;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/w/b;->a(Ljava/lang/Runnable;)V

    const-string p0, "old gesture open Hand X"

    .line 1094
    invoke-static {p1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
