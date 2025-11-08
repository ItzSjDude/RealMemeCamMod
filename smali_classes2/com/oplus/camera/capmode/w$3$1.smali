.class Lcom/oplus/camera/capmode/w$3$1;
.super Ljava/lang/Object;
.source "VideoMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/w$3;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/w$3;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/w$3;)V
    .locals 0

    .line 455
    iput-object p1, p0, Lcom/oplus/camera/capmode/w$3$1;->a:Lcom/oplus/camera/capmode/w$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 458
    iget-object p0, p0, Lcom/oplus/camera/capmode/w$3$1;->a:Lcom/oplus/camera/capmode/w$3;

    iget-object p0, p0, Lcom/oplus/camera/capmode/w$3;->a:Lcom/oplus/camera/capmode/w;

    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->d(Z)V

    return-void
.end method
