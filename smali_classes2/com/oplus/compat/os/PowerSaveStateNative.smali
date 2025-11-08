.class public Lcom/oplus/compat/os/PowerSaveStateNative;
.super Ljava/lang/Object;
.source "PowerSaveStateNative.java"


# static fields
.field private static final COMPONENT_NAME:Ljava/lang/String; = "android.os.PowerSaveState"

.field private static final RESULT:Ljava/lang/String; = "result"

.field private static final TAG:Ljava/lang/String; = "PowerSaveStateNative"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBatterySaverEnabled(Landroid/os/PowerSaveState;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 29
    invoke-static {}, Lcom/oplus/compat/b/a/c;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    new-instance v0, Lcom/oplus/epona/Request$Builder;

    invoke-direct {v0}, Lcom/oplus/epona/Request$Builder;-><init>()V

    const-string v1, "android.os.PowerSaveState"

    invoke-virtual {v0, v1}, Lcom/oplus/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v0

    const-string v1, "batterySaverEnabled"

    .line 31
    invoke-virtual {v0, v1}, Lcom/oplus/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v0

    const-string v1, "powerSaveState"

    .line 32
    invoke-virtual {v0, v1, p0}, Lcom/oplus/epona/Request$Builder;->withParcelable(Ljava/lang/String;Landroid/os/Parcelable;)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    .line 33
    invoke-virtual {p0}, Lcom/oplus/epona/Request$Builder;->build()Lcom/oplus/epona/Request;

    move-result-object p0

    .line 34
    invoke-static {p0}, Lcom/oplus/epona/Epona;->newCall(Lcom/oplus/epona/Request;)Lcom/oplus/epona/internal/RealCall;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/internal/RealCall;->execute()Lcom/oplus/epona/Response;

    move-result-object p0

    .line 35
    invoke-virtual {p0}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/oplus/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "result"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 39
    :cond_1
    new-instance p0, Lcom/oplus/compat/b/a/b;

    const-string v0, "Not Supported Before R"

    invoke-direct {p0, v0}, Lcom/oplus/compat/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method
