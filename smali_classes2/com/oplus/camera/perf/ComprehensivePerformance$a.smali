.class Lcom/oplus/camera/perf/ComprehensivePerformance$a;
.super Ljava/lang/Object;
.source "ComprehensivePerformance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/perf/ComprehensivePerformance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:J

.field d:J

.field e:J

.field f:Lcom/oplus/camera/perf/a;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput v0, p0, Lcom/oplus/camera/perf/ComprehensivePerformance$a;->a:I

    const-string v0, ""

    .line 69
    iput-object v0, p0, Lcom/oplus/camera/perf/ComprehensivePerformance$a;->b:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 70
    iput-wide v0, p0, Lcom/oplus/camera/perf/ComprehensivePerformance$a;->c:J

    .line 71
    iput-wide v0, p0, Lcom/oplus/camera/perf/ComprehensivePerformance$a;->d:J

    .line 72
    iput-wide v0, p0, Lcom/oplus/camera/perf/ComprehensivePerformance$a;->e:J

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/oplus/camera/perf/ComprehensivePerformance$a;->f:Lcom/oplus/camera/perf/a;

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/perf/ComprehensivePerformance$1;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/oplus/camera/perf/ComprehensivePerformance$a;-><init>()V

    return-void
.end method
