.class Lcom/oplus/camera/util/h$a;
.super Ljava/lang/Object;
.source "LocationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/util/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 493
    iput v0, p0, Lcom/oplus/camera/util/h$a;->a:I

    .line 494
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/util/h$a;->b:Ljava/util/List;

    .line 495
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/util/h$a;->c:Ljava/util/Map;

    .line 496
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/util/h$a;->d:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/util/h$1;)V
    .locals 0

    .line 492
    invoke-direct {p0}, Lcom/oplus/camera/util/h$a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/util/h$a;I)I
    .locals 0

    .line 492
    iput p1, p0, Lcom/oplus/camera/util/h$a;->a:I

    return p1
.end method

.method static synthetic a(Lcom/oplus/camera/util/h$a;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 492
    iput-object p1, p0, Lcom/oplus/camera/util/h$a;->b:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/oplus/camera/util/h$a;)Ljava/util/Map;
    .locals 0

    .line 492
    iget-object p0, p0, Lcom/oplus/camera/util/h$a;->c:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic a(Lcom/oplus/camera/util/h$a;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 492
    iput-object p1, p0, Lcom/oplus/camera/util/h$a;->c:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic b(Lcom/oplus/camera/util/h$a;)Ljava/util/Map;
    .locals 0

    .line 492
    iget-object p0, p0, Lcom/oplus/camera/util/h$a;->d:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic b(Lcom/oplus/camera/util/h$a;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 492
    iput-object p1, p0, Lcom/oplus/camera/util/h$a;->d:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic c(Lcom/oplus/camera/util/h$a;)Ljava/util/List;
    .locals 0

    .line 492
    iget-object p0, p0, Lcom/oplus/camera/util/h$a;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d(Lcom/oplus/camera/util/h$a;)I
    .locals 0

    .line 492
    iget p0, p0, Lcom/oplus/camera/util/h$a;->a:I

    return p0
.end method
