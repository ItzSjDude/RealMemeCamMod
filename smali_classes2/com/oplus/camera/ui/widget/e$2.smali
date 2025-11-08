.class Lcom/oplus/camera/ui/widget/e$2;
.super Ljava/lang/Object;
.source "VideoClipView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/widget/e;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/widget/e;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/widget/e;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/oplus/camera/ui/widget/e$2;->a:Lcom/oplus/camera/ui/widget/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 170
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p2, p1, :cond_0

    const/high16 p1, 0x41700000    # 15.0f

    iget-object v0, p0, Lcom/oplus/camera/ui/widget/e$2;->a:Lcom/oplus/camera/ui/widget/e;

    invoke-static {v0}, Lcom/oplus/camera/ui/widget/e;->e(Lcom/oplus/camera/ui/widget/e;)F

    move-result v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    .line 171
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/e$2;->a:Lcom/oplus/camera/ui/widget/e;

    invoke-static {p1, p2}, Lcom/oplus/camera/ui/widget/e;->a(Lcom/oplus/camera/ui/widget/e;Z)Z

    .line 172
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/e$2;->a:Lcom/oplus/camera/ui/widget/e;

    invoke-static {p1}, Lcom/oplus/camera/ui/widget/e;->d(Lcom/oplus/camera/ui/widget/e;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 173
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/e$2;->a:Lcom/oplus/camera/ui/widget/e;

    invoke-static {p0}, Lcom/oplus/camera/ui/widget/e;->d(Lcom/oplus/camera/ui/widget/e;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v0, 0x32

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
