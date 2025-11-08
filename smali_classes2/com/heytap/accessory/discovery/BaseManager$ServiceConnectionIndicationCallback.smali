.class final Lcom/heytap/accessory/discovery/BaseManager$ServiceConnectionIndicationCallback;
.super Lcom/heytap/accessory/api/IServiceConnectionIndicationCallback$Stub;
.source "BaseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accessory/discovery/BaseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ServiceConnectionIndicationCallback"
.end annotation


# instance fields
.field final synthetic a:Lcom/heytap/accessory/discovery/BaseManager;


# direct methods
.method private constructor <init>(Lcom/heytap/accessory/discovery/BaseManager;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/heytap/accessory/discovery/BaseManager$ServiceConnectionIndicationCallback;->a:Lcom/heytap/accessory/discovery/BaseManager;

    invoke-direct {p0}, Lcom/heytap/accessory/api/IServiceConnectionIndicationCallback$Stub;-><init>()V

    .line 128
    invoke-static {}, Lcom/heytap/accessory/discovery/BaseManager;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ServiceConnectionIndicationCallback"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/heytap/accessory/discovery/BaseManager;B)V
    .locals 0

    .line 126
    invoke-direct {p0, p1}, Lcom/heytap/accessory/discovery/BaseManager$ServiceConnectionIndicationCallback;-><init>(Lcom/heytap/accessory/discovery/BaseManager;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 133
    invoke-static {}, Lcom/heytap/accessory/discovery/BaseManager;->access$100()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceConnectionRequested: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
