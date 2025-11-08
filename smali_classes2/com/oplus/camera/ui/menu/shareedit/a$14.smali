.class Lcom/oplus/camera/ui/menu/shareedit/a$14;
.super Ljava/lang/Object;
.source "ShareEditThumbMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/shareedit/a;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/menu/shareedit/a;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/shareedit/a;)V
    .locals 0

    .line 770
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a$14;->a:Lcom/oplus/camera/ui/menu/shareedit/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 773
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a$14;->a:Lcom/oplus/camera/ui/menu/shareedit/a;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/shareedit/a;->L(Lcom/oplus/camera/ui/menu/shareedit/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 777
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a$14;->a:Lcom/oplus/camera/ui/menu/shareedit/a;

    invoke-static {p0}, Lcom/oplus/camera/ui/menu/shareedit/a;->K(Lcom/oplus/camera/ui/menu/shareedit/a;)V

    return-void
.end method
