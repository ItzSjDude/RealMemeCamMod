.class Lcom/oplus/camera/professional/u$2;
.super Lcom/a/a/e;
.source "ProfessionalAnimUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/u;->a(Landroid/view/View;Lcom/a/a/f;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(ZLandroid/view/View;)V
    .locals 0

    .line 191
    iput-boolean p1, p0, Lcom/oplus/camera/professional/u$2;->a:Z

    iput-object p2, p0, Lcom/oplus/camera/professional/u$2;->b:Landroid/view/View;

    invoke-direct {p0}, Lcom/a/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/f;)V
    .locals 11

    .line 194
    invoke-virtual {p1}, Lcom/a/a/f;->c()D

    move-result-wide v0

    .line 195
    iget-boolean p1, p0, Lcom/oplus/camera/professional/u$2;->a:Z

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f6b851f    # 0.92f

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v3

    .line 196
    :goto_0
    iget-boolean v4, p0, Lcom/oplus/camera/professional/u$2;->a:Z

    if-eqz v4, :cond_1

    move v2, v3

    :cond_1
    const-wide/16 v3, 0x0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    float-to-double v7, p1

    float-to-double v9, v2

    move-wide v2, v3

    move-wide v4, v5

    move-wide v6, v7

    move-wide v8, v9

    .line 197
    invoke-static/range {v0 .. v9}, Lcom/a/a/l;->a(DDDDD)D

    move-result-wide v0

    double-to-float p1, v0

    .line 200
    iget-object v0, p0, Lcom/oplus/camera/professional/u$2;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 201
    iget-object p0, p0, Lcom/oplus/camera/professional/u$2;->b:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method
