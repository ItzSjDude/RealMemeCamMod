.class public Lcom/oplus/camera/perf/Performance;
.super Ljava/lang/Object;
.source "Performance.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/perf/Performance$a;
    }
.end annotation


# static fields
.field private static final COUNT_LIMIT:I = 0x5

.field private static final FILE_NAME_PREFIX:Ljava/lang/String; = "camera_data_"

.field private static final PERFORMANCE_WRITE_FILE_SWITCH:Z = false

.field private static final TAG:Ljava/lang/String; = "Performance"

.field private static sContext:Landroid/content/Context;

.field private static sCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static sFilePath:Ljava/lang/String;

.field private static sGson:Lcom/google/gson/Gson;

.field private static sMarkFilePath:Ljava/lang/String;

.field private static sPerformanceData:Lcom/oplus/camera/perf/Performance$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    invoke-static {}, Lcom/oplus/camera/MyApplication;->d()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/oplus/camera/perf/Performance;->sContext:Landroid/content/Context;

    .line 49
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/camera/perf/Performance;->sFilePath:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oplus/camera/perf/Performance;->sFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "switch_mark"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/camera/perf/Performance;->sMarkFilePath:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/oplus/camera/perf/Performance;->sCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 54
    new-instance v0, Lcom/oplus/camera/perf/Performance$a;

    invoke-direct {v0}, Lcom/oplus/camera/perf/Performance$a;-><init>()V

    sput-object v0, Lcom/oplus/camera/perf/Performance;->sPerformanceData:Lcom/oplus/camera/perf/Performance$a;

    .line 55
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/oplus/camera/perf/Performance;->sGson:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1100()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 42
    sget-object v0, Lcom/oplus/camera/perf/Performance;->sCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$1200()V
    .locals 0

    .line 42
    invoke-static {}, Lcom/oplus/camera/perf/Performance;->writeToFile()V

    return-void
.end method

.method static synthetic access$1300()Lcom/oplus/camera/perf/Performance$a;
    .locals 1

    .line 42
    sget-object v0, Lcom/oplus/camera/perf/Performance;->sPerformanceData:Lcom/oplus/camera/perf/Performance$a;

    return-object v0
.end method

.method public static add(JLcom/oplus/camera/perf/CapturePerformance$CapturePerformanceData;)V
    .locals 2

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add, capturePerformanceData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oplus/camera/perf/Performance;->sGson:Lcom/google/gson/Gson;

    invoke-virtual {v1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Performance"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    sget-object v0, Lcom/oplus/camera/perf/Performance;->sContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->reportCapture(Landroid/content/Context;Lcom/oplus/camera/perf/CapturePerformance$CapturePerformanceData;)V

    .line 180
    sget-object v0, Lcom/oplus/camera/perf/Performance;->sPerformanceData:Lcom/oplus/camera/perf/Performance$a;

    invoke-static {v0}, Lcom/oplus/camera/perf/Performance$a;->i(Lcom/oplus/camera/perf/Performance$a;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    invoke-static {}, Lcom/oplus/camera/perf/Performance;->count()V

    .line 183
    invoke-virtual {p2}, Lcom/oplus/camera/perf/CapturePerformance$CapturePerformanceData;->isNeedReport()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0xd5b7b9

    .line 184
    sget-object p1, Lcom/oplus/camera/perf/Performance;->sGson:Lcom/google/gson/Gson;

    invoke-virtual {p1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/camera/perf/Performance;->report2EAP(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static add(Lcom/oplus/camera/perf/CameraExitPerformance$CameraExitPerformanceData;)V
    .locals 2

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add, cameraExitPerformanceData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oplus/camera/perf/Performance;->sGson:Lcom/google/gson/Gson;

    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Performance"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    sget-object v0, Lcom/oplus/camera/perf/Performance;->sContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->reportCameraExit(Landroid/content/Context;Lcom/oplus/camera/perf/CameraExitPerformance$CameraExitPerformanceData;)V

    .line 108
    sget-object v0, Lcom/oplus/camera/perf/Performance;->sPerformanceData:Lcom/oplus/camera/perf/Performance$a;

    invoke-static {v0}, Lcom/oplus/camera/perf/Performance$a;->b(Lcom/oplus/camera/perf/Performance$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-static {}, Lcom/oplus/camera/perf/Performance;->count()V

    return-void
.end method

.method public static add(Lcom/oplus/camera/perf/ComprehensivePerformance$PerformanceRecordData;)V
    .locals 2

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add, performanceRecordData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oplus/camera/perf/Performance;->sGson:Lcom/google/gson/Gson;

    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Performance"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    sget-object v0, Lcom/oplus/camera/perf/Performance;->sContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->reportComprehensive(Landroid/content/Context;Lcom/oplus/camera/perf/ComprehensivePerformance$PerformanceRecordData;)V

    .line 192
    sget-object v0, Lcom/oplus/camera/perf/Performance;->sPerformanceData:Lcom/oplus/camera/perf/Performance$a;

    invoke-static {v0}, Lcom/oplus/camera/perf/Performance$a;->j(Lcom/oplus/camera/perf/Performance$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    invoke-static {}, Lcom/oplus/camera/perf/Performance;->count()V

    .line 195
    invoke-virtual {p0}, Lcom/oplus/camera/perf/ComprehensivePerformance$PerformanceRecordData;->isNeedReport()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0xd5b3d1

    .line 196
    sget-object v1, Lcom/oplus/camera/perf/Performance;->sGson:Lcom/google/gson/Gson;

    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/perf/Performance;->report2EAP(ILjava/lang/String;)V

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/perf/ComprehensivePerformance$PerformanceRecordData;->isModeNeedReport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    invoke-virtual {p0}, Lcom/oplus/camera/perf/ComprehensivePerformance$PerformanceRecordData;->getPictureSaveTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/oplus/camera/f/a;->b(J)V

    :cond_1
    return-void
.end method

.method public static add(Lcom/oplus/camera/perf/ContinuousCapturePerformance$ContinuousCapturePerformanceData;)V
    .locals 2

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add, continuousCapturePerformanceData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oplus/camera/perf/Performance;->sGson:Lcom/google/gson/Gson;

    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Performance"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    sget-object v0, Lcom/oplus/camera/perf/Performance;->sContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->reportContinuousCapture(Landroid/content/Context;Lcom/oplus/camera/perf/ContinuousCapturePerformance$ContinuousCapturePerformanceData;)V

    .line 100
    sget-object v0, Lcom/oplus/camera/perf/Performance;->sPerformanceData:Lcom/oplus/camera/perf/Performance$a;

    invoke-static {v0}, Lcom/oplus/camera/perf/Performance$a;->a(Lcom/oplus/camera/perf/Performance$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-static {}, Lcom/oplus/camera/perf/Performance;->count()V

    return-void
.end method

.method public static add(Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;)V
    .locals 2

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add, fluencyPerformanceData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oplus/camera/perf/Performance;->sGson:Lcom/google/gson/Gson;

    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Performance"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    sget-object v0, Lcom/oplus/camera/perf/Performance;->sContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->reportFluency(Landroid/content/Context;Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;)V

    .line 208
    sget-object v0, Lcom/oplus/camera/perf/Performance;->sPerformanceData:Lcom/oplus/camera/perf/Performance$a;

    invoke-static {v0}, Lcom/oplus/camera/perf/Performance$a;->k(Lcom/oplus/camera/perf/Performance$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    invoke-static {}, Lcom/oplus/camera/perf/Performance;->count()V

    return-void
.end method

.method public static add(Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;)V
    .locals 2

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add, launchPerformanceData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oplus/camera/perf/Performance;->sGson:Lcom/google/gson/Gson;

    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Performance"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    sget-object v0, Lcom/oplus/camera/perf/Performance;->sContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->reportLaunch(Landroid/content/Context;Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;)V

    .line 166
    invoke-virtual {p0}, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->launchTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/oplus/camera/f/a;->a(J)V

    .line 167
    sget-object v0, Lcom/oplus/camera/perf/Performance;->sPerformanceData:Lcom/oplus/camera/perf/Performance$a;

    invoke-static {v0}, Lcom/oplus/camera/perf/Performance$a;->h(Lcom/oplus/camera/perf/Performance$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-static {}, Lcom/oplus/camera/perf/Performance;->count()V

    .line 170
    invoke-virtual {p0}, Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;->isNeedReport()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0xd5a431

    .line 171
    sget-object v1, Lcom/oplus/camera/perf/Performance;->sGson:Lcom/google/gson/Gson;

    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/perf/Performance;->report2EAP(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static add(Lcom/oplus/camera/perf/PictureSavePerformance$PictureSavePerformanceData;)V
    .locals 2

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add, pictureSavePerformanceData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oplus/camera/perf/Performance;->sGson:Lcom/google/gson/Gson;

    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Performance"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    sget-object v0, Lcom/oplus/camera/perf/Performance;->sContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->reportPictureSave(Landroid/content/Context;Lcom/oplus/camera/perf/PictureSavePerformance$PictureSavePerformanceData;)V

    .line 116
    invoke-virtual {p0}, Lcom/oplus/camera/perf/PictureSavePerformance$PictureSavePerformanceData;->getPictureSaveTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/oplus/camera/f/a;->b(J)V

    .line 117
    sget-object v0, Lcom/oplus/camera/perf/Performance;->sPerformanceData:Lcom/oplus/camera/perf/Performance$a;

    invoke-static {v0}, Lcom/oplus/camera/perf/Performance$a;->c(Lcom/oplus/camera/perf/Performance$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-static {}, Lcom/oplus/camera/perf/Performance;->count()V

    return-void
.end method

.method public static add(Lcom/oplus/camera/perf/SwitchCameraPerformance$SwitchCameraPerformanceData;)V
    .locals 2

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add, switchCameraPerformanceData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oplus/camera/perf/Performance;->sGson:Lcom/google/gson/Gson;

    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Performance"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    sget-object v0, Lcom/oplus/camera/perf/Performance;->sContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->reportSwitchCamera(Landroid/content/Context;Lcom/oplus/camera/perf/SwitchCameraPerformance$SwitchCameraPerformanceData;)V

    .line 142
    sget-object v0, Lcom/oplus/camera/perf/Performance;->sPerformanceData:Lcom/oplus/camera/perf/Performance$a;

    invoke-static {v0}, Lcom/oplus/camera/perf/Performance$a;->f(Lcom/oplus/camera/perf/Performance$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-static {}, Lcom/oplus/camera/perf/Performance;->count()V

    .line 145
    invoke-virtual {p0}, Lcom/oplus/camera/perf/SwitchCameraPerformance$SwitchCameraPerformanceData;->isNeedReport()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0xd5a819

    .line 146
    sget-object v1, Lcom/oplus/camera/perf/Performance;->sGson:Lcom/google/gson/Gson;

    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/perf/Performance;->report2EAP(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static add(Lcom/oplus/camera/perf/SwitchModePerformance$SwitchModePerformanceData;)V
    .locals 2

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add, switchModePerformanceData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oplus/camera/perf/Performance;->sGson:Lcom/google/gson/Gson;

    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Performance"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    sget-object v0, Lcom/oplus/camera/perf/Performance;->sContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->reportSwitchMode(Landroid/content/Context;Lcom/oplus/camera/perf/SwitchModePerformance$SwitchModePerformanceData;)V

    .line 154
    sget-object v0, Lcom/oplus/camera/perf/Performance;->sPerformanceData:Lcom/oplus/camera/perf/Performance$a;

    invoke-static {v0}, Lcom/oplus/camera/perf/Performance$a;->g(Lcom/oplus/camera/perf/Performance$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-static {}, Lcom/oplus/camera/perf/Performance;->count()V

    .line 157
    invoke-virtual {p0}, Lcom/oplus/camera/perf/SwitchModePerformance$SwitchModePerformanceData;->isNeedReport()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0xd5ac01

    .line 158
    sget-object v1, Lcom/oplus/camera/perf/Performance;->sGson:Lcom/google/gson/Gson;

    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/perf/Performance;->report2EAP(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static add(Lcom/oplus/camera/perf/VideoRecordPerformance$VideoRecordPerformanceData;)V
    .locals 2

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add, videoRecordPerformanceData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oplus/camera/perf/Performance;->sGson:Lcom/google/gson/Gson;

    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Performance"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    sget-object v0, Lcom/oplus/camera/perf/Performance;->sContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->reportStartVideoRecord(Landroid/content/Context;Lcom/oplus/camera/perf/VideoRecordPerformance$VideoRecordPerformanceData;)V

    .line 134
    sget-object v0, Lcom/oplus/camera/perf/Performance;->sPerformanceData:Lcom/oplus/camera/perf/Performance$a;

    invoke-static {v0}, Lcom/oplus/camera/perf/Performance$a;->e(Lcom/oplus/camera/perf/Performance$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-static {}, Lcom/oplus/camera/perf/Performance;->count()V

    return-void
.end method

.method public static add(Lcom/oplus/camera/perf/VideoSavePerformance$VideoSavePerformanceData;)V
    .locals 2

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add, videoSavePerformanceData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oplus/camera/perf/Performance;->sGson:Lcom/google/gson/Gson;

    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Performance"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    sget-object v0, Lcom/oplus/camera/perf/Performance;->sContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->reportVideoSave(Landroid/content/Context;Lcom/oplus/camera/perf/VideoSavePerformance$VideoSavePerformanceData;)V

    .line 125
    invoke-virtual {p0}, Lcom/oplus/camera/perf/VideoSavePerformance$VideoSavePerformanceData;->getVideoSaveTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/oplus/camera/f/a;->c(J)V

    .line 126
    sget-object v0, Lcom/oplus/camera/perf/Performance;->sPerformanceData:Lcom/oplus/camera/perf/Performance$a;

    invoke-static {v0}, Lcom/oplus/camera/perf/Performance$a;->d(Lcom/oplus/camera/perf/Performance$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-static {}, Lcom/oplus/camera/perf/Performance;->count()V

    return-void
.end method

.method private static count()V
    .locals 3

    .line 213
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/oplus/camera/perf/Performance;->sMarkFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    sget-object v0, Lcom/oplus/camera/perf/Performance;->sPerformanceData:Lcom/oplus/camera/perf/Performance$a;

    invoke-virtual {v0}, Lcom/oplus/camera/perf/Performance$a;->a()V

    return-void

    .line 221
    :cond_0
    invoke-static {}, Lcom/oplus/camera/w/d;->a()Lcom/oplus/camera/w/d;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/perf/Performance$1;

    invoke-direct {v1}, Lcom/oplus/camera/perf/Performance$1;-><init>()V

    const-string v2, "Perf write file"

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/w/d;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method private static generateFileName()Ljava/lang/String;
    .locals 5

    .line 266
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd_hh-mm-ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "camera_data_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".txt"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static report2EAP(ILjava/lang/String;)V
    .locals 2

    .line 271
    invoke-static {}, Lcom/oplus/camera/w/d;->a()Lcom/oplus/camera/w/d;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/perf/Performance$2;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/perf/Performance$2;-><init>(ILjava/lang/String;)V

    const-string p0, "EAP report"

    invoke-virtual {v0, v1, p0}, Lcom/oplus/camera/w/d;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method private static writeToFile()V
    .locals 4

    .line 236
    invoke-static {}, Lcom/oplus/camera/perf/Performance;->generateFileName()Ljava/lang/String;

    move-result-object v0

    .line 237
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/oplus/camera/perf/Performance;->sFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 242
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 243
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 246
    :cond_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 248
    :try_start_1
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 249
    sget-object v1, Lcom/oplus/camera/perf/Performance;->sPerformanceData:Lcom/oplus/camera/perf/Performance$a;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    move-object v0, v2

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v2, v0

    goto :goto_2

    :catch_1
    move-exception v1

    .line 253
    :goto_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_1

    .line 257
    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 259
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void

    :goto_2
    if-eqz v2, :cond_2

    .line 257
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 259
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 262
    :cond_2
    :goto_3
    throw v1
.end method
