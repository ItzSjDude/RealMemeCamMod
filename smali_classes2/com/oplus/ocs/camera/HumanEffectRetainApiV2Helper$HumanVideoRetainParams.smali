.class public Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoRetainParams;
.super Ljava/lang/Object;
.source "HumanEffectRetainApiV2Helper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HumanVideoRetainParams"
.end annotation


# instance fields
.field public bgPath:Ljava/lang/String;

.field public fgPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoRetainParams;->fgPath:Ljava/lang/String;

    .line 92
    iput-object p2, p0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoRetainParams;->bgPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected mappingSDK()Lcom/anc/humansdk/retain/HumanEffectRetainApiV2$HumanVideoRetainParams;
    .locals 2

    .line 96
    new-instance v0, Lcom/anc/humansdk/retain/HumanEffectRetainApiV2$HumanVideoRetainParams;

    iget-object v1, p0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoRetainParams;->fgPath:Ljava/lang/String;

    iget-object p0, p0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoRetainParams;->bgPath:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/anc/humansdk/retain/HumanEffectRetainApiV2$HumanVideoRetainParams;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
