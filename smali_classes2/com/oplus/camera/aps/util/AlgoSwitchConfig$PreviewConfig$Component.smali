.class public Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig$Component;
.super Ljava/lang/Object;
.source "AlgoSwitchConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Component"
.end annotation


# instance fields
.field public mAlgoList:[Ljava/lang/String;

.field public mAlgoNodeCopyFrom:Ljava/lang/String;

.field public mFrameSkipCnt:I

.field public mMasterInputHeight:I

.field public mMasterInputWidth:I

.field public mOutputHeight:I

.field public mOutputWidth:I

.field public mPipelineCopyFrom:Ljava/lang/String;

.field public mSlaveInputHeight:I

.field public mSlaveInputWidth:I

.field public mThirdInputHeight:I

.field public mThirdInputWidth:I

.field public mbEnable:Z


# direct methods
.method public constructor <init>(Lcom/oplus/ocs/camera/appinterface/adapter/AlgoSwitchConfigUtil$Component;)V
    .locals 1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig$Component;->mbEnable:Z

    const/4 v0, 0x0

    .line 112
    iput v0, p0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig$Component;->mMasterInputWidth:I

    .line 113
    iput v0, p0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig$Component;->mMasterInputHeight:I

    .line 114
    iput v0, p0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig$Component;->mSlaveInputWidth:I

    .line 115
    iput v0, p0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig$Component;->mSlaveInputHeight:I

    .line 116
    iput v0, p0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig$Component;->mThirdInputWidth:I

    .line 117
    iput v0, p0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig$Component;->mThirdInputHeight:I

    .line 118
    iput v0, p0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig$Component;->mOutputWidth:I

    .line 119
    iput v0, p0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig$Component;->mOutputHeight:I

    .line 120
    iput v0, p0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig$Component;->mFrameSkipCnt:I

    const/4 v0, 0x0

    .line 121
    iput-object v0, p0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig$Component;->mPipelineCopyFrom:Ljava/lang/String;

    .line 122
    iput-object v0, p0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig$Component;->mAlgoNodeCopyFrom:Ljava/lang/String;

    .line 123
    iput-object v0, p0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig$Component;->mAlgoList:[Ljava/lang/String;

    .line 126
    sget-object v0, Lcom/oplus/camera/aps/constant/CameraUnitKeys;->KEY_COMPONENT_ENABLE:Lcom/oplus/ocs/camera/appinterface/adapter/CameraResultParameter$CameraAlgoSwitchConfigKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/appinterface/adapter/AlgoSwitchConfigUtil$Component;->get(Lcom/oplus/ocs/camera/appinterface/adapter/CameraResultParameter$CameraAlgoSwitchConfigKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig$Component;->mbEnable:Z

    .line 127
    sget-object v0, Lcom/oplus/camera/aps/constant/CameraUnitKeys;->KEY_COMPONENT_MASTER_INPUT_WIDTH:Lcom/oplus/ocs/camera/appinterface/adapter/CameraResultParameter$CameraAlgoSwitchConfigKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/appinterface/adapter/AlgoSwitchConfigUtil$Component;->get(Lcom/oplus/ocs/camera/appinterface/adapter/CameraResultParameter$CameraAlgoSwitchConfigKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig$Component;->mMasterInputWidth:I

    .line 128
    sget-object v0, Lcom/oplus/camera/aps/constant/CameraUnitKeys;->KEY_COMPONENT_MASTER_INPUT_HEIGHT:Lcom/oplus/ocs/camera/appinterface/adapter/CameraResultParameter$CameraAlgoSwitchConfigKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/appinterface/adapter/AlgoSwitchConfigUtil$Component;->get(Lcom/oplus/ocs/camera/appinterface/adapter/CameraResultParameter$CameraAlgoSwitchConfigKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig$Component;->mMasterInputHeight:I

    .line 129
    sget-object v0, Lcom/oplus/camera/aps/constant/CameraUnitKeys;->KEY_COMPONENT_SLAVE_INPUT_WIDTH:Lcom/oplus/ocs/camera/appinterface/adapter/CameraResultParameter$CameraAlgoSwitchConfigKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/appinterface/adapter/AlgoSwitchConfigUtil$Component;->get(Lcom/oplus/ocs/camera/appinterface/adapter/CameraResultParameter$CameraAlgoSwitchConfigKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig$Component;->mSlaveInputWidth:I

    .line 130
    sget-object v0, Lcom/oplus/camera/aps/constant/CameraUnitKeys;->KEY_COMPONENT_SLAVE_INPUT_HEIGHT:Lcom/oplus/ocs/camera/appinterface/adapter/CameraResultParameter$CameraAlgoSwitchConfigKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/appinterface/adapter/AlgoSwitchConfigUtil$Component;->get(Lcom/oplus/ocs/camera/appinterface/adapter/CameraResultParameter$CameraAlgoSwitchConfigKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig$Component;->mSlaveInputHeight:I

    .line 131
    sget-object v0, Lcom/oplus/camera/aps/constant/CameraUnitKeys;->KEY_COMPONENT_THIRD_INPUT_WIDTH:Lcom/oplus/ocs/camera/appinterface/adapter/CameraResultParameter$CameraAlgoSwitchConfigKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/appinterface/adapter/AlgoSwitchConfigUtil$Component;->get(Lcom/oplus/ocs/camera/appinterface/adapter/CameraResultParameter$CameraAlgoSwitchConfigKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig$Component;->mThirdInputWidth:I

    .line 132
    sget-object v0, Lcom/oplus/camera/aps/constant/CameraUnitKeys;->KEY_COMPONENT_THIRD_INPUT_HEIGHT:Lcom/oplus/ocs/camera/appinterface/adapter/CameraResultParameter$CameraAlgoSwitchConfigKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/appinterface/adapter/AlgoSwitchConfigUtil$Component;->get(Lcom/oplus/ocs/camera/appinterface/adapter/CameraResultParameter$CameraAlgoSwitchConfigKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig$Component;->mThirdInputHeight:I

    .line 133
    sget-object v0, Lcom/oplus/camera/aps/constant/CameraUnitKeys;->KEY_COMPONENT_OUTPUT_WIDTH:Lcom/oplus/ocs/camera/appinterface/adapter/CameraResultParameter$CameraAlgoSwitchConfigKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/appinterface/adapter/AlgoSwitchConfigUtil$Component;->get(Lcom/oplus/ocs/camera/appinterface/adapter/CameraResultParameter$CameraAlgoSwitchConfigKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig$Component;->mOutputWidth:I

    .line 134
    sget-object v0, Lcom/oplus/camera/aps/constant/CameraUnitKeys;->KEY_COMPONENT_OUTPUT_HEIGHT:Lcom/oplus/ocs/camera/appinterface/adapter/CameraResultParameter$CameraAlgoSwitchConfigKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/appinterface/adapter/AlgoSwitchConfigUtil$Component;->get(Lcom/oplus/ocs/camera/appinterface/adapter/CameraResultParameter$CameraAlgoSwitchConfigKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig$Component;->mOutputHeight:I

    .line 135
    sget-object v0, Lcom/oplus/camera/aps/constant/CameraUnitKeys;->KEY_COMPONENT_FRAME_SKIP_CNT:Lcom/oplus/ocs/camera/appinterface/adapter/CameraResultParameter$CameraAlgoSwitchConfigKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/appinterface/adapter/AlgoSwitchConfigUtil$Component;->get(Lcom/oplus/ocs/camera/appinterface/adapter/CameraResultParameter$CameraAlgoSwitchConfigKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig$Component;->mFrameSkipCnt:I

    .line 136
    sget-object v0, Lcom/oplus/camera/aps/constant/CameraUnitKeys;->KEY_COMPONENT_PIPELINE_COPY_FROM:Lcom/oplus/ocs/camera/appinterface/adapter/CameraResultParameter$CameraAlgoSwitchConfigKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/appinterface/adapter/AlgoSwitchConfigUtil$Component;->get(Lcom/oplus/ocs/camera/appinterface/adapter/CameraResultParameter$CameraAlgoSwitchConfigKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig$Component;->mPipelineCopyFrom:Ljava/lang/String;

    .line 137
    sget-object v0, Lcom/oplus/camera/aps/constant/CameraUnitKeys;->KEY_COMPONENT_ALGO_NODE_COPY_FROM:Lcom/oplus/ocs/camera/appinterface/adapter/CameraResultParameter$CameraAlgoSwitchConfigKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/appinterface/adapter/AlgoSwitchConfigUtil$Component;->get(Lcom/oplus/ocs/camera/appinterface/adapter/CameraResultParameter$CameraAlgoSwitchConfigKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig$Component;->mAlgoNodeCopyFrom:Ljava/lang/String;

    .line 138
    sget-object v0, Lcom/oplus/camera/aps/constant/CameraUnitKeys;->KEY_COMPONENT_ALGO_LIST:Lcom/oplus/ocs/camera/appinterface/adapter/CameraResultParameter$CameraAlgoSwitchConfigKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/appinterface/adapter/AlgoSwitchConfigUtil$Component;->get(Lcom/oplus/ocs/camera/appinterface/adapter/CameraResultParameter$CameraAlgoSwitchConfigKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig$Component;->mAlgoList:[Ljava/lang/String;

    return-void
.end method
