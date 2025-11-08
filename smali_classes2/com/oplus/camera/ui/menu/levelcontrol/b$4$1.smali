.class Lcom/oplus/camera/ui/menu/levelcontrol/b$4$1;
.super Ljava/lang/Object;
.source "BaseScrollBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/levelcontrol/b$4;->b(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Lcom/oplus/camera/ui/menu/levelcontrol/b$4;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/levelcontrol/b$4;F)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$4$1;->b:Lcom/oplus/camera/ui/menu/levelcontrol/b$4;

    iput p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$4$1;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$4$1;->b:Lcom/oplus/camera/ui/menu/levelcontrol/b$4;

    iget-object v0, v0, Lcom/oplus/camera/ui/menu/levelcontrol/b$4;->a:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    iget-object v0, v0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->b:Lcom/oplus/camera/gl/m;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/gl/m;->b(I)V

    .line 120
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$4$1;->b:Lcom/oplus/camera/ui/menu/levelcontrol/b$4;

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$4;->a:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->setScrolling(Z)V

    return-void
.end method
