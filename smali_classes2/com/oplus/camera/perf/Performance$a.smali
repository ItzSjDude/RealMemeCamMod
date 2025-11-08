.class public Lcom/oplus/camera/perf/Performance$a;
.super Ljava/lang/Object;
.source "Performance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/perf/Performance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/oplus/camera/perf/CapturePerformance$CapturePerformanceData;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/camera/perf/SwitchModePerformance$SwitchModePerformanceData;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/camera/perf/SwitchCameraPerformance$SwitchCameraPerformanceData;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/camera/perf/VideoRecordPerformance$VideoRecordPerformanceData;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/camera/perf/VideoSavePerformance$VideoSavePerformanceData;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/camera/perf/PictureSavePerformance$PictureSavePerformanceData;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/camera/perf/CameraExitPerformance$CameraExitPerformanceData;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/camera/perf/ContinuousCapturePerformance$ContinuousCapturePerformanceData;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/camera/perf/ComprehensivePerformance$PerformanceRecordData;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/perf/Performance$a;->a:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/perf/Performance$a;->b:Ljava/util/Map;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/perf/Performance$a;->c:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/perf/Performance$a;->d:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/perf/Performance$a;->e:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/perf/Performance$a;->f:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/perf/Performance$a;->g:Ljava/util/List;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/perf/Performance$a;->h:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/perf/Performance$a;->i:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/perf/Performance$a;->j:Ljava/util/List;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/perf/Performance$a;->k:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/perf/Performance$a;)Ljava/util/List;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/oplus/camera/perf/Performance$a;->i:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/oplus/camera/perf/Performance$a;)Ljava/util/List;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/oplus/camera/perf/Performance$a;->h:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lcom/oplus/camera/perf/Performance$a;)Ljava/util/List;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/oplus/camera/perf/Performance$a;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d(Lcom/oplus/camera/perf/Performance$a;)Ljava/util/List;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/oplus/camera/perf/Performance$a;->f:Ljava/util/List;

    return-object p0
.end method

.method static synthetic e(Lcom/oplus/camera/perf/Performance$a;)Ljava/util/List;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/oplus/camera/perf/Performance$a;->e:Ljava/util/List;

    return-object p0
.end method

.method static synthetic f(Lcom/oplus/camera/perf/Performance$a;)Ljava/util/List;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/oplus/camera/perf/Performance$a;->d:Ljava/util/List;

    return-object p0
.end method

.method static synthetic g(Lcom/oplus/camera/perf/Performance$a;)Ljava/util/List;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/oplus/camera/perf/Performance$a;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic h(Lcom/oplus/camera/perf/Performance$a;)Ljava/util/List;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/oplus/camera/perf/Performance$a;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic i(Lcom/oplus/camera/perf/Performance$a;)Ljava/util/Map;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/oplus/camera/perf/Performance$a;->b:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic j(Lcom/oplus/camera/perf/Performance$a;)Ljava/util/List;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/oplus/camera/perf/Performance$a;->j:Ljava/util/List;

    return-object p0
.end method

.method static synthetic k(Lcom/oplus/camera/perf/Performance$a;)Ljava/util/List;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/oplus/camera/perf/Performance$a;->k:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/oplus/camera/perf/Performance$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 83
    iget-object v0, p0, Lcom/oplus/camera/perf/Performance$a;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 84
    iget-object v0, p0, Lcom/oplus/camera/perf/Performance$a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 85
    iget-object v0, p0, Lcom/oplus/camera/perf/Performance$a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 86
    iget-object v0, p0, Lcom/oplus/camera/perf/Performance$a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 87
    iget-object v0, p0, Lcom/oplus/camera/perf/Performance$a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 88
    iget-object v0, p0, Lcom/oplus/camera/perf/Performance$a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 89
    iget-object v0, p0, Lcom/oplus/camera/perf/Performance$a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 90
    iget-object v0, p0, Lcom/oplus/camera/perf/Performance$a;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 91
    iget-object v0, p0, Lcom/oplus/camera/perf/Performance$a;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 92
    iget-object p0, p0, Lcom/oplus/camera/perf/Performance$a;->k:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method
