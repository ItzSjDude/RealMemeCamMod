.class Lcom/oplus/camera/d/b$5;
.super Ljava/lang/Object;
.source "Beauty3DManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/d/b;->b(Landroid/hardware/camera2/CaptureResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/d/b;


# direct methods
.method constructor <init>(Lcom/oplus/camera/d/b;)V
    .locals 0

    .line 460
    iput-object p1, p0, Lcom/oplus/camera/d/b$5;->a:Lcom/oplus/camera/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 463
    iget-object v0, p0, Lcom/oplus/camera/d/b$5;->a:Lcom/oplus/camera/d/b;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/oplus/camera/d/b;->a(I)V

    .line 464
    iget-object p0, p0, Lcom/oplus/camera/d/b$5;->a:Lcom/oplus/camera/d/b;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oplus/camera/d/b;->d(Z)V

    return-void
.end method
