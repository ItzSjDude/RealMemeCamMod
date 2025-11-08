.class public interface abstract Lcom/oplus/ocs/base/common/api/a$e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ocs/base/common/api/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "e"
.end annotation


# virtual methods
.method public abstract addQueue(Lcom/oplus/ocs/base/common/api/i;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oplus/ocs/base/common/api/i<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract connect()V
.end method

.method public abstract disconnect()V
.end method

.method public abstract getAuthResult()Lcom/oplus/ocs/base/common/AuthResult;
.end method

.method public abstract getMinApkVersion()I
.end method

.method public abstract getRemoteService()Landroid/os/IBinder;
.end method

.method public abstract isConnected()Z
.end method

.method public abstract setOnCapabilityAuthListener(Lcom/oplus/ocs/base/common/api/r;)V
.end method

.method public abstract setOnClearListener(Lcom/oplus/ocs/base/common/api/s;)V
.end method

.method public abstract setOnConnectionFailedListener(Lcom/oplus/ocs/base/common/api/e;Landroid/os/Handler;)V
.end method

.method public abstract setOnConnectionSucceedListener(Lcom/oplus/ocs/base/common/api/f;Landroid/os/Handler;)V
.end method
