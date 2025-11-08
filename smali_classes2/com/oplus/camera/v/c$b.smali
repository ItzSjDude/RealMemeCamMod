.class Lcom/oplus/camera/v/c$b;
.super Landroid/content/BroadcastReceiver;
.source "TemperatureProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/v/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/v/c;


# direct methods
.method private constructor <init>(Lcom/oplus/camera/v/c;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/oplus/camera/v/c$b;->a:Lcom/oplus/camera/v/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/v/c;Lcom/oplus/camera/v/c$1;)V
    .locals 0

    .line 226
    invoke-direct {p0, p1}, Lcom/oplus/camera/v/c$b;-><init>(Lcom/oplus/camera/v/c;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const/4 p1, -0x1

    const-string v0, "currenttemperature"

    .line 230
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "thermallevel"

    .line 231
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 232
    iget-object p2, p0, Lcom/oplus/camera/v/c$b;->a:Lcom/oplus/camera/v/c;

    invoke-static {p2}, Lcom/oplus/camera/v/c;->c(Lcom/oplus/camera/v/c;)Lcom/oplus/camera/v/a;

    move-result-object p2

    invoke-interface {p2, p1, v0}, Lcom/oplus/camera/v/a;->a(II)V

    .line 233
    iget-object p0, p0, Lcom/oplus/camera/v/c$b;->a:Lcom/oplus/camera/v/c;

    invoke-static {p0}, Lcom/oplus/camera/v/c;->c(Lcom/oplus/camera/v/c;)Lcom/oplus/camera/v/a;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/oplus/camera/v/a;->b(I)V

    .line 235
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onReceive, curTemperatureLevel: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", curTemperature: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TemperatureProvider"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
