.class Lcom/oplus/anim/b$1;
.super Ljava/lang/Object;
.source "EffectiveAnimationDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/anim/b;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/anim/b;


# direct methods
.method constructor <init>(Lcom/oplus/anim/b;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/oplus/anim/b$1;->a:Lcom/oplus/anim/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 104
    iget-object p1, p0, Lcom/oplus/anim/b$1;->a:Lcom/oplus/anim/b;

    invoke-static {p1}, Lcom/oplus/anim/b;->a(Lcom/oplus/anim/b;)Lcom/oplus/anim/c/c/b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 105
    iget-object p1, p0, Lcom/oplus/anim/b$1;->a:Lcom/oplus/anim/b;

    invoke-static {p1}, Lcom/oplus/anim/b;->a(Lcom/oplus/anim/b;)Lcom/oplus/anim/c/c/b;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/anim/b$1;->a:Lcom/oplus/anim/b;

    invoke-static {p0}, Lcom/oplus/anim/b;->b(Lcom/oplus/anim/b;)Lcom/oplus/anim/f/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/anim/f/b;->d()F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/oplus/anim/c/c/b;->a(F)V

    :cond_0
    return-void
.end method
