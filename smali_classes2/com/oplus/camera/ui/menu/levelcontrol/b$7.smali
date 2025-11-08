.class Lcom/oplus/camera/ui/menu/levelcontrol/b$7;
.super Ljava/lang/Object;
.source "BaseScrollBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/levelcontrol/b;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/oplus/camera/ui/menu/levelcontrol/b;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/levelcontrol/b;II)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$7;->c:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    iput p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$7;->a:I

    iput p3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$7;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 304
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$7;->c:Lcom/oplus/camera/ui/menu/levelcontrol/b;

    iget-object v0, v0, Lcom/oplus/camera/ui/menu/levelcontrol/b;->c:Lcom/oplus/camera/ui/menu/levelcontrol/j;

    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$7;->a:I

    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/b$7;->b:I

    invoke-virtual {v0, v1, p0}, Lcom/oplus/camera/ui/menu/levelcontrol/j;->a(II)V

    return-void
.end method
