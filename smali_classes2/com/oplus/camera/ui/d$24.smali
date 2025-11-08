.class Lcom/oplus/camera/ui/d$24;
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

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Z

.field final synthetic e:Z

.field final synthetic f:I

.field final synthetic g:Z

.field final synthetic h:Z

.field final synthetic i:Z

.field final synthetic j:Lcom/oplus/camera/ui/d;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/d;IIIZZIZZZ)V
    .locals 0

    .line 6580
    iput-object p1, p0, Lcom/oplus/camera/ui/d$24;->j:Lcom/oplus/camera/ui/d;

    iput p2, p0, Lcom/oplus/camera/ui/d$24;->a:I

    iput p3, p0, Lcom/oplus/camera/ui/d$24;->b:I

    iput p4, p0, Lcom/oplus/camera/ui/d$24;->c:I

    iput-boolean p5, p0, Lcom/oplus/camera/ui/d$24;->d:Z

    iput-boolean p6, p0, Lcom/oplus/camera/ui/d$24;->e:Z

    iput p7, p0, Lcom/oplus/camera/ui/d$24;->f:I

    iput-boolean p8, p0, Lcom/oplus/camera/ui/d$24;->g:Z

    iput-boolean p9, p0, Lcom/oplus/camera/ui/d$24;->h:Z

    iput-boolean p10, p0, Lcom/oplus/camera/ui/d$24;->i:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 6583
    iget-object v0, p0, Lcom/oplus/camera/ui/d$24;->j:Lcom/oplus/camera/ui/d;

    iget v1, p0, Lcom/oplus/camera/ui/d$24;->a:I

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/d;->h(Lcom/oplus/camera/ui/d;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 6587
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/d$24;->j:Lcom/oplus/camera/ui/d;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->cR()V

    .line 6588
    iget-object v0, p0, Lcom/oplus/camera/ui/d$24;->j:Lcom/oplus/camera/ui/d;

    iget v1, p0, Lcom/oplus/camera/ui/d$24;->b:I

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;I)I

    .line 6590
    iget v0, p0, Lcom/oplus/camera/ui/d$24;->c:I

    if-lez v0, :cond_1

    .line 6591
    iget-object v0, p0, Lcom/oplus/camera/ui/d$24;->j:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->p(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/a/a;

    move-result-object v1

    iget v2, p0, Lcom/oplus/camera/ui/d$24;->a:I

    iget-boolean v3, p0, Lcom/oplus/camera/ui/d$24;->d:Z

    iget-boolean v4, p0, Lcom/oplus/camera/ui/d$24;->e:Z

    iget v5, p0, Lcom/oplus/camera/ui/d$24;->b:I

    iget v6, p0, Lcom/oplus/camera/ui/d$24;->c:I

    const v7, 0x7f060072

    iget v8, p0, Lcom/oplus/camera/ui/d$24;->f:I

    iget-boolean v9, p0, Lcom/oplus/camera/ui/d$24;->g:Z

    iget-boolean v10, p0, Lcom/oplus/camera/ui/d$24;->h:Z

    iget-boolean v11, p0, Lcom/oplus/camera/ui/d$24;->i:Z

    invoke-virtual/range {v1 .. v11}, Lcom/oplus/camera/ui/a/a;->a(IZZIIIIZZZ)V

    goto :goto_0

    .line 6595
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/d$24;->j:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->p(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/a/a;

    move-result-object v1

    iget v2, p0, Lcom/oplus/camera/ui/d$24;->a:I

    iget-boolean v3, p0, Lcom/oplus/camera/ui/d$24;->d:Z

    iget-boolean v4, p0, Lcom/oplus/camera/ui/d$24;->e:Z

    iget v5, p0, Lcom/oplus/camera/ui/d$24;->b:I

    iget v6, p0, Lcom/oplus/camera/ui/d$24;->f:I

    iget-boolean v7, p0, Lcom/oplus/camera/ui/d$24;->g:Z

    iget-boolean v8, p0, Lcom/oplus/camera/ui/d$24;->h:Z

    iget-boolean v9, p0, Lcom/oplus/camera/ui/d$24;->i:Z

    const/4 p0, 0x0

    new-array v10, p0, [Ljava/lang/Object;

    invoke-virtual/range {v1 .. v10}, Lcom/oplus/camera/ui/a/a;->a(IZZIIZZZ[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
