.class Lcom/oplus/camera/j/a$14;
.super Ljava/lang/Object;
.source "CommonBottomGuide.java"

# interfaces
.implements Lcom/oplus/anim/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/j/a;->a(Landroid/app/Activity;II)Lcom/oplus/camera/ui/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic a:Lcom/oplus/anim/EffectiveAnimationView;

.field final synthetic b:Lcom/oplus/camera/j/a;


# direct methods
.method constructor <init>(Lcom/oplus/camera/j/a;Lcom/oplus/anim/EffectiveAnimationView;)V
    .locals 0

    .line 1133
    iput-object p1, p0, Lcom/oplus/camera/j/a$14;->b:Lcom/oplus/camera/j/a;

    iput-object p2, p0, Lcom/oplus/camera/j/a$14;->a:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/oplus/anim/a;)V
    .locals 0

    .line 1136
    iget-object p0, p0, Lcom/oplus/camera/j/a$14;->a:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationView;->setComposition(Lcom/oplus/anim/a;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1133
    check-cast p1, Lcom/oplus/anim/a;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/j/a$14;->a(Lcom/oplus/anim/a;)V

    return-void
.end method
