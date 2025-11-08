.class Lcom/android/internal/telephony/IIntegerConsumer$Stub$Proxy;
.super Ljava/lang/Object;
.source "IIntegerConsumer.java"

# interfaces
.implements Lcom/android/internal/telephony/IIntegerConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IIntegerConsumer$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/android/internal/telephony/IIntegerConsumer;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/internal/telephony/IIntegerConsumer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/internal/telephony/IIntegerConsumer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 0

    const-string p0, "com.android.internal.telephony.IIntegerConsumer"

    return-object p0
.end method
