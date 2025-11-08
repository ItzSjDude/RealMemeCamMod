.class public abstract Lcom/oplus/ocs/base/common/api/a$a;
.super Lcom/oplus/ocs/base/common/api/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ocs/base/common/api/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/oplus/ocs/base/common/api/a$e;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/oplus/ocs/base/common/api/a$d<",
        "TT;TO;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 151
    invoke-direct {p0}, Lcom/oplus/ocs/base/common/api/a$d;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract buildClient(Landroid/content/Context;Landroid/os/Looper;Lcom/oplus/ocs/base/internal/a;Ljava/lang/Object;)Lcom/oplus/ocs/base/common/api/a$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Lcom/oplus/ocs/base/internal/a;",
            "TO;)TT;"
        }
    .end annotation
.end method
