.class Lcom/oplus/camera/ui/menu/levelcontrol/b$10;
.super Ljava/lang/Object;
.source "BaseScrollBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/levelcontrol/b;->i()V
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

    .line 478
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$10;->a:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 481
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$10;->a:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    iget-object v0, v0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->c:Lcom/oplus/camera/ui/menu/levelcontrol/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$10;->a:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    iget-object v0, v0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->c:Lcom/oplus/camera/ui/menu/levelcontrol/j;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/j;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$10;->a:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    iget-object v0, v0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->c:Lcom/oplus/camera/ui/menu/levelcontrol/j;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$10;->a:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    iget v1, v1, Lcom/oplus/camera/ui/menu/levelcontrol/b;->p:F

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$10;->a:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    iget v2, v2, Lcom/oplus/camera/ui/menu/levelcontrol/b;->q:F

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/menu/levelcontrol/j;->a(FF)V

    .line 483
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$10;->a:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->c:Lcom/oplus/camera/ui/menu/levelcontrol/j;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/j;->f()V

    :cond_0
    return-void
.end method
