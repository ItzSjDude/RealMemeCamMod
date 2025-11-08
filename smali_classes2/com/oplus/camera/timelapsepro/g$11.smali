.class Lcom/oplus/camera/timelapsepro/g$11;
.super Ljava/lang/Object;
.source "TimeLapseProMenuLayout.java"

# interfaces
.implements Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/timelapsepro/g;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/timelapsepro/g;


# direct methods
.method constructor <init>(Lcom/oplus/camera/timelapsepro/g;)V
    .locals 0

    .line 931
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/g$11;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 949
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g$11;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-static {v0}, Lcom/oplus/camera/timelapsepro/g;->u(Lcom/oplus/camera/timelapsepro/g;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 950
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g$11;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-static {v0}, Lcom/oplus/camera/timelapsepro/g;->u(Lcom/oplus/camera/timelapsepro/g;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 953
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/g$11;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-static {v0}, Lcom/oplus/camera/timelapsepro/g;->u(Lcom/oplus/camera/timelapsepro/g;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 954
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g$11;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-static {p0}, Lcom/oplus/camera/timelapsepro/g;->v(Lcom/oplus/camera/timelapsepro/g;)V

    return-void
.end method

.method public a(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;)V
    .locals 2

    .line 934
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/g$11;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-static {p1}, Lcom/oplus/camera/timelapsepro/g;->r(Lcom/oplus/camera/timelapsepro/g;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 935
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/g$11;->a:Lcom/oplus/camera/timelapsepro/g;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oplus/camera/timelapsepro/g;->b(Lcom/oplus/camera/timelapsepro/g;Z)Z

    .line 936
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/g$11;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-static {p1}, Lcom/oplus/camera/timelapsepro/g;->g(Lcom/oplus/camera/timelapsepro/g;)Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->setAutoState(Z)V

    .line 938
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/g$11;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-static {p1}, Lcom/oplus/camera/timelapsepro/g;->s(Lcom/oplus/camera/timelapsepro/g;)Lcom/oplus/camera/ui/inverse/InverseTextView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 939
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/g$11;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-static {p1}, Lcom/oplus/camera/timelapsepro/g;->s(Lcom/oplus/camera/timelapsepro/g;)Lcom/oplus/camera/ui/inverse/InverseTextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setInverseColor(Z)V

    .line 940
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/g$11;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-static {p1}, Lcom/oplus/camera/timelapsepro/g;->s(Lcom/oplus/camera/timelapsepro/g;)Lcom/oplus/camera/ui/inverse/InverseTextView;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/oplus/camera/timelapsepro/d;->a(Lcom/oplus/camera/ui/inverse/InverseTextView;ZZ)V

    .line 944
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g$11;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-static {p0}, Lcom/oplus/camera/timelapsepro/g;->t(Lcom/oplus/camera/timelapsepro/g;)V

    return-void
.end method
