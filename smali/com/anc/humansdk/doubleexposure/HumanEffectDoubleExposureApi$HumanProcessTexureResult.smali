.class public Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi$HumanProcessTexureResult;
.super Ljava/lang/Object;
.source "HumanEffectDoubleExposureApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HumanProcessTexureResult"
.end annotation


# instance fields
.field public humanVideoTexture:Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi$HumanVideoTexture;


# direct methods
.method public constructor <init>(IZIIIZ)V
    .locals 8

    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    new-instance v7, Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi$HumanVideoTexture;

    move-object v0, v7

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi$HumanVideoTexture;-><init>(IZIIIZ)V

    iput-object v7, p0, Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi$HumanProcessTexureResult;->humanVideoTexture:Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi$HumanVideoTexture;

    return-void
.end method

.method public constructor <init>(Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi$HumanVideoTexture;)V
    .locals 0

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    iput-object p1, p0, Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi$HumanProcessTexureResult;->humanVideoTexture:Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi$HumanVideoTexture;

    return-void
.end method


# virtual methods
.method public IsValid()Z
    .locals 0

    .line 410
    iget-object p0, p0, Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi$HumanProcessTexureResult;->humanVideoTexture:Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi$HumanVideoTexture;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi$HumanVideoTexture;->IsValid()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
