.class public Lcom/oplus/camera/ui/inverse/c;
.super Ljava/lang/Object;
.source "InverseData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/inverse/c$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field public d:F

.field public e:Lcom/oplus/camera/ui/inverse/c$a;

.field public f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oplus/camera/ui/inverse/c$a;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/oplus/camera/ui/inverse/c;->a:I

    .line 9
    iput v0, p0, Lcom/oplus/camera/ui/inverse/c;->b:I

    .line 10
    iput-boolean v0, p0, Lcom/oplus/camera/ui/inverse/c;->c:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 11
    iput v0, p0, Lcom/oplus/camera/ui/inverse/c;->d:F

    .line 12
    sget-object v0, Lcom/oplus/camera/ui/inverse/c$a;->common:Lcom/oplus/camera/ui/inverse/c$a;

    iput-object v0, p0, Lcom/oplus/camera/ui/inverse/c;->e:Lcom/oplus/camera/ui/inverse/c$a;

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/oplus/camera/ui/inverse/c;->f:Ljava/lang/ref/WeakReference;

    .line 16
    iput-object p1, p0, Lcom/oplus/camera/ui/inverse/c;->e:Lcom/oplus/camera/ui/inverse/c$a;

    return-void
.end method
