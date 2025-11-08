.class Lcom/oplus/camera/t/c$2;
.super Ljava/lang/Object;
.source "StreetFixFocusHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/t/c;->a(ILjava/lang/String;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/oplus/camera/t/c;


# direct methods
.method constructor <init>(Lcom/oplus/camera/t/c;ILjava/lang/String;)V
    .locals 0

    .line 660
    iput-object p1, p0, Lcom/oplus/camera/t/c$2;->c:Lcom/oplus/camera/t/c;

    iput p2, p0, Lcom/oplus/camera/t/c$2;->a:I

    iput-object p3, p0, Lcom/oplus/camera/t/c$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 663
    iget-object v0, p0, Lcom/oplus/camera/t/c$2;->c:Lcom/oplus/camera/t/c;

    invoke-static {v0}, Lcom/oplus/camera/t/c;->e(Lcom/oplus/camera/t/c;)Lcom/oplus/camera/t/b;

    move-result-object v0

    iget v1, p0, Lcom/oplus/camera/t/c$2;->a:I

    invoke-virtual {v0, v1}, Lcom/oplus/camera/t/b;->a(I)V

    .line 665
    iget-object v0, p0, Lcom/oplus/camera/t/c$2;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/oplus/camera/t/c$2;->c:Lcom/oplus/camera/t/c;

    invoke-static {v0}, Lcom/oplus/camera/t/c;->g(Lcom/oplus/camera/t/c;)Lcom/oplus/camera/t/d;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/t/c$2;->c:Lcom/oplus/camera/t/c;

    invoke-static {v1}, Lcom/oplus/camera/t/c;->f(Lcom/oplus/camera/t/c;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/oplus/camera/t/c$2;->a:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/t/d;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/t/c$2;->c:Lcom/oplus/camera/t/c;

    invoke-static {v0}, Lcom/oplus/camera/t/c;->g(Lcom/oplus/camera/t/c;)Lcom/oplus/camera/t/d;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/t/c$2;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/t/d;->setText(Ljava/lang/CharSequence;)V

    .line 671
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/t/c$2;->c:Lcom/oplus/camera/t/c;

    invoke-static {v0}, Lcom/oplus/camera/t/c;->d(Lcom/oplus/camera/t/c;)Lcom/oplus/camera/t/c$b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 672
    iget-object v0, p0, Lcom/oplus/camera/t/c$2;->c:Lcom/oplus/camera/t/c;

    invoke-static {v0}, Lcom/oplus/camera/t/c;->f(Lcom/oplus/camera/t/c;)Ljava/util/ArrayList;

    move-result-object v1

    iget p0, p0, Lcom/oplus/camera/t/c$2;->a:I

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/t/c;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
