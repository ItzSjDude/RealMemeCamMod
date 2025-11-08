.class Lcom/oplus/epona/utils/Logger$LoggerObserver;
.super Landroid/database/ContentObserver;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/epona/utils/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoggerObserver"
.end annotation


# direct methods
.method private constructor <init>(Landroid/os/Handler;)V
    .locals 0

    const/4 p1, 0x0

    .line 22
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Handler;Lcom/oplus/epona/utils/Logger$1;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/oplus/epona/utils/Logger$LoggerObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    const-string p0, "persist.sys.assert.panic"

    const/4 p1, 0x0

    .line 27
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/oplus/epona/utils/Logger;->sDEBUG:Z

    return-void
.end method
