.class Lcom/oplus/camera/professional/c$3;
.super Ljava/lang/Object;
.source "HSLevelPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/c;->a(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/professional/c;


# direct methods
.method constructor <init>(Lcom/oplus/camera/professional/c;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/oplus/camera/professional/c$3;->a:Lcom/oplus/camera/professional/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 358
    iget-object p1, p0, Lcom/oplus/camera/professional/c$3;->a:Lcom/oplus/camera/professional/c;

    invoke-static {p1}, Lcom/oplus/camera/professional/c;->a(Lcom/oplus/camera/professional/c;)Lcom/oplus/camera/professional/c$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 359
    iget-object p0, p0, Lcom/oplus/camera/professional/c$3;->a:Lcom/oplus/camera/professional/c;

    invoke-static {p0}, Lcom/oplus/camera/professional/c;->a(Lcom/oplus/camera/professional/c;)Lcom/oplus/camera/professional/c$a;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/professional/c$a;->a()V

    :cond_0
    return-void
.end method
