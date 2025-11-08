.class public interface abstract Lcom/heytap/accessory/api/ILanCacheIpServiceCallback;
.super Ljava/lang/Object;
.source "ILanCacheIpServiceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/accessory/api/ILanCacheIpServiceCallback$Stub;,
        Lcom/heytap/accessory/api/ILanCacheIpServiceCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract a(Lcom/heytap/accessory/bean/DeviceInfo;Lcom/heytap/accessory/bean/Message;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
