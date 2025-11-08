.class Lcom/oplus/camera/ui/modepanel/p$2;
.super Lcom/a/a/e;
.source "MoreUIControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/modepanel/p;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/modepanel/p;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/modepanel/p;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/oplus/camera/ui/modepanel/p$2;->a:Lcom/oplus/camera/ui/modepanel/p;

    invoke-direct {p0}, Lcom/a/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/f;)V
    .locals 2

    .line 313
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/p$2;->a:Lcom/oplus/camera/ui/modepanel/p;

    invoke-virtual {p1}, Lcom/a/a/f;->c()D

    move-result-wide v0

    double-to-float p1, v0

    invoke-static {p0, p1}, Lcom/oplus/camera/ui/modepanel/p;->a(Lcom/oplus/camera/ui/modepanel/p;F)V

    return-void
.end method

.method public b(Lcom/a/a/f;)V
    .locals 0

    .line 324
    invoke-super {p0, p1}, Lcom/a/a/e;->b(Lcom/a/a/f;)V

    return-void
.end method

.method public c(Lcom/a/a/f;)V
    .locals 0

    .line 318
    invoke-super {p0, p1}, Lcom/a/a/e;->c(Lcom/a/a/f;)V

    .line 319
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/p$2;->a:Lcom/oplus/camera/ui/modepanel/p;

    invoke-static {p0}, Lcom/oplus/camera/ui/modepanel/p;->e(Lcom/oplus/camera/ui/modepanel/p;)V

    return-void
.end method
