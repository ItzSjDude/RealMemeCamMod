.class Lcom/oplus/camera/Camera$21;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/Camera;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/Camera;


# direct methods
.method constructor <init>(Lcom/oplus/camera/Camera;)V
    .locals 0

    .line 736
    iput-object p1, p0, Lcom/oplus/camera/Camera$21;->a:Lcom/oplus/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 739
    iget-object p0, p0, Lcom/oplus/camera/Camera$21;->a:Lcom/oplus/camera/Camera;

    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->m()V

    return-void
.end method
