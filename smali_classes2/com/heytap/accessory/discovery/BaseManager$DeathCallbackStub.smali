.class final Lcom/heytap/accessory/discovery/BaseManager$DeathCallbackStub;
.super Lcom/heytap/accessory/api/IDeathCallback$Stub;
.source "BaseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accessory/discovery/BaseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DeathCallbackStub"
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Lcom/heytap/accessory/api/IDeathCallback$Stub;-><init>()V

    if-eqz p1, :cond_0

    .line 116
    iput-object p1, p0, Lcom/heytap/accessory/discovery/BaseManager$DeathCallbackStub;->a:Ljava/lang/String;

    return-void

    .line 114
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid packageName:null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    iget-object p0, p0, Lcom/heytap/accessory/discovery/BaseManager$DeathCallbackStub;->a:Ljava/lang/String;

    return-object p0
.end method
