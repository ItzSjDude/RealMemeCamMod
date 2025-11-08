.class Lcom/oplus/camera/capmode/g$11;
.super Ljava/lang/Object;
.source "DoubleExposureMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/g;->a(Lcom/oplus/camera/ui/control/e$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/control/e$d;

.field final synthetic b:Lcom/oplus/camera/capmode/g;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/g;Lcom/oplus/camera/ui/control/e$d;)V
    .locals 0

    .line 925
    iput-object p1, p0, Lcom/oplus/camera/capmode/g$11;->b:Lcom/oplus/camera/capmode/g;

    iput-object p2, p0, Lcom/oplus/camera/capmode/g$11;->a:Lcom/oplus/camera/ui/control/e$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 928
    iget-object v0, p0, Lcom/oplus/camera/capmode/g$11;->b:Lcom/oplus/camera/capmode/g;

    iget-object v0, v0, Lcom/oplus/camera/capmode/g;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    iget-object p0, p0, Lcom/oplus/camera/capmode/g$11;->a:Lcom/oplus/camera/ui/control/e$d;

    invoke-interface {v0, p0}, Lcom/oplus/camera/capmode/a;->a(Lcom/oplus/camera/ui/control/e$d;)V

    return-void
.end method
