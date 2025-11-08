.class Lcom/oplus/camera/v/c$3;
.super Ljava/lang/Object;
.source "TemperatureProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/v/c;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/v/c;


# direct methods
.method constructor <init>(Lcom/oplus/camera/v/c;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/oplus/camera/v/c$3;->a:Lcom/oplus/camera/v/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 120
    invoke-static {}, Lcom/oplus/util/OplusHoraeThermalHelper;->getInstance()Lcom/oplus/util/OplusHoraeThermalHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/util/OplusHoraeThermalHelper;->getCurrentThermal()F

    move-result v0

    .line 122
    iget-object v1, p0, Lcom/oplus/camera/v/c$3;->a:Lcom/oplus/camera/v/c;

    invoke-static {v1}, Lcom/oplus/camera/v/c;->a(Lcom/oplus/camera/v/c;)Lcom/oplus/camera/ComboPreferences;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 123
    iget-object p0, p0, Lcom/oplus/camera/v/c$3;->a:Lcom/oplus/camera/v/c;

    invoke-static {p0}, Lcom/oplus/camera/v/c;->a(Lcom/oplus/camera/v/c;)Lcom/oplus/camera/ComboPreferences;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "key_cur_temperature"

    .line 124
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 125
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 128
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerTemperatureReceiver, getCurrentThermal, currentThermal: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TemperatureProvider"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
