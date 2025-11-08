.class Lcom/oplus/camera/ui/beauty3d/f$1$1;
.super Ljava/lang/Object;
.source "Beauty3DGuideScanUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/beauty3d/f$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/beauty3d/f$1;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/beauty3d/f$1;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/oplus/camera/ui/beauty3d/f$1$1;->a:Lcom/oplus/camera/ui/beauty3d/f$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/oplus/camera/ui/beauty3d/f$1$1;->a:Lcom/oplus/camera/ui/beauty3d/f$1;

    iget-object v0, v0, Lcom/oplus/camera/ui/beauty3d/f$1;->a:Lcom/oplus/camera/ui/beauty3d/f;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/beauty3d/f;->a(Lcom/oplus/camera/ui/beauty3d/f;Z)Z

    .line 189
    iget-object p0, p0, Lcom/oplus/camera/ui/beauty3d/f$1$1;->a:Lcom/oplus/camera/ui/beauty3d/f$1;

    iget-object p0, p0, Lcom/oplus/camera/ui/beauty3d/f$1;->a:Lcom/oplus/camera/ui/beauty3d/f;

    invoke-static {p0}, Lcom/oplus/camera/ui/beauty3d/f;->b(Lcom/oplus/camera/ui/beauty3d/f;)Landroid/widget/TextView;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
