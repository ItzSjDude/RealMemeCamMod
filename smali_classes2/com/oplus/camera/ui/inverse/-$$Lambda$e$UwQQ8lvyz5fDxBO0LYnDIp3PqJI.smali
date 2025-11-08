.class public final synthetic Lcom/oplus/camera/ui/inverse/-$$Lambda$e$UwQQ8lvyz5fDxBO0LYnDIp3PqJI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/oplus/camera/ui/inverse/e$c;


# instance fields
.field private final synthetic f$0:Z

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$UwQQ8lvyz5fDxBO0LYnDIp3PqJI;->f$0:Z

    iput-boolean p2, p0, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$UwQQ8lvyz5fDxBO0LYnDIp3PqJI;->f$1:Z

    return-void
.end method


# virtual methods
.method public final call(Lcom/oplus/camera/ui/inverse/InverseMaskView;)V
    .locals 1

    iget-boolean v0, p0, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$UwQQ8lvyz5fDxBO0LYnDIp3PqJI;->f$0:Z

    iget-boolean p0, p0, Lcom/oplus/camera/ui/inverse/-$$Lambda$e$UwQQ8lvyz5fDxBO0LYnDIp3PqJI;->f$1:Z

    invoke-static {v0, p0, p1}, Lcom/oplus/camera/ui/inverse/e;->lambda$setMaskAlpha$4(ZZLcom/oplus/camera/ui/inverse/InverseMaskView;)V

    return-void
.end method
