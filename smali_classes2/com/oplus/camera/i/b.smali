.class public Lcom/oplus/camera/i/b;
.super Ljava/lang/Object;
.source "FeatureFactory.java"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oplus/camera/i/e;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile b:Lcom/oplus/camera/i/b;

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private d:Lcom/oplus/camera/capmode/a;

.field private e:Lcom/oplus/camera/ui/CameraUIInterface;

.field private f:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 18
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/oplus/camera/i/b;->a:Ljava/util/Map;

    const/4 v0, 0x0

    .line 19
    sput-object v0, Lcom/oplus/camera/i/b;->b:Lcom/oplus/camera/i/b;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oplus/camera/i/b;->c:Ljava/util/Map;

    .line 31
    sget-object v0, Lcom/oplus/camera/i/b;->c:Ljava/util/Map;

    sget-object v1, Lcom/oplus/ocs/camera/CameraParameter;->FLASH_MODE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-virtual {v1}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;->getKeyName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_flashmode_key"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/oplus/camera/i/b;->c:Ljava/util/Map;

    sget-object v1, Lcom/oplus/ocs/camera/CameraParameter;->CAPTURE_HDR_MODE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-virtual {v1}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;->getKeyName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_hdr_mode_key"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/oplus/camera/i/b;->d:Lcom/oplus/camera/capmode/a;

    .line 23
    iput-object v0, p0, Lcom/oplus/camera/i/b;->e:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 24
    iput-object v0, p0, Lcom/oplus/camera/i/b;->f:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static a()Lcom/oplus/camera/i/b;
    .locals 2

    .line 36
    sget-object v0, Lcom/oplus/camera/i/b;->b:Lcom/oplus/camera/i/b;

    if-nez v0, :cond_1

    .line 37
    const-class v0, Lcom/oplus/camera/i/b;

    monitor-enter v0

    .line 38
    :try_start_0
    sget-object v1, Lcom/oplus/camera/i/b;->b:Lcom/oplus/camera/i/b;

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Lcom/oplus/camera/i/b;

    invoke-direct {v1}, Lcom/oplus/camera/i/b;-><init>()V

    sput-object v1, Lcom/oplus/camera/i/b;->b:Lcom/oplus/camera/i/b;

    .line 41
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 44
    :cond_1
    :goto_0
    sget-object v0, Lcom/oplus/camera/i/b;->b:Lcom/oplus/camera/i/b;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Lcom/oplus/camera/i/e;
    .locals 1

    .line 107
    sget-object v0, Lcom/oplus/camera/i/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/i/e;

    if-nez v0, :cond_0

    .line 110
    invoke-direct {p0, p1}, Lcom/oplus/camera/i/b;->c(Ljava/lang/String;)Lcom/oplus/camera/i/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    sget-object p0, Lcom/oplus/camera/i/b;->a:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private c(Ljava/lang/String;)Lcom/oplus/camera/i/e;
    .locals 1

    const-string v0, "pref_camera_flashmode_key"

    .line 123
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    new-instance p1, Lcom/oplus/camera/i/c;

    iget-object v0, p0, Lcom/oplus/camera/i/b;->d:Lcom/oplus/camera/capmode/a;

    iget-object p0, p0, Lcom/oplus/camera/i/b;->e:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-direct {p1, v0, p0}, Lcom/oplus/camera/i/c;-><init>(Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;)V

    goto :goto_0

    :cond_0
    const-string v0, "pref_camera_hdr_mode_key"

    .line 125
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 126
    new-instance p1, Lcom/oplus/camera/i/d;

    iget-object v0, p0, Lcom/oplus/camera/i/b;->d:Lcom/oplus/camera/capmode/a;

    iget-object p0, p0, Lcom/oplus/camera/i/b;->e:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-direct {p1, v0, p0}, Lcom/oplus/camera/i/d;-><init>(Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public a(Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/oplus/camera/i/b;->d:Lcom/oplus/camera/capmode/a;

    .line 49
    iput-object p2, p0, Lcom/oplus/camera/i/b;->e:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 50
    iget-object p1, p0, Lcom/oplus/camera/i/b;->d:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/i/b;->f:Landroid/content/SharedPreferences;

    .line 51
    sget-object p0, Lcom/oplus/camera/i/b;->a:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 6

    .line 60
    iget-object v0, p0, Lcom/oplus/camera/i/b;->d:Lcom/oplus/camera/capmode/a;

    const-string v1, "FeatureFactory"

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/oplus/camera/i/b;->e:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v2, :cond_5

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->aE()Lcom/oplus/ocs/camera/CameraDeviceInfo;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 66
    :cond_0
    invoke-direct {p0, p1}, Lcom/oplus/camera/i/b;->b(Ljava/lang/String;)Lcom/oplus/camera/i/e;

    move-result-object v0

    if-nez v0, :cond_1

    .line 69
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateConflictFeatures, feature not support, return. prefKey: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 74
    :cond_1
    iget-object v2, p0, Lcom/oplus/camera/i/b;->d:Lcom/oplus/camera/capmode/a;

    invoke-interface {v2}, Lcom/oplus/camera/capmode/a;->aE()Lcom/oplus/ocs/camera/CameraDeviceInfo;

    move-result-object v2

    .line 75
    iget-object v3, p0, Lcom/oplus/camera/i/b;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Lcom/oplus/camera/i/e;->c()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 76
    invoke-interface {v0}, Lcom/oplus/camera/i/e;->b()Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-virtual {v2, v0, p1}, Lcom/oplus/ocs/camera/CameraDeviceInfo;->getConflictParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateConflictFeatures, conflictFeatureKey: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", featureValue: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", conflictMap: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_4

    .line 84
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 85
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 86
    sget-object v1, Lcom/oplus/camera/i/b;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_3

    goto :goto_0

    .line 92
    :cond_3
    invoke-direct {p0, v1}, Lcom/oplus/camera/i/b;->b(Ljava/lang/String;)Lcom/oplus/camera/i/e;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 95
    iget-object v4, p0, Lcom/oplus/camera/i/b;->f:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Lcom/oplus/camera/i/e;->c()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 98
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    invoke-interface {v3}, Lcom/oplus/camera/i/e;->a()V

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    :goto_1
    const-string p0, "updateConflictFeatures, not init yet, return."

    .line 61
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/oplus/camera/i/b;->d:Lcom/oplus/camera/capmode/a;

    .line 56
    iput-object v0, p0, Lcom/oplus/camera/i/b;->e:Lcom/oplus/camera/ui/CameraUIInterface;

    return-void
.end method
