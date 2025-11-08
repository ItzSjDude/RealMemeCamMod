.class Lcom/oplus/camera/ui/control/h$a;
.super Ljava/lang/Object;
.source "ThumbnailLoadExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/control/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/oplus/camera/ui/control/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 121
    new-instance v0, Lcom/oplus/camera/ui/control/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/camera/ui/control/h;-><init>(Lcom/oplus/camera/ui/control/h$1;)V

    sput-object v0, Lcom/oplus/camera/ui/control/h$a;->a:Lcom/oplus/camera/ui/control/h;

    return-void
.end method

.method static synthetic a()Lcom/oplus/camera/ui/control/h;
    .locals 1

    .line 120
    sget-object v0, Lcom/oplus/camera/ui/control/h$a;->a:Lcom/oplus/camera/ui/control/h;

    return-object v0
.end method
