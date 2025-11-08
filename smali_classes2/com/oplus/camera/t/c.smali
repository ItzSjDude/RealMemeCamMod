.class public Lcom/oplus/camera/t/c;
.super Ljava/lang/Object;
.source "StreetFixFocusHelper.java"

# interfaces
.implements Lcom/oplus/camera/t/b$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/t/c$b;,
        Lcom/oplus/camera/t/c$a;
    }
.end annotation


# static fields
.field private static b:Ljava/lang/String; = "StreetFixFocusHelper"


# instance fields
.field private A:Landroid/widget/RelativeLayout;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/widget/RelativeLayout;

.field private D:Z

.field protected a:Lcom/oplus/camera/ui/menu/levelcontrol/e;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I

.field private m:Landroid/content/SharedPreferences;

.field private n:Lcom/oplus/camera/e/d;

.field private o:Lcom/oplus/camera/t/d;

.field private p:Lcom/oplus/camera/t/c$b;

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/camera/ui/menu/OplusTextView;",
            ">;"
        }
    .end annotation
.end field

.field private r:Landroid/app/Activity;

.field private s:Lcom/oplus/camera/t/b;

.field private t:Lcom/oplus/camera/capmode/a;

.field private u:Lcom/oplus/camera/t/c$a;

.field private v:Lcom/oplus/camera/ui/CameraUIInterface;

.field private w:Landroid/os/Handler;

.field private x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private z:Lcom/oplus/camera/e/h;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/capmode/a;ZLcom/oplus/camera/e/d;)V
    .locals 4

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/oplus/camera/t/c;->c:Z

    .line 70
    iput-boolean v0, p0, Lcom/oplus/camera/t/c;->d:Z

    const/4 v1, 0x1

    .line 71
    iput-boolean v1, p0, Lcom/oplus/camera/t/c;->e:Z

    .line 72
    iput-boolean v0, p0, Lcom/oplus/camera/t/c;->f:Z

    .line 73
    iput-boolean v1, p0, Lcom/oplus/camera/t/c;->g:Z

    .line 74
    iput-boolean v0, p0, Lcom/oplus/camera/t/c;->h:Z

    .line 75
    iput-boolean v0, p0, Lcom/oplus/camera/t/c;->i:Z

    .line 76
    iput-boolean v0, p0, Lcom/oplus/camera/t/c;->j:Z

    .line 77
    iput-boolean v0, p0, Lcom/oplus/camera/t/c;->k:Z

    const/16 v2, 0x32

    .line 79
    iput v2, p0, Lcom/oplus/camera/t/c;->l:I

    const/4 v2, 0x0

    .line 81
    iput-object v2, p0, Lcom/oplus/camera/t/c;->m:Landroid/content/SharedPreferences;

    .line 82
    iput-object v2, p0, Lcom/oplus/camera/t/c;->n:Lcom/oplus/camera/e/d;

    .line 83
    iput-object v2, p0, Lcom/oplus/camera/t/c;->a:Lcom/oplus/camera/ui/menu/levelcontrol/e;

    .line 84
    iput-object v2, p0, Lcom/oplus/camera/t/c;->o:Lcom/oplus/camera/t/d;

    .line 85
    iput-object v2, p0, Lcom/oplus/camera/t/c;->p:Lcom/oplus/camera/t/c$b;

    .line 86
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/oplus/camera/t/c;->q:Ljava/util/ArrayList;

    .line 87
    iput-object v2, p0, Lcom/oplus/camera/t/c;->r:Landroid/app/Activity;

    .line 88
    iput-object v2, p0, Lcom/oplus/camera/t/c;->s:Lcom/oplus/camera/t/b;

    .line 89
    iput-object v2, p0, Lcom/oplus/camera/t/c;->t:Lcom/oplus/camera/capmode/a;

    .line 90
    iput-object v2, p0, Lcom/oplus/camera/t/c;->u:Lcom/oplus/camera/t/c$a;

    .line 97
    iput-object v2, p0, Lcom/oplus/camera/t/c;->B:Landroid/widget/TextView;

    .line 99
    iput-boolean v1, p0, Lcom/oplus/camera/t/c;->D:Z

    .line 103
    iput-object p1, p0, Lcom/oplus/camera/t/c;->r:Landroid/app/Activity;

    .line 104
    iput-object p2, p0, Lcom/oplus/camera/t/c;->v:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 105
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p2, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/oplus/camera/t/c;->w:Landroid/os/Handler;

    .line 106
    iput-object p3, p0, Lcom/oplus/camera/t/c;->t:Lcom/oplus/camera/capmode/a;

    .line 107
    iput-boolean v0, p0, Lcom/oplus/camera/t/c;->d:Z

    .line 108
    new-instance p2, Lcom/oplus/camera/t/c$a;

    invoke-direct {p2, p0, p1}, Lcom/oplus/camera/t/c$a;-><init>(Lcom/oplus/camera/t/c;Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/oplus/camera/t/c;->u:Lcom/oplus/camera/t/c$a;

    .line 109
    iput-object p5, p0, Lcom/oplus/camera/t/c;->n:Lcom/oplus/camera/e/d;

    .line 110
    iget-object p1, p0, Lcom/oplus/camera/t/c;->t:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/t/c;->m:Landroid/content/SharedPreferences;

    .line 111
    iget-object p1, p0, Lcom/oplus/camera/t/c;->t:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->aw()I

    move-result p1

    const-string p2, "street"

    invoke-static {p2, p1}, Lcom/oplus/camera/e/a;->a(Ljava/lang/String;I)Lcom/oplus/camera/e/h;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/t/c;->z:Lcom/oplus/camera/e/h;

    .line 112
    iget-object p1, p0, Lcom/oplus/camera/t/c;->z:Lcom/oplus/camera/e/h;

    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->n()F

    move-result p1

    iget-object p2, p0, Lcom/oplus/camera/t/c;->z:Lcom/oplus/camera/e/h;

    invoke-virtual {p2}, Lcom/oplus/camera/e/h;->m()F

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/t/c;->a(FF)V

    .line 113
    iget-object p1, p0, Lcom/oplus/camera/t/c;->r:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 114
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const p3, 0x7f070b20

    .line 115
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const/4 p3, -0x2

    invoke-direct {p2, p3, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0xc

    .line 116
    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p1, 0xe

    .line 117
    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 118
    invoke-direct {p0}, Lcom/oplus/camera/t/c;->z()V

    .line 119
    iget-object p1, p0, Lcom/oplus/camera/t/c;->v:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->r()I

    move-result p1

    iget-object p3, p0, Lcom/oplus/camera/t/c;->r:Landroid/app/Activity;

    .line 120
    invoke-virtual {p3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p5, 0x7f070b1f

    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    sub-int/2addr p1, p3

    iput p1, p2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 121
    iget-object p1, p0, Lcom/oplus/camera/t/c;->u:Lcom/oplus/camera/t/c$a;

    invoke-virtual {p1, p2}, Lcom/oplus/camera/t/c$a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    iget-object p1, p0, Lcom/oplus/camera/t/c;->u:Lcom/oplus/camera/t/c$a;

    invoke-virtual {p1, v1}, Lcom/oplus/camera/t/c$a;->setTouchState(Z)V

    .line 123
    iput-boolean p4, p0, Lcom/oplus/camera/t/c;->g:Z

    .line 124
    iget-object p1, p0, Lcom/oplus/camera/t/c;->r:Landroid/app/Activity;

    const p2, 0x7f0900e5

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/oplus/camera/t/c;->C:Landroid/widget/RelativeLayout;

    return-void
.end method

.method private A()V
    .locals 5

    .line 707
    invoke-static {}, Lcom/a/a/j;->c()Lcom/a/a/j;

    move-result-object v0

    .line 708
    invoke-virtual {v0}, Lcom/a/a/j;->b()Lcom/a/a/f;

    move-result-object v0

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    const-wide/high16 v3, 0x4034000000000000L    # 20.0

    .line 709
    invoke-static {v1, v2, v3, v4}, Lcom/a/a/g;->b(DD)Lcom/a/a/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/f;->a(Lcom/a/a/g;)Lcom/a/a/f;

    .line 710
    new-instance v1, Lcom/oplus/camera/t/c$3;

    invoke-direct {v1, p0}, Lcom/oplus/camera/t/c$3;-><init>(Lcom/oplus/camera/t/c;)V

    invoke-virtual {v0, v1}, Lcom/a/a/f;->a(Lcom/a/a/h;)Lcom/a/a/f;

    move-result-object v1

    .line 718
    new-instance v2, Lcom/oplus/camera/t/c$4;

    invoke-direct {v2, p0}, Lcom/oplus/camera/t/c$4;-><init>(Lcom/oplus/camera/t/c;)V

    invoke-virtual {v0, v2}, Lcom/a/a/f;->a(Lcom/a/a/h;)Lcom/a/a/f;

    move-result-object v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 724
    invoke-virtual {v1, v2, v3}, Lcom/a/a/f;->a(D)Lcom/a/a/f;

    .line 725
    invoke-virtual {v0, v2, v3}, Lcom/a/a/f;->a(D)Lcom/a/a/f;

    .line 727
    iget-object v2, p0, Lcom/oplus/camera/t/c;->a:Lcom/oplus/camera/ui/menu/levelcontrol/e;

    new-instance v3, Lcom/oplus/camera/t/c$5;

    invoke-direct {v3, p0, v1, v0}, Lcom/oplus/camera/t/c$5;-><init>(Lcom/oplus/camera/t/c;Lcom/a/a/f;Lcom/a/a/f;)V

    invoke-virtual {v2, v3}, Lcom/oplus/camera/ui/menu/levelcontrol/e;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private B()V
    .locals 3

    .line 754
    invoke-virtual {p0}, Lcom/oplus/camera/t/c;->f()Z

    move-result v0

    const v1, 0x7f080520

    const-string v2, "pref_street_fix_focus_control_key"

    if-nez v0, :cond_1

    .line 755
    invoke-virtual {p0}, Lcom/oplus/camera/t/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/oplus/camera/t/c;->v:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f080521

    invoke-interface {v0, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Ljava/lang/String;I)V

    goto :goto_0

    .line 759
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/t/c;->v:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Ljava/lang/String;I)V

    :goto_0
    const/4 v0, 0x1

    .line 763
    invoke-virtual {p0, v0}, Lcom/oplus/camera/t/c;->c(Z)V

    .line 764
    iget-object p0, p0, Lcom/oplus/camera/t/c;->s:Lcom/oplus/camera/t/b;

    invoke-virtual {p0}, Lcom/oplus/camera/t/b;->b()V

    goto :goto_2

    .line 766
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/t/c;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 767
    iget-object v0, p0, Lcom/oplus/camera/t/c;->v:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f080523

    invoke-interface {v0, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Ljava/lang/String;I)V

    goto :goto_1

    .line 770
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/t/c;->v:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Ljava/lang/String;I)V

    :goto_1
    const/4 v0, 0x0

    .line 774
    invoke-virtual {p0, v0}, Lcom/oplus/camera/t/c;->c(Z)V

    .line 775
    invoke-direct {p0}, Lcom/oplus/camera/t/c;->C()V

    :goto_2
    return-void
.end method

.method private C()V
    .locals 5

    .line 781
    sget-object v0, Lcom/oplus/camera/t/c;->b:Ljava/lang/String;

    const-string v1, "setContinueAFMode"

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    iget-object v0, p0, Lcom/oplus/camera/t/c;->n:Lcom/oplus/camera/e/d;

    invoke-interface {v0}, Lcom/oplus/camera/e/d;->p()I

    move-result v0

    const/4 v1, 0x4

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    .line 784
    iput-boolean v0, p0, Lcom/oplus/camera/t/c;->k:Z

    .line 785
    iget-object v0, p0, Lcom/oplus/camera/t/c;->n:Lcom/oplus/camera/e/d;

    .line 786
    invoke-static {}, Lcom/oplus/camera/a;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v2

    invoke-static {}, Lcom/oplus/camera/a;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v3

    const/4 v4, 0x1

    .line 785
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/oplus/camera/e/d;->a(I[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Z)V

    .line 787
    iget-object p0, p0, Lcom/oplus/camera/t/c;->n:Lcom/oplus/camera/e/d;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    :cond_0
    return-void
.end method

.method private a(FLjava/util/ArrayList;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    if-eqz p2, :cond_3

    .line 179
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-gtz p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    .line 183
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sub-float/2addr v0, p1

    .line 184
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    move v1, v0

    move v0, p0

    .line 187
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p0, v2, :cond_2

    .line 188
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    sub-float/2addr v2, p1

    .line 190
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v1

    if-gez v3, :cond_1

    .line 191
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    move v1, v0

    move v0, p0

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_1
    const/4 p0, -0x1

    return p0
.end method

.method private a(FF)V
    .locals 11

    .line 812
    sget-object v0, Lcom/oplus/camera/t/c;->b:Ljava/lang/String;

    const-string v1, "generateFocusValues"

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/t/c;->x:Ljava/util/ArrayList;

    .line 815
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/t/c;->y:Ljava/util/ArrayList;

    cmpg-float v0, p1, p2

    if-gez v0, :cond_0

    move v10, p2

    move p2, p1

    move p1, v10

    :cond_0
    const/4 v0, 0x0

    .line 823
    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v1, v0

    if-lez v0, :cond_5

    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_3

    :cond_1
    sub-float v0, p1, p2

    .line 829
    iget v1, p0, Lcom/oplus/camera/t/c;->l:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x3ca3d70a    # 0.02f

    const v2, 0x3f4ccccd    # 0.8f

    .line 834
    sget-object v3, Lcom/oplus/camera/t/c;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generateFocusValues, farFocusDistance: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", minFocusDistance: "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    move v3, p2

    .line 837
    :goto_0
    iget v4, p0, Lcom/oplus/camera/t/c;->l:I

    if-gt v3, v4, :cond_4

    int-to-float v4, v3

    mul-float v5, v0, v4

    sub-float v5, p1, v5

    const/high16 v6, 0x42340000    # 45.0f

    if-ltz v3, :cond_2

    cmpg-float v7, v4, v6

    if-gtz v7, :cond_2

    mul-float v7, v1, v4

    goto :goto_1

    :cond_2
    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v8, v4, v6

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    .line 845
    :goto_1
    iget-object v8, p0, Lcom/oplus/camera/t/c;->x:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 846
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v9, p2

    const-string v7, "%.2f"

    invoke-static {v5, v7, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    cmpl-float v4, v4, v6

    if-nez v4, :cond_3

    .line 849
    new-instance v4, Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v5, p0, Lcom/oplus/camera/t/c;->r:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/oplus/camera/t/c;->B:Landroid/widget/TextView;

    .line 850
    iget-object v4, p0, Lcom/oplus/camera/t/c;->B:Landroid/widget/TextView;

    const-string v5, "1.00m"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 851
    iget-object v4, p0, Lcom/oplus/camera/t/c;->B:Landroid/widget/TextView;

    invoke-static {v8}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 852
    iget-object v4, p0, Lcom/oplus/camera/t/c;->y:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/oplus/camera/t/c;->B:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 854
    :cond_3
    iget-object v4, p0, Lcom/oplus/camera/t/c;->y:Ljava/util/ArrayList;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "m"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void

    .line 824
    :cond_5
    :goto_3
    sget-object p0, Lcom/oplus/camera/t/c;->b:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "generateFocusValues, return, minFocusDistance: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/t/c;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/oplus/camera/t/c;->c:Z

    return p0
.end method

.method static synthetic b(Lcom/oplus/camera/t/c;)Lcom/oplus/camera/capmode/a;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/oplus/camera/t/c;->t:Lcom/oplus/camera/capmode/a;

    return-object p0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/oplus/camera/t/c;->r:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 167
    new-instance v1, Lcom/oplus/camera/t/c$1;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/t/c$1;-><init>(Lcom/oplus/camera/t/c;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/oplus/camera/t/c;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/oplus/camera/t/c;->v:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic d(Lcom/oplus/camera/t/c;)Lcom/oplus/camera/t/c$b;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/oplus/camera/t/c;->p:Lcom/oplus/camera/t/c$b;

    return-object p0
.end method

.method private d(I)V
    .locals 1

    .line 128
    iget-boolean v0, p0, Lcom/oplus/camera/t/c;->e:Z

    if-nez v0, :cond_0

    return-void

    .line 132
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/t/c;->t:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->ad()Lcom/oplus/camera/ae;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 135
    rem-int/lit8 p1, p1, 0xa

    if-nez p1, :cond_1

    .line 136
    invoke-virtual {p0}, Lcom/oplus/camera/ae;->f()V

    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/ae;->d()V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic e(Lcom/oplus/camera/t/c;)Lcom/oplus/camera/t/b;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/oplus/camera/t/c;->s:Lcom/oplus/camera/t/b;

    return-object p0
.end method

.method private e(I)Ljava/lang/String;
    .locals 3

    .line 451
    sget-object v0, Lcom/oplus/camera/t/c;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFocusValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/oplus/camera/t/c;->x:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 457
    iget-object p0, p0, Lcom/oplus/camera/t/c;->x:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private f(I)Ljava/lang/String;
    .locals 0

    .line 465
    iget-object p0, p0, Lcom/oplus/camera/t/c;->y:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/oplus/camera/t/c;)Ljava/util/ArrayList;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/oplus/camera/t/c;->y:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic g(Lcom/oplus/camera/t/c;)Lcom/oplus/camera/t/d;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/oplus/camera/t/c;->o:Lcom/oplus/camera/t/d;

    return-object p0
.end method

.method private g(Z)V
    .locals 5

    .line 322
    iget-object v0, p0, Lcom/oplus/camera/t/c;->a:Lcom/oplus/camera/ui/menu/levelcontrol/e;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    const-string v2, "pref_street_fix_focus_control_key"

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 324
    iget-object v3, p0, Lcom/oplus/camera/t/c;->r:Landroid/app/Activity;

    .line 325
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0805c4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 324
    invoke-virtual {v0, p1, v1, v3}, Lcom/oplus/camera/ui/menu/levelcontrol/e;->a(ZLjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 326
    iget-object p0, p0, Lcom/oplus/camera/t/c;->v:Lcom/oplus/camera/ui/CameraUIInterface;

    const p1, 0x7f080523

    invoke-interface {p0, v2, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 329
    iget-object v3, p0, Lcom/oplus/camera/t/c;->r:Landroid/app/Activity;

    const v4, 0x7f0805c5

    .line 330
    invoke-static {v3, v4}, Lcom/oplus/camera/util/Util;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 329
    invoke-virtual {v0, p1, v1, v3}, Lcom/oplus/camera/ui/menu/levelcontrol/e;->a(ZLjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 332
    invoke-virtual {p0}, Lcom/oplus/camera/t/c;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 333
    iget-object p0, p0, Lcom/oplus/camera/t/c;->v:Lcom/oplus/camera/ui/CameraUIInterface;

    const p1, 0x7f080521

    invoke-interface {p0, v2, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Ljava/lang/String;I)V

    goto :goto_0

    .line 336
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/t/c;->v:Lcom/oplus/camera/ui/CameraUIInterface;

    const p1, 0x7f080520

    invoke-interface {p0, v2, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic h(Lcom/oplus/camera/t/c;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/oplus/camera/t/c;->B()V

    return-void
.end method

.method private v()V
    .locals 6

    .line 216
    iget-object v0, p0, Lcom/oplus/camera/t/c;->r:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 217
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/oplus/camera/t/c;->r:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oplus/camera/t/c;->A:Landroid/widget/RelativeLayout;

    .line 218
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v2

    const v3, 0x7f070b20

    .line 219
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xe

    .line 220
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0xc

    .line 221
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 222
    iget-object v3, p0, Lcom/oplus/camera/t/c;->u:Lcom/oplus/camera/t/c$a;

    iget-object v4, p0, Lcom/oplus/camera/t/c;->A:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4, v1}, Lcom/oplus/camera/t/c$a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    new-instance v1, Lcom/oplus/camera/t/d;

    iget-object v3, p0, Lcom/oplus/camera/t/c;->r:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/oplus/camera/t/d;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oplus/camera/t/c;->o:Lcom/oplus/camera/t/d;

    .line 224
    iget-object v1, p0, Lcom/oplus/camera/t/c;->o:Lcom/oplus/camera/t/d;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/oplus/camera/t/d;->setVerticalDraw(Z)V

    .line 225
    iget-object v1, p0, Lcom/oplus/camera/t/c;->o:Lcom/oplus/camera/t/d;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/oplus/camera/t/d;->setIncludeFontPadding(Z)V

    .line 226
    iget-object v1, p0, Lcom/oplus/camera/t/c;->o:Lcom/oplus/camera/t/d;

    const v5, 0x7f070b1d

    .line 227
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    .line 226
    invoke-virtual {v1, v4, v5}, Lcom/oplus/camera/t/d;->setTextSize(IF)V

    .line 228
    iget-object v1, p0, Lcom/oplus/camera/t/c;->o:Lcom/oplus/camera/t/d;

    iget-object v4, p0, Lcom/oplus/camera/t/c;->r:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/oplus/camera/util/Util;->l(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/oplus/camera/t/d;->setTypeface(Landroid/graphics/Typeface;)V

    .line 229
    iget-object v1, p0, Lcom/oplus/camera/t/c;->o:Lcom/oplus/camera/t/d;

    const/16 v4, 0x11

    invoke-virtual {v1, v4}, Lcom/oplus/camera/t/d;->setGravity(I)V

    .line 230
    iget-object v1, p0, Lcom/oplus/camera/t/c;->o:Lcom/oplus/camera/t/d;

    const v4, 0x7f060470

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/oplus/camera/t/d;->setTextColor(I)V

    .line 231
    iget-object v1, p0, Lcom/oplus/camera/t/c;->o:Lcom/oplus/camera/t/d;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/oplus/camera/t/d;->setId(I)V

    .line 232
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xa

    .line 233
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 234
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const v2, 0x7f070b23

    .line 235
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const v2, 0x7f070b22

    .line 236
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 237
    iget-object v2, p0, Lcom/oplus/camera/t/c;->o:Lcom/oplus/camera/t/d;

    invoke-virtual {v2, v1}, Lcom/oplus/camera/t/d;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    iget-object v1, p0, Lcom/oplus/camera/t/c;->A:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/oplus/camera/t/c;->o:Lcom/oplus/camera/t/d;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 239
    new-instance v1, Lcom/oplus/camera/t/b;

    iget-object v2, p0, Lcom/oplus/camera/t/c;->r:Landroid/app/Activity;

    iget v4, p0, Lcom/oplus/camera/t/c;->l:I

    iget-object v5, p0, Lcom/oplus/camera/t/c;->w:Landroid/os/Handler;

    invoke-direct {v1, v2, v4, v5}, Lcom/oplus/camera/t/b;-><init>(Landroid/content/Context;ILandroid/os/Handler;)V

    iput-object v1, p0, Lcom/oplus/camera/t/c;->s:Lcom/oplus/camera/t/b;

    .line 240
    iget-object v1, p0, Lcom/oplus/camera/t/c;->s:Lcom/oplus/camera/t/b;

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Lcom/oplus/camera/t/b;->setForceBigScaleAlphaPosition(I)V

    .line 241
    iget-object v1, p0, Lcom/oplus/camera/t/c;->s:Lcom/oplus/camera/t/b;

    invoke-virtual {v1, p0}, Lcom/oplus/camera/t/b;->setScaleBarValueChangeListener(Lcom/oplus/camera/t/b$c;)V

    .line 242
    iget-object v1, p0, Lcom/oplus/camera/t/c;->s:Lcom/oplus/camera/t/b;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oplus/camera/t/b;->setId(I)V

    .line 243
    iget-object v1, p0, Lcom/oplus/camera/t/c;->s:Lcom/oplus/camera/t/b;

    iget-object v2, p0, Lcom/oplus/camera/t/c;->y:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oplus/camera/t/b;->setLevelNum(I)V

    .line 244
    iget-object v1, p0, Lcom/oplus/camera/t/c;->s:Lcom/oplus/camera/t/b;

    iget-boolean v2, p0, Lcom/oplus/camera/t/c;->g:Z

    invoke-virtual {v1, v2}, Lcom/oplus/camera/t/b;->setAuto(Z)V

    .line 245
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 246
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v2

    iget-boolean v4, p0, Lcom/oplus/camera/t/c;->d:Z

    const/4 v5, 0x2

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    div-int/2addr v2, v4

    const v4, 0x7f070b1e

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x3

    .line 247
    iget-object v2, p0, Lcom/oplus/camera/t/c;->o:Lcom/oplus/camera/t/d;

    invoke-virtual {v2}, Lcom/oplus/camera/t/d;->getId()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 248
    iget-object v0, p0, Lcom/oplus/camera/t/c;->s:Lcom/oplus/camera/t/b;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/t/b;->setScaleBarValueChangeListener(Lcom/oplus/camera/t/b$c;)V

    .line 249
    iget-object v0, p0, Lcom/oplus/camera/t/c;->A:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/oplus/camera/t/c;->s:Lcom/oplus/camera/t/b;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    iget-object v0, p0, Lcom/oplus/camera/t/c;->v:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object p0, p0, Lcom/oplus/camera/t/c;->u:Lcom/oplus/camera/t/c$a;

    const-string v1, "street"

    invoke-interface {v0, p0, v1, v5, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Landroid/view/View;Ljava/lang/String;IZ)V

    return-void
.end method

.method private w()V
    .locals 2

    .line 344
    iget-object v0, p0, Lcom/oplus/camera/t/c;->s:Lcom/oplus/camera/t/b;

    invoke-virtual {p0}, Lcom/oplus/camera/t/c;->f()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/t/b;->setAuto(Z)V

    .line 345
    iget-object v0, p0, Lcom/oplus/camera/t/c;->s:Lcom/oplus/camera/t/b;

    invoke-virtual {p0}, Lcom/oplus/camera/t/c;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/t/b;->a(I)V

    .line 346
    iget-object p0, p0, Lcom/oplus/camera/t/c;->s:Lcom/oplus/camera/t/b;

    invoke-virtual {p0}, Lcom/oplus/camera/t/b;->b()V

    return-void
.end method

.method private x()V
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/oplus/camera/t/c;->t:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    iget-object p0, p0, Lcom/oplus/camera/t/c;->t:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->H()Z

    :cond_0
    return-void
.end method

.method private y()V
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/oplus/camera/t/c;->v:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    iget-object p0, p0, Lcom/oplus/camera/t/c;->v:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v0, 0x1

    invoke-interface {p0, v0, v0, v0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZZ)V

    :cond_0
    return-void
.end method

.method private z()V
    .locals 5

    .line 680
    iget-object v0, p0, Lcom/oplus/camera/t/c;->a:Lcom/oplus/camera/ui/menu/levelcontrol/e;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/oplus/camera/t/c;->r:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 682
    new-instance v2, Lcom/oplus/camera/ui/menu/levelcontrol/e;

    iget-object v3, p0, Lcom/oplus/camera/t/c;->r:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/oplus/camera/ui/menu/levelcontrol/e;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/oplus/camera/t/c;->a:Lcom/oplus/camera/ui/menu/levelcontrol/e;

    .line 683
    iget-object v2, p0, Lcom/oplus/camera/t/c;->a:Lcom/oplus/camera/ui/menu/levelcontrol/e;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/oplus/camera/ui/menu/levelcontrol/e;->setEnabled(Z)V

    .line 684
    iget-object v2, p0, Lcom/oplus/camera/t/c;->a:Lcom/oplus/camera/ui/menu/levelcontrol/e;

    invoke-virtual {v2, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/e;->setFocusable(Z)V

    .line 685
    iget-object v2, p0, Lcom/oplus/camera/t/c;->a:Lcom/oplus/camera/ui/menu/levelcontrol/e;

    invoke-virtual {v2, v3}, Lcom/oplus/camera/ui/menu/levelcontrol/e;->setClickable(Z)V

    .line 686
    iget-object v2, p0, Lcom/oplus/camera/t/c;->a:Lcom/oplus/camera/ui/menu/levelcontrol/e;

    invoke-virtual {v2, v3}, Lcom/oplus/camera/ui/menu/levelcontrol/e;->setNormalShape(Z)V

    .line 687
    iget-object v2, p0, Lcom/oplus/camera/t/c;->a:Lcom/oplus/camera/ui/menu/levelcontrol/e;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/oplus/camera/ui/menu/levelcontrol/e;->setVisibility(I)V

    .line 688
    iget-object v2, p0, Lcom/oplus/camera/t/c;->a:Lcom/oplus/camera/ui/menu/levelcontrol/e;

    const v3, 0x7f100108

    .line 689
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 688
    invoke-virtual {v2, v3}, Lcom/oplus/camera/ui/menu/levelcontrol/e;->setContentDescription(Ljava/lang/CharSequence;)V

    const v2, 0x7f0805c5

    .line 690
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 691
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 692
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-direct {v3, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x15

    .line 693
    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xb

    .line 694
    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xf

    .line 695
    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const v2, 0x7f07017e

    .line 696
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 697
    iget-object v0, p0, Lcom/oplus/camera/t/c;->a:Lcom/oplus/camera/ui/menu/levelcontrol/e;

    invoke-virtual {v0, v3}, Lcom/oplus/camera/ui/menu/levelcontrol/e;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 698
    iget-object v0, p0, Lcom/oplus/camera/t/c;->r:Landroid/app/Activity;

    const v2, 0x7f0900e4

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/oplus/camera/t/c;->a:Lcom/oplus/camera/ui/menu/levelcontrol/e;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 699
    iget-object v0, p0, Lcom/oplus/camera/t/c;->a:Lcom/oplus/camera/ui/menu/levelcontrol/e;

    iget-object v2, p0, Lcom/oplus/camera/t/c;->t:Lcom/oplus/camera/capmode/a;

    invoke-interface {v2}, Lcom/oplus/camera/capmode/a;->u()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/e;->a(IZ)V

    .line 700
    invoke-direct {p0}, Lcom/oplus/camera/t/c;->A()V

    .line 703
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/t/c;->a:Lcom/oplus/camera/ui/menu/levelcontrol/e;

    iget-object p0, p0, Lcom/oplus/camera/t/c;->t:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->u()I

    move-result p0

    invoke-virtual {v0, p0, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/e;->a(IZ)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x1

    .line 474
    invoke-virtual {p0, v0}, Lcom/oplus/camera/t/c;->c(Z)V

    .line 475
    iget-object v0, p0, Lcom/oplus/camera/t/c;->a:Lcom/oplus/camera/ui/menu/levelcontrol/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/e;->setEnabled(Z)V

    .line 476
    iget-object v0, p0, Lcom/oplus/camera/t/c;->v:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->d(ZZ)V

    .line 477
    iget-object p0, p0, Lcom/oplus/camera/t/c;->p:Lcom/oplus/camera/t/c$b;

    invoke-interface {p0}, Lcom/oplus/camera/t/c$b;->a()V

    return-void
.end method

.method public a(F)V
    .locals 2

    const-string v0, "com.oplus.feature.street.track.ui.support"

    .line 144
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/oplus/camera/t/c;->x:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/t/c;->a(FLjava/util/ArrayList;)I

    move-result p1

    .line 146
    iget-object p0, p0, Lcom/oplus/camera/t/c;->m:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "pref_fix_focus_value"

    .line 147
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 148
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/t/c;->f()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/t/c;->s:Lcom/oplus/camera/t/b;

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/oplus/camera/t/c;->x:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/t/c;->a(FLjava/util/ArrayList;)I

    move-result p1

    const/4 v0, -0x1

    if-le p1, v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/oplus/camera/t/c;->y:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/t/c;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    .line 157
    iget-object v0, p0, Lcom/oplus/camera/t/c;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 158
    iget-object v1, p0, Lcom/oplus/camera/t/c;->r:Landroid/app/Activity;

    invoke-virtual {p0, p1, v0, v1}, Lcom/oplus/camera/t/c;->a(ILjava/lang/String;Landroid/app/Activity;)V

    .line 159
    invoke-direct {p0, v0}, Lcom/oplus/camera/t/c;->b(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public a(I)V
    .locals 3

    .line 272
    sget-object v0, Lcom/oplus/camera/t/c;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onValueChange value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-direct {p0, p1}, Lcom/oplus/camera/t/c;->d(I)V

    .line 275
    iget-object v0, p0, Lcom/oplus/camera/t/c;->o:Lcom/oplus/camera/t/d;

    invoke-direct {p0, p1}, Lcom/oplus/camera/t/c;->f(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/t/d;->setText(Ljava/lang/CharSequence;)V

    .line 276
    invoke-direct {p0, p1}, Lcom/oplus/camera/t/c;->e(I)Ljava/lang/String;

    move-result-object v0

    .line 278
    iget-object v1, p0, Lcom/oplus/camera/t/c;->p:Lcom/oplus/camera/t/c$b;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {p0}, Lcom/oplus/camera/t/c;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    invoke-virtual {p0, p1}, Lcom/oplus/camera/t/c;->b(I)V

    .line 281
    iget-object p1, p0, Lcom/oplus/camera/t/c;->t:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->ac()V

    .line 283
    iget-object p1, p0, Lcom/oplus/camera/t/c;->n:Lcom/oplus/camera/e/d;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 284
    iput-boolean v1, p0, Lcom/oplus/camera/t/c;->k:Z

    .line 285
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-interface {p1, p0, v1}, Lcom/oplus/camera/e/d;->a(FZ)V

    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;Landroid/app/Activity;)V
    .locals 1

    .line 649
    iget-object v0, p0, Lcom/oplus/camera/t/c;->s:Lcom/oplus/camera/t/b;

    if-nez v0, :cond_0

    return-void

    .line 653
    :cond_0
    invoke-virtual {v0}, Lcom/oplus/camera/t/b;->getCurrentIndex()I

    move-result v0

    if-ne v0, p1, :cond_1

    if-eqz p1, :cond_1

    return-void

    .line 657
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/t/c;->s:Lcom/oplus/camera/t/b;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/t/b;->setCurrentIndex(I)V

    if-eqz p3, :cond_2

    .line 660
    new-instance v0, Lcom/oplus/camera/t/c$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/oplus/camera/t/c$2;-><init>(Lcom/oplus/camera/t/c;ILjava/lang/String;)V

    invoke-virtual {p3, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public a(Lcom/oplus/camera/t/c$b;)V
    .locals 0

    .line 469
    iput-object p1, p0, Lcom/oplus/camera/t/c;->p:Lcom/oplus/camera/t/c$b;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 792
    iget-object p0, p0, Lcom/oplus/camera/t/c;->o:Lcom/oplus/camera/t/d;

    if-nez p0, :cond_0

    return-void

    .line 796
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oplus/camera/t/d;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Z)V
    .locals 3

    .line 482
    iget-object v0, p0, Lcom/oplus/camera/t/c;->a:Lcom/oplus/camera/ui/menu/levelcontrol/e;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/e;->setEnabled(Z)V

    .line 483
    iget-object v0, p0, Lcom/oplus/camera/t/c;->v:Lcom/oplus/camera/ui/CameraUIInterface;

    xor-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->d(ZZ)V

    .line 484
    iget-object p0, p0, Lcom/oplus/camera/t/c;->p:Lcom/oplus/camera/t/c$b;

    invoke-interface {p0, p1}, Lcom/oplus/camera/t/c$b;->a(Z)V

    return-void
.end method

.method public a(ZZ)V
    .locals 3

    .line 402
    sget-object v0, Lcom/oplus/camera/t/c;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showOrHide isShow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iput-boolean p1, p0, Lcom/oplus/camera/t/c;->i:Z

    .line 406
    iget-boolean v0, p0, Lcom/oplus/camera/t/c;->D:Z

    if-eqz v0, :cond_0

    .line 407
    invoke-virtual {p0, p2}, Lcom/oplus/camera/t/c;->d(Z)V

    :cond_0
    if-eqz p1, :cond_1

    .line 411
    invoke-virtual {p0}, Lcom/oplus/camera/t/c;->g()V

    .line 412
    invoke-direct {p0}, Lcom/oplus/camera/t/c;->y()V

    .line 413
    invoke-direct {p0}, Lcom/oplus/camera/t/c;->x()V

    goto :goto_0

    .line 415
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/t/c;->i()V

    :goto_0
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 540
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 541
    iget-object v1, p0, Lcom/oplus/camera/t/c;->C:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 543
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-nez p1, :cond_0

    .line 544
    invoke-virtual {p0}, Lcom/oplus/camera/t/c;->i()V

    .line 546
    invoke-virtual {p0}, Lcom/oplus/camera/t/c;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 547
    invoke-direct {p0}, Lcom/oplus/camera/t/c;->B()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 1

    .line 503
    iget-object p0, p0, Lcom/oplus/camera/t/c;->m:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "pref_fix_focus_value"

    .line 504
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 505
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 212
    invoke-virtual {p0}, Lcom/oplus/camera/t/c;->d()Z

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/t/c;->a(ZZ)V

    return-void
.end method

.method public c()V
    .locals 0

    .line 200
    invoke-direct {p0}, Lcom/oplus/camera/t/c;->v()V

    return-void
.end method

.method public c(I)V
    .locals 1

    .line 860
    iget-object p0, p0, Lcom/oplus/camera/t/c;->a:Lcom/oplus/camera/ui/menu/levelcontrol/e;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 861
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/e;->a(IZ)V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 2

    .line 390
    iget-object v0, p0, Lcom/oplus/camera/t/c;->t:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_fix_focus_manual_state"

    .line 391
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 392
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 394
    invoke-direct {p0, p1}, Lcom/oplus/camera/t/c;->g(Z)V

    .line 396
    iget-object p0, p0, Lcom/oplus/camera/t/c;->s:Lcom/oplus/camera/t/b;

    if-eqz p0, :cond_0

    xor-int/lit8 p1, p1, 0x1

    .line 397
    invoke-virtual {p0, p1}, Lcom/oplus/camera/t/b;->setAuto(Z)V

    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 2

    .line 426
    iget-object v0, p0, Lcom/oplus/camera/t/c;->v:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->A()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    if-nez v0, :cond_0

    .line 429
    iget-boolean p1, p0, Lcom/oplus/camera/t/c;->i:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/oplus/camera/t/c;->j:Z

    if-nez p1, :cond_0

    .line 430
    iget-object p1, p0, Lcom/oplus/camera/t/c;->v:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Z)V

    .line 431
    iget-object p0, p0, Lcom/oplus/camera/t/c;->v:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IZ)V

    goto :goto_0

    .line 433
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/t/c;->v:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 p1, 0x4

    invoke-interface {p0, p1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IZ)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 436
    iget-boolean p1, p0, Lcom/oplus/camera/t/c;->i:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/oplus/camera/t/c;->j:Z

    if-nez p1, :cond_2

    .line 437
    iget-object p0, p0, Lcom/oplus/camera/t/c;->v:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(II)V

    goto :goto_0

    .line 439
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/t/c;->v:Lcom/oplus/camera/ui/CameraUIInterface;

    const/16 p1, 0x8

    invoke-interface {p0, p1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(II)V

    :goto_0
    return-void
.end method

.method public d()Z
    .locals 2

    .line 208
    iget-object p0, p0, Lcom/oplus/camera/t/c;->m:Landroid/content/SharedPreferences;

    const-string v0, "pref_street_fix_focus_control_key"

    const-string v1, "off"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public e()V
    .locals 3

    .line 255
    sget-object v0, Lcom/oplus/camera/t/c;->b:Ljava/lang/String;

    const-string v1, "deinitFixFocus"

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/oplus/camera/t/c;->u:Lcom/oplus/camera/t/c$a;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 258
    invoke-virtual {v0, v1}, Lcom/oplus/camera/t/c$a;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/oplus/camera/t/c;->u:Lcom/oplus/camera/t/c$a;

    invoke-virtual {v0}, Lcom/oplus/camera/t/c$a;->removeAllViewsInLayout()V

    const/4 v0, 0x0

    .line 260
    iput-object v0, p0, Lcom/oplus/camera/t/c;->u:Lcom/oplus/camera/t/c$a;

    const/4 v2, 0x0

    .line 261
    iput-boolean v2, p0, Lcom/oplus/camera/t/c;->f:Z

    .line 262
    iput-object v0, p0, Lcom/oplus/camera/t/c;->B:Landroid/widget/TextView;

    .line 264
    iget-object p0, p0, Lcom/oplus/camera/t/c;->a:Lcom/oplus/camera/ui/menu/levelcontrol/e;

    if-eqz p0, :cond_0

    .line 265
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/e;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public e(Z)V
    .locals 0

    .line 559
    invoke-virtual {p0, p1}, Lcom/oplus/camera/t/c;->d(Z)V

    return-void
.end method

.method public f(Z)V
    .locals 0

    .line 866
    iput-boolean p1, p0, Lcom/oplus/camera/t/c;->D:Z

    return-void
.end method

.method public f()Z
    .locals 2

    .line 292
    iget-object p0, p0, Lcom/oplus/camera/t/c;->m:Landroid/content/SharedPreferences;

    const-string v0, "pref_fix_focus_manual_state"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public g()V
    .locals 3

    .line 296
    iget-object v0, p0, Lcom/oplus/camera/t/c;->p:Lcom/oplus/camera/t/c$b;

    if-eqz v0, :cond_0

    .line 297
    invoke-interface {v0}, Lcom/oplus/camera/t/c$b;->d()V

    :cond_0
    const-string v0, "com.oplus.feature.street.track.ui.support"

    .line 300
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 301
    invoke-virtual {p0, v1}, Lcom/oplus/camera/t/c;->c(Z)V

    .line 304
    :cond_1
    iget-boolean v0, p0, Lcom/oplus/camera/t/c;->h:Z

    if-nez v0, :cond_2

    .line 305
    invoke-virtual {p0}, Lcom/oplus/camera/t/c;->l()V

    .line 306
    invoke-virtual {p0}, Lcom/oplus/camera/t/c;->h()V

    .line 307
    iput-boolean v1, p0, Lcom/oplus/camera/t/c;->h:Z

    .line 310
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/t/c;->d()Z

    move-result v0

    if-nez v0, :cond_3

    .line 311
    iget-object v0, p0, Lcom/oplus/camera/t/c;->t:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_street_fix_focus_control_key"

    const-string v2, "on"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 312
    iget-object p0, p0, Lcom/oplus/camera/t/c;->v:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public h()V
    .locals 1

    .line 317
    invoke-direct {p0}, Lcom/oplus/camera/t/c;->w()V

    .line 318
    invoke-virtual {p0}, Lcom/oplus/camera/t/c;->f()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oplus/camera/t/c;->g(Z)V

    return-void
.end method

.method public i()V
    .locals 4

    .line 350
    iget-boolean v0, p0, Lcom/oplus/camera/t/c;->h:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {p0}, Lcom/oplus/camera/t/c;->m()V

    .line 352
    iput-boolean v1, p0, Lcom/oplus/camera/t/c;->h:Z

    .line 355
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/t/c;->f()Z

    move-result v0

    const-string v2, "pref_street_fix_focus_control_key"

    if-nez v0, :cond_1

    .line 356
    iget-object v0, p0, Lcom/oplus/camera/t/c;->v:Lcom/oplus/camera/ui/CameraUIInterface;

    const v3, 0x7f080520

    invoke-interface {v0, v2, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Ljava/lang/String;I)V

    .line 360
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/t/c;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 361
    iget-object v0, p0, Lcom/oplus/camera/t/c;->t:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "off"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 362
    iget-object v0, p0, Lcom/oplus/camera/t/c;->v:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    .line 365
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/t/c;->p:Lcom/oplus/camera/t/c$b;

    if-eqz v0, :cond_3

    .line 366
    invoke-interface {v0}, Lcom/oplus/camera/t/c$b;->c()V

    :cond_3
    const-string v0, "com.oplus.feature.street.track.ui.support"

    .line 369
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 370
    invoke-virtual {p0, v1}, Lcom/oplus/camera/t/c;->c(Z)V

    .line 371
    invoke-direct {p0}, Lcom/oplus/camera/t/c;->C()V

    :cond_4
    return-void
.end method

.method public j()V
    .locals 1

    .line 376
    iget-boolean v0, p0, Lcom/oplus/camera/t/c;->h:Z

    if-eqz v0, :cond_0

    .line 377
    invoke-virtual {p0}, Lcom/oplus/camera/t/c;->m()V

    const/4 v0, 0x0

    .line 378
    iput-boolean v0, p0, Lcom/oplus/camera/t/c;->h:Z

    :cond_0
    return-void
.end method

.method public k()I
    .locals 2

    .line 509
    iget-object p0, p0, Lcom/oplus/camera/t/c;->m:Landroid/content/SharedPreferences;

    const-string v0, "pref_fix_focus_value"

    const/16 v1, 0xa

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public l()V
    .locals 3

    .line 513
    sget-object v0, Lcom/oplus/camera/t/c;->b:Ljava/lang/String;

    const-string v1, "showLevelPanel"

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    iget-boolean v0, p0, Lcom/oplus/camera/t/c;->f:Z

    if-nez v0, :cond_0

    .line 516
    invoke-virtual {p0}, Lcom/oplus/camera/t/c;->c()V

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/t/c;->t:Lcom/oplus/camera/capmode/a;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 520
    iget-object v0, p0, Lcom/oplus/camera/t/c;->v:Lcom/oplus/camera/ui/CameraUIInterface;

    const/16 v2, 0x14

    invoke-interface {v0, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->f(IZ)V

    :cond_1
    const-string v0, "com.oplus.feature.street.track.ui.support"

    .line 523
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 524
    iget-object v0, p0, Lcom/oplus/camera/t/c;->a:Lcom/oplus/camera/ui/menu/levelcontrol/e;

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/menu/levelcontrol/e;->setVisibility(I)V

    .line 527
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/t/c;->u:Lcom/oplus/camera/t/c$a;

    invoke-virtual {v0, v2}, Lcom/oplus/camera/t/c$a;->setVisibility(I)V

    .line 528
    iput-boolean v1, p0, Lcom/oplus/camera/t/c;->f:Z

    return-void
.end method

.method public m()V
    .locals 2

    .line 532
    sget-object v0, Lcom/oplus/camera/t/c;->b:Ljava/lang/String;

    const-string v1, "hideLevelPanel"

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    iget-object v0, p0, Lcom/oplus/camera/t/c;->u:Lcom/oplus/camera/t/c$a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oplus/camera/t/c$a;->setVisibility(I)V

    .line 535
    iget-object v0, p0, Lcom/oplus/camera/t/c;->a:Lcom/oplus/camera/ui/menu/levelcontrol/e;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/e;->setVisibility(I)V

    .line 536
    iget-object p0, p0, Lcom/oplus/camera/t/c;->a:Lcom/oplus/camera/ui/menu/levelcontrol/e;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/e;->setEnabled(Z)V

    return-void
.end method

.method public n()V
    .locals 0

    .line 555
    invoke-virtual {p0}, Lcom/oplus/camera/t/c;->i()V

    return-void
.end method

.method public o()Z
    .locals 3

    .line 563
    sget-object v0, Lcom/oplus/camera/t/c;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isShowFixFocusMenu, mbShowFixFocusMenu:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oplus/camera/t/c;->i:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    iget-boolean p0, p0, Lcom/oplus/camera/t/c;->i:Z

    return p0
.end method

.method public p()Z
    .locals 0

    .line 569
    iget-boolean p0, p0, Lcom/oplus/camera/t/c;->k:Z

    return p0
.end method

.method public q()V
    .locals 3

    .line 573
    invoke-virtual {p0}, Lcom/oplus/camera/t/c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    invoke-virtual {p0}, Lcom/oplus/camera/t/c;->k()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oplus/camera/t/c;->e(I)Ljava/lang/String;

    move-result-object v0

    .line 575
    iget-object v1, p0, Lcom/oplus/camera/t/c;->p:Lcom/oplus/camera/t/c$b;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 576
    iget-object v1, p0, Lcom/oplus/camera/t/c;->n:Lcom/oplus/camera/e/d;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 577
    iput-boolean v2, p0, Lcom/oplus/camera/t/c;->k:Z

    .line 578
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v1, v0, v2}, Lcom/oplus/camera/e/d;->a(FZ)V

    .line 579
    iget-object p0, p0, Lcom/oplus/camera/t/c;->v:Lcom/oplus/camera/ui/CameraUIInterface;

    const v0, 0x7f080523

    const-string v1, "pref_street_fix_focus_control_key"

    invoke-interface {p0, v1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public r()V
    .locals 1

    const/4 v0, 0x1

    .line 587
    iput-boolean v0, p0, Lcom/oplus/camera/t/c;->j:Z

    .line 588
    invoke-virtual {p0}, Lcom/oplus/camera/t/c;->i()V

    return-void
.end method

.method public s()V
    .locals 1

    const/4 v0, 0x0

    .line 592
    iput-boolean v0, p0, Lcom/oplus/camera/t/c;->j:Z

    return-void
.end method

.method public t()V
    .locals 1

    const/4 v0, 0x0

    .line 596
    iput-boolean v0, p0, Lcom/oplus/camera/t/c;->i:Z

    .line 597
    iput-boolean v0, p0, Lcom/oplus/camera/t/c;->j:Z

    return-void
.end method

.method public u()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 870
    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/t/c;->a(ZZ)V

    return-void
.end method
