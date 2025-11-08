.class Lcom/oplus/camera/screen/FolderAngleDetectService$a;
.super Landroid/content/BroadcastReceiver;
.source "FolderAngleDetectService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/screen/FolderAngleDetectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/screen/FolderAngleDetectService;


# direct methods
.method constructor <init>(Lcom/oplus/camera/screen/FolderAngleDetectService;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/oplus/camera/screen/FolderAngleDetectService$a;->a:Lcom/oplus/camera/screen/FolderAngleDetectService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 146
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 147
    iget-object p1, p0, Lcom/oplus/camera/screen/FolderAngleDetectService$a;->a:Lcom/oplus/camera/screen/FolderAngleDetectService;

    iget-object p1, p1, Lcom/oplus/camera/screen/FolderAngleDetectService;->b:Landroid/hardware/SensorManager;

    if-eqz p1, :cond_1

    .line 148
    iget-object p1, p0, Lcom/oplus/camera/screen/FolderAngleDetectService$a;->a:Lcom/oplus/camera/screen/FolderAngleDetectService;

    iget-object p1, p1, Lcom/oplus/camera/screen/FolderAngleDetectService;->b:Landroid/hardware/SensorManager;

    iget-object p0, p0, Lcom/oplus/camera/screen/FolderAngleDetectService$a;->a:Lcom/oplus/camera/screen/FolderAngleDetectService;

    invoke-static {p0}, Lcom/oplus/camera/screen/FolderAngleDetectService;->a(Lcom/oplus/camera/screen/FolderAngleDetectService;)Landroid/hardware/SensorEventListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0

    .line 150
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 151
    iget-object p1, p0, Lcom/oplus/camera/screen/FolderAngleDetectService$a;->a:Lcom/oplus/camera/screen/FolderAngleDetectService;

    iget-object p1, p1, Lcom/oplus/camera/screen/FolderAngleDetectService;->b:Landroid/hardware/SensorManager;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/screen/FolderAngleDetectService$a;->a:Lcom/oplus/camera/screen/FolderAngleDetectService;

    iget-object p1, p1, Lcom/oplus/camera/screen/FolderAngleDetectService;->a:Landroid/hardware/Sensor;

    if-eqz p1, :cond_1

    .line 152
    iget-object p1, p0, Lcom/oplus/camera/screen/FolderAngleDetectService$a;->a:Lcom/oplus/camera/screen/FolderAngleDetectService;

    iget-object p1, p1, Lcom/oplus/camera/screen/FolderAngleDetectService;->b:Landroid/hardware/SensorManager;

    iget-object p2, p0, Lcom/oplus/camera/screen/FolderAngleDetectService$a;->a:Lcom/oplus/camera/screen/FolderAngleDetectService;

    invoke-static {p2}, Lcom/oplus/camera/screen/FolderAngleDetectService;->a(Lcom/oplus/camera/screen/FolderAngleDetectService;)Landroid/hardware/SensorEventListener;

    move-result-object p2

    iget-object p0, p0, Lcom/oplus/camera/screen/FolderAngleDetectService$a;->a:Lcom/oplus/camera/screen/FolderAngleDetectService;

    iget-object p0, p0, Lcom/oplus/camera/screen/FolderAngleDetectService;->a:Landroid/hardware/Sensor;

    const/4 v0, 0x3

    invoke-virtual {p1, p2, p0, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_1
    :goto_0
    return-void
.end method
