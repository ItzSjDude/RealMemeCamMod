.class Lcom/oplus/camera/q$d;
.super Ljava/lang/Object;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# static fields
.field private static a:Lcom/oplus/camera/q;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 551
    new-instance v0, Lcom/oplus/camera/q;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/camera/q;-><init>(Lcom/oplus/camera/q$1;)V

    sput-object v0, Lcom/oplus/camera/q$d;->a:Lcom/oplus/camera/q;

    return-void
.end method

.method static synthetic a()Lcom/oplus/camera/q;
    .locals 1

    .line 549
    sget-object v0, Lcom/oplus/camera/q$d;->a:Lcom/oplus/camera/q;

    return-object v0
.end method
