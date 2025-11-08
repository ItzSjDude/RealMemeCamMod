.class public Lcom/oplus/ocs/camera/HumanEffectBokehHelper;
.super Ljava/lang/Object;
.source "HumanEffectBokehHelper.java"


# instance fields
.field private mProxy:Lcom/oplus/ocs/camera/HumanEffectBokehApiProxy;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 7

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/oplus/ocs/camera/HumanEffectBokehHelper;->mProxy:Lcom/oplus/ocs/camera/HumanEffectBokehApiProxy;

    .line 7
    new-instance v0, Lcom/oplus/ocs/camera/HumanEffectBokehApiProxy;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/oplus/ocs/camera/HumanEffectBokehApiProxy;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    iput-object v0, p0, Lcom/oplus/ocs/camera/HumanEffectBokehHelper;->mProxy:Lcom/oplus/ocs/camera/HumanEffectBokehApiProxy;

    return-void
.end method


# virtual methods
.method public process(III[I[IFIIFFII)I
    .locals 13

    move-object v0, p0

    .line 12
    iget-object v0, v0, Lcom/oplus/ocs/camera/HumanEffectBokehHelper;->mProxy:Lcom/oplus/ocs/camera/HumanEffectBokehApiProxy;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    .line 13
    invoke-virtual/range {v0 .. v12}, Lcom/oplus/ocs/camera/HumanEffectBokehApiProxy;->process(III[I[IFIIFFII)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public release()V
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/oplus/ocs/camera/HumanEffectBokehHelper;->mProxy:Lcom/oplus/ocs/camera/HumanEffectBokehApiProxy;

    if-eqz p0, :cond_0

    .line 22
    invoke-virtual {p0}, Lcom/oplus/ocs/camera/HumanEffectBokehApiProxy;->release()V

    :cond_0
    return-void
.end method
