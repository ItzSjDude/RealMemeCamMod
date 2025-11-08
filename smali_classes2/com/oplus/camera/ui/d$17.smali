.class Lcom/oplus/camera/ui/d$17;
.super Ljava/lang/Object;
.source "CameraUIManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/d;->v(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/oplus/camera/ui/d;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/d;ZZ)V
    .locals 0

    .line 3861
    iput-object p1, p0, Lcom/oplus/camera/ui/d$17;->c:Lcom/oplus/camera/ui/d;

    iput-boolean p2, p0, Lcom/oplus/camera/ui/d$17;->a:Z

    iput-boolean p3, p0, Lcom/oplus/camera/ui/d$17;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 3864
    iget-object v0, p0, Lcom/oplus/camera/ui/d$17;->c:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->E(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/control/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3865
    iget-object v0, p0, Lcom/oplus/camera/ui/d$17;->c:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->E(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/control/a;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oplus/camera/ui/d$17;->a:Z

    iget-boolean p0, p0, Lcom/oplus/camera/ui/d$17;->b:Z

    invoke-virtual {v0, v1, p0}, Lcom/oplus/camera/ui/control/a;->g(ZZ)V

    :cond_0
    return-void
.end method
