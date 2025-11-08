.class final Lcom/heytap/accessory/discovery/CentralManager$1;
.super Ljava/lang/Object;
.source "CentralManager.java"

# interfaces
.implements Lcom/heytap/accessory/discovery/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heytap/accessory/discovery/CentralManager;->startScan(Lcom/heytap/accessory/bean/ScanSetting;Ljava/util/List;Lcom/heytap/accessory/discovery/IScanCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/heytap/accessory/bean/ScanSetting;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/heytap/accessory/discovery/IScanCallback;

.field final synthetic d:Lcom/heytap/accessory/discovery/CentralManager;


# direct methods
.method constructor <init>(Lcom/heytap/accessory/discovery/CentralManager;Lcom/heytap/accessory/bean/ScanSetting;Ljava/util/List;Lcom/heytap/accessory/discovery/IScanCallback;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/heytap/accessory/discovery/CentralManager$1;->d:Lcom/heytap/accessory/discovery/CentralManager;

    iput-object p2, p0, Lcom/heytap/accessory/discovery/CentralManager$1;->a:Lcom/heytap/accessory/bean/ScanSetting;

    iput-object p3, p0, Lcom/heytap/accessory/discovery/CentralManager$1;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/heytap/accessory/discovery/CentralManager$1;->c:Lcom/heytap/accessory/discovery/IScanCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 211
    iget-object v0, p0, Lcom/heytap/accessory/discovery/CentralManager$1;->d:Lcom/heytap/accessory/discovery/CentralManager;

    iget-object v1, p0, Lcom/heytap/accessory/discovery/CentralManager$1;->a:Lcom/heytap/accessory/bean/ScanSetting;

    iget-object v2, p0, Lcom/heytap/accessory/discovery/CentralManager$1;->b:Ljava/util/List;

    iget-object p0, p0, Lcom/heytap/accessory/discovery/CentralManager$1;->c:Lcom/heytap/accessory/discovery/IScanCallback;

    invoke-static {v0, v1, v2, p0}, Lcom/heytap/accessory/discovery/CentralManager;->access$000(Lcom/heytap/accessory/discovery/CentralManager;Lcom/heytap/accessory/bean/ScanSetting;Ljava/util/List;Lcom/heytap/accessory/discovery/IScanCallback;)I

    return-void
.end method
