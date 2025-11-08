.class Lcom/oplus/camera/professional/s$2;
.super Ljava/lang/Object;
.source "ProSwitchButtonManager.java"

# interfaces
.implements Lcom/oplus/camera/ui/SwitchButton$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/s;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/professional/s;


# direct methods
.method constructor <init>(Lcom/oplus/camera/professional/s;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/oplus/camera/professional/s$2;->a:Lcom/oplus/camera/professional/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/oplus/camera/professional/s$2;->a:Lcom/oplus/camera/professional/s;

    invoke-static {v0}, Lcom/oplus/camera/professional/s;->a(Lcom/oplus/camera/professional/s;)Lcom/oplus/camera/capmode/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->Y()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/professional/s$2;->a:Lcom/oplus/camera/professional/s;

    invoke-static {v0}, Lcom/oplus/camera/professional/s;->b(Lcom/oplus/camera/professional/s;)Lcom/oplus/camera/ui/SwitchButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/SwitchButton;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/professional/s$2;->a:Lcom/oplus/camera/professional/s;

    .line 166
    invoke-static {p0}, Lcom/oplus/camera/professional/s;->a(Lcom/oplus/camera/professional/s;)Lcom/oplus/camera/capmode/a;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->S()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
