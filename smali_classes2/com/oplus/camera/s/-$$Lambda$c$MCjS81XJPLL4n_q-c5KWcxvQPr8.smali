.class public final synthetic Lcom/oplus/camera/s/-$$Lambda$c$MCjS81XJPLL4n_q-c5KWcxvQPr8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/oplus/camera/s/c;

.field private final synthetic f$1:Z

.field private final synthetic f$2:Lcom/oplus/camera/ui/control/b;

.field private final synthetic f$3:Z

.field private final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/camera/s/c;ZLcom/oplus/camera/ui/control/b;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/s/-$$Lambda$c$MCjS81XJPLL4n_q-c5KWcxvQPr8;->f$0:Lcom/oplus/camera/s/c;

    iput-boolean p2, p0, Lcom/oplus/camera/s/-$$Lambda$c$MCjS81XJPLL4n_q-c5KWcxvQPr8;->f$1:Z

    iput-object p3, p0, Lcom/oplus/camera/s/-$$Lambda$c$MCjS81XJPLL4n_q-c5KWcxvQPr8;->f$2:Lcom/oplus/camera/ui/control/b;

    iput-boolean p4, p0, Lcom/oplus/camera/s/-$$Lambda$c$MCjS81XJPLL4n_q-c5KWcxvQPr8;->f$3:Z

    iput-boolean p5, p0, Lcom/oplus/camera/s/-$$Lambda$c$MCjS81XJPLL4n_q-c5KWcxvQPr8;->f$4:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/oplus/camera/s/-$$Lambda$c$MCjS81XJPLL4n_q-c5KWcxvQPr8;->f$0:Lcom/oplus/camera/s/c;

    iget-boolean v1, p0, Lcom/oplus/camera/s/-$$Lambda$c$MCjS81XJPLL4n_q-c5KWcxvQPr8;->f$1:Z

    iget-object v2, p0, Lcom/oplus/camera/s/-$$Lambda$c$MCjS81XJPLL4n_q-c5KWcxvQPr8;->f$2:Lcom/oplus/camera/ui/control/b;

    iget-boolean v3, p0, Lcom/oplus/camera/s/-$$Lambda$c$MCjS81XJPLL4n_q-c5KWcxvQPr8;->f$3:Z

    iget-boolean p0, p0, Lcom/oplus/camera/s/-$$Lambda$c$MCjS81XJPLL4n_q-c5KWcxvQPr8;->f$4:Z

    invoke-static {v0, v1, v2, v3, p0}, Lcom/oplus/camera/s/c;->lambda$MCjS81XJPLL4n_q-c5KWcxvQPr8(Lcom/oplus/camera/s/c;ZLcom/oplus/camera/ui/control/b;ZZ)V

    return-void
.end method
