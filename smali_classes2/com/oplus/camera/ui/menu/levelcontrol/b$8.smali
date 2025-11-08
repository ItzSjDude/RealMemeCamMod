.class Lcom/oplus/camera/ui/menu/levelcontrol/b$8;
.super Ljava/lang/Object;
.source "BaseScrollBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/levelcontrol/b;->a(Lcom/oplus/camera/ui/menu/levelcontrol/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/menu/levelcontrol/i;

.field final synthetic b:Lcom/oplus/camera/ui/menu/levelcontrol/b;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/levelcontrol/b;Lcom/oplus/camera/ui/menu/levelcontrol/i;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$8;->b:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    iput-object p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$8;->a:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 359
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$8;->b:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    iget-object v0, v0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->c:Lcom/oplus/camera/ui/menu/levelcontrol/j;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$8;->b:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    iget v1, v1, Lcom/oplus/camera/ui/menu/levelcontrol/b;->p:F

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$8;->b:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    iget v2, v2, Lcom/oplus/camera/ui/menu/levelcontrol/b;->q:F

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/menu/levelcontrol/j;->a(FF)V

    .line 360
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$8;->b:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    iget-object v0, v0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->c:Lcom/oplus/camera/ui/menu/levelcontrol/j;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$8;->a:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$8;->b:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    iget-object v2, v2, Lcom/oplus/camera/ui/menu/levelcontrol/b;->c:Lcom/oplus/camera/ui/menu/levelcontrol/j;

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$8;->a:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    invoke-virtual {v2, v3}, Lcom/oplus/camera/ui/menu/levelcontrol/j;->a(Lcom/oplus/camera/ui/menu/levelcontrol/i;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/menu/levelcontrol/j;->a(Lcom/oplus/camera/ui/menu/levelcontrol/i;Z)V

    .line 361
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$8;->b:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    iget-object v0, v0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->c:Lcom/oplus/camera/ui/menu/levelcontrol/j;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/j;->c()V

    .line 362
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$8;->b:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$8;->a:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->l()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->b(I)V

    return-void
.end method
