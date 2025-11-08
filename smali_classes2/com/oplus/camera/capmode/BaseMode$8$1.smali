.class Lcom/oplus/camera/capmode/BaseMode$8$1;
.super Ljava/lang/Object;
.source "BaseMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/BaseMode$8;->a(Ljava/lang/Integer;Landroid/graphics/Bitmap;JJLandroid/hardware/camera2/CaptureResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/BaseMode$8;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/BaseMode$8;)V
    .locals 0

    .line 2961
    iput-object p1, p0, Lcom/oplus/camera/capmode/BaseMode$8$1;->a:Lcom/oplus/camera/capmode/BaseMode$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2964
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode$8$1;->a:Lcom/oplus/camera/capmode/BaseMode$8;

    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode$8;->b:Lcom/oplus/camera/capmode/BaseMode;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/capmode/BaseMode;->shutterCallback(ZZ)V

    return-void
.end method
