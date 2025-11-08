.class Lcom/oplus/camera/ui/menu/levelcontrol/b$6;
.super Ljava/lang/Object;
.source "BaseScrollBar.java"

# interfaces
.implements Lcom/oplus/camera/ui/menu/levelcontrol/j$a;


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

    .line 162
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$6;->a:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$6;->a:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->d:Lcom/oplus/camera/ui/menu/levelcontrol/b$a;

    invoke-interface {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/b$a;->a()V

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/menu/levelcontrol/j;)V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$6;->a:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    iget-object v0, v0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->d:Lcom/oplus/camera/ui/menu/levelcontrol/b$a;

    invoke-interface {v0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/b$a;->a(Lcom/oplus/camera/ui/menu/levelcontrol/j;)V

    .line 172
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$6;->a:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    iget-object p1, p1, Lcom/oplus/camera/ui/menu/levelcontrol/b;->c:Lcom/oplus/camera/ui/menu/levelcontrol/j;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/j;->d()Z

    move-result p1

    if-nez p1, :cond_0

    .line 173
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$6;->a:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    iget-object p1, p1, Lcom/oplus/camera/ui/menu/levelcontrol/b;->b:Lcom/oplus/camera/gl/m;

    new-instance v0, Lcom/oplus/camera/ui/menu/levelcontrol/b$6$1;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/menu/levelcontrol/b$6$1;-><init>(Lcom/oplus/camera/ui/menu/levelcontrol/b$6;)V

    invoke-virtual {p1, v0}, Lcom/oplus/camera/gl/m;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$6;->a:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    iget-object v0, v0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->b:Lcom/oplus/camera/gl/m;

    new-instance v1, Lcom/oplus/camera/ui/menu/levelcontrol/b$6$2;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/levelcontrol/b$6$2;-><init>(Lcom/oplus/camera/ui/menu/levelcontrol/b$6;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/gl/m;->a(Ljava/lang/Runnable;)V

    return-void
.end method
