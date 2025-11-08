.class Lcom/oplus/camera/CameraManager$n$1;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/CameraManager$n;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/CameraManager$n;


# direct methods
.method constructor <init>(Lcom/oplus/camera/CameraManager$n;)V
    .locals 0

    .line 22254
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$n$1;->a:Lcom/oplus/camera/CameraManager$n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 22257
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$n$1;->a:Lcom/oplus/camera/CameraManager$n;

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$n;->f()V

    return-void
.end method
