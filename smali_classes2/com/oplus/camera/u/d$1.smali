.class Lcom/oplus/camera/u/d$1;
.super Ljava/util/LinkedHashMap;
.source "SuperTextManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/u/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/Long;",
        "Lcom/oplus/camera/u/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oplus/camera/u/d;


# direct methods
.method constructor <init>(Lcom/oplus/camera/u/d;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/oplus/camera/u/d$1;->this$0:Lcom/oplus/camera/u/d;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Long;",
            "Lcom/oplus/camera/u/a;",
            ">;)Z"
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lcom/oplus/camera/u/d$1;->size()I

    move-result p0

    const/4 p1, 0x5

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
