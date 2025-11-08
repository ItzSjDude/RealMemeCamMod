.class Lcom/oplus/camera/capmode/BaseMode$7;
.super Ljava/lang/Object;
.source "BaseMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/BaseMode;->beforeSnapping(Lcom/oplus/camera/e/c;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/BaseMode;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/BaseMode;)V
    .locals 0

    .line 2782
    iput-object p1, p0, Lcom/oplus/camera/capmode/BaseMode$7;->a:Lcom/oplus/camera/capmode/BaseMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2785
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode$7;->a:Lcom/oplus/camera/capmode/BaseMode;

    iget-boolean v0, v0, Lcom/oplus/camera/capmode/BaseMode;->mbDestroyed:Z

    if-nez v0, :cond_0

    .line 2786
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode$7;->a:Lcom/oplus/camera/capmode/BaseMode;

    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/oplus/camera/capmode/a;->d(Z)V

    :cond_0
    return-void
.end method
