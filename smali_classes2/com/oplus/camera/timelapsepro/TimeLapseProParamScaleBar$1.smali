.class Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$1;
.super Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$c;
.source "TimeLapseProParamScaleBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;


# direct methods
.method constructor <init>(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$1;->a:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 82
    invoke-super {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$c;->a()V

    return-void
.end method

.method public a(I)V
    .locals 2

    .line 67
    invoke-super {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$c;->a(I)V

    .line 69
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$1;->a:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    invoke-static {v0}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->a(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;)Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$1;->a:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    invoke-static {v0}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->b(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;)I

    move-result v0

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$1;->a:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    invoke-static {v1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->c(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$1;->a:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    invoke-static {v0}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->a(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;)Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$b;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$1;->a:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    invoke-interface {v0, v1, p1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$b;->onValueChanged(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;I)V

    .line 73
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$1;->a:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    invoke-static {p1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->d(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 74
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$1;->a:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    invoke-static {p0}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->e(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->a(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;I)I

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 87
    invoke-super {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$c;->a(Z)V

    if-nez p1, :cond_0

    .line 89
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$1;->a:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    invoke-static {p1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->f(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;)Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 90
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$1;->a:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    invoke-static {p0}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->f(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;)Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$a;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$a;->a()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    .line 96
    invoke-super {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/BlurMenuSeekBar$c;->b()V

    return-void
.end method
