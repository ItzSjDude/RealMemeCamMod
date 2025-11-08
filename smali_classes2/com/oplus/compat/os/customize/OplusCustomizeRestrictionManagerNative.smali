.class public Lcom/oplus/compat/os/customize/OplusCustomizeRestrictionManagerNative;
.super Ljava/lang/Object;
.source "OplusCustomizeRestrictionManagerNative.java"


# static fields
.field private static final ACTION_SCREEN_STATE:Ljava/lang/String; = "getForbidRecordScreenState"

.field private static final ACTION_SIDEBAR_POLICY:Ljava/lang/String; = "getSideBarPolicies"

.field private static final COMPONENT_NAME:Ljava/lang/String;

.field private static final RESULT:Ljava/lang/String; = "result"

.field private static final TAG:Ljava/lang/String; = "RestrictionNative"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    invoke-static {}, Lcom/oplus/compat/os/customize/OplusCustomizeRestrictionManagerNative;->getComponentName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/compat/os/customize/OplusCustomizeRestrictionManagerNative;->COMPONENT_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getComponentName()Ljava/lang/String;
    .locals 1

    .line 27
    invoke-static {}, Lcom/oplus/compat/b/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.oplus.screenrecorder.RestrictionManager"

    return-object v0

    .line 30
    :cond_0
    invoke-static {}, Lcom/oplus/compat/os/customize/OplusCustomizeRestrictionManagerNative;->getComponentNameForCompat()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static getComponentNameForCompat()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getForbidRecordScreenState()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 44
    invoke-static {}, Lcom/oplus/compat/b/a/c;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    new-instance v0, Lcom/oplus/epona/Request$Builder;

    invoke-direct {v0}, Lcom/oplus/epona/Request$Builder;-><init>()V

    sget-object v1, Lcom/oplus/compat/os/customize/OplusCustomizeRestrictionManagerNative;->COMPONENT_NAME:Ljava/lang/String;

    .line 46
    invoke-virtual {v0, v1}, Lcom/oplus/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v0

    const-string v1, "getForbidRecordScreenState"

    .line 47
    invoke-virtual {v0, v1}, Lcom/oplus/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/oplus/epona/Request$Builder;->build()Lcom/oplus/epona/Request;

    move-result-object v0

    .line 49
    invoke-static {v0}, Lcom/oplus/epona/Epona;->newCall(Lcom/oplus/epona/Request;)Lcom/oplus/epona/internal/RealCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/epona/internal/RealCall;->execute()Lcom/oplus/epona/Response;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    invoke-virtual {v0}, Lcom/oplus/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 53
    :cond_0
    invoke-virtual {v0}, Lcom/oplus/epona/Response;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RestrictionNative"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    .line 56
    :cond_1
    new-instance v0, Lcom/oplus/compat/b/a/b;

    const-string v1, "Not Supported Before R"

    invoke-direct {v0, v1}, Lcom/oplus/compat/b/a/b;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getSideBarPolicies()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 67
    invoke-static {}, Lcom/oplus/compat/b/a/c;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    new-instance v0, Lcom/oplus/epona/Request$Builder;

    invoke-direct {v0}, Lcom/oplus/epona/Request$Builder;-><init>()V

    sget-object v1, Lcom/oplus/compat/os/customize/OplusCustomizeRestrictionManagerNative;->COMPONENT_NAME:Ljava/lang/String;

    .line 69
    invoke-virtual {v0, v1}, Lcom/oplus/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v0

    const-string v1, "getSideBarPolicies"

    .line 70
    invoke-virtual {v0, v1}, Lcom/oplus/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lcom/oplus/epona/Request$Builder;->build()Lcom/oplus/epona/Request;

    move-result-object v0

    .line 72
    invoke-static {v0}, Lcom/oplus/epona/Epona;->newCall(Lcom/oplus/epona/Request;)Lcom/oplus/epona/internal/RealCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/epona/internal/RealCall;->execute()Lcom/oplus/epona/Response;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    invoke-virtual {v0}, Lcom/oplus/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 76
    :cond_0
    invoke-virtual {v0}, Lcom/oplus/epona/Response;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RestrictionNative"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    .line 79
    :cond_1
    new-instance v0, Lcom/oplus/compat/b/a/b;

    const-string v1, "Not Supported Before R"

    invoke-direct {v0, v1}, Lcom/oplus/compat/b/a/b;-><init>(Ljava/lang/String;)V

    throw v0
.end method
