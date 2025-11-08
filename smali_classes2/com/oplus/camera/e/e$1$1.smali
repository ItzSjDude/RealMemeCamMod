.class Lcom/oplus/camera/e/e$1$1;
.super Ljava/lang/Object;
.source "OneCameraImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/e/e$1;->onCameraClosed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/e/e$1;


# direct methods
.method constructor <init>(Lcom/oplus/camera/e/e$1;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/oplus/camera/e/e$1$1;->a:Lcom/oplus/camera/e/e$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/oplus/camera/e/e$1$1;->a:Lcom/oplus/camera/e/e$1;

    iget-object v0, v0, Lcom/oplus/camera/e/e$1;->b:Lcom/oplus/camera/e/d$b;

    iget-object p0, p0, Lcom/oplus/camera/e/e$1$1;->a:Lcom/oplus/camera/e/e$1;

    iget-object p0, p0, Lcom/oplus/camera/e/e$1;->c:Lcom/oplus/camera/e/e;

    iget p0, p0, Lcom/oplus/camera/e/e;->w:I

    invoke-interface {v0, p0}, Lcom/oplus/camera/e/d$b;->b(I)V

    return-void
.end method
