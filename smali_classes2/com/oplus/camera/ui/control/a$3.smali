.class Lcom/oplus/camera/ui/control/a$3;
.super Ljava/lang/Object;
.source "CameraControlUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/control/a;->a(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:I

.field final synthetic c:Lcom/oplus/camera/ui/control/a;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/control/a;Landroid/view/View;I)V
    .locals 0

    .line 2961
    iput-object p1, p0, Lcom/oplus/camera/ui/control/a$3;->c:Lcom/oplus/camera/ui/control/a;

    iput-object p2, p0, Lcom/oplus/camera/ui/control/a$3;->a:Landroid/view/View;

    iput p3, p0, Lcom/oplus/camera/ui/control/a$3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2964
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a$3;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2965
    iget p0, p0, Lcom/oplus/camera/ui/control/a$3;->b:I

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method
