.class Lcom/heytap/accessory/discovery/CentralManager$GrantPermissionCallbackNative;
.super Lcom/heytap/accessory/api/IPermissionCallback$Stub;
.source "CentralManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accessory/discovery/CentralManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GrantPermissionCallbackNative"
.end annotation


# instance fields
.field final synthetic a:Lcom/heytap/accessory/discovery/CentralManager;

.field private final b:Lcom/heytap/accessory/discovery/c;


# direct methods
.method constructor <init>(Lcom/heytap/accessory/discovery/CentralManager;Lcom/heytap/accessory/discovery/c;)V
    .locals 0

    .line 669
    iput-object p1, p0, Lcom/heytap/accessory/discovery/CentralManager$GrantPermissionCallbackNative;->a:Lcom/heytap/accessory/discovery/CentralManager;

    invoke-direct {p0}, Lcom/heytap/accessory/api/IPermissionCallback$Stub;-><init>()V

    .line 670
    iput-object p2, p0, Lcom/heytap/accessory/discovery/CentralManager$GrantPermissionCallbackNative;->b:Lcom/heytap/accessory/discovery/c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 675
    iget-object p0, p0, Lcom/heytap/accessory/discovery/CentralManager$GrantPermissionCallbackNative;->b:Lcom/heytap/accessory/discovery/c;

    invoke-interface {p0}, Lcom/heytap/accessory/discovery/c;->a()V

    return-void
.end method

.method public a(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 680
    iget-object p0, p0, Lcom/heytap/accessory/discovery/CentralManager$GrantPermissionCallbackNative;->b:Lcom/heytap/accessory/discovery/c;

    invoke-interface {p0, p1}, Lcom/heytap/accessory/discovery/c;->a(I)V

    return-void
.end method
