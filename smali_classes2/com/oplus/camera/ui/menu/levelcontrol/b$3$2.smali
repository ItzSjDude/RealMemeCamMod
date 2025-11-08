.class Lcom/oplus/camera/ui/menu/levelcontrol/b$3$2;
.super Ljava/lang/Object;
.source "BaseScrollBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/levelcontrol/b$3;->b(F)V
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

    .line 88
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$3$2;->b:Lcom/oplus/camera/ui/menu/levelcontrol/b$3;

    iput p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$3$2;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 95
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$3$2;->b:Lcom/oplus/camera/ui/menu/levelcontrol/b$3;

    iget-object v0, v0, Lcom/oplus/camera/ui/menu/levelcontrol/b$3;->a:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    iget-object v0, v0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->b:Lcom/oplus/camera/gl/m;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/gl/m;->b(I)V

    .line 96
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$3$2;->b:Lcom/oplus/camera/ui/menu/levelcontrol/b$3;

    iget-object v0, v0, Lcom/oplus/camera/ui/menu/levelcontrol/b$3;->a:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$3$2;->b:Lcom/oplus/camera/ui/menu/levelcontrol/b$3;

    iget-object v2, v2, Lcom/oplus/camera/ui/menu/levelcontrol/b$3;->a:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    iget v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$3$2;->a:F

    invoke-virtual {v2, v3}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->c(F)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->c(I)V

    .line 97
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$3$2;->b:Lcom/oplus/camera/ui/menu/levelcontrol/b$3;

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$3;->a:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->setScrolling(Z)V

    return-void
.end method
