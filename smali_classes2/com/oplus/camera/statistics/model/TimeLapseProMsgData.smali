.class public Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;
.super Lcom/oplus/camera/statistics/model/DcsMsgData;
.source "TimeLapseProMsgData.java"


# static fields
.field public static final AUTO:Ljava/lang/String; = "auto"

.field public static final EVENT_FUNCTION_KEY_CLICK:Ljava/lang/String; = "funcKey_click"

.field public static final EVENT_FUNCTION_MENU_CLICK:Ljava/lang/String; = "funcMenu_select"

.field public static final EVENT_FUNCTION_VALUE_SELECT:Ljava/lang/String; = "funcValue_select"

.field public static final EVENT_FUNCTION_VIDEO_RECORD:Ljava/lang/String; = "videoRecord"

.field public static final FUNC_KEY_HIDE_PANEL:Ljava/lang/String; = "2"

.field public static final FUNC_KEY_ID_PARAMS:Ljava/lang/String; = "85"

.field public static final FUNC_KEY_ID_TEMPLATE:Ljava/lang/String; = "84"

.field public static final FUNC_KEY_SHOW_PANEL:Ljava/lang/String; = "1"

.field private static final GENERATE_TIME:Ljava/lang/String; = "generate_time"

.field public static final INTERVAL_1200X:Ljava/lang/String; = "1200X"

.field public static final INTERVAL_120X:Ljava/lang/String; = "120X"

.field public static final INTERVAL_150X:Ljava/lang/String; = "150X"

.field public static final INTERVAL_15X:Ljava/lang/String; = "15X"

.field public static final INTERVAL_1800X:Ljava/lang/String; = "1800X"

.field public static final INTERVAL_300X:Ljava/lang/String; = "300X"

.field public static final INTERVAL_30X:Ljava/lang/String; = "30X"

.field public static final INTERVAL_450X:Ljava/lang/String; = "450X"

.field public static final INTERVAL_45X:Ljava/lang/String; = "45X"

.field public static final INTERVAL_600X:Ljava/lang/String; = "600X"

.field public static final INTERVAL_60X:Ljava/lang/String; = "60X"

.field public static final INTERVAL_900X:Ljava/lang/String; = "900X"

.field public static final INTERVAL_90X:Ljava/lang/String; = "90X"

.field public static final KEY_CAR_TEMPLATE:Ljava/lang/String; = "1"

.field public static final KEY_CCT:Ljava/lang/String; = "cct_value"

.field public static final KEY_CLOUD_TEMPLATE:Ljava/lang/String; = "3"

.field public static final KEY_CUSTOMEIZE:Ljava/lang/String; = "customize"

.field public static final KEY_EXP:Ljava/lang/String; = "exp_value"

.field private static final KEY_FUNC_KEY_ID:Ljava/lang/String; = "funcKey_id"

.field private static final KEY_FUNC_KEY_ITEM:Ljava/lang/String; = "funcKey_item"

.field private static final KEY_FUNC_KEY_RESULT:Ljava/lang/String; = "funcKey_result"

.field private static final KEY_FUNC_KEY_VALUE:Ljava/lang/String; = "funcKey_value"

.field public static final KEY_ISO:Ljava/lang/String; = "iso_value"

.field public static final KEY_LUX:Ljava/lang/String; = "lux_value"

.field public static final KEY_NO_TEMPLATE:Ljava/lang/String; = "default"

.field public static final KEY_STAR_TEMPLATE:Ljava/lang/String; = "2"

.field public static final KEY_TIMELAPSEPRO_EXPOSURE_COMPENSATION:Ljava/lang/String; = "time_lapse_ev"

.field public static final KEY_TIMELAPSEPRO_EXPOSURE_TIME:Ljava/lang/String; = "time_lapse_exp"

.field public static final KEY_TIMELAPSEPRO_FOCUS_VALUE:Ljava/lang/String; = "time_lapse_focus"

.field public static final KEY_TIMELAPSEPRO_INTERVAL:Ljava/lang/String; = "time_lapse_interval"

.field public static final KEY_TIMELAPSEPRO_ISO_VALUE:Ljava/lang/String; = "time_lapse_iso"

.field public static final KEY_TIMELAPSEPRO_PARAMETER:Ljava/lang/String; = "time_lapse_parameter"

.field public static final KEY_TIMELAPSEPRO_TIMER:Ljava/lang/String; = "time_lapse_timer"

.field public static final KEY_TIMELAPSEPRO_VALUE_CLEAR:Ljava/lang/String; = "value_clear"

.field public static final KEY_TIMELAPSEPRO_WHITE_BALANCE:Ljava/lang/String; = "time_lapse_wb"

.field public static final KEY_VIDEO_MODE:Ljava/lang/String; = "video_mode"

.field private static final POSTERIZE_TIME:Ljava/lang/String; = "posterize_time"

.field private static final TIMELAPSEPRO_TYPE:Ljava/lang/String; = "time_lapse_type"

.field private static final VIDEO_TIME:Ljava/lang/String; = "video_time"


# instance fields
.field public mCct:Ljava/lang/String;

.field public mExp:Ljava/lang/String;

.field public mFuncKeyId:Ljava/lang/String;

.field public mFuncKeyItem:Ljava/lang/String;

.field public mFuncKeyResult:Ljava/lang/String;

.field public mFuncKeyValue:Ljava/lang/String;

.field public mGenerateTime:Ljava/lang/String;

.field public mIso:Ljava/lang/String;

.field public mLux:Ljava/lang/String;

.field public mPosterizeTime:Ljava/lang/String;

.field public mTimeLapseEV:Ljava/lang/String;

.field public mTimeLapseEXP:Ljava/lang/String;

.field public mTimeLapseFocus:Ljava/lang/String;

.field public mTimeLapseISO:Ljava/lang/String;

.field public mTimeLapseType:Ljava/lang/String;

.field public mTimeLapseWB:Ljava/lang/String;

.field public mVideoTime:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, ""

    const-string v1, "202"

    .line 90
    invoke-direct {p0, p1, v1, v0}, Lcom/oplus/camera/statistics/model/DcsMsgData;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iput-object v0, p0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mFuncKeyId:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mFuncKeyResult:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mFuncKeyValue:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mFuncKeyItem:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mTimeLapseType:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mPosterizeTime:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mVideoTime:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mGenerateTime:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mTimeLapseISO:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mTimeLapseEXP:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mTimeLapseEV:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mTimeLapseFocus:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mTimeLapseWB:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mLux:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mIso:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mExp:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mCct:Ljava/lang/String;

    .line 91
    iput-object p2, p0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mCaptureMode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public buildEventId(Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mEventId:Ljava/lang/String;

    return-void
.end method

.method public getTemplateValue(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const-string p0, "default"

    return-object p0

    :cond_0
    const-string p0, "3"

    return-object p0

    :cond_1
    const-string p0, "2"

    return-object p0

    :cond_2
    const-string p0, "1"

    return-object p0
.end method

.method public report()V
    .locals 4

    .line 113
    iget-object v0, p0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mEventId:Ljava/lang/String;

    const-string v1, "funcKey_click"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "funcKey_id"

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mFuncKeyId:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->checkEmptyCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mFuncKeyResult:Ljava/lang/String;

    const-string v2, "funcKey_result"

    invoke-virtual {p0, v2, v0}, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->checkEmptyCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mEventId:Ljava/lang/String;

    const-string v2, "funcValue_select"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "funcKey_value"

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mFuncKeyId:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->checkEmptyCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mFuncKeyItem:Ljava/lang/String;

    const-string v3, "funcKey_item"

    invoke-virtual {p0, v3, v0}, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->checkEmptyCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mFuncKeyResult:Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->checkEmptyCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mEventId:Ljava/lang/String;

    const-string v3, "funcMenu_select"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mFuncKeyId:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->checkEmptyCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mFuncKeyValue:Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->checkEmptyCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mEventId:Ljava/lang/String;

    const-string v1, "videoRecord"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 130
    iget-object v0, p0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mCaptureMode:Ljava/lang/String;

    const-string v1, "video_mode"

    invoke-virtual {p0, v1, v0}, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->checkEmptyCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mTimeLapseType:Ljava/lang/String;

    const-string v1, "time_lapse_type"

    invoke-virtual {p0, v1, v0}, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->checkEmptyCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mPosterizeTime:Ljava/lang/String;

    const-string v1, "posterize_time"

    invoke-virtual {p0, v1, v0}, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->checkEmptyCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mVideoTime:Ljava/lang/String;

    const-string v1, "video_time"

    invoke-virtual {p0, v1, v0}, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->checkEmptyCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mGenerateTime:Ljava/lang/String;

    const-string v1, "generate_time"

    invoke-virtual {p0, v1, v0}, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->checkEmptyCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mTimeLapseISO:Ljava/lang/String;

    const-string v1, "time_lapse_iso"

    invoke-virtual {p0, v1, v0}, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->checkEmptyCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mTimeLapseEXP:Ljava/lang/String;

    const-string v1, "time_lapse_exp"

    invoke-virtual {p0, v1, v0}, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->checkEmptyCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mTimeLapseEV:Ljava/lang/String;

    const-string v1, "time_lapse_ev"

    invoke-virtual {p0, v1, v0}, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->checkEmptyCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mTimeLapseFocus:Ljava/lang/String;

    const-string v1, "time_lapse_focus"

    invoke-virtual {p0, v1, v0}, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->checkEmptyCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mTimeLapseWB:Ljava/lang/String;

    const-string v1, "time_lapse_wb"

    invoke-virtual {p0, v1, v0}, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->checkEmptyCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mLux:Ljava/lang/String;

    const-string v1, "lux_value"

    invoke-virtual {p0, v1, v0}, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->checkEmptyCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mIso:Ljava/lang/String;

    const-string v1, "iso_value"

    invoke-virtual {p0, v1, v0}, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->checkEmptyCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mExp:Ljava/lang/String;

    const-string v1, "exp_value"

    invoke-virtual {p0, v1, v0}, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->checkEmptyCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->mCct:Ljava/lang/String;

    const-string v1, "cct_value"

    invoke-virtual {p0, v1, v0}, Lcom/oplus/camera/statistics/model/TimeLapseProMsgData;->checkEmptyCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_3
    invoke-super {p0}, Lcom/oplus/camera/statistics/model/DcsMsgData;->report()V

    return-void
.end method
