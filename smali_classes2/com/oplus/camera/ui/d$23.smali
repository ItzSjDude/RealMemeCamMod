.class Lcom/oplus/camera/ui/d$23;
.super Ljava/lang/Object;
.source "CameraUIManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/d;->a(Lcom/oplus/camera/ui/control/b;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/control/b;

.field final synthetic b:Z

.field final synthetic c:Lcom/oplus/camera/ui/d;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/d;Lcom/oplus/camera/ui/control/b;Z)V
    .locals 0

    .line 6300
    iput-object p1, p0, Lcom/oplus/camera/ui/d$23;->c:Lcom/oplus/camera/ui/d;

    iput-object p2, p0, Lcom/oplus/camera/ui/d$23;->a:Lcom/oplus/camera/ui/control/b;

    iput-boolean p3, p0, Lcom/oplus/camera/ui/d$23;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 6303
    iget-object v0, p0, Lcom/oplus/camera/ui/d$23;->c:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->E(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/control/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6304
    iget-object v0, p0, Lcom/oplus/camera/ui/d$23;->c:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->E(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/control/a;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/ui/d$23;->a:Lcom/oplus/camera/ui/control/b;

    iget-boolean v2, p0, Lcom/oplus/camera/ui/d$23;->b:Z

    iget-object p0, p0, Lcom/oplus/camera/ui/d$23;->c:Lcom/oplus/camera/ui/d;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/d;->dH()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, v1, v2, p0}, Lcom/oplus/camera/ui/control/a;->a(Lcom/oplus/camera/ui/control/b;ZZ)V

    :cond_0
    return-void
.end method
