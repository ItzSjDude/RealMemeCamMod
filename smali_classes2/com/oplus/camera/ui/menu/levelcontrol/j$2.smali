.class Lcom/oplus/camera/ui/menu/levelcontrol/j$2;
.super Ljava/lang/Object;
.source "GLProducerRender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/levelcontrol/j;->b(Lcom/oplus/camera/gl/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/menu/levelcontrol/j;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/levelcontrol/j;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j$2;->a:Lcom/oplus/camera/ui/menu/levelcontrol/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 183
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j$2;->a:Lcom/oplus/camera/ui/menu/levelcontrol/j;

    iget-object v0, v0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->m:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j$2;->a:Lcom/oplus/camera/ui/menu/levelcontrol/j;

    iget-object v0, v0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->m:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/t;->c()I

    move-result v0

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j$2;->a:Lcom/oplus/camera/ui/menu/levelcontrol/j;

    iget-object v1, v1, Lcom/oplus/camera/ui/menu/levelcontrol/j;->m:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/levelcontrol/t;->e()I

    move-result v1

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j$2;->a:Lcom/oplus/camera/ui/menu/levelcontrol/j;

    iget-object v2, v2, Lcom/oplus/camera/ui/menu/levelcontrol/j;->m:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    .line 185
    invoke-virtual {v2}, Lcom/oplus/camera/ui/menu/levelcontrol/t;->f()I

    move-result v2

    .line 184
    invoke-static {v0, v1, v2}, Lco/polarr/renderer/PolarrRender;->clearTextureHelper(III)V

    .line 186
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j$2;->a:Lcom/oplus/camera/ui/menu/levelcontrol/j;

    iget-object v0, v0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->m:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/t;->b()V

    .line 187
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j$2;->a:Lcom/oplus/camera/ui/menu/levelcontrol/j;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->m:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    .line 188
    iget-object v0, v0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->o:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/t;->b()V

    .line 189
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j$2;->a:Lcom/oplus/camera/ui/menu/levelcontrol/j;

    iput-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->o:Lcom/oplus/camera/ui/menu/levelcontrol/t;

    :cond_0
    return-void
.end method
