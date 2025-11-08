.class Lcom/oplus/ocs/camera/ErrorResultAdapterV2;
.super Lcom/oplus/ocs/camera/ErrorResultAdapter;
.source "ErrorResultAdapterV2.java"


# instance fields
.field private mErrorResult:Lcom/oplus/ocs/camera/common/util/ErrorResult;


# direct methods
.method constructor <init>(Lcom/oplus/ocs/camera/common/util/ErrorResult;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Lcom/oplus/ocs/camera/ErrorResultAdapter;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/oplus/ocs/camera/ErrorResultAdapterV2;->mErrorResult:Lcom/oplus/ocs/camera/common/util/ErrorResult;

    .line 9
    iput-object p1, p0, Lcom/oplus/ocs/camera/ErrorResultAdapterV2;->mErrorResult:Lcom/oplus/ocs/camera/common/util/ErrorResult;

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/oplus/ocs/camera/ErrorResultAdapterV2;->mErrorResult:Lcom/oplus/ocs/camera/common/util/ErrorResult;

    if-eqz p0, :cond_0

    .line 15
    invoke-virtual {p0}, Lcom/oplus/ocs/camera/common/util/ErrorResult;->getErrorCode()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getErrorInfo()Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/oplus/ocs/camera/ErrorResultAdapterV2;->mErrorResult:Lcom/oplus/ocs/camera/common/util/ErrorResult;

    if-eqz p0, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/oplus/ocs/camera/common/util/ErrorResult;->getErrorInfo()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
