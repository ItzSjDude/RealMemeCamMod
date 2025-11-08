.class public Lcom/oplus/camera/update/UpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UpdateReceiver.java"


# static fields
.field public static final ACTION_OTA_SUCCESSED:Ljava/lang/String; = "oplus.intent.action.OPLUS_OTA_UPDATE_SUCCESSED"

.field public static final ROM_UPDATE_ACTION:Ljava/lang/String; = "oplus.intent.action.ROM_UPDATE_CONFIG_SUCCESS"

.field private static final TAG:Ljava/lang/String; = "UpdateReceiver"

.field private static final UPDATE_LIST_KEY:Ljava/lang/String; = "ROM_UPDATE_CONFIG_LIST"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic lambda$onReceive$0(Landroid/content/Context;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 57
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->u(Landroid/content/Context;)V

    .line 60
    :cond_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->i()Z

    move-result p0

    if-nez p0, :cond_1

    .line 61
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 35
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "oplus.intent.action.ROM_UPDATE_CONFIG_SUCCESS"

    .line 37
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "UpdateReceiver"

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    :try_start_0
    const-string v0, "ROM_UPDATE_CONFIG_LIST"

    .line 41
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 43
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 46
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive, updateList: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_1

    .line 49
    invoke-static {p1}, Lcom/oplus/camera/update/UpdateUtil;->getInstance(Landroid/content/Context;)Lcom/oplus/camera/update/UpdateUtil;

    move-result-object p1

    const-string p2, "camera_update_app_operation"

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "apps_camera_update_aps_param"

    .line 50
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    .line 49
    invoke-virtual {p1, p2, p0}, Lcom/oplus/camera/update/UpdateUtil;->startUpdate(ZZ)V

    goto :goto_1

    :cond_0
    const-string p2, "oplus.intent.action.OPLUS_OTA_UPDATE_SUCCESSED"

    .line 52
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 53
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive, action: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lcom/oplus/camera/w/d;->a()Lcom/oplus/camera/w/d;

    move-result-object p0

    new-instance p2, Lcom/oplus/camera/update/-$$Lambda$UpdateReceiver$cmx9-HgcM5Apzpu63lGFVNS6V6k;

    invoke-direct {p2, p1}, Lcom/oplus/camera/update/-$$Lambda$UpdateReceiver$cmx9-HgcM5Apzpu63lGFVNS6V6k;-><init>(Landroid/content/Context;)V

    const-string p1, "removeDynamicShortcuts"

    invoke-virtual {p0, p2, p1}, Lcom/oplus/camera/w/d;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method
