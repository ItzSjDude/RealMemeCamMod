.class Lcom/oplus/camera/t/c$4;
.super Lcom/a/a/e;
.source "StreetFixFocusHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/t/c;->A()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/t/c;


# direct methods
.method constructor <init>(Lcom/oplus/camera/t/c;)V
    .locals 0

    .line 718
    iput-object p1, p0, Lcom/oplus/camera/t/c$4;->a:Lcom/oplus/camera/t/c;

    invoke-direct {p0}, Lcom/a/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/f;)V
    .locals 2

    .line 721
    iget-object p0, p0, Lcom/oplus/camera/t/c$4;->a:Lcom/oplus/camera/t/c;

    iget-object p0, p0, Lcom/oplus/camera/t/c;->a:Lcom/oplus/camera/ui/menu/levelcontrol/e;

    invoke-virtual {p1}, Lcom/a/a/f;->c()D

    move-result-wide v0

    double-to-float p1, v0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/e;->setAlpha(F)V

    return-void
.end method
