.class public final synthetic Lcom/oplus/camera/-$$Lambda$ag$gNyyeuKfOzOzBYQBNCB0phiLmaQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/oplus/camera/ag;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/camera/ag;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/-$$Lambda$ag$gNyyeuKfOzOzBYQBNCB0phiLmaQ;->f$0:Lcom/oplus/camera/ag;

    iput-boolean p2, p0, Lcom/oplus/camera/-$$Lambda$ag$gNyyeuKfOzOzBYQBNCB0phiLmaQ;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/oplus/camera/-$$Lambda$ag$gNyyeuKfOzOzBYQBNCB0phiLmaQ;->f$0:Lcom/oplus/camera/ag;

    iget-boolean p0, p0, Lcom/oplus/camera/-$$Lambda$ag$gNyyeuKfOzOzBYQBNCB0phiLmaQ;->f$1:Z

    invoke-static {v0, p0}, Lcom/oplus/camera/ag;->lambda$gNyyeuKfOzOzBYQBNCB0phiLmaQ(Lcom/oplus/camera/ag;Z)V

    return-void
.end method
