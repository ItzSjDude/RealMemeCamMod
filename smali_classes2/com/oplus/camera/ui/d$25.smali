.class Lcom/oplus/camera/ui/d$25;
.super Ljava/lang/Object;
.source "CameraUIManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/d;->a(IIIZZZZZZIZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:I

.field final synthetic e:Lcom/oplus/camera/ui/d;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/d;IZZI)V
    .locals 0

    .line 6605
    iput-object p1, p0, Lcom/oplus/camera/ui/d$25;->e:Lcom/oplus/camera/ui/d;

    iput p2, p0, Lcom/oplus/camera/ui/d$25;->a:I

    iput-boolean p3, p0, Lcom/oplus/camera/ui/d$25;->b:Z

    iput-boolean p4, p0, Lcom/oplus/camera/ui/d$25;->c:Z

    iput p5, p0, Lcom/oplus/camera/ui/d$25;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 6608
    iget-object v0, p0, Lcom/oplus/camera/ui/d$25;->e:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->ac(Lcom/oplus/camera/ui/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/d$25;->e:Lcom/oplus/camera/ui/d;

    .line 6609
    invoke-static {v0}, Lcom/oplus/camera/ui/d;->r(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/preview/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/d$25;->e:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->r(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/preview/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/a;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/d;->R(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6613
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/d$25;->e:Lcom/oplus/camera/ui/d;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->cR()V

    .line 6614
    iget-object v0, p0, Lcom/oplus/camera/ui/d$25;->e:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->p(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/a/a;

    move-result-object v1

    iget v2, p0, Lcom/oplus/camera/ui/d$25;->a:I

    iget-boolean v3, p0, Lcom/oplus/camera/ui/d$25;->b:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/oplus/camera/ui/d$25;->c:Z

    iget v7, p0, Lcom/oplus/camera/ui/d$25;->d:I

    invoke-virtual/range {v1 .. v7}, Lcom/oplus/camera/ui/a/a;->a(IZZIZI)V

    .line 6615
    iget-object p0, p0, Lcom/oplus/camera/ui/d$25;->e:Lcom/oplus/camera/ui/d;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oplus/camera/ui/d;->h(Lcom/oplus/camera/ui/d;Z)V

    :cond_1
    :goto_0
    return-void
.end method
