.class Lcom/oplus/camera/p$3;
.super Ljava/lang/Object;
.source "HistogramProcessorManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/p;->a([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/p;


# direct methods
.method constructor <init>(Lcom/oplus/camera/p;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lcom/oplus/camera/p$3;->a:Lcom/oplus/camera/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 388
    iget-object p0, p0, Lcom/oplus/camera/p$3;->a:Lcom/oplus/camera/p;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/p;->a(Lcom/oplus/camera/professional/u$a;)V

    return-void
.end method
