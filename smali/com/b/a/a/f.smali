.class public abstract Lcom/b/a/a/f;
.super Ljava/lang/Object;
.source "CameraAnimator.java"

# interfaces
.implements Lcom/b/a/a/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/a/f$a;
    }
.end annotation


# instance fields
.field a:Lorg/andresoviedo/android_3d_model_engine/b/c;

.field b:Lcom/b/a/a/f$a;

.field c:Z

.field d:Lcom/b/a/a/b;


# direct methods
.method public constructor <init>(Lorg/andresoviedo/android_3d_model_engine/b/c;Z)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/b/a/a/f;->b:Lcom/b/a/a/f$a;

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/b/a/a/f;->c:Z

    .line 11
    sget-object v0, Lcom/b/a/a/b;->ANIM_DIRECTION_DEFAULT:Lcom/b/a/a/b;

    iput-object v0, p0, Lcom/b/a/a/f;->d:Lcom/b/a/a/b;

    .line 17
    iput-object p1, p0, Lcom/b/a/a/f;->a:Lorg/andresoviedo/android_3d_model_engine/b/c;

    .line 18
    iput-boolean p2, p0, Lcom/b/a/a/f;->c:Z

    return-void
.end method

.method public constructor <init>(Lorg/andresoviedo/android_3d_model_engine/b/c;ZLcom/b/a/a/a;)V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/b/a/a/f;->b:Lcom/b/a/a/f$a;

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/b/a/a/f;->c:Z

    .line 11
    sget-object v1, Lcom/b/a/a/b;->ANIM_DIRECTION_DEFAULT:Lcom/b/a/a/b;

    iput-object v1, p0, Lcom/b/a/a/f;->d:Lcom/b/a/a/b;

    .line 22
    iput-object p1, p0, Lcom/b/a/a/f;->a:Lorg/andresoviedo/android_3d_model_engine/b/c;

    .line 23
    iget-object v1, p3, Lcom/b/a/a/a;->b:Lcom/b/a/a/a$a;

    if-eqz v1, :cond_0

    .line 24
    iget-object v1, p3, Lcom/b/a/a/a;->b:Lcom/b/a/a/a$a;

    iget v1, v1, Lcom/b/a/a/a$a;->a:I

    int-to-float v1, v1

    iput v1, p1, Lorg/andresoviedo/android_3d_model_engine/b/c;->a:F

    .line 25
    iget-object v1, p3, Lcom/b/a/a/a;->b:Lcom/b/a/a/a$a;

    iget v1, v1, Lcom/b/a/a/a$a;->b:I

    int-to-float v1, v1

    iput v1, p1, Lorg/andresoviedo/android_3d_model_engine/b/c;->b:F

    .line 26
    iget-object v1, p3, Lcom/b/a/a/a;->b:Lcom/b/a/a/a$a;

    iget v1, v1, Lcom/b/a/a/a$a;->c:I

    int-to-float v1, v1

    iput v1, p1, Lorg/andresoviedo/android_3d_model_engine/b/c;->c:F

    .line 27
    invoke-virtual {p1, v0}, Lorg/andresoviedo/android_3d_model_engine/b/c;->a(Z)V

    .line 29
    :cond_0
    iput-boolean p2, p0, Lcom/b/a/a/f;->c:Z

    .line 30
    iget-object p1, p3, Lcom/b/a/a/a;->a:Lcom/b/a/a/b;

    iput-object p1, p0, Lcom/b/a/a/f;->d:Lcom/b/a/a/b;

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 36
    new-instance v0, Lcom/b/a/a/f$a;

    iget-object v1, p0, Lcom/b/a/a/f;->a:Lorg/andresoviedo/android_3d_model_engine/b/c;

    invoke-direct {v0, p0, v1}, Lcom/b/a/a/f$a;-><init>(Lcom/b/a/a/f;Lorg/andresoviedo/android_3d_model_engine/b/c;)V

    iput-object v0, p0, Lcom/b/a/a/f;->b:Lcom/b/a/a/f$a;

    return-void
.end method

.method public d()V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/b/a/a/f;->b:Lcom/b/a/a/f$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/b/a/a/f;->b:Lcom/b/a/a/f$a;

    .line 45
    iget-object p0, p0, Lcom/b/a/a/f;->a:Lorg/andresoviedo/android_3d_model_engine/b/c;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/andresoviedo/android_3d_model_engine/b/c;->a(Z)V

    :cond_0
    return-void
.end method
