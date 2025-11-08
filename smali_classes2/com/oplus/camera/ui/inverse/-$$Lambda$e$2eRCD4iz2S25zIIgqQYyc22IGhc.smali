.class public final synthetic Lcom/oplus/camera/ui/inverse/-$$Lambda$e$2eRCD4iz2S25zIIgqQYyc22IGhc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/oplus/camera/ui/inverse/f$a;


# instance fields
.field private final synthetic f$0:Lcom/oplus/camera/ui/inverse/e;

.field private final synthetic f$1:I

.field private final synthetic f$2:F

.field private final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/camera/ui/inverse/e;IFZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$2eRCD4iz2S25zIIgqQYyc22IGhc;->f$0:Lcom/oplus/camera/ui/inverse/e;

    iput p2, p0, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$2eRCD4iz2S25zIIgqQYyc22IGhc;->f$1:I

    iput p3, p0, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$2eRCD4iz2S25zIIgqQYyc22IGhc;->f$2:F

    iput-boolean p4, p0, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$2eRCD4iz2S25zIIgqQYyc22IGhc;->f$3:Z

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;Lcom/oplus/camera/ui/inverse/c;)Z
    .locals 6

    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$2eRCD4iz2S25zIIgqQYyc22IGhc;->f$0:Lcom/oplus/camera/ui/inverse/e;

    iget v1, p0, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$2eRCD4iz2S25zIIgqQYyc22IGhc;->f$1:I

    iget v2, p0, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$2eRCD4iz2S25zIIgqQYyc22IGhc;->f$2:F

    iget-boolean v3, p0, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$2eRCD4iz2S25zIIgqQYyc22IGhc;->f$3:Z

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/camera/ui/inverse/e;->lambda$setInverseColor$0$e(IFZLjava/lang/Object;Lcom/oplus/camera/ui/inverse/c;)Z

    move-result p0

    return p0
.end method
