.class Lcom/oplus/camera/capmode/m$1;
.super Ljava/lang/Object;
.source "LongExposureMode.java"

# interfaces
.implements Lcom/oplus/camera/ui/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/m;->onInitCameraMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/m;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/m;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/oplus/camera/capmode/m$1;->a:Lcom/oplus/camera/capmode/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/oplus/camera/capmode/m$1;->a:Lcom/oplus/camera/capmode/m;

    iget-boolean v0, v0, Lcom/oplus/camera/capmode/m;->mbPaused:Z

    if-nez v0, :cond_0

    .line 168
    iget-object p0, p0, Lcom/oplus/camera/capmode/m$1;->a:Lcom/oplus/camera/capmode/m;

    invoke-static {p0}, Lcom/oplus/camera/capmode/m;->a(Lcom/oplus/camera/capmode/m;)Lcom/oplus/camera/ui/o;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/o;->e()V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/oplus/camera/capmode/m$1;->a:Lcom/oplus/camera/capmode/m;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/m;->b()V

    return-void
.end method
