.class Lcom/oplus/camera/ui/menu/levelcontrol/b$2;
.super Ljava/lang/Object;
.source "BaseScrollBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/levelcontrol/b;->a(FILandroid/view/animation/Interpolator;Lcom/oplus/camera/ui/menu/levelcontrol/j$b;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/menu/levelcontrol/b;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/levelcontrol/b;)V
    .locals 0

    .line 507
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$2;->a:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$2;->a:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    iget-object v0, v0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->b:Lcom/oplus/camera/gl/m;

    if-eqz v0, :cond_0

    .line 511
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$2;->a:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->b:Lcom/oplus/camera/gl/m;

    invoke-virtual {p0}, Lcom/oplus/camera/gl/m;->b()V

    :cond_0
    return-void
.end method
