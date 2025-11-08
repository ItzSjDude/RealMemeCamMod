.class Lcom/oplus/camera/capmode/x$c;
.super Ljava/lang/Object;
.source "VideoRecorder.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/capmode/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/x;


# direct methods
.method private constructor <init>(Lcom/oplus/camera/capmode/x;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/oplus/camera/capmode/x$c;->a:Lcom/oplus/camera/capmode/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/capmode/x;Lcom/oplus/camera/capmode/x$1;)V
    .locals 0

    .line 146
    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/x$c;-><init>(Lcom/oplus/camera/capmode/x;)V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/oplus/camera/capmode/x$c;->a:Lcom/oplus/camera/capmode/x;

    invoke-static {v0}, Lcom/oplus/camera/capmode/x;->a(Lcom/oplus/camera/capmode/x;)Lcom/oplus/camera/capmode/x$h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    iget-object p0, p0, Lcom/oplus/camera/capmode/x$c;->a:Lcom/oplus/camera/capmode/x;

    invoke-static {p0}, Lcom/oplus/camera/capmode/x;->a(Lcom/oplus/camera/capmode/x;)Lcom/oplus/camera/capmode/x$h;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/oplus/camera/capmode/x$h;->onInfo(Ljava/lang/Object;II)V

    :cond_0
    return-void
.end method
