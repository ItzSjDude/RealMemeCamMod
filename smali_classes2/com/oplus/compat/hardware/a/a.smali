.class public Lcom/oplus/compat/hardware/a/a;
.super Ljava/lang/Object;
.source "DisplayManagerNative.java"


# direct methods
.method public static a(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 50
    invoke-static {}, Lcom/oplus/compat/b/a/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Lcom/oplus/epona/Request$Builder;

    invoke-direct {v0}, Lcom/oplus/epona/Request$Builder;-><init>()V

    const-string v1, "android.hardware.display.DisplayManager"

    invoke-virtual {v0, v1}, Lcom/oplus/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v0

    const-string v1, "setTemporaryAutoBrightnessAdjustment"

    .line 52
    invoke-virtual {v0, v1}, Lcom/oplus/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v0

    const-string v1, "adjustment"

    .line 53
    invoke-virtual {v0, v1, p0}, Lcom/oplus/epona/Request$Builder;->withFloat(Ljava/lang/String;F)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    .line 54
    invoke-virtual {p0}, Lcom/oplus/epona/Request$Builder;->build()Lcom/oplus/epona/Request;

    move-result-object p0

    .line 55
    invoke-static {p0}, Lcom/oplus/epona/Epona;->newCall(Lcom/oplus/epona/Request;)Lcom/oplus/epona/internal/RealCall;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/internal/RealCall;->execute()Lcom/oplus/epona/Response;

    goto :goto_0

    .line 56
    :cond_0
    invoke-static {}, Lcom/oplus/compat/b/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    invoke-static {}, Lcom/oplus/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 58
    invoke-static {v0, p0}, Lcom/oplus/compat/hardware/a/a;->a(Landroid/hardware/display/DisplayManager;F)V

    :goto_0
    return-void

    .line 60
    :cond_1
    new-instance p0, Lcom/oplus/compat/b/a/b;

    const-string v0, "not supported before Q"

    invoke-direct {p0, v0}, Lcom/oplus/compat/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Landroid/hardware/display/DisplayManager;F)V
    .locals 0

    return-void
.end method
