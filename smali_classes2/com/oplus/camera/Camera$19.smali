.class Lcom/oplus/camera/Camera$19;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/Camera;->onCreate(Landroid/os/Bundle;)V
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

    .line 486
    iput-object p1, p0, Lcom/oplus/camera/Camera$19;->a:Lcom/oplus/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/oplus/camera/Camera$19;->a:Lcom/oplus/camera/Camera;

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->d(Landroid/content/Context;)V

    .line 490
    iget-object p0, p0, Lcom/oplus/camera/Camera$19;->a:Lcom/oplus/camera/Camera;

    invoke-static {p0}, Lcom/oplus/camera/update/UpdateUtil;->getInstance(Landroid/content/Context;)Lcom/oplus/camera/update/UpdateUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/update/UpdateUtil;->startUpdateAllPara()V

    return-void
.end method
