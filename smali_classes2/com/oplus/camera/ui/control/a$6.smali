.class Lcom/oplus/camera/ui/control/a$6;
.super Ljava/lang/Object;
.source "CameraControlUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/control/a;->aQ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/control/a;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/control/a;)V
    .locals 0

    .line 3535
    iput-object p1, p0, Lcom/oplus/camera/ui/control/a$6;->a:Lcom/oplus/camera/ui/control/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 3538
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a$6;->a:Lcom/oplus/camera/ui/control/a;

    const/16 v1, 0xff

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/control/a;->a(Lcom/oplus/camera/ui/control/a;I)V

    .line 3540
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a$6;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {v0}, Lcom/oplus/camera/ui/control/a;->u(Lcom/oplus/camera/ui/control/a;)Landroidx/recyclerview/widget/COUIRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3541
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a$6;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {v0}, Lcom/oplus/camera/ui/control/a;->u(Lcom/oplus/camera/ui/control/a;)Landroidx/recyclerview/widget/COUIRecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->setVisibility(I)V

    .line 3544
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a$6;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {v0}, Lcom/oplus/camera/ui/control/a;->b(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/menu/a/e;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/a/e;->setVisibility(I)V

    .line 3545
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a$6;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {p0}, Lcom/oplus/camera/ui/control/a;->b(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/menu/a/e;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/a/e;->setClipToOutline(Z)V

    return-void
.end method
