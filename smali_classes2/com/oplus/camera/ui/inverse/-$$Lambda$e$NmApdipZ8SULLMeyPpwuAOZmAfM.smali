.class public final synthetic Lcom/oplus/camera/ui/inverse/-$$Lambda$e$NmApdipZ8SULLMeyPpwuAOZmAfM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/oplus/camera/ui/inverse/f$a;


# instance fields
.field private final synthetic f$0:Lcom/oplus/camera/ui/inverse/e;

.field private final synthetic f$1:I

.field private final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/camera/ui/inverse/e;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$NmApdipZ8SULLMeyPpwuAOZmAfM;->f$0:Lcom/oplus/camera/ui/inverse/e;

    iput p2, p0, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$NmApdipZ8SULLMeyPpwuAOZmAfM;->f$1:I

    iput-boolean p3, p0, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$NmApdipZ8SULLMeyPpwuAOZmAfM;->f$2:Z

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;Lcom/oplus/camera/ui/inverse/c;)Z
    .locals 2

    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$NmApdipZ8SULLMeyPpwuAOZmAfM;->f$0:Lcom/oplus/camera/ui/inverse/e;

    iget v1, p0, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$NmApdipZ8SULLMeyPpwuAOZmAfM;->f$1:I

    iget-boolean p0, p0, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$NmApdipZ8SULLMeyPpwuAOZmAfM;->f$2:Z

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/oplus/camera/ui/inverse/e;->lambda$setInverseColor$2$e(IZLjava/lang/Object;Lcom/oplus/camera/ui/inverse/c;)Z

    move-result p0

    return p0
.end method
