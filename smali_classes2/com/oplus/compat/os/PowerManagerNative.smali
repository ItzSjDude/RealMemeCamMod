.class public Lcom/oplus/compat/os/PowerManagerNative;
.super Ljava/lang/Object;
.source "PowerManagerNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/compat/os/PowerManagerNative$RefPowerManagerInfo;,
        Lcom/oplus/compat/os/PowerManagerNative$ReflectInfo;
    }
.end annotation


# static fields
.field private static final COMPONENT_NAME:Ljava/lang/String; = "android.os.PowerManager"

.field private static final RESULT:Ljava/lang/String; = "result"

.field private static final TAG:Ljava/lang/String; = "PowerManagerNative"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultScreenBrightnessSetting(Landroid/os/PowerManager;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 167
    invoke-static {}, Lcom/oplus/compat/b/a/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p0}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result p0

    return p0

    .line 170
    :cond_0
    new-instance p0, Lcom/oplus/compat/b/a/b;

    const-string v0, "Not supported before R"

    invoke-direct {p0, v0}, Lcom/oplus/compat/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getDisplayAodStatus(Landroid/os/PowerManager;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 104
    invoke-static {}, Lcom/oplus/compat/b/a/c;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 105
    new-instance p0, Landroid/os/OplusPowerManager;

    invoke-direct {p0}, Landroid/os/OplusPowerManager;-><init>()V

    .line 106
    invoke-static {}, Lcom/oplus/compat/os/PowerManagerNative$RefPowerManagerInfo;->access$000()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 107
    :cond_0
    invoke-static {}, Lcom/oplus/compat/b/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    invoke-static {p0}, Lcom/oplus/inner/os/PowerManagerWrapper;->getDisplayAodStatus(Landroid/os/PowerManager;)Z

    move-result p0

    return p0

    .line 109
    :cond_1
    invoke-static {}, Lcom/oplus/compat/b/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    invoke-static {p0}, Lcom/oplus/compat/os/PowerManagerNative;->getDisplayAodStatusCompat(Landroid/os/PowerManager;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 111
    :cond_2
    invoke-static {}, Lcom/oplus/compat/b/a/c;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 112
    invoke-static {}, Lcom/oplus/compat/os/PowerManagerNative$ReflectInfo;->access$100()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 114
    :cond_3
    new-instance p0, Lcom/oplus/compat/b/a/b;

    invoke-direct {p0}, Lcom/oplus/compat/b/a/b;-><init>()V

    throw p0
.end method

.method private static getDisplayAodStatusCompat(Landroid/os/PowerManager;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getLastSleepReason()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 288
    invoke-static {}, Lcom/oplus/compat/b/a/c;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    new-instance v0, Lcom/oplus/epona/Request$Builder;

    invoke-direct {v0}, Lcom/oplus/epona/Request$Builder;-><init>()V

    const-string v1, "android.os.PowerManager"

    .line 290
    invoke-virtual {v0, v1}, Lcom/oplus/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v0

    const-string v1, "getLastSleepReason"

    .line 291
    invoke-virtual {v0, v1}, Lcom/oplus/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v0

    .line 292
    invoke-virtual {v0}, Lcom/oplus/epona/Request$Builder;->build()Lcom/oplus/epona/Request;

    move-result-object v0

    .line 294
    invoke-static {v0}, Lcom/oplus/epona/Epona;->newCall(Lcom/oplus/epona/Request;)Lcom/oplus/epona/internal/RealCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/epona/internal/RealCall;->execute()Lcom/oplus/epona/Response;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {v0}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    invoke-virtual {v0}, Lcom/oplus/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0

    .line 300
    :cond_1
    new-instance v0, Lcom/oplus/compat/b/a/b;

    const-string v1, "not supported before S"

    invoke-direct {v0, v1}, Lcom/oplus/compat/b/a/b;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getMaximumScreenBrightnessSetting(Landroid/os/PowerManager;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 56
    invoke-static {}, Lcom/oplus/compat/b/a/c;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result p0

    return p0

    .line 59
    :cond_0
    new-instance p0, Lcom/oplus/compat/b/a/b;

    const-string v0, "not supported before N"

    invoke-direct {p0, v0}, Lcom/oplus/compat/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getMaximumScreenBrightnessSettingQCompat(Landroid/os/PowerManager;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMinimumScreenBrightnessSetting(Landroid/os/PowerManager;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 71
    invoke-static {}, Lcom/oplus/compat/b/a/c;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result p0

    return p0

    .line 74
    :cond_0
    new-instance p0, Lcom/oplus/compat/b/a/b;

    const-string v0, "not supported before N"

    invoke-direct {p0, v0}, Lcom/oplus/compat/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getMinimumScreenBrightnessSettingQCompat(Landroid/os/PowerManager;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPowerSaveState(I)Landroid/os/PowerSaveState;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 239
    invoke-static {}, Lcom/oplus/compat/b/a/c;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    new-instance v0, Lcom/oplus/epona/Request$Builder;

    invoke-direct {v0}, Lcom/oplus/epona/Request$Builder;-><init>()V

    const-string v1, "android.os.PowerManager"

    invoke-virtual {v0, v1}, Lcom/oplus/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v0

    const-string v1, "getPowerSaveState"

    .line 241
    invoke-virtual {v0, v1}, Lcom/oplus/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v0

    const-string v1, "serviceType"

    .line 242
    invoke-virtual {v0, v1, p0}, Lcom/oplus/epona/Request$Builder;->withInt(Ljava/lang/String;I)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    .line 243
    invoke-virtual {p0}, Lcom/oplus/epona/Request$Builder;->build()Lcom/oplus/epona/Request;

    move-result-object p0

    .line 244
    invoke-static {p0}, Lcom/oplus/epona/Epona;->newCall(Lcom/oplus/epona/Request;)Lcom/oplus/epona/internal/RealCall;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/internal/RealCall;->execute()Lcom/oplus/epona/Response;

    move-result-object p0

    .line 245
    invoke-virtual {p0}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/oplus/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "result"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/os/PowerSaveState;

    return-object p0

    .line 248
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "response code error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PowerManagerNative"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 251
    :cond_1
    new-instance p0, Lcom/oplus/compat/b/a/b;

    const-string v0, "Not Supported Before R"

    invoke-direct {p0, v0}, Lcom/oplus/compat/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getRealMaximumScreenBrightnessSetting()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
    .end annotation

    .line 127
    invoke-static {}, Lcom/oplus/compat/b/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-static {}, Lcom/oplus/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 129
    invoke-virtual {v0}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v0

    return v0

    .line 131
    :cond_0
    new-instance v0, Lcom/oplus/compat/b/a/b;

    const-string v1, "not supported before Q"

    invoke-direct {v0, v1}, Lcom/oplus/compat/b/a/b;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getRealMinimumScreenBrightnessSetting()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
    .end annotation

    .line 139
    invoke-static {}, Lcom/oplus/compat/b/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-static {}, Lcom/oplus/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 141
    invoke-virtual {v0}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v0

    return v0

    .line 143
    :cond_0
    new-instance v0, Lcom/oplus/compat/b/a/b;

    const-string v1, "not supported before Q"

    invoke-direct {v0, v1}, Lcom/oplus/compat/b/a/b;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getWakeLockedUids(Landroid/os/PowerManager;)[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 150
    invoke-static {}, Lcom/oplus/compat/b/a/c;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 152
    invoke-static {}, Lcom/oplus/compat/b/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-static {p0}, Lcom/oplus/compat/os/PowerManagerNative;->getWakeLockedUidsQCompat(Landroid/os/PowerManager;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    check-cast p0, [I

    return-object p0

    .line 155
    :cond_0
    new-instance p0, Lcom/oplus/compat/b/a/b;

    invoke-direct {p0}, Lcom/oplus/compat/b/a/b;-><init>()V

    throw p0

    .line 151
    :cond_1
    new-instance p0, Lcom/oplus/compat/b/a/b;

    const-string v0, "not supported in R because of not exist"

    invoke-direct {p0, v0}, Lcom/oplus/compat/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getWakeLockedUidsQCompat(Landroid/os/PowerManager;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static goToSleep(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 261
    invoke-static {}, Lcom/oplus/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 262
    invoke-static {}, Lcom/oplus/compat/b/a/c;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    new-instance v0, Lcom/oplus/epona/Request$Builder;

    invoke-direct {v0}, Lcom/oplus/epona/Request$Builder;-><init>()V

    const-string v1, "android.os.PowerManager"

    .line 264
    invoke-virtual {v0, v1}, Lcom/oplus/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v0

    const-string v1, "goToSleep"

    .line 265
    invoke-virtual {v0, v1}, Lcom/oplus/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v0

    const-string v1, "time"

    .line 266
    invoke-virtual {v0, v1, p0, p1}, Lcom/oplus/epona/Request$Builder;->withLong(Ljava/lang/String;J)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    .line 267
    invoke-virtual {p0}, Lcom/oplus/epona/Request$Builder;->build()Lcom/oplus/epona/Request;

    move-result-object p0

    .line 269
    invoke-static {p0}, Lcom/oplus/epona/Epona;->newCall(Lcom/oplus/epona/Request;)Lcom/oplus/epona/internal/RealCall;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/internal/RealCall;->execute()Lcom/oplus/epona/Response;

    goto :goto_0

    .line 270
    :cond_0
    invoke-static {}, Lcom/oplus/compat/b/a/c;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 271
    invoke-static {v0, p0, p1}, Lcom/oplus/compat/os/PowerManagerNative;->goToSleepQCompat(Landroid/os/PowerManager;J)V

    goto :goto_0

    .line 272
    :cond_1
    invoke-static {}, Lcom/oplus/compat/b/a/c;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 273
    invoke-virtual {v0, p0, p1}, Landroid/os/PowerManager;->goToSleep(J)V

    :goto_0
    return-void

    .line 275
    :cond_2
    new-instance p0, Lcom/oplus/compat/b/a/b;

    const-string p1, "not supported before R"

    invoke-direct {p0, p1}, Lcom/oplus/compat/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static goToSleepQCompat(Landroid/os/PowerManager;J)V
    .locals 0

    return-void
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 200
    invoke-static {}, Lcom/oplus/compat/b/a/c;->d()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 201
    new-instance p0, Lcom/oplus/epona/Request$Builder;

    invoke-direct {p0}, Lcom/oplus/epona/Request$Builder;-><init>()V

    const-string v0, "android.os.PowerManager"

    .line 202
    invoke-virtual {p0, v0}, Lcom/oplus/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    const-string v0, "reboot"

    .line 203
    invoke-virtual {p0, v0}, Lcom/oplus/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    const-string v0, "reason"

    .line 204
    invoke-virtual {p0, v0, p1}, Lcom/oplus/epona/Request$Builder;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    .line 205
    invoke-virtual {p0}, Lcom/oplus/epona/Request$Builder;->build()Lcom/oplus/epona/Request;

    move-result-object p0

    .line 206
    invoke-static {p0}, Lcom/oplus/epona/Epona;->newCall(Lcom/oplus/epona/Request;)Lcom/oplus/epona/internal/RealCall;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/internal/RealCall;->execute()Lcom/oplus/epona/Response;

    move-result-object p0

    .line 207
    invoke-virtual {p0}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result p1

    if-nez p1, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/oplus/epona/Response;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PowerManagerNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 211
    :cond_1
    new-instance p0, Lcom/oplus/compat/b/a/b;

    const-string p1, "not supported befor R"

    invoke-direct {p0, p1}, Lcom/oplus/compat/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setPowerSaveModeEnabled(Landroid/content/Context;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 219
    invoke-static {}, Lcom/oplus/compat/b/a/c;->d()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 220
    new-instance p0, Lcom/oplus/epona/Request$Builder;

    invoke-direct {p0}, Lcom/oplus/epona/Request$Builder;-><init>()V

    const-string v0, "android.os.PowerManager"

    .line 221
    invoke-virtual {p0, v0}, Lcom/oplus/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    const-string v0, "setPowerSaveModeEnabled"

    .line 222
    invoke-virtual {p0, v0}, Lcom/oplus/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    const-string v0, "mode"

    .line 223
    invoke-virtual {p0, v0, p1}, Lcom/oplus/epona/Request$Builder;->withBoolean(Ljava/lang/String;Z)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    .line 224
    invoke-virtual {p0}, Lcom/oplus/epona/Request$Builder;->build()Lcom/oplus/epona/Request;

    move-result-object p0

    .line 225
    invoke-static {p0}, Lcom/oplus/epona/Epona;->newCall(Lcom/oplus/epona/Request;)Lcom/oplus/epona/internal/RealCall;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/internal/RealCall;->execute()Lcom/oplus/epona/Response;

    move-result-object p0

    .line 226
    invoke-virtual {p0}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/oplus/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "result"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 230
    :cond_1
    new-instance p0, Lcom/oplus/compat/b/a/b;

    const-string p1, "not supported before R"

    invoke-direct {p0, p1}, Lcom/oplus/compat/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static shutdown(ZLjava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 179
    invoke-static {}, Lcom/oplus/compat/b/a/c;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    new-instance v0, Lcom/oplus/epona/Request$Builder;

    invoke-direct {v0}, Lcom/oplus/epona/Request$Builder;-><init>()V

    const-string v1, "android.os.PowerManager"

    invoke-virtual {v0, v1}, Lcom/oplus/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v0

    const-string v1, "shutdown"

    .line 181
    invoke-virtual {v0, v1}, Lcom/oplus/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v0

    const-string v1, "confirm"

    .line 182
    invoke-virtual {v0, v1, p0}, Lcom/oplus/epona/Request$Builder;->withBoolean(Ljava/lang/String;Z)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    const-string v0, "reason"

    .line 183
    invoke-virtual {p0, v0, p1}, Lcom/oplus/epona/Request$Builder;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    const-string p1, "wait"

    .line 184
    invoke-virtual {p0, p1, p2}, Lcom/oplus/epona/Request$Builder;->withBoolean(Ljava/lang/String;Z)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    .line 185
    invoke-virtual {p0}, Lcom/oplus/epona/Request$Builder;->build()Lcom/oplus/epona/Request;

    move-result-object p0

    .line 186
    invoke-static {p0}, Lcom/oplus/epona/Epona;->newCall(Lcom/oplus/epona/Request;)Lcom/oplus/epona/internal/RealCall;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/internal/RealCall;->execute()Lcom/oplus/epona/Response;

    move-result-object p0

    .line 187
    invoke-virtual {p0}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result p1

    if-nez p1, :cond_0

    .line 188
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "response code error:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PowerManagerNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 191
    :cond_1
    new-instance p0, Lcom/oplus/compat/b/a/b;

    const-string p1, "not supported before R"

    invoke-direct {p0, p1}, Lcom/oplus/compat/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static userActivity(JII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 308
    invoke-static {}, Lcom/oplus/compat/b/a/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    new-instance v0, Lcom/oplus/epona/Request$Builder;

    invoke-direct {v0}, Lcom/oplus/epona/Request$Builder;-><init>()V

    const-string v1, "android.os.PowerManager"

    .line 310
    invoke-virtual {v0, v1}, Lcom/oplus/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v0

    const-string v1, "userActivity"

    .line 311
    invoke-virtual {v0, v1}, Lcom/oplus/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v0

    const-string v1, "when"

    .line 312
    invoke-virtual {v0, v1, p0, p1}, Lcom/oplus/epona/Request$Builder;->withLong(Ljava/lang/String;J)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    const-string p1, "event"

    .line 313
    invoke-virtual {p0, p1, p2}, Lcom/oplus/epona/Request$Builder;->withInt(Ljava/lang/String;I)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    const-string p1, "flags"

    .line 314
    invoke-virtual {p0, p1, p3}, Lcom/oplus/epona/Request$Builder;->withInt(Ljava/lang/String;I)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    .line 315
    invoke-virtual {p0}, Lcom/oplus/epona/Request$Builder;->build()Lcom/oplus/epona/Request;

    move-result-object p0

    .line 317
    invoke-static {p0}, Lcom/oplus/epona/Epona;->newCall(Lcom/oplus/epona/Request;)Lcom/oplus/epona/internal/RealCall;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/internal/RealCall;->execute()Lcom/oplus/epona/Response;

    return-void

    .line 319
    :cond_0
    new-instance p0, Lcom/oplus/compat/b/a/b;

    const-string p1, "not supported before S"

    invoke-direct {p0, p1}, Lcom/oplus/compat/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static wakeUp(Landroid/os/PowerManager;JLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 86
    invoke-static {}, Lcom/oplus/compat/b/a/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_0
    invoke-static {}, Lcom/oplus/compat/b/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    invoke-static {p0, p1, p2, p3}, Lcom/oplus/inner/os/PowerManagerWrapper;->wakeUp(Landroid/os/PowerManager;JLjava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_1
    invoke-static {}, Lcom/oplus/compat/b/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    invoke-static {p0, p1, p2, p3}, Lcom/oplus/compat/os/PowerManagerNative;->wakeUpCompat(Landroid/os/PowerManager;JLjava/lang/String;)V

    :goto_0
    return-void

    .line 93
    :cond_2
    new-instance p0, Lcom/oplus/compat/b/a/b;

    invoke-direct {p0}, Lcom/oplus/compat/b/a/b;-><init>()V

    throw p0
.end method

.method private static wakeUpCompat(Landroid/os/PowerManager;JLjava/lang/String;)V
    .locals 0

    return-void
.end method
