.class synthetic Lcom/oplus/camera/statistics/QualityReport$1;
.super Ljava/lang/Object;
.source "QualityReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/statistics/QualityReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$oplus$camera$statistics$QualityReport$Status:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 92
    invoke-static {}, Lcom/oplus/camera/statistics/QualityReport$Status;->values()[Lcom/oplus/camera/statistics/QualityReport$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/oplus/camera/statistics/QualityReport$1;->$SwitchMap$com$oplus$camera$statistics$QualityReport$Status:[I

    :try_start_0
    sget-object v0, Lcom/oplus/camera/statistics/QualityReport$1;->$SwitchMap$com$oplus$camera$statistics$QualityReport$Status:[I

    sget-object v1, Lcom/oplus/camera/statistics/QualityReport$Status;->start:Lcom/oplus/camera/statistics/QualityReport$Status;

    invoke-virtual {v1}, Lcom/oplus/camera/statistics/QualityReport$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/oplus/camera/statistics/QualityReport$1;->$SwitchMap$com$oplus$camera$statistics$QualityReport$Status:[I

    sget-object v1, Lcom/oplus/camera/statistics/QualityReport$Status;->switchMode:Lcom/oplus/camera/statistics/QualityReport$Status;

    invoke-virtual {v1}, Lcom/oplus/camera/statistics/QualityReport$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/oplus/camera/statistics/QualityReport$1;->$SwitchMap$com$oplus$camera$statistics$QualityReport$Status:[I

    sget-object v1, Lcom/oplus/camera/statistics/QualityReport$Status;->switchCamera:Lcom/oplus/camera/statistics/QualityReport$Status;

    invoke-virtual {v1}, Lcom/oplus/camera/statistics/QualityReport$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
