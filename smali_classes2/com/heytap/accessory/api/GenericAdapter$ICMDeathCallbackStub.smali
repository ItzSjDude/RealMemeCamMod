.class final Lcom/heytap/accessory/api/GenericAdapter$ICMDeathCallbackStub;
.super Lcom/heytap/accessory/api/ICMDeathCallback$Stub;
.source "GenericAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accessory/api/GenericAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ICMDeathCallbackStub"
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 439
    invoke-direct {p0}, Lcom/heytap/accessory/api/ICMDeathCallback$Stub;-><init>()V

    if-eqz p1, :cond_0

    .line 443
    iput-object p1, p0, Lcom/heytap/accessory/api/GenericAdapter$ICMDeathCallbackStub;->a:Ljava/lang/String;

    return-void

    .line 441
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

    .line 448
    iget-object p0, p0, Lcom/heytap/accessory/api/GenericAdapter$ICMDeathCallbackStub;->a:Ljava/lang/String;

    return-object p0
.end method
