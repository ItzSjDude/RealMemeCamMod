.class public final synthetic Lcom/oplus/camera/tuningupgrade/-$$Lambda$TuningParameterUpgradeService$jpvUvRQ96RHZU8Cdr2btXXz1sLY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field private final synthetic f$0:Ljava/util/HashMap;

.field private final synthetic f$1:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashMap;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/tuningupgrade/-$$Lambda$TuningParameterUpgradeService$jpvUvRQ96RHZU8Cdr2btXXz1sLY;->f$0:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/oplus/camera/tuningupgrade/-$$Lambda$TuningParameterUpgradeService$jpvUvRQ96RHZU8Cdr2btXXz1sLY;->f$1:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .locals 1

    iget-object v0, p0, Lcom/oplus/camera/tuningupgrade/-$$Lambda$TuningParameterUpgradeService$jpvUvRQ96RHZU8Cdr2btXXz1sLY;->f$0:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/oplus/camera/tuningupgrade/-$$Lambda$TuningParameterUpgradeService$jpvUvRQ96RHZU8Cdr2btXXz1sLY;->f$1:Ljava/util/Map;

    invoke-static {v0, p0, p1}, Lcom/oplus/camera/tuningupgrade/TuningParameterUpgradeService;->lambda$jpvUvRQ96RHZU8Cdr2btXXz1sLY(Ljava/util/HashMap;Ljava/util/Map;Ljava/io/File;)Z

    move-result p0

    return p0
.end method
