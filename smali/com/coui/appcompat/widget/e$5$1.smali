.class Lcom/coui/appcompat/widget/e$5$1;
.super Ljava/lang/Object;
.source "COUIErrorEditTextHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/e$5;->onAnimationStart(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coui/appcompat/widget/e$5;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/e$5;)V
    .locals 0

    .line 418
    iput-object p1, p0, Lcom/coui/appcompat/widget/e$5$1;->a:Lcom/coui/appcompat/widget/e$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/coui/appcompat/widget/e$5$1;->a:Lcom/coui/appcompat/widget/e$5;

    iget-object v0, v0, Lcom/coui/appcompat/widget/e$5;->a:Lcom/coui/appcompat/widget/e;

    iget-object p0, p0, Lcom/coui/appcompat/widget/e$5$1;->a:Lcom/coui/appcompat/widget/e$5;

    iget-object p0, p0, Lcom/coui/appcompat/widget/e$5;->a:Lcom/coui/appcompat/widget/e;

    invoke-static {p0}, Lcom/coui/appcompat/widget/e;->b(Lcom/coui/appcompat/widget/e;)Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->getHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-static {v0, p0}, Lcom/coui/appcompat/widget/e;->a(Lcom/coui/appcompat/widget/e;F)F

    return-void
.end method
