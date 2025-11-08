.class Lcom/oplus/camera/ui/preview/g$22;
.super Ljava/lang/Object;
.source "CameraPreviewUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/g;->ad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/g;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/g;)V
    .locals 0

    .line 3371
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/g$22;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 3374
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$22;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->ad(Lcom/oplus/camera/ui/preview/g;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3375
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$22;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/g;->F()V

    .line 3376
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g$22;->a:Lcom/oplus/camera/ui/preview/g;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oplus/camera/ui/preview/g;->d(Lcom/oplus/camera/ui/preview/g;Z)Z

    :cond_0
    return-void
.end method
