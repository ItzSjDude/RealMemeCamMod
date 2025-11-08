.class public Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoTexture;
.super Ljava/lang/Object;
.source "HumanEffectRetainApiV2Helper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HumanVideoTexture"
.end annotation


# instance fields
.field public height:I

.field public isOES:Z

.field public rotation:I

.field public texID:I

.field public width:I


# direct methods
.method public constructor <init>(IZIII)V
    .locals 0

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput p1, p0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoTexture;->texID:I

    .line 229
    iput-boolean p2, p0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoTexture;->isOES:Z

    .line 230
    iput p3, p0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoTexture;->width:I

    .line 231
    iput p4, p0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoTexture;->height:I

    .line 232
    iput p5, p0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoTexture;->rotation:I

    return-void
.end method


# virtual methods
.method protected mappingSDK()Lcom/anc/humansdk/retain/HumanEffectRetainApiV2$HumanVideoTexture;
    .locals 7

    .line 236
    new-instance v6, Lcom/anc/humansdk/retain/HumanEffectRetainApiV2$HumanVideoTexture;

    iget v1, p0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoTexture;->texID:I

    iget-boolean v2, p0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoTexture;->isOES:Z

    iget v3, p0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoTexture;->width:I

    iget v4, p0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoTexture;->height:I

    iget v5, p0, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper$HumanVideoTexture;->rotation:I

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/anc/humansdk/retain/HumanEffectRetainApiV2$HumanVideoTexture;-><init>(IZIII)V

    return-object v6
.end method
