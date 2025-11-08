.class public interface abstract Lcom/oplus/tblplayer/IRemoteLinker;
.super Ljava/lang/Object;
.source "IRemoteLinker.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/tblplayer/IRemoteLinker$Stub;,
        Lcom/oplus/tblplayer/IRemoteLinker$Default;
    }
.end annotation


# virtual methods
.method public abstract create()Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
