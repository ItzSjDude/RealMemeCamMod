.class public Lcom/oplus/camera/screen/out/e;
.super Landroid/app/Presentation;
.source "OutPresentation.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/oplus/camera/screen/out/OutGLSurfaceView;

.field private b:Landroid/view/View;

.field private c:Lcom/oplus/camera/screen/a/c$b;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lcom/oplus/camera/screen/out/e;->a:Lcom/oplus/camera/screen/out/OutGLSurfaceView;

    .line 23
    iput-object p1, p0, Lcom/oplus/camera/screen/out/e;->b:Landroid/view/View;

    .line 24
    iput-object p1, p0, Lcom/oplus/camera/screen/out/e;->c:Lcom/oplus/camera/screen/a/c$b;

    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Lcom/oplus/camera/screen/out/e;->d:Z

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/oplus/camera/screen/out/e;->a:Lcom/oplus/camera/screen/out/OutGLSurfaceView;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->a(II)V

    return-void
.end method

.method public a(Landroid/hardware/HardwareBuffer;Ljava/util/concurrent/locks/Lock;)V
    .locals 1

    .line 65
    iget-object p0, p0, Lcom/oplus/camera/screen/out/e;->a:Lcom/oplus/camera/screen/out/OutGLSurfaceView;

    new-instance v0, Lcom/oplus/camera/screen/out/a;

    invoke-direct {v0, p1, p2}, Lcom/oplus/camera/screen/out/a;-><init>(Landroid/hardware/HardwareBuffer;Ljava/util/concurrent/locks/Lock;)V

    invoke-virtual {p0, v0}, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->a(Lcom/oplus/camera/screen/out/a;)V

    return-void
.end method

.method public a(Lcom/oplus/camera/screen/a/c$b;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/oplus/camera/screen/out/e;->c:Lcom/oplus/camera/screen/a/c$b;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 86
    iput-boolean p1, p0, Lcom/oplus/camera/screen/out/e;->d:Z

    .line 88
    iget-object p0, p0, Lcom/oplus/camera/screen/out/e;->b:Landroid/view/View;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 89
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/oplus/camera/screen/out/e;->a:Lcom/oplus/camera/screen/out/OutGLSurfaceView;

    invoke-virtual {v0}, Lcom/oplus/camera/screen/out/OutGLSurfaceView;->a()V

    .line 61
    invoke-super {p0}, Landroid/app/Presentation;->dismiss()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0902a0

    if-ne p1, v0, :cond_0

    .line 79
    iget-object p0, p0, Lcom/oplus/camera/screen/out/e;->c:Lcom/oplus/camera/screen/a/c$b;

    if-eqz p0, :cond_0

    .line 80
    invoke-interface {p0}, Lcom/oplus/camera/screen/a/c$b;->a()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 33
    invoke-virtual {p0}, Lcom/oplus/camera/screen/out/e;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1604

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 37
    invoke-virtual {p0}, Lcom/oplus/camera/screen/out/e;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    .line 38
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 39
    invoke-virtual {p0}, Lcom/oplus/camera/screen/out/e;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 40
    invoke-super {p0, p1}, Landroid/app/Presentation;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0144

    .line 41
    invoke-virtual {p0, p1}, Lcom/oplus/camera/screen/out/e;->setContentView(I)V

    const p1, 0x7f0902a4

    .line 42
    invoke-virtual {p0, p1}, Lcom/oplus/camera/screen/out/e;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/screen/out/OutGLSurfaceView;

    iput-object p1, p0, Lcom/oplus/camera/screen/out/e;->a:Lcom/oplus/camera/screen/out/OutGLSurfaceView;

    const p1, 0x7f0902a0

    .line 43
    invoke-virtual {p0, p1}, Lcom/oplus/camera/screen/out/e;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/screen/out/e;->b:Landroid/view/View;

    .line 44
    iget-object p1, p0, Lcom/oplus/camera/screen/out/e;->b:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-boolean p1, p0, Lcom/oplus/camera/screen/out/e;->d:Z

    invoke-virtual {p0, p1}, Lcom/oplus/camera/screen/out/e;->a(Z)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/oplus/camera/screen/out/e;->c:Lcom/oplus/camera/screen/a/c$b;

    invoke-interface {v0, p1, p2}, Lcom/oplus/camera/screen/a/c$b;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/app/Presentation;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/oplus/camera/screen/out/e;->c:Lcom/oplus/camera/screen/a/c$b;

    invoke-interface {v0, p1, p2}, Lcom/oplus/camera/screen/a/c$b;->b(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/app/Presentation;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
