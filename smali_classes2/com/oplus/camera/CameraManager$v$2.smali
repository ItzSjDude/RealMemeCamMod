.class Lcom/oplus/camera/CameraManager$v$2;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/CameraManager$v;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/CameraManager$v;


# direct methods
.method constructor <init>(Lcom/oplus/camera/CameraManager$v;)V
    .locals 0

    .line 9971
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$v$2;->a:Lcom/oplus/camera/CameraManager$v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 9974
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$v$2;->a:Lcom/oplus/camera/CameraManager$v;

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/CameraManager;->j(I)V

    return-void
.end method
