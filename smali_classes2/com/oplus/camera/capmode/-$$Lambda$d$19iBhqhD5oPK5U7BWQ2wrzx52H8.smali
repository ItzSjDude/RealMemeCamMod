.class public final synthetic Lcom/oplus/camera/capmode/-$$Lambda$d$19iBhqhD5oPK5U7BWQ2wrzx52H8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/oplus/camera/capmode/d;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/camera/capmode/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/capmode/-$$Lambda$d$19iBhqhD5oPK5U7BWQ2wrzx52H8;->f$0:Lcom/oplus/camera/capmode/d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/oplus/camera/capmode/-$$Lambda$d$19iBhqhD5oPK5U7BWQ2wrzx52H8;->f$0:Lcom/oplus/camera/capmode/d;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->lambda$resetWhenCaptureFail$1$d()V

    return-void
.end method
