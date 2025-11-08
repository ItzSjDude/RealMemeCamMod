.class public Lcom/oplus/compat/a/a$a;
.super Ljava/lang/Object;
.source "SettingsNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/compat/a/a$a$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;

.field public static b:I

.field public static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "SettingsNative"

    .line 225
    :try_start_0
    invoke-static {}, Lcom/oplus/compat/b/a/c;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 226
    new-instance v1, Lcom/oplus/epona/Request$Builder;

    invoke-direct {v1}, Lcom/oplus/epona/Request$Builder;-><init>()V

    const-string v2, "Settings.Secure"

    .line 227
    invoke-virtual {v1, v2}, Lcom/oplus/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v1

    const-string v2, "getConstant"

    .line 228
    invoke-virtual {v1, v2}, Lcom/oplus/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v1

    .line 229
    invoke-virtual {v1}, Lcom/oplus/epona/Request$Builder;->build()Lcom/oplus/epona/Request;

    move-result-object v1

    .line 230
    invoke-static {v1}, Lcom/oplus/epona/Epona;->newCall(Lcom/oplus/epona/Request;)Lcom/oplus/epona/internal/RealCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/epona/internal/RealCall;->execute()Lcom/oplus/epona/Response;

    move-result-object v1

    .line 231
    invoke-virtual {v1}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    invoke-virtual {v1}, Lcom/oplus/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "LOCATION_CHANGER"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/oplus/compat/a/a$a;->c:Ljava/lang/String;

    .line 233
    invoke-virtual {v1}, Lcom/oplus/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "LOCATION_CHANGER_SYSTEM_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/oplus/compat/a/a$a;->b:I

    goto :goto_0

    :cond_0
    const-string v1, "Epona Communication failed, static initializer failed."

    .line 235
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 237
    :cond_1
    invoke-static {}, Lcom/oplus/compat/b/a/c;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 238
    invoke-static {}, Lcom/oplus/compat/a/a$a$a;->a()Lcom/oplus/utils/reflect/RefObject;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oplus/utils/reflect/RefObject;->getWithException(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lcom/oplus/compat/a/a$a;->a:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v1, "Not supported before Q"

    .line 240
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 243
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;I)Z
    .locals 2

    .line 275
    invoke-static {}, Lcom/oplus/compat/b/a/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    new-instance v0, Lcom/oplus/epona/Request$Builder;

    invoke-direct {v0}, Lcom/oplus/epona/Request$Builder;-><init>()V

    const-string v1, "Settings.Secure"

    .line 277
    invoke-virtual {v0, v1}, Lcom/oplus/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v0

    const-string v1, "putInt"

    .line 278
    invoke-virtual {v0, v1}, Lcom/oplus/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v0

    const-string v1, "SETTINGS_KEY"

    .line 279
    invoke-virtual {v0, v1, p0}, Lcom/oplus/epona/Request$Builder;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    const-string v0, "SETTINGS_VALUE"

    .line 280
    invoke-virtual {p0, v0, p1}, Lcom/oplus/epona/Request$Builder;->withInt(Ljava/lang/String;I)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    .line 281
    invoke-virtual {p0}, Lcom/oplus/epona/Request$Builder;->build()Lcom/oplus/epona/Request;

    move-result-object p0

    .line 282
    invoke-static {p0}, Lcom/oplus/epona/Epona;->newCall(Lcom/oplus/epona/Request;)Lcom/oplus/epona/internal/RealCall;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/internal/RealCall;->execute()Lcom/oplus/epona/Response;

    move-result-object p0

    .line 283
    invoke-virtual {p0}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 284
    invoke-virtual {p0}, Lcom/oplus/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "result"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 286
    :cond_0
    invoke-static {}, Lcom/oplus/compat/b/a/c;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    invoke-static {}, Lcom/oplus/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 288
    invoke-static {v0, p0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_1
    const-string p0, "SettingsNative"

    const-string p1, "SettingsNative.Secure.putInt is not supported before M"

    .line 290
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
