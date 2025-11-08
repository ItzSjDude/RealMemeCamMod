.class Lcom/oplus/camera/Camera$14;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/Camera;


# direct methods
.method constructor <init>(Lcom/oplus/camera/Camera;)V
    .locals 0

    .line 1359
    iput-object p1, p0, Lcom/oplus/camera/Camera$14;->a:Lcom/oplus/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1362
    iget-object v0, p0, Lcom/oplus/camera/Camera$14;->a:Lcom/oplus/camera/Camera;

    invoke-static {v0}, Lcom/oplus/camera/Camera;->h(Lcom/oplus/camera/Camera;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/Camera$14;->a:Lcom/oplus/camera/Camera;

    invoke-static {v0}, Lcom/oplus/camera/Camera;->f(Lcom/oplus/camera/Camera;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 1366
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/Camera$14;->a:Lcom/oplus/camera/Camera;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oplus/camera/Camera;->a(Lcom/oplus/camera/Camera;Z)Z

    .line 1368
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    .line 1369
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    .line 1370
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_CHECKING"

    .line 1371
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    .line 1372
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_SHARED"

    .line 1373
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_EJECT"

    .line 1374
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_PRE_SHARED"

    .line 1375
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "file"

    .line 1376
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1377
    iget-object v1, p0, Lcom/oplus/camera/Camera$14;->a:Lcom/oplus/camera/Camera;

    invoke-static {v1}, Lcom/oplus/camera/Camera;->i(Lcom/oplus/camera/Camera;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "oplus.permission.OPLUS_COMPONENT_SAFE"

    invoke-virtual {v1, v2, v0, v4, v3}, Lcom/oplus/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1380
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PHONE_STATE"

    .line 1381
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1382
    iget-object v1, p0, Lcom/oplus/camera/Camera$14;->a:Lcom/oplus/camera/Camera;

    invoke-static {v1}, Lcom/oplus/camera/Camera;->j(Lcom/oplus/camera/Camera;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v4, v3}, Lcom/oplus/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1384
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.oplus.camera.IOT_CAPTURE"

    .line 1385
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1386
    iget-object v1, p0, Lcom/oplus/camera/Camera$14;->a:Lcom/oplus/camera/Camera;

    invoke-static {v1}, Lcom/oplus/camera/Camera;->l(Lcom/oplus/camera/Camera;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v4, v3}, Lcom/oplus/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1388
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    .line 1389
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1390
    iget-object v1, p0, Lcom/oplus/camera/Camera$14;->a:Lcom/oplus/camera/Camera;

    invoke-static {v1}, Lcom/oplus/camera/Camera;->k(Lcom/oplus/camera/Camera;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/oplus/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1392
    invoke-static {}, Lcom/oplus/camera/util/Util;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1393
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.binauralrecord.profile.action.CONNECTION_STATE_CHANGED"

    .line 1394
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1395
    iget-object v1, p0, Lcom/oplus/camera/Camera$14;->a:Lcom/oplus/camera/Camera;

    invoke-static {v1}, Lcom/oplus/camera/Camera;->m(Lcom/oplus/camera/Camera;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/oplus/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1397
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 1398
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1399
    iget-object p0, p0, Lcom/oplus/camera/Camera$14;->a:Lcom/oplus/camera/Camera;

    invoke-static {p0}, Lcom/oplus/camera/Camera;->m(Lcom/oplus/camera/Camera;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/oplus/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    :goto_0
    return-void
.end method
