.class public Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanProcessTexureResult;
.super Ljava/lang/Object;
.source "HumanEffectRetainApiV2Helper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HumanProcessTexureResult"
.end annotation


# instance fields
.field public humanVideoTexture:Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoTexture;


# direct methods
.method public constructor <init>(IZIII)V
    .locals 7

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    new-instance v6, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoTexture;

    move-object v0, v6

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoTexture;-><init>(IZIII)V

    iput-object v6, p0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanProcessTexureResult;->humanVideoTexture:Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoTexture;

    return-void
.end method

.method public constructor <init>(Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoTexture;)V
    .locals 0

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    iput-object p1, p0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanProcessTexureResult;->humanVideoTexture:Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoTexture;

    return-void
.end method


# virtual methods
.method protected mappingSDK()Lcom/anc/humansdk/retain/HumanEffectRetainApiV2$HumanProcessTexureResult;
    .locals 1

    .line 328
    new-instance v0, Lcom/anc/humansdk/retain/HumanEffectRetainApiV2$HumanProcessTexureResult;

    iget-object p0, p0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanProcessTexureResult;->humanVideoTexture:Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoTexture;

    invoke-virtual {p0}, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoTexture;->mappingSDK()Lcom/anc/humansdk/retain/HumanEffectRetainApiV2$HumanVideoTexture;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/anc/humansdk/retain/HumanEffectRetainApiV2$HumanProcessTexureResult;-><init>(Lcom/anc/humansdk/retain/HumanEffectRetainApiV2$HumanVideoTexture;)V

    return-object v0
.end method
