.class Lcom/heytap/accessory/BaseJobAgent$InstanceCreator;
.super Ljava/lang/Object;
.source "BaseJobAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accessory/BaseJobAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InstanceCreator"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Lcom/heytap/accessory/BaseJobAgent$RequestAgentCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/heytap/accessory/BaseJobAgent$RequestAgentCallback;)V
    .locals 0

    .line 1302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1303
    iput-object p1, p0, Lcom/heytap/accessory/BaseJobAgent$InstanceCreator;->a:Landroid/content/Context;

    .line 1304
    iput-object p2, p0, Lcom/heytap/accessory/BaseJobAgent$InstanceCreator;->b:Ljava/lang/String;

    .line 1305
    iput-object p3, p0, Lcom/heytap/accessory/BaseJobAgent$InstanceCreator;->c:Lcom/heytap/accessory/BaseJobAgent$RequestAgentCallback;

    return-void
.end method

.method static synthetic a(Lcom/heytap/accessory/BaseJobAgent$InstanceCreator;)Landroid/content/Context;
    .locals 0

    .line 1297
    iget-object p0, p0, Lcom/heytap/accessory/BaseJobAgent$InstanceCreator;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/heytap/accessory/BaseJobAgent$InstanceCreator;)Ljava/lang/String;
    .locals 0

    .line 1297
    iget-object p0, p0, Lcom/heytap/accessory/BaseJobAgent$InstanceCreator;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/heytap/accessory/BaseJobAgent$InstanceCreator;)Lcom/heytap/accessory/BaseJobAgent$RequestAgentCallback;
    .locals 0

    .line 1297
    iget-object p0, p0, Lcom/heytap/accessory/BaseJobAgent$InstanceCreator;->c:Lcom/heytap/accessory/BaseJobAgent$RequestAgentCallback;

    return-object p0
.end method
