.class Lcom/oplus/camera/ui/menu/levelcontrol/b$9;
.super Ljava/lang/Object;
.source "BaseScrollBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/levelcontrol/b;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/oplus/camera/ui/menu/levelcontrol/b;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/levelcontrol/b;I)V
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$9;->b:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    iput p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$9;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 379
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$9;->b:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    iget-object v0, v0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->c:Lcom/oplus/camera/ui/menu/levelcontrol/j;

    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$9;->a:I

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/j;->c(I)V

    .line 380
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$9;->b:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->b:Lcom/oplus/camera/gl/m;

    invoke-virtual {p0}, Lcom/oplus/camera/gl/m;->d()V

    return-void
.end method
