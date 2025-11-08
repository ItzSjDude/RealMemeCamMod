.class Lcom/oplus/camera/ui/preview/g$21;
.super Ljava/lang/Object;
.source "CameraPreviewUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/g;->aF()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/g;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/g;)V
    .locals 0

    .line 3092
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/g$21;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 3095
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g$21;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/g;->af(Lcom/oplus/camera/ui/preview/g;)Landroid/util/Size;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oplus/camera/ui/preview/g;->a(Lcom/oplus/camera/ui/preview/g;Landroid/util/Size;)V

    return-void
.end method
