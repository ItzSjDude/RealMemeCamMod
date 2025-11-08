.class Lcom/oplus/camera/MyApplication$1;
.super Ljava/lang/Object;
.source "MyApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/MyApplication;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/oplus/camera/MyApplication;


# direct methods
.method constructor <init>(Lcom/oplus/camera/MyApplication;Landroid/content/Context;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/oplus/camera/MyApplication$1;->b:Lcom/oplus/camera/MyApplication;

    iput-object p2, p0, Lcom/oplus/camera/MyApplication$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 167
    iget-object v0, p0, Lcom/oplus/camera/MyApplication$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->b(Landroid/content/Context;)V

    .line 168
    iget-object v0, p0, Lcom/oplus/camera/MyApplication$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->initialize(Landroid/content/Context;)V

    .line 169
    iget-object v0, p0, Lcom/oplus/camera/MyApplication$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/oplus/camera/e/a;->a(Landroid/content/Context;)V

    const-string v0, "com.oplus.feature.hw.manufacturer.qualcomm"

    .line 171
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->d(Z)V

    .line 172
    iget-object v0, p0, Lcom/oplus/camera/MyApplication$1;->b:Lcom/oplus/camera/MyApplication;

    invoke-static {v0}, Lcom/oplus/camera/MyApplication;->a(Lcom/oplus/camera/MyApplication;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 173
    iget-object v0, p0, Lcom/oplus/camera/MyApplication$1;->b:Lcom/oplus/camera/MyApplication;

    invoke-static {v0}, Lcom/oplus/camera/MyApplication;->b(Lcom/oplus/camera/MyApplication;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 174
    iget-object v0, p0, Lcom/oplus/camera/MyApplication$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->c(Landroid/content/Context;)V

    .line 175
    iget-object v0, p0, Lcom/oplus/camera/MyApplication$1;->b:Lcom/oplus/camera/MyApplication;

    invoke-static {v0}, Lcom/oplus/camera/MyApplication;->c(Lcom/oplus/camera/MyApplication;)V

    .line 177
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-static {}, Lcom/oplus/camera/MyApplication;->k()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/oplus/camera/MyApplication;->k()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/oplus/camera/screen/FolderAngleDetectService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/MyApplication$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/oplus/compat/b/a/a;->a(Landroid/content/Context;)V

    .line 182
    iget-object v0, p0, Lcom/oplus/camera/MyApplication$1;->b:Lcom/oplus/camera/MyApplication;

    invoke-static {v0}, Lcom/oplus/camera/MyApplication;->d(Lcom/oplus/camera/MyApplication;)V

    .line 183
    iget-object v0, p0, Lcom/oplus/camera/MyApplication$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/oplus/camera/e;->a(Landroid/content/Context;)V

    .line 184
    iget-object p0, p0, Lcom/oplus/camera/MyApplication$1;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/oplus/camera/statistics/model/DcsMsgData;->init(Landroid/content/Context;)V

    return-void
.end method
