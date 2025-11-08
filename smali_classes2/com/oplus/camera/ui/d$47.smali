.class Lcom/oplus/camera/ui/d$47;
.super Ljava/lang/Object;
.source "CameraUIManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/d;->d(Landroid/util/Size;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/d;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/d;)V
    .locals 0

    .line 9353
    iput-object p1, p0, Lcom/oplus/camera/ui/d$47;->a:Lcom/oplus/camera/ui/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 9356
    iget-object p0, p0, Lcom/oplus/camera/ui/d$47;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/d;->c()Lcom/oplus/camera/ui/preview/h;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 9359
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/h;->w()V

    .line 9360
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/h;->t()V

    goto :goto_0

    :cond_0
    const-string p0, "CameraUIManager"

    const-string v0, "showRearMirrorBlurAnim, screenNail is null"

    .line 9362
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
