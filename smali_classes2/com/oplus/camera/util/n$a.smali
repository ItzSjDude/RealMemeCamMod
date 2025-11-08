.class Lcom/oplus/camera/util/n$a;
.super Ljava/lang/Object;
.source "ThumbnailCacheUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/util/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/oplus/camera/util/n;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 487
    new-instance v0, Lcom/oplus/camera/util/n;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/camera/util/n;-><init>(Lcom/oplus/camera/util/n$1;)V

    sput-object v0, Lcom/oplus/camera/util/n$a;->a:Lcom/oplus/camera/util/n;

    return-void
.end method

.method static synthetic a()Lcom/oplus/camera/util/n;
    .locals 1

    .line 486
    sget-object v0, Lcom/oplus/camera/util/n$a;->a:Lcom/oplus/camera/util/n;

    return-object v0
.end method
