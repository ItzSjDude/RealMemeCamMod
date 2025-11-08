.class Lcom/oplus/camera/ui/preview/g$6;
.super Ljava/lang/Object;
.source "CameraPreviewUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/g;->a(Landroid/util/Size;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/util/Size;

.field final synthetic b:Lcom/oplus/camera/ui/preview/g;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/g;Landroid/util/Size;)V
    .locals 0

    .line 1732
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/g$6;->b:Lcom/oplus/camera/ui/preview/g;

    iput-object p2, p0, Lcom/oplus/camera/ui/preview/g$6;->a:Landroid/util/Size;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1735
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$6;->b:Lcom/oplus/camera/ui/preview/g;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g$6;->a:Landroid/util/Size;

    invoke-static {v0, p0}, Lcom/oplus/camera/ui/preview/g;->a(Lcom/oplus/camera/ui/preview/g;Landroid/util/Size;)V

    return-void
.end method
