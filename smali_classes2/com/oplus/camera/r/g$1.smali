.class Lcom/oplus/camera/r/g$1;
.super Ljava/lang/Object;
.source "SlowVideoMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/r/g;->onAfterStartPreview(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/r/g;


# direct methods
.method constructor <init>(Lcom/oplus/camera/r/g;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/oplus/camera/r/g$1;->a:Lcom/oplus/camera/r/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 371
    iget-object v0, p0, Lcom/oplus/camera/r/g$1;->a:Lcom/oplus/camera/r/g;

    invoke-static {v0}, Lcom/oplus/camera/r/g;->a(Lcom/oplus/camera/r/g;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 372
    iget-object p0, p0, Lcom/oplus/camera/r/g$1;->a:Lcom/oplus/camera/r/g;

    invoke-static {p0}, Lcom/oplus/camera/r/g;->b(Lcom/oplus/camera/r/g;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v0

    const v1, 0x7f1003eb

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    :cond_0
    return-void
.end method
