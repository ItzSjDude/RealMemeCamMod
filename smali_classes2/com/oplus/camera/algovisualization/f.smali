.class public Lcom/oplus/camera/algovisualization/f;
.super Landroid/content/BroadcastReceiver;
.source "BatteryChangedReceiver.java"


# instance fields
.field private final a:I

.field private final b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/oplus/camera/algovisualization/f;->a:I

    const/16 v0, 0xa

    .line 10
    iput v0, p0, Lcom/oplus/camera/algovisualization/f;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 24
    iget p0, p0, Lcom/oplus/camera/algovisualization/f;->c:I

    return p0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 17
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    const-string v0, "temperature"

    .line 18
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    div-int/lit8 p1, p1, 0xa

    iput p1, p0, Lcom/oplus/camera/algovisualization/f;->c:I

    :cond_0
    return-void
.end method
