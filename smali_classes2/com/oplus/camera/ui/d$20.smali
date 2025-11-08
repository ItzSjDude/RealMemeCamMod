.class Lcom/oplus/camera/ui/d$20;
.super Ljava/lang/Object;
.source "CameraUIManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/d;->cG()V
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

    .line 6097
    iput-object p1, p0, Lcom/oplus/camera/ui/d$20;->a:Lcom/oplus/camera/ui/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 6100
    iget-object v0, p0, Lcom/oplus/camera/ui/d$20;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->cR()V

    .line 6101
    iget-object p0, p0, Lcom/oplus/camera/ui/d$20;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->p(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/a/a;

    move-result-object v0

    const/4 p0, 0x1

    new-array v12, p0, [Ljava/lang/Object;

    const/4 p0, 0x0

    const/4 v1, 0x0

    aput-object v1, v12, p0

    const v1, 0x7f10047e

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x1388

    const v5, 0x7f0805e9

    const v6, 0x7f0604ff

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, -0x1

    invoke-virtual/range {v0 .. v12}, Lcom/oplus/camera/ui/a/a;->a(IZZIIIIZZZI[Ljava/lang/Object;)V

    return-void
.end method
