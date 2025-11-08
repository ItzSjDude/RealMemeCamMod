.class public Lcom/oplus/ocs/base/a/b;
.super Lcom/oplus/ocs/base/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/oplus/ocs/base/a/a<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Lcom/oplus/ocs/base/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/base/a/c<",
            "TTResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/oplus/ocs/base/a/a;-><init>()V

    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oplus/ocs/base/a/b;->a:Ljava/lang/Object;

    .line 17
    new-instance v0, Lcom/oplus/ocs/base/a/c;

    invoke-direct {v0}, Lcom/oplus/ocs/base/a/c;-><init>()V

    iput-object v0, p0, Lcom/oplus/ocs/base/a/b;->b:Lcom/oplus/ocs/base/a/c;

    return-void
.end method
