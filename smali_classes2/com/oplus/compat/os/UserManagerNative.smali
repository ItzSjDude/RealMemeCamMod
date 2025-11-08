.class public Lcom/oplus/compat/os/UserManagerNative;
.super Ljava/lang/Object;
.source "UserManagerNative.java"


# static fields
.field private static final COMPONENT_NAME:Ljava/lang/String; = "android.os.UserManager"

.field private static final RESULT:Ljava/lang/String; = "result"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canAddMoreUsers()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 176
    invoke-static {}, Lcom/oplus/compat/b/a/c;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    new-instance v0, Lcom/oplus/epona/Request$Builder;

    invoke-direct {v0}, Lcom/oplus/epona/Request$Builder;-><init>()V

    const-string v1, "android.os.UserManager"

    .line 178
    invoke-virtual {v0, v1}, Lcom/oplus/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v0

    const-string v1, "canAddMoreUsers"

    .line 179
    invoke-virtual {v0, v1}, Lcom/oplus/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Lcom/oplus/epona/Request$Builder;->build()Lcom/oplus/epona/Request;

    move-result-object v0

    .line 181
    invoke-static {v0}, Lcom/oplus/epona/Epona;->newCall(Lcom/oplus/epona/Request;)Lcom/oplus/epona/internal/RealCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/epona/internal/RealCall;->execute()Lcom/oplus/epona/Response;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    invoke-virtual {v0}, Lcom/oplus/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 186
    :cond_1
    new-instance v0, Lcom/oplus/compat/b/a/b;

    const-string v1, "Not Supported Before R"

    invoke-direct {v0, v1}, Lcom/oplus/compat/b/a/b;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static canShowMultiUserEntry(Landroid/content/Context;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 227
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-static {p0, v0}, Lcom/oplus/compat/os/UserManagerNative;->canShowMultiUserEntry(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method public static canShowMultiUserEntry(Landroid/content/Context;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 233
    invoke-static {}, Lcom/oplus/compat/b/a/c;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p0, 0x378

    const/4 v0, 0x0

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const-string p0, "persist.sys.assert.panic.multi.user.entrance"

    .line 238
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_1

    return p1

    .line 241
    :cond_1
    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object p0

    const-string v0, "oplus.software.multiuser_entry_disabled"

    invoke-virtual {p0, v0}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result p0

    xor-int/2addr p0, p1

    return p0

    .line 242
    :cond_2
    invoke-static {}, Lcom/oplus/compat/b/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 243
    invoke-static {p0, p1}, Lcom/oplus/compat/os/UserManagerNative;->canShowMultiUserEntryCompat(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 245
    :cond_3
    new-instance p0, Lcom/oplus/compat/b/a/b;

    const-string p1, "Not Supported Before Q"

    invoke-direct {p0, p1}, Lcom/oplus/compat/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static canShowMultiUserEntryCompat(Landroid/content/Context;I)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static createUser(Landroid/content/Context;Ljava/lang/String;I)Lcom/oplus/compat/content/pm/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 63
    invoke-static {}, Lcom/oplus/compat/b/a/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    new-instance p0, Lcom/oplus/epona/Request$Builder;

    invoke-direct {p0}, Lcom/oplus/epona/Request$Builder;-><init>()V

    const-string v0, "android.os.UserManager"

    .line 65
    invoke-virtual {p0, v0}, Lcom/oplus/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    const-string v0, "createUserWithThrow"

    .line 66
    invoke-virtual {p0, v0}, Lcom/oplus/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    const-string v0, "name"

    .line 67
    invoke-virtual {p0, v0, p1}, Lcom/oplus/epona/Request$Builder;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    const-string p1, "flags"

    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/oplus/epona/Request$Builder;->withInt(Ljava/lang/String;I)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    .line 69
    invoke-virtual {p0}, Lcom/oplus/epona/Request$Builder;->build()Lcom/oplus/epona/Request;

    move-result-object p0

    .line 70
    invoke-static {p0}, Lcom/oplus/epona/Epona;->newCall(Lcom/oplus/epona/Request;)Lcom/oplus/epona/internal/RealCall;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/internal/RealCall;->execute()Lcom/oplus/epona/Response;

    move-result-object p0

    .line 71
    invoke-virtual {p0}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 72
    new-instance p1, Lcom/oplus/compat/content/pm/c;

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object p0

    const-string p2, "result"

    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/content/pm/UserInfo;

    invoke-direct {p1, p0}, Lcom/oplus/compat/content/pm/c;-><init>(Landroid/content/pm/UserInfo;)V

    return-object p1

    .line 74
    :cond_0
    invoke-static {}, Lcom/oplus/compat/b/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "user"

    .line 75
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 76
    invoke-static {p0, p1, p2}, Lcom/oplus/compat/os/UserManagerNative;->createUserForQCompat(Landroid/os/UserManager;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 78
    new-instance p1, Lcom/oplus/compat/content/pm/c;

    invoke-direct {p1, p0}, Lcom/oplus/compat/content/pm/c;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0

    .line 81
    :cond_2
    new-instance p0, Lcom/oplus/compat/b/a/b;

    const-string p1, "Not Supported Before Q"

    invoke-direct {p0, p1}, Lcom/oplus/compat/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static createUserForQCompat(Landroid/os/UserManager;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getUserInfo(Landroid/content/Context;II)Lcom/oplus/compat/content/pm/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 96
    invoke-static {}, Lcom/oplus/compat/b/a/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    new-instance p0, Lcom/oplus/epona/Request$Builder;

    invoke-direct {p0}, Lcom/oplus/epona/Request$Builder;-><init>()V

    const-string p2, "android.os.UserManager"

    .line 98
    invoke-virtual {p0, p2}, Lcom/oplus/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    const-string p2, "getUserInfo"

    .line 99
    invoke-virtual {p0, p2}, Lcom/oplus/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    const-string p2, "userId"

    .line 100
    invoke-virtual {p0, p2, p1}, Lcom/oplus/epona/Request$Builder;->withInt(Ljava/lang/String;I)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    .line 101
    invoke-virtual {p0}, Lcom/oplus/epona/Request$Builder;->build()Lcom/oplus/epona/Request;

    move-result-object p0

    .line 102
    invoke-static {p0}, Lcom/oplus/epona/Epona;->newCall(Lcom/oplus/epona/Request;)Lcom/oplus/epona/internal/RealCall;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/internal/RealCall;->execute()Lcom/oplus/epona/Response;

    move-result-object p0

    .line 103
    invoke-virtual {p0}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 104
    invoke-virtual {p0}, Lcom/oplus/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "result"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/content/pm/UserInfo;

    .line 105
    new-instance p1, Lcom/oplus/compat/content/pm/c;

    invoke-direct {p1, p0}, Lcom/oplus/compat/content/pm/c;-><init>(Landroid/content/pm/UserInfo;)V

    return-object p1

    .line 107
    :cond_0
    invoke-static {}, Lcom/oplus/compat/b/a/c;->e()Z

    move-result p1

    const-string v0, "user"

    if-eqz p1, :cond_1

    .line 108
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 109
    invoke-static {p0, p2}, Lcom/oplus/compat/os/UserManagerNative;->getUserInfoQCompat(Landroid/os/UserManager;I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 111
    new-instance p1, Lcom/oplus/compat/content/pm/c;

    invoke-direct {p1, p0}, Lcom/oplus/compat/content/pm/c;-><init>(Ljava/lang/Object;)V

    return-object p1

    .line 113
    :cond_1
    invoke-static {}, Lcom/oplus/compat/b/a/c;->k()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 114
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 115
    invoke-virtual {p0, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 117
    new-instance p1, Lcom/oplus/compat/content/pm/c;

    invoke-direct {p1, p0}, Lcom/oplus/compat/content/pm/c;-><init>(Landroid/content/pm/UserInfo;)V

    return-object p1

    :cond_2
    const/4 p0, 0x0

    return-object p0

    .line 120
    :cond_3
    new-instance p0, Lcom/oplus/compat/b/a/b;

    const-string p1, "Not Supported Before L"

    invoke-direct {p0, p1}, Lcom/oplus/compat/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getUserInfoQCompat(Landroid/os/UserManager;I)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getUsers(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/oplus/compat/content/pm/c;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 194
    invoke-static {}, Lcom/oplus/compat/b/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "user"

    .line 195
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 197
    invoke-virtual {p0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 198
    new-instance v2, Lcom/oplus/compat/content/pm/c;

    invoke-direct {v2, v1}, Lcom/oplus/compat/content/pm/c;-><init>(Landroid/content/pm/UserInfo;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    .line 202
    :cond_1
    new-instance p0, Lcom/oplus/compat/b/a/b;

    const-string v0, "Not Supported Before Q"

    invoke-direct {p0, v0}, Lcom/oplus/compat/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getUsersQCompat(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static isGuestUser(Landroid/content/Context;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 43
    invoke-static {}, Lcom/oplus/compat/b/a/c;->d()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 44
    new-instance p0, Lcom/oplus/epona/Request$Builder;

    invoke-direct {p0}, Lcom/oplus/epona/Request$Builder;-><init>()V

    const-string v0, "android.os.UserManager"

    .line 45
    invoke-virtual {p0, v0}, Lcom/oplus/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    const-string v0, "isGuestUser"

    .line 46
    invoke-virtual {p0, v0}, Lcom/oplus/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    .line 47
    invoke-virtual {p0}, Lcom/oplus/epona/Request$Builder;->build()Lcom/oplus/epona/Request;

    move-result-object p0

    .line 48
    invoke-static {p0}, Lcom/oplus/epona/Epona;->newCall(Lcom/oplus/epona/Request;)Lcom/oplus/epona/internal/RealCall;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/internal/RealCall;->execute()Lcom/oplus/epona/Response;

    move-result-object p0

    .line 49
    invoke-virtual {p0}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/oplus/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "result"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 53
    :cond_1
    new-instance p0, Lcom/oplus/compat/b/a/b;

    const-string v0, "Not Supported Before R"

    invoke-direct {p0, v0}, Lcom/oplus/compat/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isUserIDExist(Landroid/content/Context;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 215
    invoke-static {}, Lcom/oplus/compat/b/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "user"

    .line 216
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 217
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 218
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 220
    :cond_1
    new-instance p0, Lcom/oplus/compat/b/a/b;

    const-string p1, "Not Supported Before Q"

    invoke-direct {p0, p1}, Lcom/oplus/compat/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isUserUnlockingOrUnlocked(Landroid/content/Context;Landroid/os/UserHandle;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 134
    invoke-static {}, Lcom/oplus/compat/b/a/c;->d()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 135
    new-instance p0, Lcom/oplus/epona/Request$Builder;

    invoke-direct {p0}, Lcom/oplus/epona/Request$Builder;-><init>()V

    const-string v0, "android.os.UserManager"

    .line 136
    invoke-virtual {p0, v0}, Lcom/oplus/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    const-string v0, "isUserUnlockingOrUnlocked"

    .line 137
    invoke-virtual {p0, v0}, Lcom/oplus/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    const-string v0, "userHandle"

    .line 138
    invoke-virtual {p0, v0, p1}, Lcom/oplus/epona/Request$Builder;->withParcelable(Ljava/lang/String;Landroid/os/Parcelable;)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    .line 139
    invoke-virtual {p0}, Lcom/oplus/epona/Request$Builder;->build()Lcom/oplus/epona/Request;

    move-result-object p0

    .line 140
    invoke-static {p0}, Lcom/oplus/epona/Epona;->newCall(Lcom/oplus/epona/Request;)Lcom/oplus/epona/internal/RealCall;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/internal/RealCall;->execute()Lcom/oplus/epona/Response;

    move-result-object p0

    .line 141
    invoke-virtual {p0}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/oplus/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "result"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 145
    :cond_1
    new-instance p0, Lcom/oplus/compat/b/a/b;

    const-string p1, "Not Supported Before R"

    invoke-direct {p0, p1}, Lcom/oplus/compat/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static removeUser(Landroid/content/Context;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 155
    invoke-static {}, Lcom/oplus/compat/b/a/c;->d()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 156
    new-instance p0, Lcom/oplus/epona/Request$Builder;

    invoke-direct {p0}, Lcom/oplus/epona/Request$Builder;-><init>()V

    const-string v0, "android.os.UserManager"

    .line 157
    invoke-virtual {p0, v0}, Lcom/oplus/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    const-string v0, "removeUser"

    .line 158
    invoke-virtual {p0, v0}, Lcom/oplus/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    const-string v0, "userId"

    .line 159
    invoke-virtual {p0, v0, p1}, Lcom/oplus/epona/Request$Builder;->withInt(Ljava/lang/String;I)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    .line 160
    invoke-virtual {p0}, Lcom/oplus/epona/Request$Builder;->build()Lcom/oplus/epona/Request;

    move-result-object p0

    .line 161
    invoke-static {p0}, Lcom/oplus/epona/Epona;->newCall(Lcom/oplus/epona/Request;)Lcom/oplus/epona/internal/RealCall;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/internal/RealCall;->execute()Lcom/oplus/epona/Response;

    move-result-object p0

    .line 162
    invoke-virtual {p0}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/oplus/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "result"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 166
    :cond_1
    new-instance p0, Lcom/oplus/compat/b/a/b;

    const-string p1, "Not Supported Before R"

    invoke-direct {p0, p1}, Lcom/oplus/compat/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method
