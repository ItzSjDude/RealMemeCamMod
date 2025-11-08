.class Lcom/oplus/camera/longexposure/LongExposureItemFrame$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LongExposureItemFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/longexposure/LongExposureItemFrame;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/drawable/Drawable;

.field final synthetic b:Lcom/oplus/camera/longexposure/LongExposureItemFrame;


# direct methods
.method constructor <init>(Lcom/oplus/camera/longexposure/LongExposureItemFrame;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/oplus/camera/longexposure/LongExposureItemFrame$2;->b:Lcom/oplus/camera/longexposure/LongExposureItemFrame;

    iput-object p2, p0, Lcom/oplus/camera/longexposure/LongExposureItemFrame$2;->a:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 97
    iget-object p1, p0, Lcom/oplus/camera/longexposure/LongExposureItemFrame$2;->b:Lcom/oplus/camera/longexposure/LongExposureItemFrame;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oplus/camera/longexposure/LongExposureItemFrame;->a(Lcom/oplus/camera/longexposure/LongExposureItemFrame;Z)V

    .line 98
    iget-object p0, p0, Lcom/oplus/camera/longexposure/LongExposureItemFrame$2;->a:Landroid/graphics/drawable/Drawable;

    const/16 p1, 0xff

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method
