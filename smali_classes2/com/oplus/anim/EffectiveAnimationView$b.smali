.class Lcom/oplus/anim/EffectiveAnimationView$b;
.super Ljava/lang/Object;
.source "EffectiveAnimationView.java"

# interfaces
.implements Lcom/oplus/anim/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/anim/EffectiveAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oplus/anim/c<",
        "Lcom/oplus/anim/a;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/oplus/anim/EffectiveAnimationView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/oplus/anim/EffectiveAnimationView;)V
    .locals 1

    .line 961
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 962
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView$b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a(Lcom/oplus/anim/a;)V
    .locals 1

    .line 967
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView$b;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 968
    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationView;->setComposition(Lcom/oplus/anim/a;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 958
    check-cast p1, Lcom/oplus/anim/a;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationView$b;->a(Lcom/oplus/anim/a;)V

    return-void
.end method
