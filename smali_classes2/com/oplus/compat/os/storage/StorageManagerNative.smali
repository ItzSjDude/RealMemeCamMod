.class public Lcom/oplus/compat/os/storage/StorageManagerNative;
.super Ljava/lang/Object;
.source "StorageManagerNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/compat/os/storage/StorageManagerNative$RefDiskInfo;,
        Lcom/oplus/compat/os/storage/StorageManagerNative$ReflectVolumeInfo;,
        Lcom/oplus/compat/os/storage/StorageManagerNative$ReflectInfo;
    }
.end annotation


# static fields
.field private static final COMPONENT_NAME:Ljava/lang/String; = "android.os.storage.StorageManager"

.field private static final TAG:Ljava/lang/String; = "StorageManagerNative"

.field private static mListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/oplus/compat/os/storage/StorageEventListenerNative;",
            "Lcom/oplus/inner/os/storage/StorageEventListenerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private static mListenerMapCompat:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/oplus/compat/os/storage/StorageEventListenerNative;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oplus/compat/os/storage/StorageManagerNative;->mListenerMap:Ljava/util/HashMap;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oplus/compat/os/storage/StorageManagerNative;->mListenerMapCompat:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSDCardVolumeInfo(Landroid/content/Context;)Lcom/oplus/compat/os/storage/VolumeInfoNative;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 79
    invoke-static {}, Lcom/oplus/compat/b/a/c;->c()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "storage"

    if-eqz v0, :cond_2

    .line 80
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    .line 81
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object p0

    .line 82
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeInfo;

    .line 83
    new-instance v2, Lcom/oplus/compat/os/storage/VolumeInfoNative;

    invoke-direct {v2, v0}, Lcom/oplus/compat/os/storage/VolumeInfoNative;-><init>(Ljava/lang/Object;)V

    .line 84
    invoke-virtual {v2}, Lcom/oplus/compat/os/storage/VolumeInfoNative;->isSd()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v2

    :cond_1
    return-object v1

    .line 89
    :cond_2
    invoke-static {}, Lcom/oplus/compat/b/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 91
    invoke-static {}, Lcom/oplus/inner/os/storage/StorageManagerWrapper;->getSDCardVolumeInfo()Lcom/oplus/inner/os/storage/VolumeInfoWrapper;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 93
    new-instance v0, Lcom/oplus/compat/os/storage/VolumeInfoNative;

    invoke-direct {v0, p0}, Lcom/oplus/compat/os/storage/VolumeInfoNative;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 95
    :cond_3
    invoke-static {}, Lcom/oplus/compat/b/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 96
    invoke-static {}, Lcom/oplus/compat/os/storage/StorageManagerNative;->getSDCardVolumeInfoCompat()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 98
    new-instance v0, Lcom/oplus/compat/os/storage/VolumeInfoNative;

    invoke-direct {v0, p0}, Lcom/oplus/compat/os/storage/VolumeInfoNative;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 100
    :cond_4
    invoke-static {}, Lcom/oplus/compat/b/a/c;->j()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 101
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    .line 102
    invoke-static {}, Lcom/oplus/compat/os/storage/StorageManagerNative$ReflectInfo;->access$000()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v3}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    move v0, v2

    .line 103
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 104
    invoke-static {}, Lcom/oplus/compat/os/storage/StorageManagerNative$ReflectVolumeInfo;->access$100()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v3

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 105
    invoke-static {}, Lcom/oplus/compat/os/storage/StorageManagerNative$RefDiskInfo;->access$200()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v5}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 106
    new-instance v1, Lcom/oplus/compat/os/storage/VolumeInfoNative;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/oplus/compat/os/storage/VolumeInfoNative;-><init>(Ljava/lang/Object;)V

    return-object v1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    return-object v1

    .line 110
    :cond_7
    new-instance p0, Lcom/oplus/compat/b/a/b;

    invoke-direct {p0}, Lcom/oplus/compat/b/a/b;-><init>()V

    throw p0
.end method

.method private static getSDCardVolumeInfoCompat()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getVolumeList(II)[Landroid/os/storage/StorageVolume;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 201
    invoke-static {}, Lcom/oplus/compat/b/a/c;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    invoke-static {}, Lcom/oplus/compat/os/storage/StorageManagerNative$ReflectInfo;->access$300()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/os/storage/StorageVolume;

    return-object p0

    .line 204
    :cond_0
    new-instance p0, Lcom/oplus/compat/b/a/b;

    const-string p1, "not supported before M"

    invoke-direct {p0, p1}, Lcom/oplus/compat/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getVolumePaths(Landroid/content/Context;)[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 253
    invoke-static {}, Lcom/oplus/compat/b/a/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "storage"

    .line 254
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    .line 255
    invoke-static {}, Lcom/oplus/compat/os/storage/StorageManagerNative$ReflectInfo;->access$600()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    .line 257
    :cond_0
    new-instance p0, Lcom/oplus/compat/b/a/b;

    const-string v0, "not supported before R"

    invoke-direct {p0, v0}, Lcom/oplus/compat/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getVolumeState(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 211
    invoke-static {}, Lcom/oplus/compat/b/a/c;->d()Z

    move-result v0

    const-string v1, "storage"

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    .line 213
    invoke-static {}, Lcom/oplus/compat/os/storage/StorageManagerNative$ReflectInfo;->access$400()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 214
    :cond_0
    invoke-static {}, Lcom/oplus/compat/b/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    invoke-static {p0, p1}, Lcom/oplus/compat/os/storage/StorageManagerNative;->getVolumeStateCompat(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 216
    :cond_1
    invoke-static {}, Lcom/oplus/compat/b/a/c;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 217
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    .line 218
    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 220
    :cond_2
    new-instance p0, Lcom/oplus/compat/b/a/b;

    const-string p1, "not supported before O"

    invoke-direct {p0, p1}, Lcom/oplus/compat/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getVolumeStateCompat(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getVolumes(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 242
    invoke-static {}, Lcom/oplus/compat/b/a/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "storage"

    .line 243
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    .line 244
    invoke-static {}, Lcom/oplus/compat/os/storage/StorageManagerNative$ReflectInfo;->access$000()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    .line 246
    :cond_0
    new-instance p0, Lcom/oplus/compat/b/a/b;

    const-string v0, "not supported before R"

    invoke-direct {p0, v0}, Lcom/oplus/compat/b/a/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isFileEncryptedNativeOnly()Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 232
    invoke-static {}, Lcom/oplus/compat/b/a/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    invoke-static {}, Lcom/oplus/compat/os/storage/StorageManagerNative$ReflectInfo;->access$500()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0

    .line 235
    :cond_0
    new-instance v0, Lcom/oplus/compat/b/a/b;

    const-string v1, "not supported before R"

    invoke-direct {v0, v1}, Lcom/oplus/compat/b/a/b;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static registerListener(Landroid/content/Context;Lcom/oplus/compat/os/storage/StorageEventListenerNative;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 118
    invoke-static {}, Lcom/oplus/compat/b/a/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "storage"

    .line 119
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    .line 120
    new-instance v0, Lcom/oplus/compat/os/storage/StorageManagerNative$1;

    invoke-direct {v0, p1}, Lcom/oplus/compat/os/storage/StorageManagerNative$1;-><init>(Lcom/oplus/compat/os/storage/StorageEventListenerNative;)V

    invoke-virtual {p1, v0}, Lcom/oplus/compat/os/storage/StorageEventListenerNative;->setDelegate(Landroid/os/storage/StorageEventListener;)V

    .line 131
    invoke-virtual {p1}, Lcom/oplus/compat/os/storage/StorageEventListenerNative;->delegate()Landroid/os/storage/StorageEventListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    goto :goto_0

    .line 132
    :cond_0
    invoke-static {}, Lcom/oplus/compat/b/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    new-instance v0, Lcom/oplus/compat/os/storage/StorageManagerNative$2;

    invoke-direct {v0, p1}, Lcom/oplus/compat/os/storage/StorageManagerNative$2;-><init>(Lcom/oplus/compat/os/storage/StorageEventListenerNative;)V

    .line 146
    sget-object v1, Lcom/oplus/compat/os/storage/StorageManagerNative;->mListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 147
    sget-object v1, Lcom/oplus/compat/os/storage/StorageManagerNative;->mListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_1
    invoke-static {p0, v0}, Lcom/oplus/inner/os/storage/StorageManagerWrapper;->registerListener(Landroid/content/Context;Lcom/oplus/inner/os/storage/StorageEventListenerWrapper;)V

    .line 151
    sget-object p0, Lcom/oplus/compat/os/storage/StorageManagerNative;->mListenerMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 152
    :cond_2
    invoke-static {}, Lcom/oplus/compat/b/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 153
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/oplus/compat/os/storage/-$$Lambda$DglFd_ZrNnv1j1YRcnJPNRSsukY;

    invoke-direct {v0, p1}, Lcom/oplus/compat/os/storage/-$$Lambda$DglFd_ZrNnv1j1YRcnJPNRSsukY;-><init>(Lcom/oplus/compat/os/storage/StorageEventListenerNative;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/oplus/compat/os/storage/-$$Lambda$D6YHO-XTP3MHWQuokNHCjcjamUU;

    invoke-direct {v1, p1}, Lcom/oplus/compat/os/storage/-$$Lambda$D6YHO-XTP3MHWQuokNHCjcjamUU;-><init>(Lcom/oplus/compat/os/storage/StorageEventListenerNative;)V

    invoke-static {p0, v0, v1}, Lcom/oplus/compat/os/storage/StorageManagerNative;->registerListenerCompat(Landroid/content/Context;Ljava/util/function/Consumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object p0

    .line 156
    sget-object v0, Lcom/oplus/compat/os/storage/StorageManagerNative;->mListenerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 157
    sget-object v0, Lcom/oplus/compat/os/storage/StorageManagerNative;->mListenerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_3
    sget-object v0, Lcom/oplus/compat/os/storage/StorageManagerNative;->mListenerMapCompat:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    .line 162
    :cond_4
    new-instance p0, Lcom/oplus/compat/b/a/b;

    invoke-direct {p0}, Lcom/oplus/compat/b/a/b;-><init>()V

    throw p0
.end method

.method private static registerListenerCompat(Landroid/content/Context;Ljava/util/function/Consumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static unregisterListener(Landroid/content/Context;Lcom/oplus/compat/os/storage/StorageEventListenerNative;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/b/a/b;
        }
    .end annotation

    .line 176
    invoke-static {}, Lcom/oplus/compat/b/a/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "storage"

    .line 177
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    .line 178
    invoke-virtual {p1}, Lcom/oplus/compat/os/storage/StorageEventListenerNative;->delegate()Landroid/os/storage/StorageEventListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    goto :goto_0

    .line 179
    :cond_0
    invoke-static {}, Lcom/oplus/compat/b/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    sget-object v0, Lcom/oplus/compat/os/storage/StorageManagerNative;->mListenerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 181
    sget-object v0, Lcom/oplus/compat/os/storage/StorageManagerNative;->mListenerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/inner/os/storage/StorageEventListenerWrapper;

    invoke-static {p0, v0}, Lcom/oplus/inner/os/storage/StorageManagerWrapper;->unregisterListener(Landroid/content/Context;Lcom/oplus/inner/os/storage/StorageEventListenerWrapper;)V

    .line 182
    sget-object p0, Lcom/oplus/compat/os/storage/StorageManagerNative;->mListenerMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 184
    :cond_1
    invoke-static {}, Lcom/oplus/compat/b/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 185
    sget-object v0, Lcom/oplus/compat/os/storage/StorageManagerNative;->mListenerMapCompat:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 186
    sget-object v0, Lcom/oplus/compat/os/storage/StorageManagerNative;->mListenerMapCompat:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oplus/compat/os/storage/StorageManagerNative;->unregisterListenerCompat(Landroid/content/Context;Ljava/lang/Object;)V

    .line 187
    sget-object p0, Lcom/oplus/compat/os/storage/StorageManagerNative;->mListenerMapCompat:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void

    .line 190
    :cond_3
    new-instance p0, Lcom/oplus/compat/b/a/b;

    invoke-direct {p0}, Lcom/oplus/compat/b/a/b;-><init>()V

    throw p0
.end method

.method private static unregisterListenerCompat(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
