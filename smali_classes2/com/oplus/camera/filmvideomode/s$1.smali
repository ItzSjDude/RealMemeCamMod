.class Lcom/oplus/camera/filmvideomode/s$1;
.super Ljava/lang/Object;
.source "MovieMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/filmvideomode/s;->onInitCameraMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/filmvideomode/s;


# direct methods
.method constructor <init>(Lcom/oplus/camera/filmvideomode/s;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/s$1;->a:Lcom/oplus/camera/filmvideomode/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/s$1;->a:Lcom/oplus/camera/filmvideomode/s;

    invoke-static {p0}, Lcom/oplus/camera/filmvideomode/s;->a(Lcom/oplus/camera/filmvideomode/s;)V

    return-void
.end method
