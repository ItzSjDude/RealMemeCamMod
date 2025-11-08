.class Lcom/oplus/camera/perf/Performance$2;
.super Ljava/lang/Object;
.source "Performance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/perf/Performance;->report2EAP(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 271
    iput p1, p0, Lcom/oplus/camera/perf/Performance$2;->a:I

    iput-object p2, p0, Lcom/oplus/camera/perf/Performance$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 274
    iget v0, p0, Lcom/oplus/camera/perf/Performance$2;->a:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/oplus/camera/perf/Performance$2;->b:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/oplus/camera/statistics/QualityReport;->report(I[Ljava/lang/Object;)V

    return-void
.end method
