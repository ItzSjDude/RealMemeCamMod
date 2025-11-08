.class final Lcom/heytap/accessory/discovery/CentralManager$3;
.super Ljava/lang/Object;
.source "CentralManager.java"

# interfaces
.implements Lcom/heytap/accessory/discovery/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heytap/accessory/discovery/CentralManager;->cancelPair(Lcom/heytap/accessory/bean/DeviceInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/heytap/accessory/bean/DeviceInfo;

.field final synthetic b:Lcom/heytap/accessory/discovery/CentralManager;


# direct methods
.method constructor <init>(Lcom/heytap/accessory/discovery/CentralManager;Lcom/heytap/accessory/bean/DeviceInfo;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/heytap/accessory/discovery/CentralManager$3;->b:Lcom/heytap/accessory/discovery/CentralManager;

    iput-object p2, p0, Lcom/heytap/accessory/discovery/CentralManager$3;->a:Lcom/heytap/accessory/bean/DeviceInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/heytap/accessory/discovery/CentralManager$3;->b:Lcom/heytap/accessory/discovery/CentralManager;

    iget-object p0, p0, Lcom/heytap/accessory/discovery/CentralManager$3;->a:Lcom/heytap/accessory/bean/DeviceInfo;

    invoke-static {v0, p0}, Lcom/heytap/accessory/discovery/CentralManager;->access$200(Lcom/heytap/accessory/discovery/CentralManager;Lcom/heytap/accessory/bean/DeviceInfo;)V

    return-void
.end method
