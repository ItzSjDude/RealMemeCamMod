.class public Lcom/heytap/accessory/bean/TrafficControlConfig;
.super Ljava/lang/Object;
.source "TrafficControlConfig.java"


# static fields
.field public static final KEY_MAX_WINDOW_SIZE:Ljava/lang/String; = "key_max_window_size"

.field public static final KEY_SHOW_LOG:Ljava/lang/String; = "key_show_log"

.field public static final KEY_TC_DELAY_TIME:Ljava/lang/String; = "key_tc_delay_time"

.field public static final KEY_TC_STRATEGY:Ljava/lang/String; = "key_tc_strategy"

.field public static final KEY_TC_SWITCH:Ljava/lang/String; = "key_tc_switch"


# instance fields
.field private mEnable:Z

.field private mHandleMsgTime:I

.field private mMaxWindowSize:I

.field private mShowLog:Z

.field private mStrategy:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFromBundle(Landroid/os/Bundle;)Lcom/heytap/accessory/bean/TrafficControlConfig;
    .locals 5

    const-string v0, "key_tc_delay_time"

    .line 84
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "key_tc_switch"

    .line 85
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "key_tc_strategy"

    .line 86
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "key_max_window_size"

    .line 87
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "key_show_log"

    .line 88
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    .line 89
    new-instance v4, Lcom/heytap/accessory/bean/TrafficControlConfig;

    invoke-direct {v4}, Lcom/heytap/accessory/bean/TrafficControlConfig;-><init>()V

    .line 90
    invoke-virtual {v4, v0}, Lcom/heytap/accessory/bean/TrafficControlConfig;->setHandleMsgTime(I)V

    .line 91
    invoke-virtual {v4, v1}, Lcom/heytap/accessory/bean/TrafficControlConfig;->setEnable(Z)V

    .line 92
    invoke-virtual {v4, v2}, Lcom/heytap/accessory/bean/TrafficControlConfig;->setStrategy(I)V

    .line 93
    invoke-virtual {v4, v3}, Lcom/heytap/accessory/bean/TrafficControlConfig;->setMaxWindowSize(I)V

    .line 94
    invoke-virtual {v4, p0}, Lcom/heytap/accessory/bean/TrafficControlConfig;->setShowLog(Z)V

    return-object v4
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .locals 3

    .line 73
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 74
    iget v1, p0, Lcom/heytap/accessory/bean/TrafficControlConfig;->mHandleMsgTime:I

    const-string v2, "key_tc_delay_time"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 75
    iget-boolean v1, p0, Lcom/heytap/accessory/bean/TrafficControlConfig;->mEnable:Z

    const-string v2, "key_tc_switch"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 76
    iget v1, p0, Lcom/heytap/accessory/bean/TrafficControlConfig;->mStrategy:I

    const-string v2, "key_tc_strategy"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 77
    iget v1, p0, Lcom/heytap/accessory/bean/TrafficControlConfig;->mMaxWindowSize:I

    const-string v2, "key_max_window_size"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 78
    iget-boolean p0, p0, Lcom/heytap/accessory/bean/TrafficControlConfig;->mShowLog:Z

    const-string v1, "key_show_log"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getHandleMsgTime()I
    .locals 0

    .line 33
    iget p0, p0, Lcom/heytap/accessory/bean/TrafficControlConfig;->mHandleMsgTime:I

    return p0
.end method

.method public getMaxWindowSize()I
    .locals 0

    .line 57
    iget p0, p0, Lcom/heytap/accessory/bean/TrafficControlConfig;->mMaxWindowSize:I

    return p0
.end method

.method public getStrategy()I
    .locals 0

    .line 49
    iget p0, p0, Lcom/heytap/accessory/bean/TrafficControlConfig;->mStrategy:I

    return p0
.end method

.method public isEnable()Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/heytap/accessory/bean/TrafficControlConfig;->mEnable:Z

    return p0
.end method

.method public isShowLog()Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/heytap/accessory/bean/TrafficControlConfig;->mShowLog:Z

    return p0
.end method

.method public setEnable(Z)V
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/heytap/accessory/bean/TrafficControlConfig;->mEnable:Z

    return-void
.end method

.method public setHandleMsgTime(I)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/heytap/accessory/bean/TrafficControlConfig;->mHandleMsgTime:I

    return-void
.end method

.method public setMaxWindowSize(I)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/heytap/accessory/bean/TrafficControlConfig;->mMaxWindowSize:I

    return-void
.end method

.method public setShowLog(Z)V
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/heytap/accessory/bean/TrafficControlConfig;->mShowLog:Z

    return-void
.end method

.method public setStrategy(I)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/heytap/accessory/bean/TrafficControlConfig;->mStrategy:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TrafficControlConfig{mHandleMsgTime="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/heytap/accessory/bean/TrafficControlConfig;->mHandleMsgTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/heytap/accessory/bean/TrafficControlConfig;->mEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mStrategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/heytap/accessory/bean/TrafficControlConfig;->mStrategy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxWindowSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/heytap/accessory/bean/TrafficControlConfig;->mMaxWindowSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mShowLog="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/heytap/accessory/bean/TrafficControlConfig;->mShowLog:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
