.class Lcom/oplus/camera/ui/menu/levelcontrol/b$3$1;
.super Ljava/lang/Object;
.source "BaseScrollBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/levelcontrol/b$3;->a(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Lcom/oplus/camera/ui/menu/levelcontrol/b$3;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/levelcontrol/b$3;F)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$3$1;->b:Lcom/oplus/camera/ui/menu/levelcontrol/b$3;

    iput p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$3$1;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$3$1;->b:Lcom/oplus/camera/ui/menu/levelcontrol/b$3;

    iget-object v0, v0, Lcom/oplus/camera/ui/menu/levelcontrol/b$3;->a:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$3$1;->a:F

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->c(F)I

    move-result v0

    .line 77
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$3$1;->b:Lcom/oplus/camera/ui/menu/levelcontrol/b$3;

    iget-object v1, v1, Lcom/oplus/camera/ui/menu/levelcontrol/b$3;->a:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    iget v1, v1, Lcom/oplus/camera/ui/menu/levelcontrol/b;->f:I

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$3$1;->b:Lcom/oplus/camera/ui/menu/levelcontrol/b$3;

    iget-object v1, v1, Lcom/oplus/camera/ui/menu/levelcontrol/b$3;->a:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    iget-object v1, v1, Lcom/oplus/camera/ui/menu/levelcontrol/b;->c:Lcom/oplus/camera/ui/menu/levelcontrol/j;

    iget-object v1, v1, Lcom/oplus/camera/ui/menu/levelcontrol/j;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    .line 78
    invoke-static {v0, v1}, Lcom/oplus/camera/ui/preview/a/j;->a(ILcom/oplus/camera/ui/menu/levelcontrol/i;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$3$1;->b:Lcom/oplus/camera/ui/menu/levelcontrol/b$3;

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$3;->a:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->c(I)V

    :cond_0
    return-void
.end method
