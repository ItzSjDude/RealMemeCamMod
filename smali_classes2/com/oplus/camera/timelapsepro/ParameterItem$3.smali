.class Lcom/oplus/camera/timelapsepro/ParameterItem$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ParameterItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/timelapsepro/ParameterItem;->setItemEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/oplus/camera/timelapsepro/ParameterItem;


# direct methods
.method constructor <init>(Lcom/oplus/camera/timelapsepro/ParameterItem;Z)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/ParameterItem$3;->b:Lcom/oplus/camera/timelapsepro/ParameterItem;

    iput-boolean p2, p0, Lcom/oplus/camera/timelapsepro/ParameterItem$3;->a:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 201
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/ParameterItem$3;->b:Lcom/oplus/camera/timelapsepro/ParameterItem;

    invoke-static {p1}, Lcom/oplus/camera/timelapsepro/ParameterItem;->d(Lcom/oplus/camera/timelapsepro/ParameterItem;)Lcom/oplus/camera/ui/RotateLottieAnimationView;

    move-result-object p1

    iget-boolean p0, p0, Lcom/oplus/camera/timelapsepro/ParameterItem$3;->a:Z

    if-eqz p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p0, 0x3e4ccccd    # 0.2f

    :goto_0
    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/RotateLottieAnimationView;->setAlpha(F)V

    return-void
.end method
