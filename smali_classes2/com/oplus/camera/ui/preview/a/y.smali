.class public abstract Lcom/oplus/camera/ui/preview/a/y;
.super Ljava/lang/Object;
.source "TexturePreview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/preview/a/y$b;,
        Lcom/oplus/camera/ui/preview/a/y$a;
    }
.end annotation


# instance fields
.field protected e:Ljava/lang/String;

.field protected f:I

.field protected g:Z

.field protected h:Lcom/oplus/camera/gl/GLRootView;

.field protected i:Lcom/oplus/camera/ui/preview/a/y$b;

.field protected j:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/y;->e:Ljava/lang/String;

    const/4 v1, 0x0

    .line 20
    iput v1, p0, Lcom/oplus/camera/ui/preview/a/y;->f:I

    .line 21
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/y;->g:Z

    .line 22
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/y;->h:Lcom/oplus/camera/gl/GLRootView;

    .line 23
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/y;->i:Lcom/oplus/camera/ui/preview/a/y$b;

    .line 24
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/y;->j:Landroid/content/Context;

    .line 134
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/y;->j:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 0

    return-void
.end method

.method public a(J)V
    .locals 0

    return-void
.end method

.method public a(Landroid/util/Size;Z)V
    .locals 0

    return-void
.end method

.method public a(Lcom/oplus/camera/doubleexposure/c;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/oplus/camera/gl/GLRootView;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/y;->h:Lcom/oplus/camera/gl/GLRootView;

    return-void
.end method

.method public abstract a(Lcom/oplus/camera/gl/h;)V
.end method

.method public a(Lcom/oplus/camera/gl/s;)V
    .locals 0

    return-void
.end method

.method public abstract a(Lcom/oplus/camera/ui/preview/a/aa;)V
.end method

.method public a(Lcom/oplus/camera/ui/preview/a/y$b;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/y;->i:Lcom/oplus/camera/ui/preview/a/y$b;

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/y;->e:Ljava/lang/String;

    .line 147
    iput p2, p0, Lcom/oplus/camera/ui/preview/a/y;->f:I

    .line 148
    iget p1, p0, Lcom/oplus/camera/ui/preview/a/y;->f:I

    invoke-static {p1}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/y;->g:Z

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public a([BII)V
    .locals 0

    return-void
.end method

.method public a([B[BII)V
    .locals 0

    return-void
.end method

.method public abstract a()Z
.end method

.method public abstract a(I)Z
.end method

.method public abstract a(Lcom/oplus/camera/ui/preview/a/y$a;)Z
.end method

.method public a_(I)Z
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/y;->e:Ljava/lang/String;

    iget v1, p0, Lcom/oplus/camera/ui/preview/a/y;->f:I

    invoke-static {v0, v1}, Lcom/oplus/camera/e/a;->a(Ljava/lang/String;I)Lcom/oplus/camera/e/h;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/oplus/camera/e/h;->F()Lcom/oplus/ocs/camera/CameraDeviceInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/y;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/ocs/camera/CameraDeviceInfo;->isPreviewAlgoDisable(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/y;->d()I

    move-result p0

    and-int/2addr p0, p1

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public abstract b()V
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public abstract c()V
.end method

.method public abstract d()I
.end method

.method public d(I)V
    .locals 0

    return-void
.end method

.method public abstract e()V
.end method

.method public abstract f()Lcom/oplus/camera/gl/s;
.end method

.method public abstract g()Lcom/oplus/camera/gl/s;
.end method

.method public abstract h()Z
.end method

.method public abstract i()V
.end method

.method public abstract j()V
.end method

.method public k()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public l()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public m()V
    .locals 0

    return-void
.end method

.method public n()V
    .locals 0

    return-void
.end method

.method public o()V
    .locals 0

    return-void
.end method

.method public p()V
    .locals 0

    return-void
.end method

.method public s()V
    .locals 1

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/y;->j:Landroid/content/Context;

    return-void
.end method

.method public t()Lcom/oplus/camera/ui/preview/a/y$a;
    .locals 1

    .line 104
    new-instance v0, Lcom/oplus/camera/ui/preview/a/y$a;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/preview/a/y$a;-><init>(Lcom/oplus/camera/ui/preview/a/y;)V

    return-object v0
.end method

.method public u()V
    .locals 0

    return-void
.end method

.method public v()V
    .locals 0

    return-void
.end method

.method public w()V
    .locals 0

    return-void
.end method

.method public x()V
    .locals 0

    return-void
.end method

.method public y()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public z()[I
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
