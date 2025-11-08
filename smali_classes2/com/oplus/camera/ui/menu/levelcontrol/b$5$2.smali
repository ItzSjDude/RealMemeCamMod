.class Lcom/oplus/camera/ui/menu/levelcontrol/b$5$2;
.super Ljava/lang/Object;
.source "BaseScrollBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/levelcontrol/b$5;->b(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Lcom/oplus/camera/ui/menu/levelcontrol/b$5;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/levelcontrol/b$5;F)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$5$2;->b:Lcom/oplus/camera/ui/menu/levelcontrol/b$5;

    iput p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$5$2;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 155
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$5$2;->b:Lcom/oplus/camera/ui/menu/levelcontrol/b$5;

    iget-object v0, v0, Lcom/oplus/camera/ui/menu/levelcontrol/b$5;->a:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$5$2;->b:Lcom/oplus/camera/ui/menu/levelcontrol/b$5;

    iget-object v1, v1, Lcom/oplus/camera/ui/menu/levelcontrol/b$5;->a:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    iget v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$5$2;->a:F

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->c(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->c(I)V

    .line 156
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$5$2;->b:Lcom/oplus/camera/ui/menu/levelcontrol/b$5;

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$5;->a:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/b;->l()V

    return-void
.end method
