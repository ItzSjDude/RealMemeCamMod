.class Lcom/oplus/camera/ui/control/a$2;
.super Ljava/lang/Object;
.source "CameraControlUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/control/a;->a(BZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/oplus/camera/ui/control/a;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/control/a;I)V
    .locals 0

    .line 2898
    iput-object p1, p0, Lcom/oplus/camera/ui/control/a$2;->b:Lcom/oplus/camera/ui/control/a;

    iput p2, p0, Lcom/oplus/camera/ui/control/a$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2901
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a$2;->b:Lcom/oplus/camera/ui/control/a;

    invoke-static {v0}, Lcom/oplus/camera/ui/control/a;->q(Lcom/oplus/camera/ui/control/a;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget p0, p0, Lcom/oplus/camera/ui/control/a$2;->a:I

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    return-void
.end method
