.class Lcom/oplus/camera/ui/menu/levelcontrol/j$1;
.super Ljava/lang/Object;
.source "GLProducerRender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/levelcontrol/j;->a(Lcom/oplus/camera/gl/m;)V
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

    .line 159
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j$1;->a:Lcom/oplus/camera/ui/menu/levelcontrol/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j$1;->a:Lcom/oplus/camera/ui/menu/levelcontrol/j;

    iget-object v0, v0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j$1;->a:Lcom/oplus/camera/ui/menu/levelcontrol/j;

    iget-object v0, v0, Lcom/oplus/camera/ui/menu/levelcontrol/j;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/a;->c()V

    .line 166
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/j$1;->a:Lcom/oplus/camera/ui/menu/levelcontrol/j;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/j;->j()V

    return-void
.end method
