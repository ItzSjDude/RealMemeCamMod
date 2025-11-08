.class Lcom/oplus/camera/capmode/g$8;
.super Ljava/lang/Object;
.source "DoubleExposureMode.java"

# interfaces
.implements Lcom/oplus/camera/doubleexposure/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/g;->a(Lcom/oplus/camera/doubleexposure/b;Lcom/oplus/camera/doubleexposure/g$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/doubleexposure/b;

.field final synthetic b:Lcom/oplus/camera/doubleexposure/g$a;

.field final synthetic c:Lcom/oplus/camera/capmode/g;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/g;Lcom/oplus/camera/doubleexposure/b;Lcom/oplus/camera/doubleexposure/g$a;)V
    .locals 0

    .line 595
    iput-object p1, p0, Lcom/oplus/camera/capmode/g$8;->c:Lcom/oplus/camera/capmode/g;

    iput-object p2, p0, Lcom/oplus/camera/capmode/g$8;->a:Lcom/oplus/camera/doubleexposure/b;

    iput-object p3, p0, Lcom/oplus/camera/capmode/g$8;->b:Lcom/oplus/camera/doubleexposure/g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a()V
    .locals 1

    .line 606
    iget-object v0, p0, Lcom/oplus/camera/capmode/g$8;->c:Lcom/oplus/camera/capmode/g;

    invoke-static {v0}, Lcom/oplus/camera/capmode/g;->f(Lcom/oplus/camera/capmode/g;)V

    .line 607
    iget-object p0, p0, Lcom/oplus/camera/capmode/g$8;->c:Lcom/oplus/camera/capmode/g;

    invoke-static {p0}, Lcom/oplus/camera/capmode/g;->g(Lcom/oplus/camera/capmode/g;)V

    return-void
.end method

.method public static synthetic lambda$0efWdS0GwEZU-NkYEKbxO39diSs(Lcom/oplus/camera/capmode/g$8;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/capmode/g$8;->a()V

    return-void
.end method


# virtual methods
.method public onVideoClipDone()V
    .locals 4

    .line 598
    iget-object v0, p0, Lcom/oplus/camera/capmode/g$8;->c:Lcom/oplus/camera/capmode/g;

    iget-object v1, p0, Lcom/oplus/camera/capmode/g$8;->a:Lcom/oplus/camera/doubleexposure/b;

    const-string v2, "0"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/capmode/g;->a(Ljava/lang/String;Lcom/oplus/camera/doubleexposure/b;)V

    .line 599
    iget-object v0, p0, Lcom/oplus/camera/capmode/g$8;->b:Lcom/oplus/camera/doubleexposure/g$a;

    invoke-interface {v0}, Lcom/oplus/camera/doubleexposure/g$a;->onVideoClipDone()V

    .line 600
    iget-object v0, p0, Lcom/oplus/camera/capmode/g$8;->c:Lcom/oplus/camera/capmode/g;

    iget-object v0, v0, Lcom/oplus/camera/capmode/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->aK()V

    .line 601
    iget-object v0, p0, Lcom/oplus/camera/capmode/g$8;->c:Lcom/oplus/camera/capmode/g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oplus/camera/capmode/g;->b(Lcom/oplus/camera/capmode/g;Z)Z

    .line 602
    iget-object v0, p0, Lcom/oplus/camera/capmode/g$8;->c:Lcom/oplus/camera/capmode/g;

    const-string v1, "db_expo_page0"

    const-string v2, "save"

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/capmode/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    iget-object v0, p0, Lcom/oplus/camera/capmode/g$8;->c:Lcom/oplus/camera/capmode/g;

    iget-object v0, v0, Lcom/oplus/camera/capmode/g;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oplus/camera/capmode/-$$Lambda$g$8$0efWdS0GwEZU-NkYEKbxO39diSs;

    invoke-direct {v1, p0}, Lcom/oplus/camera/capmode/-$$Lambda$g$8$0efWdS0GwEZU-NkYEKbxO39diSs;-><init>(Lcom/oplus/camera/capmode/g$8;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
