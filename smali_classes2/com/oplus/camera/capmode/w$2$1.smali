.class Lcom/oplus/camera/capmode/w$2$1;
.super Ljava/lang/Object;
.source "VideoMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/w$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/w$2;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/w$2;)V
    .locals 0

    .line 402
    iput-object p1, p0, Lcom/oplus/camera/capmode/w$2$1;->a:Lcom/oplus/camera/capmode/w$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 405
    iget-object p0, p0, Lcom/oplus/camera/capmode/w$2$1;->a:Lcom/oplus/camera/capmode/w$2;

    iget-object p0, p0, Lcom/oplus/camera/capmode/w$2;->a:Lcom/oplus/camera/capmode/w;

    invoke-static {p0}, Lcom/oplus/camera/capmode/w;->access$400(Lcom/oplus/camera/capmode/w;)V

    return-void
.end method
