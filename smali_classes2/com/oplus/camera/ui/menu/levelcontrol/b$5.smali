.class Lcom/oplus/camera/ui/menu/levelcontrol/b$5;
.super Ljava/lang/Object;
.source "BaseScrollBar.java"

# interfaces
.implements Lcom/oplus/camera/ui/menu/levelcontrol/j$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/menu/levelcontrol/b;
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

    .line 126
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$5;->a:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$5;->a:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    iget-object v0, v0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->a:Landroid/os/Handler;

    new-instance v1, Lcom/oplus/camera/ui/menu/levelcontrol/b$5$1;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/b$5$1;-><init>(Lcom/oplus/camera/ui/menu/levelcontrol/b$5;F)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(F)V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$5;->a:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    iget-object v0, v0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->a:Landroid/os/Handler;

    new-instance v1, Lcom/oplus/camera/ui/menu/levelcontrol/b$5$2;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/b$5$2;-><init>(Lcom/oplus/camera/ui/menu/levelcontrol/b$5;F)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
