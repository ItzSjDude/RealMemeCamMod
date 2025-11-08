.class public interface abstract Lcom/oplus/ocs/base/IAuthenticationListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/ocs/base/IAuthenticationListener$Stub;,
        Lcom/oplus/ocs/base/IAuthenticationListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onFail(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSuccess(Lcom/oplus/ocs/base/common/CapabilityInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
