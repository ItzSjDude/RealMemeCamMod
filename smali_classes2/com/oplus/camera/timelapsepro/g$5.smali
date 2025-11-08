.class Lcom/oplus/camera/timelapsepro/g$5;
.super Landroid/os/Handler;
.source "TimeLapseProMenuLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/timelapsepro/g;-><init>(Landroid/content/Context;Lcom/oplus/camera/ComboPreferences;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/timelapsepro/g;


# direct methods
.method constructor <init>(Lcom/oplus/camera/timelapsepro/g;Landroid/os/Looper;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/g$5;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 228
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 229
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 241
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/g$5;->a:Lcom/oplus/camera/timelapsepro/g;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/oplus/camera/timelapsepro/g;->a(Lcom/oplus/camera/timelapsepro/g;ZZ)V

    .line 243
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/g$5;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-static {p1}, Lcom/oplus/camera/timelapsepro/g;->g(Lcom/oplus/camera/timelapsepro/g;)Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/g$5;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-static {p1}, Lcom/oplus/camera/timelapsepro/g;->g(Lcom/oplus/camera/timelapsepro/g;)Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->isShown()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 244
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/g$5;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-static {p1}, Lcom/oplus/camera/timelapsepro/g;->g(Lcom/oplus/camera/timelapsepro/g;)Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->b(Z)V

    .line 247
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/g$5;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-static {p1}, Lcom/oplus/camera/timelapsepro/g;->h(Lcom/oplus/camera/timelapsepro/g;)Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/g$5;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-static {p1}, Lcom/oplus/camera/timelapsepro/g;->h(Lcom/oplus/camera/timelapsepro/g;)Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->isShown()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 248
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g$5;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-static {p0}, Lcom/oplus/camera/timelapsepro/g;->h(Lcom/oplus/camera/timelapsepro/g;)Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->b(Z)V

    goto :goto_0

    .line 236
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g$5;->a:Lcom/oplus/camera/timelapsepro/g;

    const/4 p1, -0x1

    invoke-static {p0, p1}, Lcom/oplus/camera/timelapsepro/g;->d(Lcom/oplus/camera/timelapsepro/g;I)V

    goto :goto_0

    .line 231
    :cond_3
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/g$5;->a:Lcom/oplus/camera/timelapsepro/g;

    invoke-static {p0}, Lcom/oplus/camera/timelapsepro/g;->f(Lcom/oplus/camera/timelapsepro/g;)V

    :cond_4
    :goto_0
    return-void
.end method
