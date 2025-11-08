.class Lcom/oplus/camera/c$b;
.super Ljava/lang/Object;
.source "BaseSloganUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Landroid/graphics/Bitmap;

.field public d:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2256
    iput-object v0, p0, Lcom/oplus/camera/c$b;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2257
    iput v0, p0, Lcom/oplus/camera/c$b;->b:I

    const/4 v1, 0x0

    .line 2258
    iput-object v1, p0, Lcom/oplus/camera/c$b;->c:Landroid/graphics/Bitmap;

    .line 2259
    iput-boolean v0, p0, Lcom/oplus/camera/c$b;->d:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/c$1;)V
    .locals 0

    .line 2255
    invoke-direct {p0}, Lcom/oplus/camera/c$b;-><init>()V

    return-void
.end method
