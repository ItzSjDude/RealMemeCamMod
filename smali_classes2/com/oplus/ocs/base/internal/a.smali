.class public Lcom/oplus/ocs/base/internal/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/ocs/base/common/Feature;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/oplus/ocs/base/common/Feature;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/oplus/ocs/base/internal/a;->a:Ljava/lang/String;

    .line 31
    iput p2, p0, Lcom/oplus/ocs/base/internal/a;->b:I

    .line 32
    iput-object p3, p0, Lcom/oplus/ocs/base/internal/a;->c:Ljava/util/List;

    return-void
.end method
