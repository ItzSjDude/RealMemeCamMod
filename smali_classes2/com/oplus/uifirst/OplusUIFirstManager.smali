.class public Lcom/oplus/uifirst/OplusUIFirstManager;
.super Ljava/lang/Object;
.source "OplusUIFirstManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OplusUIFirstManager"

.field private static volatile sInstance:Lcom/oplus/uifirst/OplusUIFirstManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/oplus/uifirst/OplusUIFirstManager;
    .locals 2

    sget-object v0, Lcom/oplus/uifirst/OplusUIFirstManager;->sInstance:Lcom/oplus/uifirst/OplusUIFirstManager;

    if-nez v0, :cond_1

    const-class v1, Lcom/oplus/uifirst/OplusUIFirstManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/oplus/uifirst/OplusUIFirstManager;->sInstance:Lcom/oplus/uifirst/OplusUIFirstManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oplus/uifirst/OplusUIFirstManager;

    invoke-direct {v0}, Lcom/oplus/uifirst/OplusUIFirstManager;-><init>()V

    sput-object v0, Lcom/oplus/uifirst/OplusUIFirstManager;->sInstance:Lcom/oplus/uifirst/OplusUIFirstManager;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :goto_0
    sget-object v0, Lcom/oplus/uifirst/OplusUIFirstManager;->sInstance:Lcom/oplus/uifirst/OplusUIFirstManager;

    return-object v0
.end method


# virtual methods
.method public boostCameraLaunch(Z)V
    .locals 0
    .param p1, "enable"    # Z

    return-void
.end method

.method public setSceneValue(I)V
    .locals 0
    .param p1, "scene"    # I

    return-void
.end method

.method public setThreadPriority(II)V
    .locals 0
    .param p1, "tid"    # I
    .param p2, "priority"    # I

    return-void
.end method

.method public setUxThreadValue(IILjava/lang/String;)V
    .locals 3
    .param p1, "pid"    # I
    .param p2, "tid"    # I
    .param p3, "value"    # Ljava/lang/String;

    const-string v0, "OplusUIFirstManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUxThreadValue stub: pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " tid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
