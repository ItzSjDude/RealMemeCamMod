.class Lcom/oplus/camera/ui/preview/ae$1;
.super Ljava/lang/Object;
.source "VideoRecordingTimeUI.java"

# interfaces
.implements Lcom/oplus/camera/ui/preview/CameraTimeView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/ae;->e(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/ae;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/ae;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/ae$1;->a:Lcom/oplus/camera/ui/preview/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ae$1;->a:Lcom/oplus/camera/ui/preview/ae;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/ae;->a(Lcom/oplus/camera/ui/preview/ae;)Lcom/oplus/camera/ui/preview/CameraTimeView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ae$1;->a:Lcom/oplus/camera/ui/preview/ae;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/ae;->a(Lcom/oplus/camera/ui/preview/ae;)Lcom/oplus/camera/ui/preview/CameraTimeView;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/ae$1;->a:Lcom/oplus/camera/ui/preview/ae;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/ae;->b(Lcom/oplus/camera/ui/preview/ae;)Lcom/oplus/camera/ui/preview/CameraTimeView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->getBlinkRecordIconWidth()I

    move-result p0

    sub-int/2addr p1, p0

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/preview/CameraTimeView;->a(I)V

    :cond_0
    return-void
.end method
