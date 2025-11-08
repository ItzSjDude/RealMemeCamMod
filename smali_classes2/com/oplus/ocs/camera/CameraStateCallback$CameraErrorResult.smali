.class public final Lcom/oplus/ocs/camera/CameraStateCallback$CameraErrorResult;
.super Ljava/lang/Object;
.source "CameraStateCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ocs/camera/CameraStateCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CameraErrorResult"
.end annotation


# instance fields
.field private mErrorResultAdapter:Lcom/oplus/ocs/camera/ErrorResultAdapter;


# direct methods
.method constructor <init>(Lcom/oplus/ocs/camera/ErrorResultAdapter;)V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/oplus/ocs/camera/CameraStateCallback$CameraErrorResult;->mErrorResultAdapter:Lcom/oplus/ocs/camera/ErrorResultAdapter;

    .line 90
    iput-object p1, p0, Lcom/oplus/ocs/camera/CameraStateCallback$CameraErrorResult;->mErrorResultAdapter:Lcom/oplus/ocs/camera/ErrorResultAdapter;

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraStateCallback$CameraErrorResult;->mErrorResultAdapter:Lcom/oplus/ocs/camera/ErrorResultAdapter;

    invoke-virtual {p0}, Lcom/oplus/ocs/camera/ErrorResultAdapter;->getErrorCode()I

    move-result p0

    return p0
.end method

.method public getErrorInfo()Ljava/lang/String;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraStateCallback$CameraErrorResult;->mErrorResultAdapter:Lcom/oplus/ocs/camera/ErrorResultAdapter;

    invoke-virtual {p0}, Lcom/oplus/ocs/camera/ErrorResultAdapter;->getErrorInfo()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
