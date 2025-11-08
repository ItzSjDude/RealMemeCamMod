.class Lcom/oplus/camera/ui/d$26;
.super Ljava/lang/Object;
.source "CameraUIManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/d;->a(ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/oplus/camera/ui/d;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/d;Z)V
    .locals 0

    .line 6702
    iput-object p1, p0, Lcom/oplus/camera/ui/d$26;->b:Lcom/oplus/camera/ui/d;

    iput-boolean p2, p0, Lcom/oplus/camera/ui/d$26;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 6705
    iget-object v0, p0, Lcom/oplus/camera/ui/d$26;->b:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->p(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/a/a;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oplus/camera/ui/d$26;->a:Z

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/a/a;->c(Z)V

    .line 6706
    iget-object p0, p0, Lcom/oplus/camera/ui/d$26;->b:Lcom/oplus/camera/ui/d;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/oplus/camera/ui/d;->h(Lcom/oplus/camera/ui/d;Z)V

    return-void
.end method
