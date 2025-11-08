.class Lcom/oplus/camera/ui/d$46;
.super Ljava/lang/Object;
.source "CameraUIManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/d;->b(Lcom/oplus/camera/u/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/u/a;

.field final synthetic b:Lcom/oplus/camera/ui/d;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/d;Lcom/oplus/camera/u/a;)V
    .locals 0

    .line 9043
    iput-object p1, p0, Lcom/oplus/camera/ui/d$46;->b:Lcom/oplus/camera/ui/d;

    iput-object p2, p0, Lcom/oplus/camera/ui/d$46;->a:Lcom/oplus/camera/u/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "CameraUIManager"

    const-string v1, "executeSuperTextFrameColorAnimation, in handler"

    .line 9046
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9048
    iget-object v0, p0, Lcom/oplus/camera/ui/d$46;->b:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->J(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/preview/g;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/ui/d$46;->a:Lcom/oplus/camera/u/a;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/preview/g;->b(Lcom/oplus/camera/u/a;)V

    return-void
.end method
