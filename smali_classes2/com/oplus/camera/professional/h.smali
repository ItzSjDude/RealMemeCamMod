.class public Lcom/oplus/camera/professional/h;
.super Lcom/oplus/camera/capmode/BaseMode;
.source "HSProfessionalCapMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/oplus/camera/professional/e$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/professional/h$a;
    }
.end annotation


# instance fields
.field private A:Landroid/os/Handler;

.field private B:Lcom/oplus/camera/professional/h$a;

.field private C:Landroid/content/res/Resources;

.field private D:I

.field private E:Z

.field private F:Z

.field private G:Lcom/oplus/camera/ui/RotateImageView;

.field private H:I

.field private I:Landroid/animation/ValueAnimator;

.field private J:I

.field private K:I

.field private L:I

.field private M:I

.field private N:F

.field private O:I

.field private P:Z

.field private Q:Z

.field private R:[B

.field private S:Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;

.field private T:Z

.field private U:Z

.field private V:I

.field private W:I

.field private X:I

.field private Y:I

.field private Z:I

.field private aa:I

.field private ab:I

.field private ac:I

.field private ad:I

.field private ae:[B

.field private af:Landroid/widget/TextView;

.field private ag:Landroid/animation/ValueAnimator;

.field private ah:Landroid/view/animation/PathInterpolator;

.field private ai:Lcom/oplus/camera/professional/g$b;

.field private final g:Ljava/lang/Object;

.field private volatile h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:I

.field private s:J

.field private t:Ljava/lang/Thread;

.field private u:Lcom/oplus/camera/ui/h;

.field private v:Lcom/oplus/camera/professional/e;

.field private w:Lcom/oplus/camera/professional/g;

.field private x:Lcom/oplus/camera/ui/RotateImageView;

.field private y:Lcom/oplus/camera/p;

.field private z:Lcom/oplus/camera/p$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V
    .locals 2

    .line 161
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/camera/capmode/BaseMode;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 101
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/oplus/camera/professional/h;->g:Ljava/lang/Object;

    const/4 p2, 0x0

    .line 102
    iput-boolean p2, p0, Lcom/oplus/camera/professional/h;->h:Z

    .line 103
    iput-boolean p2, p0, Lcom/oplus/camera/professional/h;->i:Z

    .line 104
    iput-boolean p2, p0, Lcom/oplus/camera/professional/h;->j:Z

    .line 105
    iput-boolean p2, p0, Lcom/oplus/camera/professional/h;->k:Z

    .line 106
    iput-boolean p2, p0, Lcom/oplus/camera/professional/h;->l:Z

    const/4 p3, 0x1

    .line 107
    iput-boolean p3, p0, Lcom/oplus/camera/professional/h;->m:Z

    .line 108
    iput-boolean p2, p0, Lcom/oplus/camera/professional/h;->n:Z

    .line 109
    iput-boolean p2, p0, Lcom/oplus/camera/professional/h;->o:Z

    .line 110
    iput-boolean p2, p0, Lcom/oplus/camera/professional/h;->p:Z

    .line 111
    iput-boolean p2, p0, Lcom/oplus/camera/professional/h;->q:Z

    .line 113
    iput p2, p0, Lcom/oplus/camera/professional/h;->r:I

    const-wide/16 v0, 0x0

    .line 114
    iput-wide v0, p0, Lcom/oplus/camera/professional/h;->s:J

    const/4 p4, 0x0

    .line 116
    iput-object p4, p0, Lcom/oplus/camera/professional/h;->t:Ljava/lang/Thread;

    .line 117
    iput-object p4, p0, Lcom/oplus/camera/professional/h;->u:Lcom/oplus/camera/ui/h;

    .line 118
    iput-object p4, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    .line 119
    iput-object p4, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    .line 120
    iput-object p4, p0, Lcom/oplus/camera/professional/h;->x:Lcom/oplus/camera/ui/RotateImageView;

    .line 121
    iput-object p4, p0, Lcom/oplus/camera/professional/h;->y:Lcom/oplus/camera/p;

    .line 122
    iput-object p4, p0, Lcom/oplus/camera/professional/h;->z:Lcom/oplus/camera/p$a;

    .line 124
    iput-object p4, p0, Lcom/oplus/camera/professional/h;->A:Landroid/os/Handler;

    .line 125
    iput-object p4, p0, Lcom/oplus/camera/professional/h;->B:Lcom/oplus/camera/professional/h$a;

    const/4 v0, -0x1

    .line 127
    iput v0, p0, Lcom/oplus/camera/professional/h;->D:I

    .line 128
    iput-boolean p2, p0, Lcom/oplus/camera/professional/h;->E:Z

    .line 129
    iput-boolean p2, p0, Lcom/oplus/camera/professional/h;->F:Z

    .line 130
    iput-object p4, p0, Lcom/oplus/camera/professional/h;->G:Lcom/oplus/camera/ui/RotateImageView;

    .line 131
    iput p2, p0, Lcom/oplus/camera/professional/h;->H:I

    .line 132
    iput-object p4, p0, Lcom/oplus/camera/professional/h;->I:Landroid/animation/ValueAnimator;

    .line 133
    iput p2, p0, Lcom/oplus/camera/professional/h;->J:I

    .line 134
    iput p2, p0, Lcom/oplus/camera/professional/h;->K:I

    .line 135
    iput p2, p0, Lcom/oplus/camera/professional/h;->L:I

    .line 136
    iput p2, p0, Lcom/oplus/camera/professional/h;->M:I

    const/4 v0, 0x0

    .line 137
    iput v0, p0, Lcom/oplus/camera/professional/h;->N:F

    .line 138
    iput p2, p0, Lcom/oplus/camera/professional/h;->O:I

    .line 139
    iput-boolean p2, p0, Lcom/oplus/camera/professional/h;->P:Z

    .line 140
    iput-boolean p3, p0, Lcom/oplus/camera/professional/h;->Q:Z

    .line 142
    iput-object p4, p0, Lcom/oplus/camera/professional/h;->S:Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;

    .line 143
    iput-boolean p2, p0, Lcom/oplus/camera/professional/h;->T:Z

    .line 144
    iput-boolean p2, p0, Lcom/oplus/camera/professional/h;->U:Z

    .line 145
    iput p2, p0, Lcom/oplus/camera/professional/h;->V:I

    .line 146
    iput p2, p0, Lcom/oplus/camera/professional/h;->W:I

    .line 147
    iput p2, p0, Lcom/oplus/camera/professional/h;->X:I

    .line 148
    iput p2, p0, Lcom/oplus/camera/professional/h;->Y:I

    .line 149
    iput p2, p0, Lcom/oplus/camera/professional/h;->Z:I

    .line 150
    iput p2, p0, Lcom/oplus/camera/professional/h;->aa:I

    .line 151
    iput p2, p0, Lcom/oplus/camera/professional/h;->ab:I

    .line 152
    iput p2, p0, Lcom/oplus/camera/professional/h;->ac:I

    .line 153
    iput p2, p0, Lcom/oplus/camera/professional/h;->ad:I

    .line 154
    iput-object p4, p0, Lcom/oplus/camera/professional/h;->ae:[B

    .line 155
    iput-object p4, p0, Lcom/oplus/camera/professional/h;->af:Landroid/widget/TextView;

    .line 156
    iput-object p4, p0, Lcom/oplus/camera/professional/h;->ag:Landroid/animation/ValueAnimator;

    .line 157
    new-instance p2, Landroid/view/animation/PathInterpolator;

    const p3, 0x3e99999a    # 0.3f

    const p4, 0x3dcccccd    # 0.1f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p2, p3, v0, p4, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p2, p0, Lcom/oplus/camera/professional/h;->ah:Landroid/view/animation/PathInterpolator;

    .line 3841
    new-instance p2, Lcom/oplus/camera/professional/h$14;

    invoke-direct {p2, p0}, Lcom/oplus/camera/professional/h$14;-><init>(Lcom/oplus/camera/professional/h;)V

    iput-object p2, p0, Lcom/oplus/camera/professional/h;->ai:Lcom/oplus/camera/professional/g$b;

    .line 162
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/professional/h;->C:Landroid/content/res/Resources;

    .line 163
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->C:Landroid/content/res/Resources;

    const p2, 0x7f07063e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/professional/h;->J:I

    .line 164
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->C:Landroid/content/res/Resources;

    const p2, 0x7f070664

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/professional/h;->K:I

    .line 165
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->C:Landroid/content/res/Resources;

    const p2, 0x7f070666

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/professional/h;->L:I

    .line 166
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->C:Landroid/content/res/Resources;

    const p2, 0x7f070665

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/professional/h;->M:I

    return-void
.end method

.method static synthetic A(Lcom/oplus/camera/professional/h;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->v()V

    return-void
.end method

.method private A()Z
    .locals 0

    .line 2517
    iget p0, p0, Lcom/oplus/camera/professional/h;->mOrientation:I

    rem-int/lit16 p0, p0, 0xb4

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic B(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/RotateImageView;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->x:Lcom/oplus/camera/ui/RotateImageView;

    return-object p0
.end method

.method private B()Z
    .locals 1

    .line 2521
    iget p0, p0, Lcom/oplus/camera/professional/h;->mOrientation:I

    const/16 v0, 0x5a

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic C(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/professional/e;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    return-object p0
.end method

.method private C()V
    .locals 6

    const-string v0, "pref_switch_camera_key"

    .line 2626
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/h;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "camera_main"

    const-string v4, "off"

    if-eqz v1, :cond_2

    const-string v1, "pref_raw_control_key"

    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/h;->getSupportFunction(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2627
    iget-object v5, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2629
    invoke-static {v5}, Lcom/oplus/camera/util/Util;->e(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2630
    iget-object v5, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v5, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2632
    :cond_0
    iget-object v5, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2634
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2635
    iget-object v5, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2638
    :cond_1
    iget-object v5, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v5, v1, v4}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2641
    :goto_0
    iget-object v5, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v5, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    .line 2644
    :cond_2
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/h;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "pref_super_raw_control_key"

    .line 2645
    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/h;->getSupportFunction(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2646
    iget-object v5, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2648
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2649
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2651
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2653
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2654
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2657
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v1, v4}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2660
    :goto_1
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private D()V
    .locals 11

    .line 2778
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v0, "pref_super_raw_control_key"

    .line 2784
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/h;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "raw"

    const-string v3, "none"

    const-string v4, "on"

    const-string v5, "off"

    if-eqz v1, :cond_8

    .line 2785
    iget-object v1, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x13d1de9c

    const-string v8, "super_raw"

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eq v6, v7, :cond_3

    const/16 v7, 0xddf

    if-eq v6, v7, :cond_2

    const v4, 0x1ad6f

    if-eq v6, v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v9

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v10

    :cond_4
    :goto_0
    if-eqz v1, :cond_7

    if-eq v1, v10, :cond_6

    if-eq v1, v9, :cond_5

    goto :goto_1

    .line 2795
    :cond_5
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->RAW_CONTROL:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-interface {p0, v0, v3}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    goto :goto_1

    .line 2791
    :cond_6
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->RAW_CONTROL:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-interface {p0, v0, v8}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    goto :goto_1

    .line 2787
    :cond_7
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->RAW_CONTROL:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-interface {p0, v0, v2}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    goto :goto_1

    .line 2802
    :cond_8
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_raw_control_key"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2805
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->RAW_CONTROL:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-interface {p0, v0, v2}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    goto :goto_1

    .line 2807
    :cond_9
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->RAW_CONTROL:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-interface {p0, v0, v3}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_a
    :goto_2
    const-string p0, "HSProfessionalCapMode"

    const-string v0, "mPreferences or mOneCamera is null"

    .line 2779
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic D(Lcom/oplus/camera/professional/h;)Z
    .locals 0

    .line 94
    iget-boolean p0, p0, Lcom/oplus/camera/professional/h;->mbPaused:Z

    return p0
.end method

.method static synthetic E(Lcom/oplus/camera/professional/h;)Ljava/lang/String;
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->i()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private E()V
    .locals 1

    .line 2857
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 2861
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/g;->setPreference(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic F(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/e/d;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    return-object p0
.end method

.method private F()V
    .locals 1

    .line 2865
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    .line 2869
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/g;->setPreference(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic G(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/capmode/a;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    return-object p0
.end method

.method private G()V
    .locals 2

    .line 2873
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 2877
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/g;->setPreference(I)V

    .line 2878
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/g;->setPreference(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private H()V
    .locals 1

    .line 2882
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 2886
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/g;->setPreference(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic H(Lcom/oplus/camera/professional/h;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->u()V

    return-void
.end method

.method static synthetic I(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method private I()V
    .locals 2

    .line 2902
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 2903
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/e;->setVisibility(I)V

    .line 2904
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/e;->setItemPressed(Z)V

    .line 2907
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    if-eqz p0, :cond_1

    const/4 v0, 0x4

    .line 2908
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/g;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method static synthetic J(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/professional/h$a;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->B:Lcom/oplus/camera/professional/h$a;

    return-object p0
.end method

.method private J()V
    .locals 3

    .line 2913
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2914
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/e;->setVisibility(I)V

    .line 2915
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/oplus/camera/professional/e;->setItemPressed(Z)V

    .line 2918
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    if-eqz p0, :cond_1

    .line 2919
    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/g;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method static synthetic K(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method private K()V
    .locals 0

    .line 2924
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    if-eqz p0, :cond_0

    .line 2925
    invoke-virtual {p0}, Lcom/oplus/camera/professional/g;->clearAnimation()V

    :cond_0
    return-void
.end method

.method private L()V
    .locals 1

    const/4 v0, 0x1

    .line 3093
    invoke-direct {p0, v0}, Lcom/oplus/camera/professional/h;->f(Z)V

    return-void
.end method

.method static synthetic L(Lcom/oplus/camera/professional/h;)Z
    .locals 0

    .line 94
    iget-boolean p0, p0, Lcom/oplus/camera/professional/h;->mbPaused:Z

    return p0
.end method

.method static synthetic M(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method private M()V
    .locals 19

    move-object/from16 v0, p0

    const-string v1, "pref_super_raw_control_key"

    .line 3347
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/h;->getSupportFunction(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "raw"

    const-string v4, "none"

    const-string v5, "on"

    const-string v6, "off"

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v2, :cond_b

    .line 3348
    iget-object v2, v0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, v1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, -0x13d1de9c

    const-string v11, "super_raw"

    const/4 v12, 0x2

    if-eq v9, v10, :cond_2

    const/16 v10, 0xddf

    if-eq v9, v10, :cond_1

    const v5, 0x1ad6f

    if-eq v9, v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v2, v12

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v2, v7

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v2, v8

    :cond_3
    :goto_0
    if-eqz v2, :cond_7

    if-eq v2, v8, :cond_5

    if-eq v2, v12, :cond_4

    goto/16 :goto_1

    .line 3380
    :cond_4
    iget-object v13, v0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v14, 0x7f100320

    const/4 v15, -0x1

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-interface/range {v13 .. v18}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    .line 3381
    iget-object v1, v0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v2, Lcom/oplus/ocs/camera/CameraParameter;->RAW_CONTROL:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-interface {v1, v2, v4}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    goto :goto_1

    .line 3355
    :cond_5
    iget-object v12, v0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v13, 0x7f100322

    const/4 v14, -0x1

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-interface/range {v12 .. v17}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    .line 3356
    iget-object v1, v0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    invoke-virtual {v1, v7}, Lcom/oplus/camera/professional/g;->b(Z)V

    .line 3357
    invoke-direct {v0, v8}, Lcom/oplus/camera/professional/h;->b(Z)V

    .line 3358
    iget-object v1, v0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    invoke-virtual {v1, v8}, Lcom/oplus/camera/professional/g;->b(Z)V

    .line 3360
    iget-boolean v1, v0, Lcom/oplus/camera/professional/h;->o:Z

    if-nez v1, :cond_6

    .line 3361
    iput-boolean v8, v0, Lcom/oplus/camera/professional/h;->o:Z

    .line 3364
    :cond_6
    iget-object v1, v0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v2, Lcom/oplus/ocs/camera/CameraParameter;->RAW_CONTROL:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-interface {v1, v2, v11}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    .line 3367
    iget-object v1, v0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "standard"

    const-string v3, "pref_camera_photo_ratio_key"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3369
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 3370
    iget-object v1, v0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3372
    iget-object v1, v0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v1, :cond_8

    .line 3373
    iget-object v1, v0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    goto :goto_1

    .line 3350
    :cond_7
    iget-object v9, v0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v10, 0x7f100321

    const/4 v11, -0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface/range {v9 .. v14}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    .line 3351
    iget-object v1, v0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v2, Lcom/oplus/ocs/camera/CameraParameter;->RAW_CONTROL:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-interface {v1, v2, v3}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    .line 3388
    :cond_8
    :goto_1
    iget-object v1, v0, Lcom/oplus/camera/professional/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v1, :cond_9

    .line 3389
    iget-object v1, v0, Lcom/oplus/camera/professional/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->aH()V

    .line 3392
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/professional/h;->isSuperRawOpen()Z

    move-result v1

    if-eqz v1, :cond_a

    const-wide/32 v1, 0x77359400

    goto :goto_2

    .line 3393
    :cond_a
    iget v1, v0, Lcom/oplus/camera/professional/h;->D:I

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/h;->getCameraInfo(I)Lcom/oplus/camera/e/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/e/h;->x()J

    move-result-wide v1

    .line 3394
    :goto_2
    iget-object v3, v0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    iget v4, v0, Lcom/oplus/camera/professional/h;->D:I

    invoke-virtual {v0, v4}, Lcom/oplus/camera/professional/h;->getCameraInfo(I)Lcom/oplus/camera/e/h;

    move-result-object v4

    invoke-virtual {v3, v4, v1, v2}, Lcom/oplus/camera/professional/g;->a(Lcom/oplus/camera/e/h;J)V

    .line 3395
    iget-object v1, v0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    invoke-virtual {v1}, Lcom/oplus/camera/professional/g;->a()V

    goto :goto_3

    .line 3397
    :cond_b
    iget-object v1, v0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "pref_raw_control_key"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 3400
    iget-object v9, v0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v10, 0x7f100301

    const/4 v11, -0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface/range {v9 .. v14}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    .line 3401
    iget-object v1, v0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v2, Lcom/oplus/ocs/camera/CameraParameter;->RAW_CONTROL:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-interface {v1, v2, v3}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    goto :goto_3

    .line 3403
    :cond_c
    iget-object v9, v0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v10, 0x7f100300

    const/4 v11, -0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface/range {v9 .. v14}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    .line 3404
    iget-object v1, v0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v2, Lcom/oplus/ocs/camera/CameraParameter;->RAW_CONTROL:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-interface {v1, v2, v4}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    .line 3408
    :goto_3
    iget-object v1, v0, Lcom/oplus/camera/professional/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    const-string v1, "pref_zoom_key"

    .line 3409
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/h;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    invoke-virtual {v1}, Lcom/oplus/camera/professional/e;->isSelected()Z

    move-result v1

    if-nez v1, :cond_d

    .line 3410
    iget-object v1, v0, Lcom/oplus/camera/professional/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1, v8, v7}, Lcom/oplus/camera/capmode/a;->a(ZZ)V

    .line 3411
    iget-object v1, v0, Lcom/oplus/camera/professional/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1, v8}, Lcom/oplus/camera/capmode/a;->d(Z)V

    goto :goto_4

    .line 3413
    :cond_d
    iget-object v1, v0, Lcom/oplus/camera/professional/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1, v2, v8, v7}, Lcom/oplus/camera/capmode/a;->a(Landroid/animation/AnimatorListenerAdapter;ZZ)V

    .line 3416
    :goto_4
    invoke-direct {v0, v7, v8}, Lcom/oplus/camera/professional/h;->b(IZ)V

    .line 3418
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/professional/h;->d()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 3419
    iget-object v1, v0, Lcom/oplus/camera/professional/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->aH()V

    .line 3423
    :cond_e
    iget-object v0, v0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0, v2}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    return-void
.end method

.method static synthetic N(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method private N()V
    .locals 5

    const-string v0, "pref_focus_peaking_key"

    .line 3427
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/h;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3431
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroidx/preference/j;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "focus_peaking_clicked"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 3436
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    if-nez v1, :cond_2

    return-void

    .line 3440
    :cond_2
    iget-object v1, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v1, :cond_3

    return-void

    .line 3444
    :cond_3
    iget-object v1, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/oplus/camera/professional/g;->g(I)Z

    move-result v1

    .line 3445
    iget-object v2, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "off"

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "on"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v1, v2, :cond_4

    return-void

    .line 3451
    :cond_4
    iget-object v2, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    move-object v3, v4

    .line 3452
    :goto_0
    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3453
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic O(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method private O()V
    .locals 9

    .line 3476
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return-void

    .line 3480
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oplus/camera/professional/h;->C:Landroid/content/res/Resources;

    const v2, 0x7f10013e

    .line 3481
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "pref_professional_exposure_time_key"

    .line 3480
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3482
    iget-object v1, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/oplus/camera/professional/h;->C:Landroid/content/res/Resources;

    const v4, 0x7f10021d

    .line 3483
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "pref_professional_iso_key"

    .line 3482
    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "pref_switch_camera_key"

    .line 3485
    invoke-virtual {p0, v3}, Lcom/oplus/camera/professional/h;->getSupportFunction(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "pref_camera_flashmode_key"

    .line 3486
    invoke-virtual {p0, v5}, Lcom/oplus/camera/professional/h;->getSupportFunction(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/oplus/camera/professional/h;->C:Landroid/content/res/Resources;

    .line 3487
    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oplus/camera/professional/h;->C:Landroid/content/res/Resources;

    .line 3488
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3489
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "camera_main"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3490
    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->getFlashMode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.oplus.feature.flash.full.zoom.support"

    .line 3492
    invoke-static {v3}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v8, "off"

    if-eqz v3, :cond_4

    const-string v1, "camera_tele"

    .line 3493
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "auto"

    const-string v3, "on"

    if-eqz v0, :cond_3

    .line 3494
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3495
    :cond_1
    iput-boolean v7, p0, Lcom/oplus/camera/professional/h;->mbFlashTemporaryDisabled:Z

    .line 3496
    invoke-virtual {p0, v8}, Lcom/oplus/camera/professional/h;->updateFlashState(Ljava/lang/String;)V

    .line 3497
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v5, v8}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3500
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 3503
    :cond_3
    iput-boolean v6, p0, Lcom/oplus/camera/professional/h;->mbFlashTemporaryDisabled:Z

    .line 3504
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 3506
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v5, v4}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3507
    invoke-virtual {p0, v2}, Lcom/oplus/camera/professional/h;->updateFlashState(Ljava/lang/String;)V

    goto :goto_0

    .line 3510
    :cond_4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3511
    iput-boolean v6, p0, Lcom/oplus/camera/professional/h;->mbFlashTemporaryDisabled:Z

    .line 3512
    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/h;->updateFlashState(Ljava/lang/String;)V

    .line 3513
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v5, v4}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3515
    :cond_5
    iput-boolean v7, p0, Lcom/oplus/camera/professional/h;->mbFlashTemporaryDisabled:Z

    .line 3516
    invoke-virtual {p0, v8}, Lcom/oplus/camera/professional/h;->updateFlashState(Ljava/lang/String;)V

    .line 3517
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v5, v8}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3522
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v5}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method static synthetic P(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method private P()V
    .locals 6

    .line 3527
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    const v2, 0x7f1001bb

    .line 3528
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_flashmode_key"

    .line 3527
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    .line 3530
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3531
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oplus/camera/professional/h;->C:Landroid/content/res/Resources;

    const v2, 0x7f10013e

    .line 3532
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "pref_professional_exposure_time_key"

    .line 3531
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3533
    iget-object v1, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/oplus/camera/professional/h;->C:Landroid/content/res/Resources;

    const v4, 0x7f10021d

    .line 3534
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "pref_professional_iso_key"

    .line 3533
    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3536
    iget-object v3, p0, Lcom/oplus/camera/professional/h;->C:Landroid/content/res/Resources;

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 3537
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lcom/oplus/camera/professional/g;->setAuto(I)V

    .line 3539
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/e;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3540
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    invoke-virtual {v0, v5}, Lcom/oplus/camera/professional/e;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3543
    iget-object v5, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    invoke-virtual {v5}, Lcom/oplus/camera/professional/e;->getAdapter()Lcom/oplus/camera/professional/d;

    move-result-object v5

    invoke-virtual {v5, v0, v2, v3}, Lcom/oplus/camera/professional/d;->a(Landroid/view/View;IZ)V

    .line 3548
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->C:Landroid/content/res/Resources;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3549
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    invoke-virtual {v0, v3}, Lcom/oplus/camera/professional/g;->setAuto(I)V

    .line 3551
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/e;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3552
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    invoke-virtual {v0, v3}, Lcom/oplus/camera/professional/e;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3555
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    invoke-virtual {p0}, Lcom/oplus/camera/professional/e;->getAdapter()Lcom/oplus/camera/professional/d;

    move-result-object p0

    invoke-virtual {p0, v0, v2, v3}, Lcom/oplus/camera/professional/d;->a(Landroid/view/View;IZ)V

    :cond_1
    return-void
.end method

.method static synthetic Q(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method private Q()V
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "HSProfessionalCapMode"

    const-string v2, "updateHighResolutionMode"

    .line 3583
    invoke-static {v1, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3585
    iget-object v1, v0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v2, v0, Lcom/oplus/camera/professional/h;->C:Landroid/content/res/Resources;

    const v3, 0x7f1001e7

    .line 3586
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_high_resolution_key"

    .line 3585
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/oplus/camera/professional/h;->i:Z

    .line 3587
    new-instance v1, Lcom/oplus/camera/ui/control/b;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/oplus/camera/ui/control/b;-><init>(I)V

    const-string v3, "button_color_inside_none"

    .line 3588
    invoke-virtual {v1, v3}, Lcom/oplus/camera/ui/control/b;->a(Ljava/lang/String;)V

    .line 3590
    iget-object v3, v0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/professional/h;->getZSLMode()Z

    move-result v4

    invoke-interface {v3, v4}, Lcom/oplus/camera/e/d;->m(Z)V

    .line 3592
    iget-boolean v3, v0, Lcom/oplus/camera/professional/h;->i:Z

    if-eqz v3, :cond_3

    .line 3593
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/professional/h;->R()V

    .line 3594
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/professional/h;->S()V

    .line 3596
    iget-object v3, v0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    invoke-virtual {v3, v2}, Lcom/oplus/camera/professional/g;->setAuto(I)V

    .line 3597
    iget-object v3, v0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/oplus/camera/professional/g;->setAuto(I)V

    .line 3598
    iget-object v3, v0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/oplus/camera/professional/g;->setAuto(I)V

    .line 3599
    iget-object v3, v0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/oplus/camera/professional/g;->setAuto(I)V

    .line 3601
    iget-object v3, v0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    const/4 v5, 0x3

    .line 3603
    invoke-virtual {v3, v5}, Lcom/oplus/camera/professional/g;->c(I)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, v0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    .line 3604
    invoke-static {v7, v5}, Lcom/oplus/camera/professional/x;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    const-string v7, "pref_professional_exposure_compensation_key"

    .line 3601
    invoke-virtual {v3, v5, v7, v6}, Lcom/oplus/camera/professional/g;->a(ILjava/lang/String;I)V

    .line 3606
    invoke-virtual {v0, v2}, Lcom/oplus/camera/professional/h;->a(I)V

    .line 3607
    iget-object v3, v0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v3, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    .line 3609
    iget-object v1, v0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v1}, Lcom/oplus/camera/e/d;->p()I

    move-result v1

    if-nez v1, :cond_0

    .line 3610
    iget-object v1, v0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/professional/h;->getDefaultAFMode()I

    move-result v3

    invoke-static {}, Lcom/oplus/camera/a;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v5

    .line 3611
    invoke-static {}, Lcom/oplus/camera/a;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v6

    .line 3610
    invoke-interface {v1, v3, v5, v6, v2}, Lcom/oplus/camera/e/d;->a(I[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Z)V

    .line 3612
    iget-object v1, v0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {}, Lcom/oplus/camera/a;->c()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3613
    iget-object v1, v0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    .line 3616
    :cond_0
    iget-object v1, v0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v1}, Lcom/oplus/camera/e/d;->p()I

    move-result v1

    if-eq v2, v1, :cond_1

    iget-object v1, v0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    .line 3617
    invoke-interface {v1}, Lcom/oplus/camera/e/d;->p()I

    move-result v1

    if-ne v4, v1, :cond_2

    .line 3618
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/professional/h;->E()V

    .line 3619
    iget-object v1, v0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    invoke-virtual {v1, v4}, Lcom/oplus/camera/professional/g;->setPanelsBarAuto(I)V

    .line 3622
    :cond_2
    iget-object v5, v0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v6, 0x7f10047b

    const/4 v7, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v5 .. v10}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    goto :goto_0

    .line 3625
    :cond_3
    iget-object v11, v0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v12, 0x7f10047a

    const/4 v13, -0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-interface/range {v11 .. v16}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    .line 3627
    iget-object v0, v0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    :goto_0
    return-void
.end method

.method static synthetic R(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method private R()V
    .locals 3

    .line 3632
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    const v2, 0x7f1001bb

    .line 3633
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_flashmode_key"

    .line 3632
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    .line 3635
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3636
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3637
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3638
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3640
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/professional/h$13;

    invoke-direct {v1, p0}, Lcom/oplus/camera/professional/h$13;-><init>(Lcom/oplus/camera/professional/h;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static synthetic S(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method private S()V
    .locals 3

    .line 3654
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_raw_key"

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3656
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3657
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 3658
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3659
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method static synthetic T(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/capmode/a;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    return-object p0
.end method

.method private T()Z
    .locals 4

    .line 4062
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "off"

    const-string v2, "pref_pro_histogram_key"

    .line 4063
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "pref_subsetting_key"

    .line 4064
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/professional/h;->P:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/oplus/camera/professional/h;->Q:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic U(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method private U()V
    .locals 4

    .line 4075
    iget v0, p0, Lcom/oplus/camera/professional/h;->aa:I

    invoke-direct {p0, v0}, Lcom/oplus/camera/professional/h;->d(I)V

    .line 4077
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->y:Lcom/oplus/camera/p;

    if-nez v0, :cond_0

    .line 4078
    new-instance v0, Lcom/oplus/camera/p;

    iget-object v1, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oplus/camera/professional/h;->mCameraRootView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/oplus/camera/professional/h;->z:Lcom/oplus/camera/p$a;

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/camera/p;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/oplus/camera/p$a;)V

    iput-object v0, p0, Lcom/oplus/camera/professional/h;->y:Lcom/oplus/camera/p;

    goto :goto_0

    .line 4080
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/professional/h;->z:Lcom/oplus/camera/p$a;

    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->A()Z

    move-result v2

    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->B()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/oplus/camera/p;->a(Lcom/oplus/camera/p$a;ZZ)V

    .line 4083
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0}, Lcom/oplus/camera/e/d;->e()Lcom/oplus/camera/e/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/h;->getPreviewSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object v0

    .line 4085
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    .line 4084
    invoke-static {v1, v0}, Lcom/oplus/camera/p;->a(II)Landroid/util/Size;

    move-result-object v0

    .line 4086
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->y:Lcom/oplus/camera/p;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/p;->a(Landroid/util/Size;)V

    return-void
.end method

.method static synthetic V(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method private V()V
    .locals 1

    const/4 v0, 0x0

    .line 4090
    invoke-direct {p0, v0}, Lcom/oplus/camera/professional/h;->d(I)V

    return-void
.end method

.method static synthetic W(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic X(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/capmode/a;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    return-object p0
.end method

.method static synthetic Y(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic Z(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
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

    .line 990
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-gtz p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    .line 994
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sub-float/2addr v0, p1

    .line 995
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    move v1, v0

    move v0, p0

    .line 998
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p0, v2, :cond_2

    .line 999
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    sub-float/2addr v2, p1

    .line 1001
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v1

    if-gez v3, :cond_1

    .line 1002
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

.method private a(ILjava/util/ArrayList;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    if-eqz p2, :cond_3

    .line 969
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-gtz p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    .line 973
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sub-int/2addr v0, p1

    .line 974
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    move v1, v0

    move v0, p0

    .line 977
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p0, v2, :cond_2

    .line 978
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v2, p1

    .line 980
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v1, :cond_1

    .line 981
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

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

.method private a(JLjava/util/ArrayList;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    if-eqz p3, :cond_3

    .line 1011
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-gtz p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    .line 1015
    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 1016
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    move-wide v1, v0

    move v0, p0

    .line 1019
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p0, v3, :cond_2

    .line 1020
    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    sub-long/2addr v3, p1

    .line 1022
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    cmp-long v5, v5, v1

    if-gez v5, :cond_1

    .line 1023
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    move-wide v1, v0

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

.method static synthetic a(Lcom/oplus/camera/professional/h;I)I
    .locals 0

    .line 94
    iput p1, p0, Lcom/oplus/camera/professional/h;->Z:I

    return p1
.end method

.method private a(Lcom/oplus/camera/e/h;)Landroid/util/Size;
    .locals 6

    const-string p0, "com.oplus.default.sensor.size.scale"

    .line 742
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigSizeListValue(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 744
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 745
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v1, p0

    float-to-double v0, v1

    const-wide v2, 0x3f60624dd2f1a9fcL    # 0.002

    const-wide v4, 0x3ff5555555555555L    # 1.3333333333333333

    sub-double v4, v0, v4

    .line 747
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double p0, v2, v4

    if-gez p0, :cond_0

    const/16 p0, 0x100

    .line 748
    invoke-virtual {p1, p0}, Lcom/oplus/camera/e/h;->a(I)Ljava/util/List;

    move-result-object p0

    invoke-static {p0, v0, v1}, Lcom/oplus/camera/util/Util;->b(Ljava/util/List;D)Landroid/util/Size;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Ljava/nio/ByteOrder;)Lcom/oplus/camera/g/a/c;
    .locals 5

    .line 331
    new-instance v0, Lcom/oplus/camera/g/a/c;

    invoke-direct {v0}, Lcom/oplus/camera/g/a/c;-><init>()V

    .line 332
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/oplus/camera/g/a/c;->c:Ljava/util/ArrayList;

    .line 333
    invoke-virtual {v0, p1}, Lcom/oplus/camera/g/a/c;->a(Ljava/nio/ByteOrder;)V

    const/4 p1, 0x1

    .line 336
    new-array v1, p1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v3, 0xfe

    invoke-virtual {v0, v3, v1}, Lcom/oplus/camera/g/a/c;->a(I[I)Z

    .line 337
    new-array v1, p1, [I

    iget v3, p0, Lcom/oplus/camera/professional/h;->V:I

    aput v3, v1, v2

    const/16 v3, 0x100

    invoke-virtual {v0, v3, v1}, Lcom/oplus/camera/g/a/c;->a(I[I)Z

    .line 338
    new-array v1, p1, [I

    iget v3, p0, Lcom/oplus/camera/professional/h;->W:I

    aput v3, v1, v2

    const/16 v3, 0x101

    invoke-virtual {v0, v3, v1}, Lcom/oplus/camera/g/a/c;->a(I[I)Z

    const/4 v1, 0x3

    .line 339
    new-array v3, v1, [I

    fill-array-data v3, :array_0

    const/16 v4, 0x102

    invoke-virtual {v0, v4, v3}, Lcom/oplus/camera/g/a/c;->a(I[I)Z

    .line 340
    new-array v3, p1, [I

    const/4 v4, 0x7

    aput v4, v3, v2

    const/16 v4, 0x103

    invoke-virtual {v0, v4, v3}, Lcom/oplus/camera/g/a/c;->a(I[I)Z

    .line 341
    new-array v3, p1, [I

    const/4 v4, 0x6

    aput v4, v3, v2

    const/16 v4, 0x106

    invoke-virtual {v0, v4, v3}, Lcom/oplus/camera/g/a/c;->a(I[I)Z

    .line 343
    new-array v3, p1, [I

    aput v2, v3, v2

    const/16 v4, 0x111

    invoke-virtual {v0, v4, v3}, Lcom/oplus/camera/g/a/c;->a(I[I)Z

    .line 344
    new-array v3, p1, [I

    aput v1, v3, v2

    const/16 v1, 0x115

    invoke-virtual {v0, v1, v3}, Lcom/oplus/camera/g/a/c;->a(I[I)Z

    .line 345
    new-array v1, p1, [I

    iget v3, p0, Lcom/oplus/camera/professional/h;->W:I

    aput v3, v1, v2

    const/16 v3, 0x116

    invoke-virtual {v0, v3, v1}, Lcom/oplus/camera/g/a/c;->a(I[I)Z

    .line 346
    new-array v1, p1, [I

    iget-object p0, p0, Lcom/oplus/camera/professional/h;->R:[B

    array-length p0, p0

    aput p0, v1, v2

    const/16 p0, 0x117

    invoke-virtual {v0, p0, v1}, Lcom/oplus/camera/g/a/c;->a(I[I)Z

    .line 347
    new-array p0, p1, [I

    aput p1, p0, v2

    const/16 v1, 0x11c

    invoke-virtual {v0, v1, p0}, Lcom/oplus/camera/g/a/c;->a(I[I)Z

    .line 348
    new-array p0, p1, [I

    aput p1, p0, v2

    const/16 v1, 0x211

    invoke-virtual {v0, v1, p0}, Lcom/oplus/camera/g/a/c;->a(I[I)Z

    const/4 p0, 0x2

    .line 349
    new-array v1, p0, [I

    fill-array-data v1, :array_1

    const/16 v3, 0x212

    invoke-virtual {v0, v3, v1}, Lcom/oplus/camera/g/a/c;->a(I[I)Z

    .line 350
    new-array v1, p1, [I

    aput p0, v1, v2

    const/16 p0, 0x213

    invoke-virtual {v0, p0, v1}, Lcom/oplus/camera/g/a/c;->a(I[I)Z

    .line 351
    new-array p0, p1, [I

    aput p1, p0, v2

    const/16 p1, 0x214

    invoke-virtual {v0, p1, p0}, Lcom/oplus/camera/g/a/c;->a(I[I)Z

    return-object v0

    :array_0
    .array-data 4
        0x8
        0x8
        0x8
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x1
    .end array-data
.end method

.method static synthetic a(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method private a(II)V
    .locals 4

    .line 609
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->ag:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 610
    new-array p1, v2, [I

    aput v3, p1, v3

    aput p2, p1, v1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/professional/h;->ag:Landroid/animation/ValueAnimator;

    .line 611
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->ag:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x15e

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 612
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->ag:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/oplus/camera/professional/h;->ah:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 613
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->ag:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/oplus/camera/professional/h$18;

    invoke-direct {p2, p0}, Lcom/oplus/camera/professional/h$18;-><init>(Lcom/oplus/camera/professional/h;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 625
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->ag:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/oplus/camera/professional/h$19;

    invoke-direct {p2, p0}, Lcom/oplus/camera/professional/h$19;-><init>(Lcom/oplus/camera/professional/h;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 638
    :cond_0
    new-array v2, v2, [I

    aput p1, v2, v3

    aput p2, v2, v1

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 641
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->ag:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_1

    .line 642
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->ag:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 2

    .line 3960
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 3961
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/professional/h$15;

    invoke-direct {v1, p0, p2, p1}, Lcom/oplus/camera/professional/h$15;-><init>(Lcom/oplus/camera/professional/h;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private a(ILjava/lang/String;Z)V
    .locals 1

    .line 3888
    new-instance p3, Lcom/oplus/camera/statistics/model/MenuClickMsgData;

    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    invoke-direct {p3, v0}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 3889
    invoke-virtual {p3, v0}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->buildEvent(Z)V

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0xd

    .line 3904
    iput p1, p3, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    const-string p1, "profession_wb_value"

    .line 3905
    iput-object p1, p3, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mItem:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/16 p1, 0xe

    .line 3909
    iput p1, p3, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    const-string p1, "profession_focus_value"

    .line 3910
    iput-object p1, p3, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mItem:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/16 p1, 0xf

    .line 3914
    iput p1, p3, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    const-string p1, "profession_ev_value"

    .line 3915
    iput-object p1, p3, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mItem:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/16 p1, 0x1b

    .line 3898
    iput p1, p3, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    const-string p1, "profession_exp_time"

    .line 3899
    iput-object p1, p3, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mItem:Ljava/lang/String;

    .line 3900
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    const-string p2, "pref_professional_exposure_time_key"

    const-string v0, ""

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_4
    const/16 p1, 0x1c

    .line 3893
    iput p1, p3, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    const-string p1, "profession_ISO_value"

    .line 3894
    iput-object p1, p3, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mItem:Ljava/lang/String;

    .line 3922
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->getCameraMode()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p3, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mCaptureMode:Ljava/lang/String;

    .line 3923
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->aw()I

    move-result p1

    iput p1, p3, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mCameraId:I

    .line 3924
    iget p1, p0, Lcom/oplus/camera/professional/h;->mOrientation:I

    iput p1, p3, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mOrientation:I

    .line 3925
    iput-object p2, p3, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mItemValue:Ljava/lang/String;

    .line 3926
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->aw()I

    move-result p0

    invoke-static {p0}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "front"

    goto :goto_1

    :cond_5
    const-string p0, "rear"

    .line 3927
    :goto_1
    iput-object p0, p3, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mRearOrFront:Ljava/lang/String;

    .line 3928
    invoke-virtual {p3}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->report()V

    return-void
.end method

.method private a(IZ)V
    .locals 4

    .line 3849
    new-instance v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;

    iget-object v1, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 3850
    invoke-virtual {v0, v1}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->buildEvent(Z)V

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    if-eq p1, v1, :cond_3

    const/4 v3, 0x3

    if-eq p1, v3, :cond_2

    const/4 v3, 0x4

    if-eq p1, v3, :cond_1

    const/4 v3, 0x5

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0xd

    .line 3862
    iput p1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    goto :goto_0

    :cond_1
    const/16 p1, 0xe

    .line 3866
    iput p1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    goto :goto_0

    :cond_2
    const/16 p1, 0xf

    .line 3870
    iput p1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    goto :goto_0

    :cond_3
    const/16 p1, 0x1b

    .line 3858
    iput p1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    goto :goto_0

    :cond_4
    const/16 p1, 0x1c

    .line 3854
    iput p1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    :goto_0
    if-eqz p2, :cond_5

    move v1, v2

    .line 3877
    :cond_5
    iput v1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mFuncKeyResult:I

    .line 3879
    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->getCameraMode()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mCaptureMode:Ljava/lang/String;

    .line 3880
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->aw()I

    move-result p1

    iput p1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mCameraId:I

    .line 3881
    iget p1, p0, Lcom/oplus/camera/professional/h;->mOrientation:I

    iput p1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mOrientation:I

    .line 3882
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->aw()I

    move-result p0

    invoke-static {p0}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "front"

    goto :goto_1

    :cond_6
    const-string p0, "rear"

    .line 3883
    :goto_1
    iput-object p0, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mRearOrFront:Ljava/lang/String;

    .line 3884
    invoke-virtual {v0}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->report()V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 4

    .line 213
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 214
    iget-object v1, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->p()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 216
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 220
    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->getDefaultAFMode()I

    move-result v1

    const/4 v2, 0x4

    if-eq v0, v1, :cond_1

    .line 221
    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->getDefaultAFMode()I

    move-result v0

    if-ne v2, v0, :cond_2

    .line 222
    :cond_1
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->E()V

    .line 223
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    invoke-virtual {v0, v2}, Lcom/oplus/camera/professional/g;->setPanelsBarAuto(I)V

    .line 227
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_3

    const-string v0, "key_exposure_focus_separate_guide_animation"

    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/h;->isBubbleOpen(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 228
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->aU()Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 230
    iget-object v1, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/oplus/camera/screen/b/a;->a(Lcom/oplus/camera/ui/CameraUIInterface;II)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "HSProfessionalCapMode"

    const-string v1, "onSingleTapUp, bubble open, KEY_EXPOSURE_FOCUS_SEPARATE_TIPS"

    .line 231
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    const v1, 0x7f090299

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 v1, 0x12

    .line 234
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 233
    invoke-interface {v0, p0, v1, v2, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Landroid/view/View;III)V

    :cond_3
    return-void
.end method

.method private a(Lcom/oplus/camera/professional/e;ILcom/oplus/camera/professional/d;Lcom/oplus/camera/professional/e$b;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1278
    invoke-virtual {p1, p2}, Lcom/oplus/camera/professional/e;->setId(I)V

    .line 1279
    invoke-virtual {p1, p3}, Lcom/oplus/camera/professional/e;->setAdapter(Lcom/oplus/camera/professional/d;)V

    .line 1280
    invoke-virtual {p1, p4}, Lcom/oplus/camera/professional/e;->setOnItemClickListener(Lcom/oplus/camera/professional/e$b;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/professional/h;II)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/professional/h;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/professional/h;ILjava/lang/String;Z)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/professional/h;->a(ILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/professional/h;IZ)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/professional/h;->b(IZ)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/professional/h;ZI)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/professional/h;->a(ZI)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/professional/h;ZLjava/lang/String;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/professional/h;->a(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/professional/h;ZZ)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/professional/h;->b(ZZ)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/professional/h;ZZZ)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/professional/h;->a(ZZZ)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 5

    const v0, 0x7f10021d

    const-string v1, "pref_professional_iso_key"

    if-nez p1, :cond_0

    .line 3028
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/oplus/camera/professional/h;->C:Landroid/content/res/Resources;

    .line 3029
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3028
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3034
    :cond_0
    iget-object v2, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/oplus/camera/professional/h;->C:Landroid/content/res/Resources;

    .line 3035
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3034
    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3035
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3036
    iget-object v2, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 3037
    iget-object v3, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    const/4 v4, 0x1

    .line 3038
    invoke-static {v3, v4}, Lcom/oplus/camera/professional/x;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 3037
    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3039
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3042
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/professional/h;->C:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3043
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v1, -0x1

    invoke-interface {v0, v1, p2}, Lcom/oplus/camera/e/d;->b(IZ)V

    goto :goto_0

    .line 3045
    :cond_2
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->R()V

    .line 3046
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0}, Lcom/oplus/camera/e/d;->r()V

    .line 3047
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1, p2}, Lcom/oplus/camera/e/d;->b(IZ)V

    .line 3050
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setISOValue, iso: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HSProfessionalCapMode"

    invoke-static {p2, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x7

    .line 3052
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/h;->a(I)V

    const/16 p1, 0x8

    .line 3053
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/h;->a(I)V

    return-void
.end method

.method private a(ZI)V
    .locals 1

    .line 2930
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    if-nez v0, :cond_0

    return-void

    .line 2934
    :cond_0
    invoke-virtual {v0, p2}, Lcom/oplus/camera/professional/e;->a(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 2937
    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 2939
    instance-of v0, p2, Lcom/oplus/camera/professional/y;

    if-eqz v0, :cond_1

    .line 2940
    move-object v0, p2

    check-cast v0, Lcom/oplus/camera/professional/y;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/professional/y;->setRotateViewClickable(Z)V

    .line 2943
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    invoke-virtual {p0}, Lcom/oplus/camera/professional/e;->getAdapter()Lcom/oplus/camera/professional/d;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p2, p1, v0}, Lcom/oplus/camera/professional/d;->b(Landroid/view/View;ZZ)V

    :cond_2
    return-void
.end method

.method private a(ZLjava/lang/String;)V
    .locals 3

    .line 1787
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_switch_camera_key"

    const-string v2, "camera_main"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 1790
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    invoke-virtual {p0, v0, p2}, Lcom/oplus/camera/professional/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1792
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    invoke-virtual {p0, v0, p2}, Lcom/oplus/camera/professional/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private a(ZZ)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 3167
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "showOrHideFlashIcon, enable: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isOpenFlash: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->isOpenFlash()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "HSProfessionalCapMode"

    invoke-static {v0, p2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 3170
    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->displayScreenHintIconInSwitchOn()V

    goto :goto_0

    .line 3172
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-interface {p0, p2, p1, p2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    :goto_0
    return-void
.end method

.method private a(ZZZ)V
    .locals 3

    .line 4133
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/oplus/camera/professional/h;->y:Lcom/oplus/camera/p;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string v0, "pref_pro_histogram_key"

    .line 4137
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/h;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 4141
    :cond_1
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->T()Z

    move-result v0

    .line 4143
    iget-object v1, p0, Lcom/oplus/camera/professional/h;->y:Lcom/oplus/camera/p;

    invoke-virtual {v1}, Lcom/oplus/camera/p;->b()Z

    move-result v1

    if-ne v0, v1, :cond_2

    return-void

    .line 4147
    :cond_2
    iget v1, p0, Lcom/oplus/camera/professional/h;->aa:I

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    if-nez p3, :cond_3

    .line 4148
    iput v2, p0, Lcom/oplus/camera/professional/h;->aa:I

    .line 4149
    invoke-direct {p0, v2}, Lcom/oplus/camera/professional/h;->d(I)V

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_4

    .line 4151
    iget p3, p0, Lcom/oplus/camera/professional/h;->aa:I

    invoke-direct {p0, p3}, Lcom/oplus/camera/professional/h;->d(I)V

    .line 4154
    :cond_4
    :goto_0
    new-instance p3, Lcom/oplus/camera/professional/u$a;

    invoke-direct {p3}, Lcom/oplus/camera/professional/u$a;-><init>()V

    .line 4155
    iput-boolean v0, p3, Lcom/oplus/camera/professional/u$a;->a:Z

    const/16 v1, 0xfa

    if-eqz p1, :cond_6

    if-eqz v0, :cond_5

    move v2, v1

    .line 4158
    :cond_5
    iput v2, p3, Lcom/oplus/camera/professional/u$a;->b:I

    .line 4160
    iput v1, p3, Lcom/oplus/camera/professional/u$a;->c:I

    goto :goto_3

    :cond_6
    if-eqz p2, :cond_a

    .line 4162
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070997

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const/16 p2, 0x1f4

    if-eqz v0, :cond_7

    move v1, p2

    .line 4164
    :cond_7
    iput v1, p3, Lcom/oplus/camera/professional/u$a;->c:I

    .line 4166
    iput p2, p3, Lcom/oplus/camera/professional/u$a;->g:I

    const/4 p2, 0x0

    if-eqz v0, :cond_8

    int-to-float v1, p1

    goto :goto_1

    :cond_8
    move v1, p2

    .line 4167
    :goto_1
    iput v1, p3, Lcom/oplus/camera/professional/u$a;->d:F

    if-eqz v0, :cond_9

    goto :goto_2

    :cond_9
    int-to-float p2, p1

    .line 4168
    :goto_2
    iput p2, p3, Lcom/oplus/camera/professional/u$a;->e:F

    :cond_a
    :goto_3
    if-eqz v0, :cond_b

    .line 4172
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->y:Lcom/oplus/camera/p;

    invoke-virtual {p0, p3}, Lcom/oplus/camera/p;->a(Lcom/oplus/camera/professional/u$a;)V

    goto :goto_4

    .line 4174
    :cond_b
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->y:Lcom/oplus/camera/p;

    invoke-virtual {p0, p3}, Lcom/oplus/camera/p;->b(Lcom/oplus/camera/professional/u$a;)V

    :cond_c
    :goto_4
    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/professional/h;Ljava/lang/String;)Z
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/oplus/camera/professional/h;->b(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/oplus/camera/professional/h;Z)Z
    .locals 0

    .line 94
    iput-boolean p1, p0, Lcom/oplus/camera/professional/h;->U:Z

    return p1
.end method

.method static synthetic aA(Lcom/oplus/camera/professional/h;)Z
    .locals 0

    .line 94
    iget-boolean p0, p0, Lcom/oplus/camera/professional/h;->mbPaused:Z

    return p0
.end method

.method static synthetic aB(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic aC(Lcom/oplus/camera/professional/h;)Z
    .locals 0

    .line 94
    iget-boolean p0, p0, Lcom/oplus/camera/professional/h;->mbCapModeInit:Z

    return p0
.end method

.method static synthetic aD(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/capmode/a;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    return-object p0
.end method

.method static synthetic aE(Lcom/oplus/camera/professional/h;)Z
    .locals 0

    .line 94
    iget-boolean p0, p0, Lcom/oplus/camera/professional/h;->j:Z

    return p0
.end method

.method static synthetic aF(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/capmode/a;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    return-object p0
.end method

.method static synthetic aa(Lcom/oplus/camera/professional/h;)Z
    .locals 0

    .line 94
    iget-boolean p0, p0, Lcom/oplus/camera/professional/h;->i:Z

    return p0
.end method

.method static synthetic ab(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic ac(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic ad(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic ae(Lcom/oplus/camera/professional/h;)Z
    .locals 0

    .line 94
    iget-boolean p0, p0, Lcom/oplus/camera/professional/h;->mbPaused:Z

    return p0
.end method

.method static synthetic af(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic ag(Lcom/oplus/camera/professional/h;)Landroid/content/res/Resources;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->C:Landroid/content/res/Resources;

    return-object p0
.end method

.method static synthetic ah(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic ai(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic aj(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic ak(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic al(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic am(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic an(Lcom/oplus/camera/professional/h;)Z
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->z()Z

    move-result p0

    return p0
.end method

.method static synthetic ao(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic ap(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/e/d;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    return-object p0
.end method

.method static synthetic aq(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/e/d;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    return-object p0
.end method

.method static synthetic ar(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/e/d;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    return-object p0
.end method

.method static synthetic as(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/capmode/a;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    return-object p0
.end method

.method static synthetic at(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/capmode/a;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    return-object p0
.end method

.method static synthetic au(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/e/d;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    return-object p0
.end method

.method static synthetic av(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/capmode/a;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    return-object p0
.end method

.method static synthetic aw(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic ax(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic ay(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic az(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic b(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method private b(I)V
    .locals 2

    .line 2192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCameraMenuControlViewVisibility, visibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HSProfessionalCapMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2194
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2195
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->g(I)V

    .line 2196
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->f(I)V

    .line 2197
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->c(I)V

    .line 2198
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, p1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->b(IZ)V

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v0

    .line 2201
    :goto_0
    iput-boolean p1, p0, Lcom/oplus/camera/professional/h;->Q:Z

    .line 2202
    invoke-direct {p0, v0}, Lcom/oplus/camera/professional/h;->d(Z)V

    .line 2203
    invoke-direct {p0, v0, v0, v1}, Lcom/oplus/camera/professional/h;->a(ZZZ)V

    return-void
.end method

.method private b(IZ)V
    .locals 1

    .line 4038
    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->isPanelMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4039
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, p1, p2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IZ)V

    goto :goto_0

    .line 4041
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, p1, p2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(II)V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/professional/h;I)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/oplus/camera/professional/h;->d(I)V

    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/professional/h;ZZ)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/professional/h;->a(ZZ)V

    return-void
.end method

.method private b(Ljava/lang/String;Z)V
    .locals 4

    .line 3119
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 3120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFlashModeMenuEnable, exposureTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mDisPlayFlashIcon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HSProfessionalCapMode"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3122
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3124
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "pref_camera_flashmode_key"

    if-nez v1, :cond_0

    .line 3125
    :try_start_1
    iget-object v1, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v1, :cond_1

    .line 3126
    iget-object v1, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 3127
    invoke-direct {p0, v1, p2}, Lcom/oplus/camera/professional/h;->a(ZZ)V

    goto :goto_0

    .line 3130
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 3131
    invoke-direct {p0, v1, p2}, Lcom/oplus/camera/professional/h;->a(ZZ)V

    .line 3132
    iget-object p2, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const-string v1, "off"

    invoke-interface {p2, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 3137
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 3139
    iget-object p2, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    if-eqz p2, :cond_1

    .line 3140
    iget-object p2, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/professional/h$11;

    invoke-direct {v1, p0, p1, v0}, Lcom/oplus/camera/professional/h$11;-><init>(Lcom/oplus/camera/professional/h;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p2, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private b(Z)V
    .locals 0

    .line 1318
    invoke-direct {p0, p1}, Lcom/oplus/camera/professional/h;->c(Z)V

    const/4 p1, 0x3

    .line 1319
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/h;->a(I)V

    const/4 p1, 0x0

    .line 1321
    iput-boolean p1, p0, Lcom/oplus/camera/professional/h;->E:Z

    .line 1322
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "pref_restore_professional_params"

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private b(ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 4129
    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/camera/professional/h;->a(ZZZ)V

    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/professional/h;Ljava/lang/String;)Z
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/oplus/camera/professional/h;->c(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/oplus/camera/professional/h;Z)Z
    .locals 0

    .line 94
    iput-boolean p1, p0, Lcom/oplus/camera/professional/h;->Q:Z

    return p1
.end method

.method private b(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_0

    const-wide/32 v0, 0x3b9aca00

    .line 2060
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic c(Lcom/oplus/camera/professional/h;I)I
    .locals 0

    .line 94
    iput p1, p0, Lcom/oplus/camera/professional/h;->aa:I

    return p1
.end method

.method private declared-synchronized c(I)V
    .locals 9

    monitor-enter p0

    .line 2440
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/g;->d()V

    .line 2442
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/h;->getCameraInfo(I)Lcom/oplus/camera/e/h;

    move-result-object p1

    .line 2444
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->u()I

    move-result v1

    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->v()I

    move-result v2

    .line 2445
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->w()I

    move-result v3

    iget-object v4, p0, Lcom/oplus/camera/professional/h;->A:Landroid/os/Handler;

    .line 2444
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/oplus/camera/professional/g;->a(IIILandroid/os/Handler;)V

    .line 2448
    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->isSuperRawOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x77359400

    goto :goto_0

    .line 2449
    :cond_0
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->x()J

    move-result-wide v0

    :goto_0
    move-wide v3, v0

    .line 2451
    iget-object v2, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->y()J

    move-result-wide v5

    const/16 v0, 0x100

    .line 2452
    invoke-virtual {p1, v0}, Lcom/oplus/camera/e/h;->a(I)Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/oplus/camera/professional/h;->A:Landroid/os/Handler;

    .line 2451
    invoke-virtual/range {v2 .. v8}, Lcom/oplus/camera/professional/g;->a(JJLjava/util/List;Landroid/os/Handler;)V

    .line 2455
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->B()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/professional/h;->A:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/professional/g;->a(Ljava/util/List;Landroid/os/Handler;)V

    .line 2458
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->n()F

    move-result v1

    .line 2459
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->m()F

    move-result v2

    iget-object v3, p0, Lcom/oplus/camera/professional/h;->A:Landroid/os/Handler;

    .line 2458
    invoke-virtual {v0, v1, v2, v3}, Lcom/oplus/camera/professional/g;->a(FFLandroid/os/Handler;)V

    .line 2462
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->p()I

    move-result v1

    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->q()I

    move-result v2

    .line 2463
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->r()F

    move-result p1

    iget-object v3, p0, Lcom/oplus/camera/professional/h;->A:Landroid/os/Handler;

    .line 2462
    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/oplus/camera/professional/g;->a(IIFLandroid/os/Handler;)V

    .line 2465
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    invoke-virtual {p1}, Lcom/oplus/camera/professional/g;->e()V

    .line 2467
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    invoke-virtual {p1}, Lcom/oplus/camera/professional/e;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2468
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    invoke-virtual {p1}, Lcom/oplus/camera/professional/e;->getSelectedIndex()I

    move-result p1

    .line 2469
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/professional/g;->f(I)V

    .line 2472
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    invoke-virtual {p1}, Lcom/oplus/camera/professional/g;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2473
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic c(Lcom/oplus/camera/professional/h;Z)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/oplus/camera/professional/h;->d(Z)V

    return-void
.end method

.method private c(Z)V
    .locals 4

    .line 1421
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    if-nez v0, :cond_0

    return-void

    .line 1425
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1426
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->C:Landroid/content/res/Resources;

    const v1, 0x7f10021d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/oplus/camera/professional/h;->a(Ljava/lang/String;Z)V

    .line 1427
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->C:Landroid/content/res/Resources;

    const v1, 0x7f10013e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1428
    iget-object v3, p0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v3, v0, v1}, Lcom/oplus/camera/e/d;->a(J)V

    .line 1429
    iget-object v3, p0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v3, v0, v1, v2}, Lcom/oplus/camera/e/d;->a(JZ)V

    .line 1430
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->G()V

    .line 1432
    iget-boolean v0, p0, Lcom/oplus/camera/professional/h;->E:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->z()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1435
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->c()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    .line 1433
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {}, Lcom/oplus/camera/a;->c()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1438
    :goto_1
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0, v2}, Lcom/oplus/camera/e/d;->i(Z)V

    if-eqz p1, :cond_3

    .line 1441
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    .line 1444
    :cond_3
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->F()V

    .line 1445
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->H()V

    .line 1447
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/oplus/camera/professional/h$20;

    invoke-direct {v0, p0}, Lcom/oplus/camera/professional/h$20;-><init>(Lcom/oplus/camera/professional/h;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic c(Lcom/oplus/camera/professional/h;)Z
    .locals 0

    .line 94
    iget-boolean p0, p0, Lcom/oplus/camera/professional/h;->mbPaused:Z

    return p0
.end method

.method static synthetic c(Lcom/oplus/camera/professional/h;Ljava/lang/String;)Z
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/oplus/camera/professional/h;->d(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 2065
    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->isSuperRawOpen()Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/32 v0, 0x3b9aca00

    .line 2066
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic d(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/h;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->u:Lcom/oplus/camera/ui/h;

    return-object p0
.end method

.method private d(I)V
    .locals 7

    .line 4094
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateHistogramLayoutConfigs, offsetY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HSProfessionalCapMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4096
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070999

    .line 4097
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f070998

    .line 4098
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x7f070614

    .line 4099
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v5, 0x7f070613

    .line 4100
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 4102
    iget v5, p0, Lcom/oplus/camera/professional/h;->mOrientation:I

    rem-int/lit16 v5, v5, 0xb4

    if-nez v5, :cond_0

    add-int/2addr v2, p1

    goto :goto_0

    :cond_0
    const/16 v5, 0x5a

    .line 4104
    iget v6, p0, Lcom/oplus/camera/professional/h;->mOrientation:I

    if-ne v5, v6, :cond_1

    add-int/2addr v3, p1

    .line 4108
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->z:Lcom/oplus/camera/p$a;

    if-nez p1, :cond_2

    .line 4109
    new-instance p1, Lcom/oplus/camera/p$a;

    invoke-direct {p1}, Lcom/oplus/camera/p$a;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/professional/h;->z:Lcom/oplus/camera/p$a;

    .line 4110
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->z:Lcom/oplus/camera/p$a;

    const/16 v5, 0xa

    iput v5, p1, Lcom/oplus/camera/p$a;->a:I

    .line 4113
    :cond_2
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->p()I

    move-result p1

    .line 4115
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateHistogramLayoutConfigs, previewMarginTop: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4117
    iget p1, p0, Lcom/oplus/camera/professional/h;->mOrientation:I

    rem-int/lit16 p1, p1, 0xb4

    if-nez p1, :cond_3

    .line 4118
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->z:Lcom/oplus/camera/p$a;

    iget v0, p0, Lcom/oplus/camera/professional/h;->ad:I

    add-int/2addr v0, v2

    iput v0, p1, Lcom/oplus/camera/p$a;->b:I

    .line 4119
    iput v3, p1, Lcom/oplus/camera/p$a;->d:I

    .line 4120
    iget p0, p0, Lcom/oplus/camera/professional/h;->mOrientation:I

    iput p0, p1, Lcom/oplus/camera/p$a;->e:I

    goto :goto_1

    .line 4122
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->z:Lcom/oplus/camera/p$a;

    sub-int v1, v4, v0

    div-int/lit8 v1, v1, 0x2

    iget v5, p0, Lcom/oplus/camera/professional/h;->ad:I

    add-int/2addr v1, v5

    add-int/2addr v1, v2

    iput v1, p1, Lcom/oplus/camera/p$a;->b:I

    sub-int/2addr v0, v4

    .line 4123
    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v3

    iput v0, p1, Lcom/oplus/camera/p$a;->d:I

    .line 4124
    iget p0, p0, Lcom/oplus/camera/professional/h;->mOrientation:I

    add-int/lit16 p0, p0, 0xb4

    rem-int/lit16 p0, p0, 0x168

    iput p0, p1, Lcom/oplus/camera/p$a;->e:I

    :goto_1
    return-void
.end method

.method static synthetic d(Lcom/oplus/camera/professional/h;I)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/oplus/camera/professional/h;->b(I)V

    return-void
.end method

.method private d(Z)V
    .locals 10

    .line 1668
    iget-boolean v0, p0, Lcom/oplus/camera/professional/h;->mbModePreInit:Z

    if-nez v0, :cond_0

    return-void

    .line 1672
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_subsetting_key"

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    .line 1673
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1674
    iget-boolean v0, p0, Lcom/oplus/camera/professional/h;->P:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oplus/camera/professional/h;->Q:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1676
    :goto_0
    iget-object v2, p0, Lcom/oplus/camera/professional/h;->G:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz v2, :cond_5

    if-eqz p1, :cond_3

    if-eqz v0, :cond_2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0xfa

    const-wide/16 v7, 0xfa

    .line 1679
    sget-object v9, Lcom/oplus/camera/professional/t;->a:Landroid/view/animation/PathInterpolator;

    invoke-static/range {v2 .. v9}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;JJLandroid/view/animation/Interpolator;)V

    goto :goto_2

    :cond_2
    const/4 v3, 0x4

    const/4 v4, 0x0

    const-wide/16 v5, 0xfa

    const-wide/16 v7, 0x0

    .line 1684
    sget-object v9, Lcom/oplus/camera/professional/t;->a:Landroid/view/animation/PathInterpolator;

    invoke-static/range {v2 .. v9}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;JJLandroid/view/animation/Interpolator;)V

    goto :goto_2

    .line 1690
    :cond_3
    invoke-virtual {v2}, Lcom/oplus/camera/ui/RotateImageView;->clearAnimation()V

    .line 1691
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->G:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x4

    :goto_1
    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    .line 1692
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->G:Lcom/oplus/camera/ui/RotateImageView;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/RotateImageView;->setAlpha(F)V

    :cond_5
    :goto_2
    return-void
.end method

.method private d(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 2071
    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->isSuperRawOpen()Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/32 v0, 0x1dcd6500

    .line 2072
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic e(Lcom/oplus/camera/professional/h;)I
    .locals 0

    .line 94
    iget p0, p0, Lcom/oplus/camera/professional/h;->mOrientation:I

    return p0
.end method

.method private e()V
    .locals 12

    .line 283
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->S:Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;

    invoke-virtual {v0}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getImage()[B

    move-result-object v0

    .line 284
    invoke-static {v0}, Lcom/oplus/camera/g/a/e;->a([B)Lcom/oplus/camera/g/a/e;

    move-result-object v1

    .line 285
    iget-wide v2, p0, Lcom/oplus/camera/professional/h;->mCaptureDate:J

    const-wide/16 v4, 0xa

    sub-long v10, v2, v4

    .line 287
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveResultToDng, mRawPreviewJpeg : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/camera/professional/h;->R:[B

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HSProfessionalCapMode"

    invoke-static {v3, v2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    .line 290
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->R:[B

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, v1, Lcom/oplus/camera/g/a/e;->f:Lcom/oplus/camera/g/a/c;

    invoke-virtual {v1, v0, v10, v11}, Lcom/oplus/camera/g/a/e;->a(Lcom/oplus/camera/g/a/c;J)V

    .line 292
    invoke-virtual {v1}, Lcom/oplus/camera/g/a/e;->b()V

    .line 293
    iget-object v0, v1, Lcom/oplus/camera/g/a/e;->f:Lcom/oplus/camera/g/a/c;

    iget-object v2, p0, Lcom/oplus/camera/professional/h;->ae:[B

    invoke-virtual {v0, v2}, Lcom/oplus/camera/g/a/c;->a([B)V

    .line 294
    iget-object v0, v1, Lcom/oplus/camera/g/a/e;->f:Lcom/oplus/camera/g/a/c;

    const/16 v2, 0x100

    invoke-virtual {v0, v2}, Lcom/oplus/camera/g/a/c;->b(I)Lcom/oplus/camera/g/a/b;

    move-result-object v0

    new-array v2, v4, [I

    iget v3, p0, Lcom/oplus/camera/professional/h;->X:I

    aput v3, v2, v5

    .line 295
    invoke-virtual {v0, v2}, Lcom/oplus/camera/g/a/b;->a([I)V

    .line 296
    iget-object v0, v1, Lcom/oplus/camera/g/a/e;->f:Lcom/oplus/camera/g/a/c;

    const/16 v2, 0x101

    invoke-virtual {v0, v2}, Lcom/oplus/camera/g/a/c;->b(I)Lcom/oplus/camera/g/a/b;

    move-result-object v0

    new-array v2, v4, [I

    iget v3, p0, Lcom/oplus/camera/professional/h;->Y:I

    aput v3, v2, v5

    .line 297
    invoke-virtual {v0, v2}, Lcom/oplus/camera/g/a/b;->a([I)V

    .line 298
    iget-object v0, v1, Lcom/oplus/camera/g/a/e;->f:Lcom/oplus/camera/g/a/c;

    const/16 v2, 0x106

    invoke-virtual {v0, v2}, Lcom/oplus/camera/g/a/c;->b(I)Lcom/oplus/camera/g/a/b;

    move-result-object v0

    new-array v2, v4, [I

    iget v3, p0, Lcom/oplus/camera/professional/h;->Y:I

    aput v3, v2, v5

    .line 299
    invoke-virtual {v0, v2}, Lcom/oplus/camera/g/a/b;->a([I)V

    .line 300
    iget-object v0, v1, Lcom/oplus/camera/g/a/e;->a:Ljava/nio/ByteOrder;

    invoke-direct {p0, v0}, Lcom/oplus/camera/professional/h;->a(Ljava/nio/ByteOrder;)Lcom/oplus/camera/g/a/c;

    move-result-object v0

    .line 301
    iget-object v2, p0, Lcom/oplus/camera/professional/h;->R:[B

    invoke-virtual {v0, v2}, Lcom/oplus/camera/g/a/c;->a([B)V

    .line 302
    iget-object v2, v1, Lcom/oplus/camera/g/a/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    iget-object v2, v1, Lcom/oplus/camera/g/a/e;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    :cond_1
    invoke-virtual {v1}, Lcom/oplus/camera/g/a/e;->a()V

    .line 307
    iget-object v0, v1, Lcom/oplus/camera/g/a/e;->f:Lcom/oplus/camera/g/a/c;

    invoke-virtual {v1, v0, v10, v11}, Lcom/oplus/camera/g/a/e;->a(Lcom/oplus/camera/g/a/c;J)V

    .line 308
    iget-object v0, v1, Lcom/oplus/camera/g/a/e;->g:Lcom/oplus/camera/g/a/c;

    invoke-virtual {v1, v0, v10, v11}, Lcom/oplus/camera/g/a/e;->a(Lcom/oplus/camera/g/a/c;J)V

    .line 309
    invoke-virtual {v1}, Lcom/oplus/camera/g/a/e;->d()V

    .line 310
    iget-object v0, v1, Lcom/oplus/camera/g/a/e;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    :cond_2
    move-object v8, v0

    const/4 v0, 0x0

    .line 314
    iput-object v0, p0, Lcom/oplus/camera/professional/h;->R:[B

    .line 315
    iget-object v1, p0, Lcom/oplus/camera/professional/h;->S:Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;

    invoke-virtual {v1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getFormat()I

    move-result v9

    .line 316
    iget-object v1, p0, Lcom/oplus/camera/professional/h;->S:Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;

    invoke-virtual {v1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getTimestamp()J

    .line 317
    iput-object v0, p0, Lcom/oplus/camera/professional/h;->S:Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;

    .line 319
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 320
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/professional/h$1;

    move-object v6, v1

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/oplus/camera/professional/h$1;-><init>(Lcom/oplus/camera/professional/h;[BIJ)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method static synthetic e(Lcom/oplus/camera/professional/h;I)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/oplus/camera/professional/h;->c(I)V

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 3021
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/professional/h;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private e(Z)V
    .locals 4

    .line 2993
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oplus/camera/professional/h;->C:Landroid/content/res/Resources;

    const v2, 0x7f10050a

    .line 2994
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "pref_professional_whitebalance_key"

    .line 2993
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2996
    iget-object v1, p0, Lcom/oplus/camera/professional/h;->C:Landroid/content/res/Resources;

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2997
    iget-object v1, p0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v2, -0x1

    invoke-interface {v1, v2, p1}, Lcom/oplus/camera/e/d;->a(IZ)V

    .line 3000
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/oplus/camera/professional/g;->c(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/professional/h;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3002
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2, p1}, Lcom/oplus/camera/e/d;->a(IZ)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3004
    :catch_0
    iget-object v1, p0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v1, p1}, Lcom/oplus/camera/e/d;->i(Z)V

    goto :goto_0

    .line 3007
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v1, p1}, Lcom/oplus/camera/e/d;->i(Z)V

    .line 3010
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWhiteBalance, whiteBalance: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HSProfessionalCapMode"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x8

    .line 3012
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/h;->a(I)V

    return-void
.end method

.method static synthetic f(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/p;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->y:Lcom/oplus/camera/p;

    return-object p0
.end method

.method private f()V
    .locals 2

    .line 356
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 357
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/professional/h;->R:[B

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/oplus/camera/professional/h;->T:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 360
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->e()V

    return-void

    .line 358
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 360
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private f(Z)V
    .locals 5

    .line 3097
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oplus/camera/professional/h;->C:Landroid/content/res/Resources;

    const v2, 0x7f10013e

    .line 3098
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "pref_professional_exposure_time_key"

    .line 3097
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3099
    iget-object v1, p0, Lcom/oplus/camera/professional/h;->C:Landroid/content/res/Resources;

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 3100
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    .line 3103
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->R()V

    .line 3107
    :cond_0
    iget-boolean v0, p0, Lcom/oplus/camera/professional/h;->mbFrontCamera:Z

    if-eqz v0, :cond_1

    .line 3108
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0, v1, v2, p1}, Lcom/oplus/camera/e/d;->a(JZ)V

    goto :goto_0

    .line 3110
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0, v3, v4, p1}, Lcom/oplus/camera/e/d;->a(JZ)V

    :goto_0
    const/4 p1, 0x5

    .line 3113
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/h;->a(I)V

    const/4 p1, 0x7

    .line 3114
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/h;->a(I)V

    const/16 p1, 0x8

    .line 3115
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/h;->a(I)V

    return-void
.end method

.method static synthetic g(Lcom/oplus/camera/professional/h;)I
    .locals 0

    .line 94
    iget p0, p0, Lcom/oplus/camera/professional/h;->Z:I

    return p0
.end method

.method private g()V
    .locals 2

    .line 536
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->k()Lcom/oplus/camera/ui/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 539
    new-instance v1, Lcom/oplus/camera/professional/h$17;

    invoke-direct {v1, p0}, Lcom/oplus/camera/professional/h$17;-><init>(Lcom/oplus/camera/professional/h;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/a/a;->a(Lcom/oplus/camera/ui/a/a$b;)V

    :cond_0
    return-void
.end method

.method private g(Z)V
    .locals 4

    const/4 v0, 0x1

    const-string v1, "off"

    if-eqz p1, :cond_0

    .line 3566
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    const v3, 0x7f1001bb

    .line 3567
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_flashmode_key"

    .line 3566
    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3568
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr v0, p1

    .line 3571
    :cond_0
    iget-boolean p1, p0, Lcom/oplus/camera/professional/h;->i:Z

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 3572
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "pref_high_resolution_key"

    .line 3573
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3574
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3575
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic h(Lcom/oplus/camera/professional/h;)Landroid/app/Activity;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method private h()Z
    .locals 1

    const-string v0, "pref_parameter_saving"

    .line 876
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/h;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_focus_peaking_key"

    .line 877
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/h;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic i(Lcom/oplus/camera/professional/h;)Landroid/widget/TextView;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->af:Landroid/widget/TextView;

    return-object p0
.end method

.method private i()Ljava/lang/String;
    .locals 2

    .line 929
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "-1"

    if-nez v0, :cond_0

    goto :goto_0

    .line 931
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "pref_professional_exposure_time_key"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private j()J
    .locals 2

    .line 938
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lcom/oplus/camera/professional/h;->C:Landroid/content/res/Resources;

    const v1, 0x7f10013e

    .line 939
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "pref_professional_exposure_time_key"

    .line 938
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 940
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic j(Lcom/oplus/camera/professional/h;)Landroid/app/Activity;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic k(Lcom/oplus/camera/professional/h;)Landroid/content/SharedPreferences;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method private k()V
    .locals 6

    .line 1285
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_3

    .line 1286
    iget-boolean v0, p0, Lcom/oplus/camera/professional/h;->i:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1287
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    iget-object v2, p0, Lcom/oplus/camera/professional/h;->C:Landroid/content/res/Resources;

    const v3, 0x7f10013e

    .line 1288
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1287
    invoke-interface {v0, v4, v5}, Lcom/oplus/camera/e/d;->a(J)V

    .line 1289
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    iget-object v2, p0, Lcom/oplus/camera/professional/h;->C:Landroid/content/res/Resources;

    .line 1290
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1289
    invoke-interface {v0, v2, v3, v1}, Lcom/oplus/camera/e/d;->a(JZ)V

    goto :goto_2

    .line 1292
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x5

    invoke-static {v0, v2}, Lcom/oplus/camera/professional/x;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 1294
    iget-object v2, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "pref_professional_whitebalance_key"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1295
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1296
    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/h;->a(Z)V

    goto :goto_0

    .line 1298
    :cond_1
    invoke-direct {p0, v1}, Lcom/oplus/camera/professional/h;->e(Z)V

    :goto_0
    const/4 v0, 0x0

    .line 1301
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/h;->a(Ljava/lang/String;)V

    .line 1303
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->z()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1304
    iget-object v2, p0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {}, Lcom/oplus/camera/a;->c()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    .line 1306
    :cond_2
    iget-object v2, p0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->c()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1309
    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/professional/h;->a(Ljava/lang/String;Z)V

    .line 1310
    invoke-direct {p0, v1}, Lcom/oplus/camera/professional/h;->f(Z)V

    :goto_2
    const/4 v0, 0x3

    .line 1313
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/h;->a(I)V

    :cond_3
    return-void
.end method

.method static synthetic l(Lcom/oplus/camera/professional/h;)I
    .locals 0

    .line 94
    iget p0, p0, Lcom/oplus/camera/professional/h;->mOrientation:I

    return p0
.end method

.method private declared-synchronized l()V
    .locals 4

    monitor-enter p0

    .line 1460
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/professional/g;->scrollTo(II)V

    .line 1461
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/professional/g;->scrollTo(II)V

    .line 1462
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/professional/g;->scrollTo(II)V

    .line 1463
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/professional/g;->scrollTo(II)V

    .line 1465
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/g;->d(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1466
    iget-object v2, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    invoke-virtual {v2, v1}, Lcom/oplus/camera/professional/g;->c(I)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    .line 1467
    invoke-static {v3, v1}, Lcom/oplus/camera/professional/x;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 1466
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 1468
    iget-object v3, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    invoke-virtual {v3, v1, v2}, Lcom/oplus/camera/professional/g;->scrollTo(II)V

    if-eqz v0, :cond_0

    .line 1470
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v2, :cond_0

    .line 1471
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1472
    invoke-direct {p0, v1, v0}, Lcom/oplus/camera/professional/h;->a(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1474
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic m(Lcom/oplus/camera/professional/h;)I
    .locals 0

    .line 94
    iget p0, p0, Lcom/oplus/camera/professional/h;->ac:I

    return p0
.end method

.method private m()V
    .locals 5

    .line 1477
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    if-nez v0, :cond_1

    .line 1478
    new-instance v0, Lcom/oplus/camera/professional/e;

    iget-object v1, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->b()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/oplus/camera/professional/e;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    .line 1479
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    iget-object v1, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/e;->setPanelInterface(Lcom/oplus/camera/professional/q;)V

    .line 1480
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/e;->setVisibility(I)V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 1481
    iget-object v2, p0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v2}, Lcom/oplus/camera/e/d;->e()Lcom/oplus/camera/e/h;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oplus/camera/professional/h;->getTargetPreviewRatio(Lcom/oplus/camera/e/h;)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 1482
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/e;->setBackgroundResource(I)V

    goto :goto_0

    .line 1484
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    const v1, 0x7f0804dc

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/e;->setBackgroundResource(I)V

    .line 1487
    :goto_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Lcom/oplus/camera/professional/h;->J:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    .line 1489
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xe

    .line 1490
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1491
    iget v1, p0, Lcom/oplus/camera/professional/h;->M:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1492
    new-instance v1, Lcom/oplus/camera/professional/d;

    iget-object v2, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/oplus/camera/professional/g;->a(Z)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/oplus/camera/professional/d;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 1493
    iget-object v2, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    invoke-virtual {v1, v2}, Lcom/oplus/camera/professional/d;->a(Lcom/oplus/camera/professional/q;)V

    .line 1494
    iget-object v2, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    const v3, 0x7f09023a

    invoke-direct {p0, v2, v3, v1, p0}, Lcom/oplus/camera/professional/h;->a(Lcom/oplus/camera/professional/e;ILcom/oplus/camera/professional/d;Lcom/oplus/camera/professional/e$b;)V

    .line 1496
    iget-object v1, p0, Lcom/oplus/camera/professional/h;->B:Lcom/oplus/camera/professional/h$a;

    iget-object p0, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    invoke-virtual {v1, p0, v0}, Lcom/oplus/camera/professional/h$a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method static synthetic n(Lcom/oplus/camera/professional/h;)I
    .locals 0

    .line 94
    iget p0, p0, Lcom/oplus/camera/professional/h;->ab:I

    return p0
.end method

.method private n()V
    .locals 3

    .line 1501
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    if-nez v0, :cond_0

    .line 1502
    new-instance v0, Lcom/oplus/camera/professional/g;

    iget-object v1, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oplus/camera/professional/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-direct {v0, v1, v2}, Lcom/oplus/camera/professional/g;-><init>(Landroid/content/Context;Lcom/oplus/camera/capmode/a;)V

    iput-object v0, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    .line 1503
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/g;->setGravity(I)V

    .line 1504
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/g;->setId(I)V

    .line 1506
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v1

    iget v2, p0, Lcom/oplus/camera/professional/h;->L:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xe

    .line 1507
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xc

    .line 1508
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1510
    iget-object v1, p0, Lcom/oplus/camera/professional/h;->B:Lcom/oplus/camera/professional/h$a;

    iget-object p0, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    invoke-virtual {v1, p0, v0}, Lcom/oplus/camera/professional/h$a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private o()V
    .locals 6

    .line 1515
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/professional/h;->t:Ljava/lang/Thread;

    .line 1516
    iget v0, p0, Lcom/oplus/camera/professional/h;->mCameraId:I

    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/h;->getProperCameraId(I)I

    move-result v0

    .line 1518
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addViewToRoot, mUiThread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/professional/h;->t:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HSProfessionalCapMode"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1520
    iput-boolean v1, p0, Lcom/oplus/camera/professional/h;->n:Z

    .line 1521
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->x()V

    .line 1522
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->n()V

    .line 1525
    iget-object v1, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/oplus/camera/professional/h;->D:I

    if-eq v2, v0, :cond_0

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1526
    invoke-virtual {v1}, Lcom/oplus/camera/professional/g;->d()V

    .line 1529
    :cond_0
    iput v0, p0, Lcom/oplus/camera/professional/h;->D:I

    .line 1531
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->z(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 1532
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    iget v2, p0, Lcom/oplus/camera/professional/h;->D:I

    invoke-virtual {p0, v2}, Lcom/oplus/camera/professional/h;->getCameraInfo(I)Lcom/oplus/camera/e/h;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/camera/professional/h;->A:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/oplus/camera/professional/g;->a(Lcom/oplus/camera/e/h;Landroid/os/Handler;Lcom/oplus/camera/professional/g$a;)V

    .line 1534
    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->isSuperRawOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1535
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    iget v2, p0, Lcom/oplus/camera/professional/h;->D:I

    invoke-virtual {p0, v2}, Lcom/oplus/camera/professional/h;->getCameraInfo(I)Lcom/oplus/camera/e/h;

    move-result-object v2

    const-wide/32 v3, 0x77359400

    invoke-virtual {v0, v2, v3, v4}, Lcom/oplus/camera/professional/g;->a(Lcom/oplus/camera/e/h;J)V

    .line 1539
    :cond_1
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->m()V

    .line 1540
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    iget-object v2, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    invoke-virtual {v0, v2}, Lcom/oplus/camera/professional/g;->setSettleListener(Lcom/oplus/camera/professional/g$c;)V

    .line 1541
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    iget-object v2, p0, Lcom/oplus/camera/professional/h;->ai:Lcom/oplus/camera/professional/g$b;

    invoke-virtual {v0, v2}, Lcom/oplus/camera/professional/g;->setMotionListener(Lcom/oplus/camera/professional/g$b;)V

    .line 1543
    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/h;->a(I)V

    .line 1545
    iput-boolean v1, p0, Lcom/oplus/camera/professional/h;->F:Z

    .line 1548
    :cond_2
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->q()V

    .line 1549
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->s()V

    .line 1551
    new-instance v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/professional/h;->af:Landroid/widget/TextView;

    .line 1552
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->af:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWillNotDraw(Z)V

    .line 1553
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->af:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1554
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->af:Landroid/widget/TextView;

    const v1, 0x7f0805e9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1555
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->af:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070123

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oplus/camera/professional/h;->af:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1556
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    .line 1557
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07014d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    .line 1558
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1559
    iget-object v1, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070129

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    .line 1560
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07012b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    .line 1561
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07012a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    .line 1562
    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070127

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1559
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1563
    iget-object v1, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->b()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/professional/h;->af:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1564
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/professional/h;->ab:I

    .line 1565
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070128

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/professional/h;->ac:I

    .line 1566
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    const v2, 0x7f1002be

    .line 1567
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_photo_ratio_key"

    .line 1566
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "square"

    .line 1569
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1570
    invoke-static {}, Lcom/oplus/camera/util/Util;->L()I

    move-result v0

    invoke-static {}, Lcom/oplus/camera/util/Util;->N()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oplus/camera/professional/h;->ad:I

    goto :goto_0

    .line 1572
    :cond_3
    invoke-static {}, Lcom/oplus/camera/util/Util;->N()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/professional/h;->ad:I

    :goto_0
    return-void
.end method

.method static synthetic o(Lcom/oplus/camera/professional/h;)Z
    .locals 0

    .line 94
    iget-boolean p0, p0, Lcom/oplus/camera/professional/h;->U:Z

    return p0
.end method

.method private p()I
    .locals 2

    .line 1577
    invoke-static {}, Lcom/oplus/camera/util/Util;->N()I

    move-result v0

    .line 1579
    iget-object v1, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v1, :cond_0

    .line 1580
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->p()Landroid/widget/RelativeLayout;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1582
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 1583
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v0

    :cond_0
    return v0
.end method

.method static synthetic p(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/p$a;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->z:Lcom/oplus/camera/p$a;

    return-object p0
.end method

.method static synthetic q(Lcom/oplus/camera/professional/h;)I
    .locals 0

    .line 94
    iget p0, p0, Lcom/oplus/camera/professional/h;->aa:I

    return p0
.end method

.method private q()V
    .locals 6

    .line 1591
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->G:Lcom/oplus/camera/ui/RotateImageView;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 1592
    new-instance v0, Lcom/oplus/camera/ui/RotateImageView;

    iget-object v2, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/oplus/camera/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/professional/h;->G:Lcom/oplus/camera/ui/RotateImageView;

    .line 1593
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->G:Lcom/oplus/camera/ui/RotateImageView;

    const v2, 0x7f0902d6

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/RotateImageView;->setId(I)V

    .line 1594
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->G:Lcom/oplus/camera/ui/RotateImageView;

    const v2, 0x7f0805d6

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/RotateImageView;->setImageResource(I)V

    .line 1595
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->G:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/RotateImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/professional/h;->H:I

    .line 1596
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->p()I

    move-result v0

    .line 1598
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addBottomGuideEntry, previewMarginTop: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HSProfessionalCapMode"

    invoke-static {v3, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1600
    iget-object v2, p0, Lcom/oplus/camera/professional/h;->C:Landroid/content/res/Resources;

    const v3, 0x7f07016b

    .line 1601
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 1602
    iget-object v2, p0, Lcom/oplus/camera/professional/h;->C:Landroid/content/res/Resources;

    const v3, 0x7f07016a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1603
    iget-object v3, p0, Lcom/oplus/camera/professional/h;->C:Landroid/content/res/Resources;

    const v4, 0x7f07016d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1604
    iget v4, p0, Lcom/oplus/camera/professional/h;->H:I

    sub-int/2addr v3, v4

    div-int/2addr v3, v1

    .line 1606
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xa

    .line 1608
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v5, 0x15

    .line 1609
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sub-int/2addr v0, v3

    .line 1610
    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int/2addr v2, v3

    .line 1611
    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 1612
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->G:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v0, v4}, Lcom/oplus/camera/ui/RotateImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1613
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->G:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/oplus/camera/ui/RotateImageView;->setPadding(IIII)V

    .line 1614
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->G:Lcom/oplus/camera/ui/RotateImageView;

    new-instance v2, Lcom/oplus/camera/professional/-$$Lambda$Y0n6cbv01i90Hy6rrgxf_rJhiOM;

    invoke-direct {v2, p0}, Lcom/oplus/camera/professional/-$$Lambda$Y0n6cbv01i90Hy6rrgxf_rJhiOM;-><init>(Lcom/oplus/camera/professional/h;)V

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1617
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->G:Lcom/oplus/camera/ui/RotateImageView;

    iget-object v2, p0, Lcom/oplus/camera/professional/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v2}, Lcom/oplus/camera/capmode/a;->u()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/oplus/camera/ui/RotateImageView;->a(IZ)V

    .line 1618
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v2, p0, Lcom/oplus/camera/professional/h;->G:Lcom/oplus/camera/ui/RotateImageView;

    const-string v4, "professional"

    invoke-interface {v0, v2, v4, v1, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Landroid/view/View;Ljava/lang/String;IZ)V

    .line 1620
    invoke-direct {p0, v3}, Lcom/oplus/camera/professional/h;->d(Z)V

    return-void
.end method

.method static synthetic r(Lcom/oplus/camera/professional/h;)I
    .locals 0

    .line 94
    iget p0, p0, Lcom/oplus/camera/professional/h;->mOrientation:I

    return p0
.end method

.method private r()V
    .locals 7

    .line 1624
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->G:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz v0, :cond_2

    .line 1625
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->p()I

    move-result v0

    .line 1627
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateBottomGuideEntryPosition, previewMarginTop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HSProfessionalCapMode"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1629
    iget-object v1, p0, Lcom/oplus/camera/professional/h;->C:Landroid/content/res/Resources;

    const v2, 0x7f07016b

    .line 1630
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 1631
    iget-object v1, p0, Lcom/oplus/camera/professional/h;->C:Landroid/content/res/Resources;

    const v2, 0x7f07016d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1632
    iget v2, p0, Lcom/oplus/camera/professional/h;->H:I

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    div-int/2addr v1, v2

    .line 1634
    iget-object v3, p0, Lcom/oplus/camera/professional/h;->G:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v3}, Lcom/oplus/camera/ui/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    sub-int/2addr v0, v1

    .line 1637
    iget v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    if-eq v0, v1, :cond_1

    .line 1640
    iget-object v4, p0, Lcom/oplus/camera/professional/h;->I:Landroid/animation/ValueAnimator;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_0

    .line 1641
    new-array v2, v2, [I

    aput v1, v2, v6

    aput v0, v2, v5

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/professional/h;->I:Landroid/animation/ValueAnimator;

    .line 1642
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->I:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1643
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->I:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/oplus/camera/professional/t;->b:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1645
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->I:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/camera/professional/h$21;

    invoke-direct {v1, p0, v3}, Lcom/oplus/camera/professional/h$21;-><init>(Lcom/oplus/camera/professional/h;Landroid/widget/RelativeLayout$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    .line 1654
    :cond_0
    new-array v2, v2, [I

    aput v1, v2, v6

    aput v0, v2, v5

    invoke-virtual {v4, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 1657
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->I:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1658
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->I:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 1661
    :cond_1
    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1662
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->G:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {p0, v3}, Lcom/oplus/camera/ui/RotateImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic s(Lcom/oplus/camera/professional/h;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->ag:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private s()V
    .locals 4

    .line 1698
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->x:Lcom/oplus/camera/ui/RotateImageView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1699
    new-instance v0, Lcom/oplus/camera/ui/RotateImageView;

    iget-object v2, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/oplus/camera/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/professional/h;->x:Lcom/oplus/camera/ui/RotateImageView;

    .line 1700
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->x:Lcom/oplus/camera/ui/RotateImageView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 1701
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->x:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotateImageView;->setFocusable(Z)V

    .line 1702
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->x:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/RotateImageView;->setClickable(Z)V

    .line 1703
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->x:Lcom/oplus/camera/ui/RotateImageView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    .line 1704
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->x:Lcom/oplus/camera/ui/RotateImageView;

    iget-object v2, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    .line 1705
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10036d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1704
    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/RotateImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1706
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->x:Lcom/oplus/camera/ui/RotateImageView;

    new-instance v2, Lcom/oplus/camera/professional/h$22;

    invoke-direct {v2, p0}, Lcom/oplus/camera/professional/h$22;-><init>(Lcom/oplus/camera/professional/h;)V

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1715
    invoke-static {}, Lcom/oplus/camera/professional/u;->a()Lcom/a/a/f;

    move-result-object v0

    .line 1716
    iget-object v2, p0, Lcom/oplus/camera/professional/h;->x:Lcom/oplus/camera/ui/RotateImageView;

    new-instance v3, Lcom/oplus/camera/professional/h$2;

    invoke-direct {v3, p0, v0}, Lcom/oplus/camera/professional/h$2;-><init>(Lcom/oplus/camera/professional/h;Lcom/a/a/f;)V

    invoke-virtual {v2, v3}, Lcom/oplus/camera/ui/RotateImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1735
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x15

    .line 1738
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xb

    .line 1739
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1740
    iget-object v2, p0, Lcom/oplus/camera/professional/h;->C:Landroid/content/res/Resources;

    const v3, 0x7f07017f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1741
    iget-object v2, p0, Lcom/oplus/camera/professional/h;->C:Landroid/content/res/Resources;

    const v3, 0x7f07017e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 1742
    iget-object v2, p0, Lcom/oplus/camera/professional/h;->x:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v2, v0}, Lcom/oplus/camera/ui/RotateImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1743
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->x:Lcom/oplus/camera/ui/RotateImageView;

    const v2, 0x7f08048e

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/RotateImageView;->setImageResource(I)V

    .line 1744
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->x:Lcom/oplus/camera/ui/RotateImageView;

    const v2, 0x7f08063f

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/RotateImageView;->setBackgroundResource(I)V

    .line 1745
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0900e4

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/oplus/camera/professional/h;->x:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1748
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->x:Lcom/oplus/camera/ui/RotateImageView;

    iget-object v2, p0, Lcom/oplus/camera/professional/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v2}, Lcom/oplus/camera/capmode/a;->u()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/RotateImageView;->a(IZ)V

    .line 1749
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->u()V

    .line 1750
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->v()V

    return-void
.end method

.method private t()Z
    .locals 2

    const-string v0, "pref_parameter_saving"

    .line 1754
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/h;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "off"

    .line 1756
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic t(Lcom/oplus/camera/professional/h;)Z
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->A()Z

    move-result p0

    return p0
.end method

.method private u()V
    .locals 1

    .line 1760
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->t()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/camera/professional/h;->p:Z

    .line 1761
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->x:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz v0, :cond_1

    .line 1762
    iget-boolean p0, p0, Lcom/oplus/camera/professional/h;->p:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    :goto_0
    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method static synthetic u(Lcom/oplus/camera/professional/h;)Z
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->B()Z

    move-result p0

    return p0
.end method

.method private v()V
    .locals 4

    .line 1767
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->t()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1771
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_switch_camera_key"

    const-string v2, "camera_main"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1772
    iget-object v1, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "pref_parameter_saving"

    const-string v3, "off"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1773
    iget-object v2, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    invoke-virtual {v2, v0, v1}, Lcom/oplus/camera/professional/g;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1775
    iget-object v1, p0, Lcom/oplus/camera/professional/h;->x:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz v1, :cond_2

    .line 1776
    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/RotateImageView;->setEnabled(Z)V

    if-eqz v0, :cond_1

    .line 1779
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->x:Lcom/oplus/camera/ui/RotateImageView;

    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/oplus/camera/util/Util;->A(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/RotateImageView;->setColorFilter(I)V

    goto :goto_0

    .line 1781
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->x:Lcom/oplus/camera/ui/RotateImageView;

    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    const v1, 0x7f06004d

    invoke-static {p0, v1}, Landroidx/core/a/a;->c(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/RotateImageView;->setColorFilter(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic v(Lcom/oplus/camera/professional/h;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->E()V

    return-void
.end method

.method static synthetic w(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/professional/g;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    return-object p0
.end method

.method private w()V
    .locals 2

    .line 1797
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/g;->b(I)Z

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/professional/h;->a(ZI)V

    .line 1800
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->v()V

    return-void
.end method

.method private x()V
    .locals 5

    .line 1813
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->B:Lcom/oplus/camera/professional/h$a;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1814
    new-instance v0, Lcom/oplus/camera/professional/h$a;

    iget-object v2, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, p0, v2}, Lcom/oplus/camera/professional/h$a;-><init>(Lcom/oplus/camera/professional/h;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/professional/h;->B:Lcom/oplus/camera/professional/h$a;

    .line 1815
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    .line 1816
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xc

    .line 1817
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xe

    .line 1818
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1820
    iget-object v2, p0, Lcom/oplus/camera/professional/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v2, :cond_0

    .line 1821
    iget-object v2, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v2}, Lcom/oplus/camera/ui/CameraUIInterface;->r()I

    move-result v2

    iget v3, p0, Lcom/oplus/camera/professional/h;->K:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/oplus/camera/professional/h;->M:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 1823
    :cond_0
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1826
    :goto_0
    iget-object v2, p0, Lcom/oplus/camera/professional/h;->B:Lcom/oplus/camera/professional/h$a;

    invoke-virtual {v2, v0}, Lcom/oplus/camera/professional/h$a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1827
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->B:Lcom/oplus/camera/professional/h$a;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/oplus/camera/professional/h$a;->setVisibility(I)V

    .line 1828
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->B:Lcom/oplus/camera/professional/h$a;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/h$a;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v2, Lcom/oplus/camera/professional/h$3;

    invoke-direct {v2, p0}, Lcom/oplus/camera/professional/h$3;-><init>(Lcom/oplus/camera/professional/h;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    .line 1842
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v2, p0, Lcom/oplus/camera/professional/h;->B:Lcom/oplus/camera/professional/h$a;

    const/4 v3, 0x1

    const-string v4, "professional"

    invoke-interface {v0, v2, v4, v3, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Landroid/view/View;Ljava/lang/String;IZ)V

    .line 1845
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->B:Lcom/oplus/camera/professional/h$a;

    if-eqz p0, :cond_2

    .line 1846
    invoke-virtual {p0, v3}, Lcom/oplus/camera/professional/h$a;->a(Z)V

    :cond_2
    return-void
.end method

.method static synthetic x(Lcom/oplus/camera/professional/h;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->l()V

    return-void
.end method

.method static synthetic y(Lcom/oplus/camera/professional/h;)Lcom/oplus/camera/ui/RotateImageView;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->G:Lcom/oplus/camera/ui/RotateImageView;

    return-object p0
.end method

.method private y()V
    .locals 2

    .line 1969
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->g(Z)V

    .line 1970
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->x:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 1971
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    .line 1974
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->B:Lcom/oplus/camera/professional/h$a;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 1975
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/h$a;->a(Z)V

    .line 1977
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    if-eqz v0, :cond_1

    .line 1978
    invoke-virtual {v0}, Lcom/oplus/camera/professional/e;->removeAllViews()V

    .line 1979
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->B:Lcom/oplus/camera/professional/h$a;

    iget-object v1, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/h$a;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 1980
    iput-object v0, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    :cond_1
    return-void
.end method

.method static synthetic z(Lcom/oplus/camera/professional/h;)Landroid/content/SharedPreferences;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method private z()Z
    .locals 2

    .line 2432
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 2433
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "pref_switch_camera_key"

    const-string v1, "camera_main"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "camera_macro"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 1326
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/professional/h;->t:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    .line 1327
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->A:Landroid/os/Handler;

    if-eqz p0, :cond_1

    .line 1328
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1331
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/professional/h;->a(ILandroid/os/Message;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(ILandroid/os/Message;)V
    .locals 4

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 1412
    :pswitch_0
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->w()V

    goto/16 :goto_0

    .line 1407
    :pswitch_1
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    invoke-virtual {p1, v1}, Lcom/oplus/camera/professional/g;->b(I)Z

    move-result p1

    invoke-direct {p0, p1, v1}, Lcom/oplus/camera/professional/h;->a(ZI)V

    goto/16 :goto_0

    .line 1397
    :pswitch_2
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->z()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "com.oplus.macro.best.focus.distance"

    .line 1398
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result p1

    .line 1399
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const p2, 0x7f100234

    const v0, 0x7f0805e9

    const v1, 0x7f0604ff

    new-array v3, v3, [Ljava/lang/Object;

    .line 1401
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    .line 1399
    invoke-interface {p0, p2, v0, v1, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->b(III[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1390
    :pswitch_3
    iget-boolean p1, p0, Lcom/oplus/camera/professional/h;->l:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/oplus/camera/professional/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->A()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1391
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    goto/16 :goto_0

    .line 1385
    :pswitch_4
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->E()V

    .line 1386
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/g;->setPanelsBarAuto(I)V

    goto/16 :goto_0

    .line 1375
    :pswitch_5
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Lcom/oplus/camera/professional/g;->h(I)Z

    .line 1376
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    invoke-virtual {p1, v3}, Lcom/oplus/camera/professional/g;->h(I)Z

    .line 1377
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/oplus/camera/professional/g;->h(I)Z

    .line 1378
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    invoke-virtual {p1, v1}, Lcom/oplus/camera/professional/g;->h(I)Z

    .line 1379
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/professional/g;->h(I)Z

    .line 1381
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->w()V

    goto :goto_0

    :pswitch_6
    const/4 p1, 0x0

    .line 1356
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 1359
    iget-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    .line 1362
    :cond_0
    iget-object p2, p0, Lcom/oplus/camera/professional/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p2}, Lcom/oplus/camera/capmode/a;->ac()V

    .line 1364
    iget-object p2, p0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz p2, :cond_3

    .line 1365
    iget-object p2, p0, Lcom/oplus/camera/professional/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p2}, Lcom/oplus/camera/capmode/a;->z()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1366
    iget-object p2, p0, Lcom/oplus/camera/professional/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p2, v2, v2}, Lcom/oplus/camera/capmode/a;->b(ZZ)V

    .line 1369
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {p0, p1, v3}, Lcom/oplus/camera/e/d;->a(FZ)V

    goto :goto_0

    .line 1338
    :pswitch_7
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    invoke-virtual {p1}, Lcom/oplus/camera/professional/e;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1339
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    invoke-virtual {p1}, Lcom/oplus/camera/professional/e;->getSelectedPosition()I

    move-result p1

    .line 1340
    iget-object p2, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    invoke-virtual {p2, p1, v3}, Lcom/oplus/camera/professional/e;->a(IZ)V

    .line 1341
    iget-object p2, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    invoke-virtual {p2, p1}, Lcom/oplus/camera/professional/e;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1344
    iget-object p2, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    invoke-virtual {p2, p1}, Lcom/oplus/camera/professional/e;->a(Landroid/view/View;)I

    move-result p2

    .line 1346
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    invoke-virtual {v0, p2}, Lcom/oplus/camera/professional/g;->g(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1347
    iget-object p2, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    invoke-virtual {p2}, Lcom/oplus/camera/professional/e;->getAdapter()Lcom/oplus/camera/professional/d;

    move-result-object p2

    invoke-virtual {p2, p1, v2, v3}, Lcom/oplus/camera/professional/d;->a(Landroid/view/View;IZ)V

    .line 1352
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    invoke-virtual {p0}, Lcom/oplus/camera/professional/g;->a()V

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/view/View;Landroid/view/View;J)V
    .locals 3

    .line 2949
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->A()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2953
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    invoke-virtual {p1, p2}, Lcom/oplus/camera/professional/e;->a(Landroid/view/View;)I

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_1

    .line 2957
    invoke-direct {p0, p2}, Lcom/oplus/camera/professional/h;->b(Z)V

    .line 2958
    invoke-virtual {p0, p2}, Lcom/oplus/camera/professional/h;->a(I)V

    return-void

    .line 2962
    :cond_1
    sget-object v0, Lcom/oplus/camera/professional/e$a;->NO_PRESSED:Lcom/oplus/camera/professional/e$a;

    iget-object v1, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    invoke-virtual {v1}, Lcom/oplus/camera/professional/e;->getModePressState()Lcom/oplus/camera/professional/e$a;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    .line 2963
    invoke-virtual {v0}, Lcom/oplus/camera/professional/e;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2964
    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->onBackPressed()Z

    .line 2965
    invoke-direct {p0, p1, v2}, Lcom/oplus/camera/professional/h;->a(IZ)V

    return-void

    .line 2969
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0, v2}, Lcom/oplus/camera/capmode/a;->d(Z)V

    .line 2970
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p2, p2}, Lcom/oplus/camera/capmode/a;->a(Landroid/animation/AnimatorListenerAdapter;ZZ)V

    const/4 v0, 0x4

    .line 2971
    invoke-direct {p0, v0, p2}, Lcom/oplus/camera/professional/h;->b(IZ)V

    .line 2973
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->B(Z)V

    .line 2975
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->T()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2976
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->x(Z)V

    .line 2979
    :cond_3
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->K()V

    .line 2981
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onItemClick, index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "HSProfessionalCapMode"

    invoke-static {p4, p3}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 2983
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/professional/h;->a(IZ)V

    const/4 p3, 0x2

    if-ne p3, p1, :cond_4

    .line 2986
    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->isSuperRawOpen()Z

    move-result p3

    iput-boolean p3, p0, Lcom/oplus/camera/professional/h;->o:Z

    .line 2989
    :cond_4
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/professional/g;->a(IZ)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    const v0, 0x7f1001c5

    if-nez p1, :cond_0

    .line 3060
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    .line 3061
    invoke-virtual {v1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_professional_focus_mode_key"

    .line 3060
    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3066
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFocusValue, focusValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HSProfessionalCapMode"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3068
    iget-object v1, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3072
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->A:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3073
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3074
    iput v1, v0, Landroid/os/Message;->what:I

    .line 3075
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3076
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->A:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3078
    iget-boolean p1, p0, Lcom/oplus/camera/professional/h;->i:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 3079
    invoke-direct {p0, p1}, Lcom/oplus/camera/professional/h;->g(Z)V

    :cond_2
    const/16 p1, 0x8

    .line 3082
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/h;->a(I)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 3016
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0, p1}, Lcom/oplus/camera/e/d;->i(Z)V

    const/16 p1, 0x8

    .line 3017
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/h;->a(I)V

    return-void
.end method

.method protected a()Z
    .locals 0

    const-string p0, "com.oplus.feature.professional.zoom.mutex.support"

    .line 810
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 454
    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public allowSwitchCamera()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public b()I
    .locals 0

    .line 925
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->u()I

    move-result p0

    return p0
.end method

.method public c()I
    .locals 2

    .line 3086
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lcom/oplus/camera/professional/h;->C:Landroid/content/res/Resources;

    const v1, 0x7f10013b

    .line 3087
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "pref_professional_exposure_compensation_key"

    .line 3086
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3089
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public cameraIdChanged(I)V
    .locals 2

    .line 2398
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->cameraIdChanged(I)V

    .line 2400
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->as()I

    move-result p1

    .line 2402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cameraIdChanged, id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HSProfessionalCapMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2404
    iget v0, p0, Lcom/oplus/camera/professional/h;->D:I

    if-eq v0, p1, :cond_0

    .line 2405
    iput p1, p0, Lcom/oplus/camera/professional/h;->D:I

    const/4 v0, 0x1

    .line 2406
    iput-boolean v0, p0, Lcom/oplus/camera/professional/h;->E:Z

    .line 2408
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/professional/h$8;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/professional/h$8;-><init>(Lcom/oplus/camera/professional/h;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected canCloseSubMenuWhenSwitchCamera()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public changeModeAllViewWhenAnimation(IZ)V
    .locals 4

    .line 3728
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/BaseMode;->changeModeAllViewWhenAnimation(IZ)V

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/16 v0, 0x11

    if-eq p1, v0, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p2, :cond_6

    .line 3762
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->z()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 3763
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->A:Landroid/os/Handler;

    const/4 p1, 0x6

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    :cond_1
    if-eqz p2, :cond_2

    .line 3750
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    if-eqz p0, :cond_6

    .line 3751
    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/e;->setVisibility(I)V

    goto :goto_2

    .line 3754
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    if-eqz p1, :cond_6

    .line 3755
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->I()V

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_4

    .line 3734
    iget-boolean p1, p0, Lcom/oplus/camera/professional/h;->mbInCapturing:Z

    if-eqz p1, :cond_4

    move p1, v1

    goto :goto_0

    :cond_4
    move p1, p2

    .line 3738
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->B:Lcom/oplus/camera/professional/h$a;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/professional/h$a;->a(Z)V

    if-eqz p2, :cond_5

    goto :goto_1

    :cond_5
    const/16 v1, 0x8

    .line 3740
    :goto_1
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->B:Lcom/oplus/camera/professional/h$a;

    const-wide/16 v2, 0x12c

    const/4 p2, 0x0

    invoke-static {p1, v1, p2, v2, v3}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    .line 3742
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->t()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 3743
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->x:Lcom/oplus/camera/ui/RotateImageView;

    invoke-static {p0, v1, p2, v2, v3}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    :cond_6
    :goto_2
    return-void
.end method

.method public checkoutTimerSnapShotState()V
    .locals 0

    .line 1852
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->checkoutTimerSnapShotState()V

    return-void
.end method

.method public closeImageReader()V
    .locals 2

    const-string v0, "HSProfessionalCapMode"

    const-string v1, "closeImageReader"

    .line 831
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 832
    iput-boolean v0, p0, Lcom/oplus/camera/professional/h;->m:Z

    return-void
.end method

.method public consumeImage(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;)Z
    .locals 2

    .line 261
    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->isSuperRawOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x100

    .line 262
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getFormat()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    .line 263
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getSourceType()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 264
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/professional/h;->V:I

    .line 265
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/professional/h;->W:I

    .line 267
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 268
    :try_start_0
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getImage()[B

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/professional/h;->R:[B

    .line 269
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 271
    iput p1, p0, Lcom/oplus/camera/professional/h;->X:I

    .line 272
    iput p1, p0, Lcom/oplus/camera/professional/h;->Y:I

    .line 273
    iget v0, p0, Lcom/oplus/camera/professional/h;->X:I

    iget v1, p0, Lcom/oplus/camera/professional/h;->Y:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/oplus/camera/professional/h;->ae:[B

    .line 275
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->f()V

    return p1

    :catchall_0
    move-exception p0

    .line 269
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public d()Z
    .locals 0

    const-string p0, "com.oplus.feature.raw.zoom.mutex.support"

    .line 3956
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getCameraFeature()Ljava/lang/String;
    .locals 3

    .line 442
    iget-boolean v0, p0, Lcom/oplus/camera/professional/h;->mbDestroyed:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_focus_peaking_key"

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "focusPeaking"

    return-object p0

    .line 450
    :cond_1
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCameraFeature()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCameraMode()Ljava/lang/String;
    .locals 0

    const-string p0, "professional"

    return-object p0
.end method

.method public getCaptureExposureTime()J
    .locals 4

    .line 959
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    .line 965
    iget-wide v0, p0, Lcom/oplus/camera/professional/h;->s:J

    :cond_0
    return-wide v0
.end method

.method public getCaptureIso()I
    .locals 4

    .line 945
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oplus/camera/professional/h;->C:Landroid/content/res/Resources;

    const v2, 0x7f10021d

    .line 946
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "pref_professional_iso_key"

    .line 945
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 949
    iget-object v1, p0, Lcom/oplus/camera/professional/h;->C:Landroid/content/res/Resources;

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 950
    iget p0, p0, Lcom/oplus/camera/professional/h;->r:I

    return p0

    .line 952
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getDefaultAFMode()I
    .locals 0

    .line 3814
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->getDefaultAFMode()I

    move-result p0

    return p0
.end method

.method public getFlashMode()Ljava/lang/String;
    .locals 3

    .line 2814
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/professional/h;->mbFlashTemporaryDisabled:Z

    if-nez v0, :cond_0

    .line 2815
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->C:Landroid/content/res/Resources;

    const v1, 0x7f10013e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2816
    iget-object v1, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "pref_professional_exposure_time_key"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2819
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2820
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->getFlashMode()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "off"

    return-object p0
.end method

.method public getFrontEnable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getHeicCodecFormat()Ljava/lang/String;
    .locals 1

    .line 3981
    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->isSuperRawOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3985
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->getHeicCodecFormat()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getHintTextId()I
    .locals 3

    .line 3819
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_5

    .line 3820
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "camera_main"

    const-string v2, "pref_switch_camera_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3822
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const p0, 0x7f10042f

    .line 3823
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->f(I)I

    move-result p0

    return p0

    :cond_0
    const-string v1, "camera_ultra_wide"

    .line 3824
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "com.oplus.isUWFixedFocus"

    .line 3825
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    .line 3826
    invoke-interface {p0}, Lcom/oplus/camera/e/d;->e()Lcom/oplus/camera/e/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/e/h;->n()F

    move-result p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const p0, 0x7f100435

    .line 3829
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->f(I)I

    move-result p0

    return p0

    :cond_2
    :goto_0
    const p0, 0x7f100434

    .line 3827
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->f(I)I

    move-result p0

    return p0

    :cond_3
    const-string p0, "camera_tele"

    .line 3831
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const p0, 0x7f100432

    return p0

    :cond_4
    const-string p0, "camera_macro"

    .line 3833
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const p0, 0x7f10042e

    return p0

    :cond_5
    const/4 p0, -0x1

    return p0
.end method

.method protected getNeedStoreRawPic()Z
    .locals 0

    .line 2327
    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->isSuperRawOpen()Z

    move-result p0

    return p0
.end method

.method public getOperatingMode()I
    .locals 0

    const p0, 0x8009

    return p0
.end method

.method public getPictureSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;
    .locals 3

    .line 757
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_switch_camera_key"

    const-string v2, "camera_main"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "camera_ultra_wide"

    .line 759
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 760
    invoke-direct {p0, p1}, Lcom/oplus/camera/professional/h;->a(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 767
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getPictureSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;
    .locals 3

    .line 2611
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;

    move-result-object v0

    .line 2613
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2614
    iget-object v1, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->s()I

    move-result v1

    const/16 v2, 0x1c

    if-eq v1, v2, :cond_1

    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 2615
    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->s()I

    move-result p0

    const/16 v1, 0x1d

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x17

    .line 2618
    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/control/b;->a(I)V

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p0, 0x1a

    .line 2616
    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/control/b;->a(I)V

    :cond_2
    :goto_1
    return-object v0
.end method

.method public getSupportFunction(Ljava/lang/String;)Z
    .locals 10

    .line 1154
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x5

    const-string v3, "pref_professional_exposure_time_key"

    const-string v4, "pref_switch_camera_key"

    const-string v5, "pref_raw_key"

    const-string v6, "key_support_update_thumbnail_user_picture"

    const/4 v7, 0x0

    const/4 v8, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "pref_camera_tap_shutter_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "pref_none_sat_tele_angle_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "pref_expand_popbar_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "pref_camera_flashmode_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "pref_support_capture_preview"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "pref_headline_control_by_mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "pref_support_switch_camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "pref_raw_control_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "pref_camera_gradienter_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "pref_focus_peaking_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v8

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "pref_pro_histogram_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "pref_super_raw_control_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    goto/16 :goto_1

    :sswitch_d
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "pref_zoom_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "pref_high_resolution_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_10
    const-string v0, "pref_camera_gesture_shutter_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_11
    const-string v0, "pref_subsetting_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_12
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_13
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    goto/16 :goto_1

    :sswitch_14
    const-string v0, "pref_switch_dual_camera_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_15
    const-string v0, "pref_camera_timer_shutter_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_16
    const-string v0, "pref_setting_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_17
    const-string v0, "pref_parameter_saving"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v7

    goto :goto_1

    :sswitch_18
    const-string v0, "pref_watermark_function_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1c

    goto :goto_1

    :sswitch_19
    const-string v0, "pref_camera_photo_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    goto :goto_1

    :sswitch_1a
    const-string v0, "pref_support_post_view"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_1

    :sswitch_1b
    const-string v0, "pref_exposure_focus_separate_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_1c
    const-string v0, "pref_manual_exposure_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_1d
    const-string v0, "key_show_pull_down_tip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const-string v9, "focusPeaking"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 1255
    :pswitch_0
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "camera_main"

    invoke-interface {p1, v4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "camera_ultra_wide"

    .line 1258
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1259
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    if-nez p1, :cond_1

    .line 1260
    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->getCameraMode()Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/oplus/camera/professional/h;->D:I

    invoke-static {p1, v0}, Lcom/oplus/camera/e/a;->a(Ljava/lang/String;I)Lcom/oplus/camera/e/h;

    move-result-object p1

    goto :goto_2

    .line 1261
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p1}, Lcom/oplus/camera/e/d;->e()Lcom/oplus/camera/e/h;

    move-result-object p1

    .line 1262
    :goto_2
    invoke-direct {p0, p1}, Lcom/oplus/camera/professional/h;->a(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object p0

    if-nez p0, :cond_2

    move v7, v8

    :cond_2
    return v7

    :cond_3
    return v8

    .line 1252
    :pswitch_1
    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->getCameraMode()Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/oplus/camera/professional/h;->mCameraId:I

    const-string v0, "aps_algo_watermark"

    invoke-static {p1, p0, v0}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportCaptureAlgo(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_2
    const-string p0, "com.oplus.feature.professional.super.raw.support"

    .line 1249
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_3
    const-string p0, "com.oplus.feature.professional.raw.support"

    .line 1246
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_4
    const-string p0, "com.oplus.professional.switch.camera.type"

    .line 1243
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_4

    move v7, v8

    :cond_4
    return v7

    .line 1230
    :pswitch_5
    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->isSuperRawOpen()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/oplus/camera/professional/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/oplus/camera/professional/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 1232
    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    if-eqz p1, :cond_5

    .line 1234
    invoke-virtual {p1, v1}, Lcom/oplus/camera/professional/g;->g(I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1235
    :cond_5
    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->isRawRequestTag()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    if-eqz p1, :cond_6

    .line 1237
    invoke-virtual {p1, v2}, Lcom/oplus/camera/professional/g;->g(I)Z

    move-result p1

    if-nez p1, :cond_6

    .line 1238
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result p1

    if-nez p1, :cond_6

    .line 1239
    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->isFlashState()Z

    move-result p1

    if-nez p1, :cond_7

    .line 1240
    :cond_6
    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->getCameraFeature()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v9, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    :cond_7
    move v7, v8

    :cond_8
    return v7

    .line 1219
    :pswitch_6
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/oplus/camera/professional/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 1220
    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1221
    invoke-virtual {p0, v6}, Lcom/oplus/camera/professional/h;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 1222
    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->isRawRequestTag()Z

    move-result p1

    if-nez p1, :cond_9

    .line 1223
    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->getCameraFeature()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v9, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    return v8

    :cond_9
    return v7

    :pswitch_7
    const-string p0, "com.oplus.high.resolution.support"

    .line 1216
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 1209
    :pswitch_8
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    if-eqz v0, :cond_10

    .line 1210
    invoke-virtual {v0}, Lcom/oplus/camera/professional/e;->isSelected()Z

    move-result p0

    return p0

    .line 1206
    :pswitch_9
    invoke-static {v5}, Lcom/oplus/camera/aps/config/CameraConfig;->getSupportSettingMenuKey(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 1203
    :pswitch_a
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->z()Z

    move-result p1

    if-nez p1, :cond_b

    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->d()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->isRawOpen()Z

    move-result p1

    if-nez p1, :cond_b

    :cond_a
    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->isSuperRawOpen()Z

    move-result p0

    if-nez p0, :cond_b

    move v7, v8

    :cond_b
    return v7

    .line 1193
    :pswitch_b
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_10

    .line 1194
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/oplus/camera/professional/h;->C:Landroid/content/res/Resources;

    const v1, 0x7f10013e

    .line 1195
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1194
    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1196
    iget-boolean p0, p0, Lcom/oplus/camera/professional/h;->i:Z

    if-nez p0, :cond_c

    const-wide/32 v0, 0x3b9aca00

    .line 1197
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-gtz p0, :cond_c

    move v7, v8

    :cond_c
    return v7

    .line 1186
    :pswitch_c
    invoke-static {}, Lcom/oplus/camera/util/Util;->aQ()Z

    move-result p1

    if-eqz p1, :cond_d

    return v7

    .line 1190
    :cond_d
    iget-boolean p0, p0, Lcom/oplus/camera/professional/h;->mbFrontCamera:Z

    xor-int/2addr p0, v8

    return p0

    .line 1183
    :pswitch_d
    iget-boolean p0, p0, Lcom/oplus/camera/professional/h;->mbFrontCamera:Z

    xor-int/2addr p0, v8

    return p0

    :pswitch_e
    return v7

    :pswitch_f
    return v8

    .line 1159
    :pswitch_10
    iget p1, p0, Lcom/oplus/camera/professional/h;->mCameraId:I

    invoke-static {v9, p1}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportCameraFeature(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_e

    .line 1160
    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->getCameraMode()Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/oplus/camera/professional/h;->mCameraId:I

    const-string v0, "preview"

    const-string v1, "preview_edge_filter"

    invoke-static {p1, p0, v0, v1}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportPreviewAlgo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_f

    :cond_e
    move v7, v8

    :cond_f
    return v7

    :pswitch_11
    const-string p0, "com.oplus.feature.professional.parameter.saving.support"

    .line 1156
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 1272
    :cond_10
    :goto_3
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x717ea7aa -> :sswitch_1d
        -0x64edfd1c -> :sswitch_1c
        -0x6273229a -> :sswitch_1b
        -0x5f5094a8 -> :sswitch_1a
        -0x5f048920 -> :sswitch_19
        -0x5efa20f1 -> :sswitch_18
        -0x5e9d1914 -> :sswitch_17
        -0x541be82c -> :sswitch_16
        -0x4f05d6eb -> :sswitch_15
        -0x4bbda787 -> :sswitch_14
        -0x289e651d -> :sswitch_13
        -0x18dc5854 -> :sswitch_12
        -0xdae10b4 -> :sswitch_11
        -0xb0f5f67 -> :sswitch_10
        0x166286d -> :sswitch_f
        0x140b168f -> :sswitch_e
        0x2de4b514 -> :sswitch_d
        0x2f7f1d06 -> :sswitch_c
        0x32ceb7d6 -> :sswitch_b
        0x3b7ae2c0 -> :sswitch_a
        0x3cbb423b -> :sswitch_9
        0x3f66a8ca -> :sswitch_8
        0x5f579904 -> :sswitch_7
        0x631eadda -> :sswitch_6
        0x65b53143 -> :sswitch_5
        0x75ca6ab5 -> :sswitch_4
        0x78e7e46b -> :sswitch_3
        0x7a97ca62 -> :sswitch_2
        0x7c4a73a9 -> :sswitch_1
        0x7e4b5cf3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSupportMenu(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "pref_camera_flashmode_key"

    .line 882
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "pref_switch_dual_camera_key"

    .line 886
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "pref_raw_key"

    .line 887
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "pref_high_resolution_key"

    .line 888
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "pref_camera_photo_ratio_key"

    .line 889
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "pref_camera_timer_shutter_key"

    .line 890
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "pref_setting_key"

    .line 891
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "pref_switch_camera_key"

    .line 892
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "pref_parameter_saving"

    .line 893
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "pref_focus_peaking_key"

    .line 894
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "pref_pro_histogram_key"

    .line 895
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "pref_subsetting_key"

    .line 896
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    const-string v0, "pref_raw_control_key"

    .line 900
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "pref_super_raw_control_key"

    .line 901
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 905
    :cond_2
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportMenu(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 902
    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/h;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->h()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 897
    :cond_5
    :goto_2
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/h;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getSupportSubMenu(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "pref_camera_timer_shutter_key"

    .line 910
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "pref_camera_photo_ratio_key"

    .line 911
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "pref_setting_key"

    .line 912
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "pref_raw_control_key"

    .line 916
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const-string v0, "pref_super_raw_control_key"

    .line 917
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    .line 918
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/h;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->h()Z

    move-result p0

    if-nez p0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1

    .line 913
    :cond_4
    :goto_1
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/h;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getTouchEnable(ZII)Z
    .locals 3

    .line 4213
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070452

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 4214
    iget-object v1, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070719

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 4216
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 4217
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    invoke-virtual {p0, v2}, Lcom/oplus/camera/professional/e;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 4218
    iget p0, v2, Landroid/graphics/Rect;->left:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p0, v0

    iput p0, v2, Landroid/graphics/Rect;->left:I

    .line 4219
    iget p0, v2, Landroid/graphics/Rect;->top:I

    sub-int v1, v0, v1

    sub-int/2addr p0, v1

    iput p0, v2, Landroid/graphics/Rect;->top:I

    .line 4220
    iget p0, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr p0, v0

    iput p0, v2, Landroid/graphics/Rect;->right:I

    .line 4221
    iget p0, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p0, v0

    iput p0, v2, Landroid/graphics/Rect;->bottom:I

    if-eqz p1, :cond_0

    .line 4223
    invoke-virtual {v2, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getZSLMode()Z
    .locals 3

    .line 723
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oplus/camera/professional/h;->C:Landroid/content/res/Resources;

    const v2, 0x7f1001e7

    .line 724
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_high_resolution_key"

    .line 723
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/camera/professional/h;->i:Z

    .line 726
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    .line 727
    invoke-virtual {v0, v2}, Lcom/oplus/camera/professional/g;->g(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 728
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->isRawOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string p0, "HSProfessionalCapMode"

    const-string v0, "getZSLMode exposure time isn\'t auto or raw open,so return false"

    .line 729
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 734
    :cond_2
    iget-boolean v0, p0, Lcom/oplus/camera/professional/h;->i:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->getLogicCameraType()I

    move-result p0

    if-nez p0, :cond_3

    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public getZoomBarOffset()I
    .locals 4

    .line 1805
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0}, Lcom/oplus/camera/e/d;->e()Lcom/oplus/camera/e/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/h;->getTargetPreviewRatio(Lcom/oplus/camera/e/h;)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v2, v0

    if-nez v0, :cond_0

    .line 1806
    iget v0, p0, Lcom/oplus/camera/professional/h;->J:I

    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070667

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0

    .line 1809
    :cond_0
    iget p0, p0, Lcom/oplus/camera/professional/h;->J:I

    return p0
.end method

.method public getZoomConfigure()Lcom/oplus/camera/af;
    .locals 2

    .line 3939
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->getZoomConfigure()Lcom/oplus/camera/af;

    move-result-object v0

    const-string v1, "pref_switch_camera_key"

    .line 3940
    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/h;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/oplus/camera/af;->h(Z)V

    return-object v0
.end method

.method protected hideViewWhileResume()V
    .locals 1

    .line 2851
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->B:Lcom/oplus/camera/professional/h$a;

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    .line 2852
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/h$a;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public isAutoFocus()Z
    .locals 4

    .line 4052
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    const v2, 0x7f1001c5

    .line 4053
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "pref_professional_focus_mode_key"

    .line 4052
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    .line 4054
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 4052
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isBottomGuideEntryViewShown()Z
    .locals 0

    .line 3976
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->G:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/RotateImageView;->isShown()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isCameraSettingMenuOptionEnable(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "pref_raw_control_key"

    .line 2666
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2667
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/h;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "pref_switch_dual_camera_key"

    .line 2668
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/h;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 2670
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    const-string p1, "pref_switch_camera_key"

    const-string v0, "camera_main"

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2672
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->e(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 2679
    :cond_1
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->isCameraSettingMenuOptionEnable(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected isHideUICapture()Z
    .locals 1

    .line 2077
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/camera/professional/h;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->getIsCapturingState()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHistogramOpen()Z
    .locals 1

    const-string v0, "pref_pro_histogram_key"

    .line 4071
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/h;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->T()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInPreviewArea(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 3932
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3933
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->p()Landroid/widget/RelativeLayout;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 3934
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, p0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method protected isInProMode()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected isModeBarSelected()Z
    .locals 0

    .line 3947
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    invoke-virtual {p0}, Lcom/oplus/camera/professional/e;->isSelected()Z

    move-result p0

    return p0
.end method

.method public isNeedProgressBarInCapture()Z
    .locals 4

    .line 3665
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lcom/oplus/camera/professional/h;->C:Landroid/content/res/Resources;

    const v1, 0x7f10013e

    .line 3666
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "pref_professional_exposure_time_key"

    .line 3665
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3668
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3669
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0x3b9aca00

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isRawOpen()Z
    .locals 3

    const-string v0, "pref_raw_control_key"

    .line 798
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/h;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "off"

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    .line 799
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "pref_super_raw_control_key"

    .line 800
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/h;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    .line 801
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRawRequestTag()Z
    .locals 0

    .line 815
    iget-boolean p0, p0, Lcom/oplus/camera/professional/h;->mbRawRequestTag:Z

    return p0
.end method

.method public isShowProPanelMenu()Z
    .locals 0

    .line 4030
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    if-eqz p0, :cond_0

    .line 4031
    invoke-virtual {p0}, Lcom/oplus/camera/professional/e;->isSelected()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isShowZoomMenu()Z
    .locals 0

    .line 4047
    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->a()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isSubMenuEnable()Z
    .locals 1

    const-string v0, "pref_subsetting_key"

    .line 3952
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/h;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected isSuperRawOpen()Z
    .locals 2

    const-string v0, "pref_super_raw_control_key"

    .line 805
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/h;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "off"

    .line 806
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "super_raw"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public needDelayCloseForCapture()Z
    .locals 4

    .line 389
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0x3b9aca00

    cmp-long v0, v2, v0

    if-gtz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 393
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->needDelayCloseForCapture()Z

    move-result p0

    return p0
.end method

.method public needSurface(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "type_still_capture_raw"

    .line 772
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "pref_super_raw_control_key"

    const-string v3, "pref_raw_control_key"

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    .line 773
    invoke-virtual {p0, v3}, Lcom/oplus/camera/professional/h;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 774
    invoke-virtual {p0, v2}, Lcom/oplus/camera/professional/h;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const-string p0, "com.oplus.disable.raw"

    .line 775
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    move v1, v4

    :cond_1
    return v1

    :cond_2
    const-string v0, "type_still_capture_jpeg"

    .line 778
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 779
    invoke-static {}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportApsCapture()Z

    move-result p0

    xor-int/2addr p0, v4

    return p0

    :cond_3
    const-string v0, "type_tuning_data_raw"

    .line 782
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 783
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "com.oplus.tuning.data.buffer.support"

    .line 784
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 785
    invoke-virtual {p0, v3}, Lcom/oplus/camera/professional/h;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 786
    invoke-virtual {p0, v2}, Lcom/oplus/camera/professional/h;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    move v1, v4

    :cond_5
    return v1

    :cond_6
    const-string v0, "type_preview_frame"

    .line 789
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v4

    .line 793
    :cond_7
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->needSurface(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected onAfterPictureTaken([BZ)V
    .locals 5

    const-string p1, "HSProfessionalCapMode"

    const-string p2, "onAfterPictureTaken"

    .line 2333
    invoke-static {p1, p2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2335
    iget-boolean p1, p0, Lcom/oplus/camera/professional/h;->m:Z

    const/4 p2, 0x1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->isRawRequestTag()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2336
    iput-boolean p2, p0, Lcom/oplus/camera/professional/h;->m:Z

    return-void

    .line 2340
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->isSuperRawOpen()Z

    move-result p1

    const-wide/16 v0, 0x12c

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    .line 2341
    invoke-direct {p0, v3}, Lcom/oplus/camera/professional/h;->b(I)V

    .line 2342
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->B:Lcom/oplus/camera/professional/h$a;

    invoke-static {p1, v3, v2, v0, v1}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    .line 2344
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    invoke-virtual {p1}, Lcom/oplus/camera/professional/e;->isSelected()Z

    move-result p1

    if-nez p1, :cond_1

    .line 2345
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1, p2, v3}, Lcom/oplus/camera/capmode/a;->a(ZZ)V

    .line 2346
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1, p2}, Lcom/oplus/camera/capmode/a;->d(Z)V

    .line 2349
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;

    move-result-object p1

    .line 2350
    iget-object v4, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v4, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    .line 2352
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->t()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2353
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->x:Lcom/oplus/camera/ui/RotateImageView;

    invoke-static {p1, v3, v2, v0, v1}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    goto :goto_0

    .line 2355
    :cond_2
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->i()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/camera/professional/h;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2356
    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;

    move-result-object p1

    .line 2358
    iget-object v4, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v4}, Lcom/oplus/camera/ui/CameraUIInterface;->s()I

    move-result v4

    if-eq p2, v4, :cond_3

    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v4

    if-nez v4, :cond_3

    const/16 v4, 0xb

    .line 2359
    invoke-virtual {p1, v4}, Lcom/oplus/camera/ui/control/b;->a(I)V

    .line 2362
    :cond_3
    iget-object v4, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v4, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    .line 2363
    invoke-direct {p0, v3}, Lcom/oplus/camera/professional/h;->b(I)V

    .line 2364
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->B:Lcom/oplus/camera/professional/h$a;

    invoke-static {p1, v3, v2, v0, v1}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    .line 2366
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    invoke-virtual {p1}, Lcom/oplus/camera/professional/e;->isSelected()Z

    move-result p1

    if-nez p1, :cond_4

    .line 2367
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1, p2, v3}, Lcom/oplus/camera/capmode/a;->a(ZZ)V

    .line 2370
    :cond_4
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->t()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2371
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->x:Lcom/oplus/camera/ui/RotateImageView;

    invoke-static {p1, v3, v2, v0, v1}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    .line 2375
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/oplus/camera/professional/e;->isSelected()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/oplus/camera/professional/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->J()Z

    move-result p1

    if-nez p1, :cond_6

    .line 2376
    invoke-direct {p0, v3, p2}, Lcom/oplus/camera/professional/h;->b(IZ)V

    goto :goto_1

    :cond_6
    const/4 p1, 0x4

    .line 2378
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/professional/h;->b(IZ)V

    .line 2381
    :goto_1
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1, p2, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->d(ZZ)V

    .line 2383
    iget-boolean p1, p0, Lcom/oplus/camera/professional/h;->k:Z

    if-eqz p1, :cond_7

    .line 2384
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->B:Lcom/oplus/camera/professional/h$a;

    invoke-static {p1, v3, v2, v0, v1}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    .line 2385
    iput-boolean v3, p0, Lcom/oplus/camera/professional/h;->k:Z

    .line 2388
    :cond_7
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->B:Lcom/oplus/camera/professional/h$a;

    invoke-virtual {p0, p2}, Lcom/oplus/camera/professional/h$a;->a(Z)V

    return-void
.end method

.method public onAfterSnapping()Z
    .locals 5

    const-string v0, "HSProfessionalCapMode"

    const-string v1, "onAfterSnapping"

    .line 2208
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2210
    iget-boolean v1, p0, Lcom/oplus/camera/professional/h;->i:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oplus/camera/professional/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 2211
    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2212
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/32 v3, 0x3b9aca00

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    .line 2213
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    .line 2214
    :goto_0
    iget-object v2, p0, Lcom/oplus/camera/professional/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v2, v1}, Lcom/oplus/camera/capmode/a;->c(I)V

    goto :goto_1

    :cond_1
    const-string v1, "onAfterSnapping is ZSL mode, do nothing"

    .line 2216
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2219
    :goto_1
    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->isSuperRawOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 2220
    iput-boolean v1, p0, Lcom/oplus/camera/professional/h;->h:Z

    .line 2223
    :cond_2
    iget-object v1, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/oplus/camera/professional/h$7;

    invoke-direct {v2, p0}, Lcom/oplus/camera/professional/h$7;-><init>(Lcom/oplus/camera/professional/h;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const-string p0, "onAfterSnapping X"

    .line 2272
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onAfterStartPreview(Z)V
    .locals 7

    const-string v0, "HSProfessionalCapMode"

    const-string v1, "onAfterStartPreview"

    .line 2684
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2686
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->B:Lcom/oplus/camera/professional/h$a;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2687
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/h$a;->a(Z)V

    .line 2690
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->z()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.oplus.macro.best.focus.distance"

    .line 2691
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result v0

    .line 2692
    iget-object v2, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v3, 0x7f100234

    const v4, 0x7f0805e9

    const v5, 0x7f0604ff

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 2694
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v6

    .line 2692
    invoke-interface {v2, v3, v4, v5, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->b(III[Ljava/lang/Object;)V

    :cond_1
    const-string v0, "pref_pro_histogram_key"

    .line 2697
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/h;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2698
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->U()V

    .line 2701
    :cond_2
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->r()V

    .line 2702
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->O()V

    .line 2703
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->m()V

    .line 2704
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onAfterStartPreview(Z)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 4

    .line 1876
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBackPressed, mbInCapturing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/professional/h;->mbInCapturing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HSProfessionalCapMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1878
    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/professional/h;->b(IZ)V

    .line 1880
    iget-object v2, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    invoke-virtual {v2}, Lcom/oplus/camera/professional/e;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1881
    iget-object v2, p0, Lcom/oplus/camera/professional/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v2, v1, v1}, Lcom/oplus/camera/capmode/a;->a(ZZ)V

    .line 1882
    iget-object v2, p0, Lcom/oplus/camera/professional/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v2, v1}, Lcom/oplus/camera/capmode/a;->d(Z)V

    .line 1884
    new-instance v2, Lcom/oplus/camera/professional/u$a;

    invoke-direct {v2}, Lcom/oplus/camera/professional/u$a;-><init>()V

    .line 1885
    iput-boolean v0, v2, Lcom/oplus/camera/professional/u$a;->a:Z

    const/16 v0, 0xfa

    .line 1886
    iput v0, v2, Lcom/oplus/camera/professional/u$a;->c:I

    const/16 v0, 0x190

    .line 1887
    iput v0, v2, Lcom/oplus/camera/professional/u$a;->g:I

    const/4 v0, 0x0

    .line 1888
    iput v0, v2, Lcom/oplus/camera/professional/u$a;->d:F

    .line 1889
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f07063f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, v2, Lcom/oplus/camera/professional/u$a;->e:F

    .line 1890
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    invoke-virtual {v0, v2}, Lcom/oplus/camera/professional/g;->setAllPopupInvisibility(Lcom/oplus/camera/professional/u$a;)V

    .line 1891
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/e;->a()V

    .line 1892
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p0, v1}, Lcom/oplus/camera/e/d;->j(Z)V

    return v1

    .line 1895
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method protected onBeforePictureTaken([BZ)V
    .locals 0

    const-string p1, "HSProfessionalCapMode"

    const-string p2, "onBeforePictureTaken"

    .line 2318
    invoke-static {p1, p2}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2320
    iget-boolean p1, p0, Lcom/oplus/camera/professional/h;->i:Z

    if-eqz p1, :cond_0

    .line 2321
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;

    move-result-object p0

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;Z)V

    :cond_0
    return-void
.end method

.method protected onBeforePreview()V
    .locals 5

    const-string v0, "HSProfessionalCapMode"

    const-string v1, "onBeforePreview"

    .line 2709
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2711
    iget-object v1, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/oplus/camera/professional/h$9;

    invoke-direct {v2, p0}, Lcom/oplus/camera/professional/h$9;-><init>(Lcom/oplus/camera/professional/h;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2743
    iget-object v1, p0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v2, Lcom/oplus/ocs/camera/CameraParameter;->ZOOM_RATIO:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    iget-object v3, p0, Lcom/oplus/camera/professional/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v3}, Lcom/oplus/camera/capmode/a;->ak()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    const-string v1, "pref_focus_peaking_key"

    .line 2745
    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/h;->getSupportFunction(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "off"

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 2746
    iget-object v2, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2747
    iget-object v2, p0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v2, v1, v4}, Lcom/oplus/camera/e/d;->a(ZZ)V

    .line 2750
    :cond_0
    iget-boolean v1, p0, Lcom/oplus/camera/professional/h;->E:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "pref_restore_professional_params"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 2769
    :cond_1
    iget-boolean v0, p0, Lcom/oplus/camera/professional/h;->mbCapModeInit:Z

    if-eqz v0, :cond_2

    .line 2770
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->k()V

    .line 2773
    :cond_2
    invoke-direct {p0, v4}, Lcom/oplus/camera/professional/h;->f(Z)V

    .line 2774
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->D()V

    return-void

    :cond_3
    :goto_0
    const-string v1, "onBeforePreview, initParamToAuto"

    .line 2751
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2753
    invoke-direct {p0, v4}, Lcom/oplus/camera/professional/h;->b(Z)V

    .line 2755
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_parameter_saving"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2757
    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/h;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2758
    iget-object v1, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/oplus/camera/professional/h$10;

    invoke-direct {v2, p0, v0}, Lcom/oplus/camera/professional/h$10;-><init>(Lcom/oplus/camera/professional/h;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method protected onBeforeSnapping(Lcom/oplus/camera/e/c;)Z
    .locals 2

    .line 2082
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/oplus/camera/professional/g;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "HSProfessionalCapMode"

    const-string p1, "onBeforeSnapping, HSLevelPanelScrolling"

    .line 2083
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 2088
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/professional/h$6;

    invoke-direct {v1, p0}, Lcom/oplus/camera/professional/h$6;-><init>(Lcom/oplus/camera/professional/h;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2163
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/h;->setRawRequestTag(Z)V

    const/4 p1, 0x0

    .line 2164
    iput-object p1, p0, Lcom/oplus/camera/professional/h;->R:[B

    .line 2166
    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->isRawOpen()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 2167
    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/h;->setRawRequestTag(Z)V

    .line 2168
    iput-boolean v0, p0, Lcom/oplus/camera/professional/h;->m:Z

    .line 2171
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->isSuperRawOpen()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2172
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/h;->setRawRequestTag(Z)V

    .line 2173
    iput-boolean v0, p0, Lcom/oplus/camera/professional/h;->m:Z

    .line 2175
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->g:Ljava/lang/Object;

    monitor-enter p1

    .line 2176
    :try_start_0
    iput-boolean v0, p0, Lcom/oplus/camera/professional/h;->T:Z

    .line 2177
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 2180
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->D()V

    .line 2182
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz p1, :cond_3

    .line 2183
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p1, v1}, Lcom/oplus/camera/e/d;->j(Z)V

    .line 2186
    :cond_3
    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->setCaptureRequestPictureSizeScale()V

    return v1
.end method

.method public onCameraPermissionGranted()V
    .locals 6

    .line 398
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->as()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/professional/h;->D:I

    .line 400
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    .line 403
    iget-boolean v2, p0, Lcom/oplus/camera/professional/h;->F:Z

    const-wide/32 v3, 0x77359400

    if-eqz v2, :cond_1

    .line 404
    iget v2, p0, Lcom/oplus/camera/professional/h;->D:I

    invoke-virtual {p0, v2}, Lcom/oplus/camera/professional/h;->getCameraInfo(I)Lcom/oplus/camera/e/h;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/professional/g;->a(Lcom/oplus/camera/e/h;Lcom/oplus/camera/professional/g$a;)V

    .line 406
    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->isSuperRawOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    iget v1, p0, Lcom/oplus/camera/professional/h;->D:I

    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/h;->getCameraInfo(I)Lcom/oplus/camera/e/h;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Lcom/oplus/camera/professional/g;->a(Lcom/oplus/camera/e/h;J)V

    .line 411
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    invoke-virtual {p0}, Lcom/oplus/camera/professional/g;->a()V

    goto :goto_0

    .line 413
    :cond_1
    iget v2, p0, Lcom/oplus/camera/professional/h;->D:I

    invoke-virtual {p0, v2}, Lcom/oplus/camera/professional/h;->getCameraInfo(I)Lcom/oplus/camera/e/h;

    move-result-object v2

    iget-object v5, p0, Lcom/oplus/camera/professional/h;->A:Landroid/os/Handler;

    invoke-virtual {v0, v2, v5, v1}, Lcom/oplus/camera/professional/g;->a(Lcom/oplus/camera/e/h;Landroid/os/Handler;Lcom/oplus/camera/professional/g$a;)V

    .line 415
    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->isSuperRawOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 416
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    iget v1, p0, Lcom/oplus/camera/professional/h;->D:I

    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/h;->getCameraInfo(I)Lcom/oplus/camera/e/h;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Lcom/oplus/camera/professional/g;->a(Lcom/oplus/camera/e/h;J)V

    .line 420
    :cond_2
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->m()V

    .line 421
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    iget-object v1, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/g;->setSettleListener(Lcom/oplus/camera/professional/g$c;)V

    .line 422
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    iget-object v1, p0, Lcom/oplus/camera/professional/h;->ai:Lcom/oplus/camera/professional/g$b;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/g;->setMotionListener(Lcom/oplus/camera/professional/g$b;)V

    .line 424
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->B:Lcom/oplus/camera/professional/h$a;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 425
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/h$a;->setVisibility(I)V

    .line 428
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oplus/camera/capmode/a;->d(Z)V

    .line 429
    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/h;->a(I)V

    .line 430
    iput-boolean v1, p0, Lcom/oplus/camera/professional/h;->F:Z

    :cond_4
    :goto_0
    return-void
.end method

.method public onCaptureCompleted(Lcom/oplus/camera/aps/service/CameraCaptureResult;Lcom/oplus/camera/e/c;)V
    .locals 0

    .line 2302
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/BaseMode;->onCaptureCompleted(Lcom/oplus/camera/aps/service/CameraCaptureResult;Lcom/oplus/camera/e/c;)V

    .line 2304
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onCaptureCompleted, systemTime: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HSProfessionalCapMode"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CaptureRequest;Lcom/oplus/camera/e/c;)V
    .locals 0

    .line 2309
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/BaseMode;->onCaptureFailed(Landroid/hardware/camera2/CaptureRequest;Lcom/oplus/camera/e/c;)V

    .line 2311
    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->isSuperRawOpen()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 2312
    iput-boolean p1, p0, Lcom/oplus/camera/professional/h;->h:Z

    :cond_0
    return-void
.end method

.method public onCaptureSequenceCompleted()V
    .locals 3

    .line 1901
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->onCaptureSequenceCompleted()V

    const-string v0, "HSProfessionalCapMode"

    const-string v1, "onCaptureSequenceCompleted"

    .line 1903
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1905
    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->isSuperRawOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1906
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f100314

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 1908
    iget-boolean v0, p0, Lcom/oplus/camera/professional/h;->h:Z

    if-nez v0, :cond_0

    .line 1909
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    new-instance v1, Lcom/oplus/camera/ui/control/b;

    invoke-direct {v1}, Lcom/oplus/camera/ui/control/b;-><init>()V

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    .line 1910
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZ)V

    .line 1912
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1913
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/professional/h$4;

    invoke-direct {v1, p0}, Lcom/oplus/camera/professional/h$4;-><init>(Lcom/oplus/camera/professional/h;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 0

    .line 367
    invoke-super/range {p0 .. p6}, Lcom/oplus/camera/capmode/BaseMode;->onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    .line 369
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    if-eqz p1, :cond_0

    const/4 p2, 0x5

    .line 371
    invoke-virtual {p1, p2}, Lcom/oplus/camera/professional/g;->g(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 372
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result p1

    if-nez p1, :cond_0

    .line 373
    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->isFlashState()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 374
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->c()Lcom/oplus/camera/ui/preview/h;

    move-result-object p0

    invoke-virtual {p0, p5, p6, p3, p4}, Lcom/oplus/camera/ui/preview/h;->b(JJ)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 2834
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0902d6

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2836
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/professional/h;->G:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz p1, :cond_1

    .line 2838
    invoke-virtual {p1}, Lcom/oplus/camera/ui/RotateImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 2839
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->at()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onDeInitCameraMode(Ljava/lang/String;)V
    .locals 3

    const-string p1, "HSProfessionalCapMode"

    const-string v0, "onDeInitCameraMode"

    .line 1987
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1989
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->A:Landroid/os/Handler;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1990
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1993
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/oplus/camera/professional/e;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    invoke-virtual {p1}, Lcom/oplus/camera/professional/e;->isShown()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1994
    invoke-direct {p0, v2, v1}, Lcom/oplus/camera/professional/h;->b(IZ)V

    .line 1997
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    if-eqz p1, :cond_2

    .line 1998
    invoke-virtual {p1}, Lcom/oplus/camera/professional/g;->h()V

    .line 2001
    :cond_2
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->z()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2002
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->w(Z)V

    .line 2005
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->B:Lcom/oplus/camera/professional/h$a;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/oplus/camera/professional/h$a;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_4

    .line 2006
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->I()V

    .line 2007
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->y()V

    :cond_4
    const-string p1, "0"

    .line 2010
    invoke-direct {p0, p1, v2}, Lcom/oplus/camera/professional/h;->b(Ljava/lang/String;Z)V

    .line 2012
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->ag:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2013
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->ag:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2016
    :cond_5
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->y:Lcom/oplus/camera/p;

    if-eqz p1, :cond_6

    .line 2017
    invoke-virtual {p1}, Lcom/oplus/camera/p;->c()V

    .line 2018
    iput-object v0, p0, Lcom/oplus/camera/professional/h;->y:Lcom/oplus/camera/p;

    .line 2021
    :cond_6
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->T()Z

    move-result p1

    if-eqz p1, :cond_7

    iget p1, p0, Lcom/oplus/camera/professional/h;->aa:I

    if-eqz p1, :cond_7

    .line 2022
    iput v2, p0, Lcom/oplus/camera/professional/h;->aa:I

    .line 2023
    invoke-direct {p0, v2}, Lcom/oplus/camera/professional/h;->d(I)V

    .line 2026
    :cond_7
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->w(I)V

    .line 2027
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->b()Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v1, p0, Lcom/oplus/camera/professional/h;->af:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2028
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->k()Lcom/oplus/camera/ui/a/a;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 2031
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/a/a;->a(Lcom/oplus/camera/ui/a/a$b;)V

    :cond_8
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "HSProfessionalCapMode"

    const-string v1, "onDestroy"

    .line 2583
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2585
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2586
    invoke-virtual {v0}, Lcom/oplus/camera/professional/g;->f()V

    .line 2587
    iput-object v1, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    const/4 v0, 0x0

    .line 2588
    iput-boolean v0, p0, Lcom/oplus/camera/professional/h;->F:Z

    .line 2591
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->B:Lcom/oplus/camera/professional/h$a;

    if-eqz v0, :cond_1

    .line 2592
    iput-object v1, p0, Lcom/oplus/camera/professional/h;->B:Lcom/oplus/camera/professional/h$a;

    .line 2595
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->G:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz v0, :cond_2

    .line 2596
    iput-object v1, p0, Lcom/oplus/camera/professional/h;->G:Lcom/oplus/camera/ui/RotateImageView;

    .line 2599
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    if-eqz v0, :cond_3

    .line 2600
    iput-object v1, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    .line 2603
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->y:Lcom/oplus/camera/p;

    if-eqz v0, :cond_4

    .line 2604
    invoke-virtual {v0}, Lcom/oplus/camera/p;->c()V

    .line 2605
    iput-object v1, p0, Lcom/oplus/camera/professional/h;->y:Lcom/oplus/camera/p;

    :cond_4
    return-void
.end method

.method public onGetBeforeCaptureMsgCommonData(Lcom/oplus/camera/statistics/model/DcsMsgData;)Lcom/oplus/camera/statistics/model/DcsMsgData;
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3684
    instance-of v1, p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;

    if-eqz v1, :cond_0

    .line 3685
    check-cast p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_1

    return-object v0

    .line 3692
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/g;->e(I)Ljava/lang/String;

    move-result-object v0

    .line 3693
    iget-object v1, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/oplus/camera/professional/g;->e(I)Ljava/lang/String;

    move-result-object v1

    .line 3694
    iget-object v2, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, p0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    .line 3695
    invoke-interface {v3}, Lcom/oplus/camera/e/d;->e()Lcom/oplus/camera/e/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/e/h;->r()F

    move-result v3

    .line 3694
    invoke-virtual {v2, v1, v3}, Lcom/oplus/camera/professional/g;->a(IF)Ljava/lang/String;

    move-result-object v1

    .line 3696
    iget-object v2, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/oplus/camera/professional/g;->e(I)Ljava/lang/String;

    move-result-object v2

    .line 3697
    iget-object v3, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/oplus/camera/professional/g;->e(I)Ljava/lang/String;

    move-result-object v3

    .line 3698
    iget-object v4, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    invoke-virtual {v4}, Lcom/oplus/camera/professional/g;->getFocusValue()Ljava/lang/String;

    move-result-object v4

    .line 3700
    iget-object v5, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    const v6, 0x7f10013e

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v2, "auto"

    .line 3704
    :cond_2
    iput-object v0, p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mProfessionWbValue:Ljava/lang/String;

    .line 3705
    iput-object v1, p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mProfessionEvValue:Ljava/lang/String;

    .line 3706
    iput-object v2, p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mProfessionExpValue:Ljava/lang/String;

    .line 3707
    iput-object v3, p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mProfessionISOValue:Ljava/lang/String;

    .line 3708
    iput-object v4, p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mProfessionFocusValue:Ljava/lang/String;

    .line 3709
    iget-boolean v0, p0, Lcom/oplus/camera/professional/h;->i:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mProfessionHighResolution:Ljava/lang/String;

    .line 3712
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "off"

    if-eqz v0, :cond_4

    const-string v0, "pref_super_raw_control_key"

    .line 3713
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/h;->getSupportFunction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3714
    iget-object v2, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 3716
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "pref_raw_control_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3720
    :cond_4
    :goto_1
    iput-object v1, p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mProfessionRawControl:Ljava/lang/String;

    .line 3721
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "camera_main"

    if-eqz v0, :cond_5

    .line 3722
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "pref_switch_camera_key"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_5
    iput-object v1, p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mProfessionCameraId:Ljava/lang/String;

    return-object p1
.end method

.method public onGetSupportSettingList(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "pref_camera_timer_shutter_key"

    .line 837
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 838
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/professional/h;->getSupportSettingList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    .line 839
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    .line 842
    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 845
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    return-object p1

    :cond_2
    const-string v0, "pref_camera_photo_ratio_key"

    .line 848
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 849
    invoke-static {v0, p2}, Lcom/oplus/camera/aps/config/CameraConfig;->getSupportedList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    .line 850
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_3

    const-string p2, "standard"

    .line 852
    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 853
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 856
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_4

    goto :goto_1

    :cond_4
    move-object p1, v1

    :goto_1
    return-object p1

    :cond_5
    const-string v0, "pref_camera_flashmode_key"

    .line 860
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 861
    iget p1, p0, Lcom/oplus/camera/professional/h;->mCameraId:I

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/professional/h;->getSupportSettingList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    .line 863
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_6

    .line 866
    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 869
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_7

    goto :goto_2

    :cond_7
    move-object p1, v1

    :goto_2
    return-object p1

    .line 872
    :cond_8
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/BaseMode;->onGetSupportSettingList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected onInitCameraMode()V
    .locals 5

    const-string v0, "HSProfessionalCapMode"

    const-string v1, "onInitCameraMode, Start"

    .line 459
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->restoreProPreference()V

    .line 462
    invoke-static {}, Lcom/oplus/camera/professional/c;->a()V

    .line 464
    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->isNightProModeSupport()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 465
    iput-boolean v1, p0, Lcom/oplus/camera/professional/h;->E:Z

    :cond_0
    const/4 v0, 0x0

    .line 468
    iput-boolean v0, p0, Lcom/oplus/camera/professional/h;->P:Z

    .line 469
    iput-boolean v1, p0, Lcom/oplus/camera/professional/h;->Q:Z

    .line 471
    iget-object v1, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/oplus/camera/professional/h;->C:Landroid/content/res/Resources;

    const v3, 0x7f1001e7

    .line 472
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_high_resolution_key"

    .line 471
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oplus/camera/professional/h;->i:Z

    .line 474
    iget-boolean v1, p0, Lcom/oplus/camera/professional/h;->i:Z

    if-nez v1, :cond_1

    .line 475
    iget-object v1, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const-string v2, "off"

    invoke-interface {v1, v3, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/professional/h;->u:Lcom/oplus/camera/ui/h;

    if-nez v1, :cond_2

    .line 479
    new-instance v1, Lcom/oplus/camera/ui/h;

    iget-object v2, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    new-instance v3, Lcom/oplus/camera/professional/h$12;

    invoke-direct {v3, p0}, Lcom/oplus/camera/professional/h$12;-><init>(Lcom/oplus/camera/professional/h;)V

    invoke-direct {v1, v2, v3}, Lcom/oplus/camera/ui/h;-><init>(Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/h$a;)V

    iput-object v1, p0, Lcom/oplus/camera/professional/h;->u:Lcom/oplus/camera/ui/h;

    .line 500
    :cond_2
    iget-object v1, p0, Lcom/oplus/camera/professional/h;->A:Landroid/os/Handler;

    if-nez v1, :cond_3

    .line 501
    new-instance v1, Lcom/oplus/camera/professional/h$16;

    invoke-direct {v1, p0}, Lcom/oplus/camera/professional/h$16;-><init>(Lcom/oplus/camera/professional/h;)V

    iput-object v1, p0, Lcom/oplus/camera/professional/h;->A:Landroid/os/Handler;

    :cond_3
    const-wide/32 v1, 0x3b9aca00

    .line 509
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gtz v1, :cond_4

    .line 510
    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;

    move-result-object v1

    .line 511
    iget-object v2, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    .line 514
    :cond_4
    iget-object v1, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v2, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    const v3, 0x7f1000fd

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->c(Ljava/lang/String;)V

    .line 516
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->o()V

    .line 518
    iget-object v1, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    if-eqz v1, :cond_6

    .line 519
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->z()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 520
    iget-object v1, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    invoke-virtual {v1}, Lcom/oplus/camera/professional/g;->e()V

    goto :goto_0

    .line 522
    :cond_5
    iget-object v1, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/professional/g;->setVisibility(I)V

    .line 526
    :cond_6
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    if-eqz v1, :cond_8

    .line 527
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->z()Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v0, 0x8

    .line 528
    :cond_7
    iget-object v1, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oplus/camera/professional/e;->setAlpha(F)V

    .line 529
    iget-object v1, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/professional/e;->setVisibility(I)V

    .line 532
    :cond_8
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->g()V

    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "HSProfessionalCapMode"

    const-string v1, "onLongPress"

    .line 206
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-direct {p0, p1}, Lcom/oplus/camera/professional/h;->a(Landroid/view/MotionEvent;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onMenuOptionAdded(Ljava/lang/String;)V
    .locals 3

    const-string v0, "pref_super_raw_control_key"

    .line 820
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 821
    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->ag()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 822
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->C:Landroid/content/res/Resources;

    const v1, 0x7f070b41

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    .line 823
    iget-object v1, p0, Lcom/oplus/camera/professional/h;->C:Landroid/content/res/Resources;

    const v2, 0x7f070b42

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 824
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v2, 0x1

    invoke-interface {p0, v0, v2, p1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Ljava/lang/String;ZII)V

    :cond_0
    return-void
.end method

.method public onMoreModeHidden(I)V
    .locals 3

    .line 4008
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onMoreModeHidden(I)V

    .line 4009
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->F()Z

    move-result p1

    .line 4010
    iput-boolean p1, p0, Lcom/oplus/camera/professional/h;->P:Z

    if-nez p1, :cond_0

    .line 4013
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->J()V

    .line 4016
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/e;->isSelected()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4017
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v2, 0x4

    invoke-interface {v0, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(II)V

    .line 4020
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->x:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 4021
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->x:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    .line 4024
    :cond_2
    invoke-direct {p0, v1}, Lcom/oplus/camera/professional/h;->d(Z)V

    .line 4025
    invoke-direct {p0, v1, v1}, Lcom/oplus/camera/professional/h;->b(ZZ)V

    return-void
.end method

.method public onMoreModeShown()V
    .locals 3

    .line 3990
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->onMoreModeShown()V

    const/4 v0, 0x1

    .line 3991
    iput-boolean v0, p0, Lcom/oplus/camera/professional/h;->P:Z

    .line 3992
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->I()V

    .line 3994
    iget-object v1, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3995
    iget-object v1, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, v2, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(II)V

    .line 3998
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->x:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    .line 3999
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    .line 4002
    :cond_1
    invoke-direct {p0, v2}, Lcom/oplus/camera/professional/h;->d(Z)V

    .line 4003
    invoke-direct {p0, v2, v2}, Lcom/oplus/camera/professional/h;->b(ZZ)V

    return-void
.end method

.method protected onPause()V
    .locals 3

    const-string v0, "HSProfessionalCapMode"

    const-string v1, "onPause"

    .line 2549
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2551
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->g(I)V

    .line 2552
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->g(Z)V

    .line 2554
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oplus/camera/professional/h;->aa:I

    if-eqz v0, :cond_0

    .line 2555
    iput v1, p0, Lcom/oplus/camera/professional/h;->aa:I

    .line 2556
    invoke-direct {p0, v1}, Lcom/oplus/camera/professional/h;->d(I)V

    .line 2559
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->B:Lcom/oplus/camera/professional/h$a;

    if-eqz v0, :cond_1

    .line 2560
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/h$a;->a(Z)V

    .line 2563
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->I:Landroid/animation/ValueAnimator;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2564
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2565
    iput-object v2, p0, Lcom/oplus/camera/professional/h;->I:Landroid/animation/ValueAnimator;

    .line 2568
    :cond_2
    iput-boolean v1, p0, Lcom/oplus/camera/professional/h;->k:Z

    .line 2570
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->A:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 2571
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2574
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    if-eqz v0, :cond_4

    .line 2575
    invoke-virtual {v0}, Lcom/oplus/camera/professional/g;->h()V

    .line 2578
    :cond_4
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v0, 0x1

    invoke-interface {p0, v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->d(ZZ)V

    return-void
.end method

.method public onPreviewCaptureResult(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;)V
    .locals 9

    .line 1033
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onPreviewCaptureResult(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;)V

    .line 1035
    iget-boolean v0, p0, Lcom/oplus/camera/professional/h;->mbCapModeInit:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "HSProfessionalCapMode"

    if-eqz p1, :cond_c

    .line 1039
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v1

    if-nez v1, :cond_1

    goto/16 :goto_2

    .line 1045
    :cond_1
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object p1

    .line 1048
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1049
    sget-object v1, Lcom/oplus/camera/e/b;->T:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_0

    .line 1051
    :cond_2
    sget-object v1, Lcom/oplus/camera/e/b;->ah:Landroid/hardware/camera2/CaptureResult$Key;

    .line 1054
    :goto_0
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1055
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 1057
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    .line 1061
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    aget v5, p1, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1063
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    const/4 p1, -0x1

    const/4 v1, 0x1

    if-eqz v2, :cond_5

    .line 1067
    iget-object v6, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    invoke-virtual {v6, v1}, Lcom/oplus/camera/professional/g;->g(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1068
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    .line 1069
    invoke-virtual {v7, v1}, Lcom/oplus/camera/professional/g;->c(I)Ljava/util/ArrayList;

    move-result-object v7

    .line 1068
    invoke-direct {p0, v6, v7}, Lcom/oplus/camera/professional/h;->a(ILjava/util/ArrayList;)I

    move-result v6

    if-le v6, p1, :cond_5

    .line 1071
    iget-object v7, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    .line 1072
    invoke-virtual {v7, v1, v6}, Lcom/oplus/camera/professional/g;->a(II)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-boolean v7, p0, Lcom/oplus/camera/professional/h;->n:Z

    if-nez v7, :cond_5

    .line 1073
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onPreviewCaptureResult, iso: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/oplus/camera/professional/h;->r:I

    .line 1078
    iget-object v2, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    invoke-virtual {v2, v1}, Lcom/oplus/camera/professional/g;->d(I)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1080
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v7, v6, :cond_5

    .line 1081
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v7, "pref_professional_iso_key"

    .line 1082
    invoke-static {v7, v2}, Lcom/oplus/camera/professional/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    iget-object v7, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    invoke-virtual {v7, v1, v6}, Lcom/oplus/camera/professional/g;->scrollTo(II)V

    .line 1084
    invoke-direct {p0, v1, v2}, Lcom/oplus/camera/professional/h;->a(ILjava/lang/String;)V

    :cond_5
    if-eqz v3, :cond_7

    .line 1089
    iget-object v2, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Lcom/oplus/camera/professional/g;->g(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1090
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v2, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    .line 1091
    invoke-virtual {v2, v6}, Lcom/oplus/camera/professional/g;->c(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1090
    invoke-direct {p0, v7, v8, v2}, Lcom/oplus/camera/professional/h;->a(JLjava/util/ArrayList;)I

    move-result v2

    if-le v2, p1, :cond_7

    .line 1093
    iget-object v7, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    .line 1094
    invoke-virtual {v7, v6, v2}, Lcom/oplus/camera/professional/g;->a(II)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-boolean v7, p0, Lcom/oplus/camera/professional/h;->n:Z

    if-nez v7, :cond_7

    .line 1095
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onPreviewCaptureResult, exposureTime: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/oplus/camera/professional/h;->s:J

    .line 1099
    iget-object v3, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    invoke-virtual {v3, v6}, Lcom/oplus/camera/professional/g;->d(I)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 1101
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v7, v2, :cond_7

    .line 1102
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v7, "pref_professional_exposure_time_key"

    .line 1103
    invoke-static {v7, v3}, Lcom/oplus/camera/professional/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    iget-object v7, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    invoke-virtual {v7, v6, v2}, Lcom/oplus/camera/professional/g;->scrollTo(II)V

    .line 1105
    invoke-direct {p0, v6, v3}, Lcom/oplus/camera/professional/h;->a(ILjava/lang/String;)V

    .line 1110
    :cond_7
    iget-object v2, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/oplus/camera/professional/g;->g(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1111
    iget-object v2, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    .line 1112
    invoke-virtual {v2, v3}, Lcom/oplus/camera/professional/g;->c(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1111
    invoke-direct {p0, v5, v2}, Lcom/oplus/camera/professional/h;->a(ILjava/util/ArrayList;)I

    move-result v2

    if-le v2, p1, :cond_9

    .line 1114
    iget-object v6, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    .line 1115
    invoke-virtual {v6, v3, v2}, Lcom/oplus/camera/professional/g;->a(II)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-boolean v6, p0, Lcom/oplus/camera/professional/h;->n:Z

    if-nez v6, :cond_9

    .line 1117
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPreviewCaptureResult, cct: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    iget-object v5, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    invoke-virtual {v5, v3}, Lcom/oplus/camera/professional/g;->d(I)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 1121
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v2, :cond_9

    .line 1122
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "pref_professional_whitebalance_key"

    .line 1123
    invoke-static {v6, v5}, Lcom/oplus/camera/professional/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    iget-object v6, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    invoke-virtual {v6, v3, v2}, Lcom/oplus/camera/professional/g;->scrollTo(II)V

    .line 1125
    invoke-direct {p0, v3, v5}, Lcom/oplus/camera/professional/h;->a(ILjava/lang/String;)V

    :cond_9
    if-eqz v4, :cond_b

    .line 1130
    iget-object v2, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/oplus/camera/professional/g;->g(I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1131
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v5, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    .line 1132
    invoke-virtual {v5, v3}, Lcom/oplus/camera/professional/g;->c(I)Ljava/util/ArrayList;

    move-result-object v5

    .line 1131
    invoke-direct {p0, v2, v5}, Lcom/oplus/camera/professional/h;->a(FLjava/util/ArrayList;)I

    move-result v2

    if-le v2, p1, :cond_b

    .line 1134
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    .line 1135
    invoke-virtual {p1, v3, v2}, Lcom/oplus/camera/professional/g;->a(II)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-boolean p1, p0, Lcom/oplus/camera/professional/h;->n:Z

    if-nez p1, :cond_b

    .line 1136
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreviewCaptureResult, focusDistance: "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    invoke-virtual {p1, v3}, Lcom/oplus/camera/professional/g;->d(I)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 1140
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_b

    .line 1141
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "pref_professional_focus_mode_key"

    .line 1142
    invoke-static {v0, p1}, Lcom/oplus/camera/professional/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    invoke-virtual {v0, v3, v2}, Lcom/oplus/camera/professional/g;->scrollTo(II)V

    .line 1144
    invoke-direct {p0, v3, p1}, Lcom/oplus/camera/professional/h;->a(ILjava/lang/String;)V

    .line 1149
    :cond_b
    iput-boolean v1, p0, Lcom/oplus/camera/professional/h;->n:Z

    return-void

    .line 1040
    :cond_c
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreviewCaptureResult, invalid totalResult: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRawImageReceived(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;)V
    .locals 1

    .line 246
    iput-object p1, p0, Lcom/oplus/camera/professional/h;->S:Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;

    .line 248
    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->isSuperRawOpen()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 249
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->g:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    .line 250
    :try_start_0
    iput-boolean v0, p0, Lcom/oplus/camera/professional/h;->T:Z

    .line 251
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->f()V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 251
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 255
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->e()V

    :goto_0
    return-void
.end method

.method protected onResume(Z)V
    .locals 2

    const-string p1, "HSProfessionalCapMode"

    const-string v0, "onResume"

    .line 2526
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2528
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz p1, :cond_0

    .line 2529
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/oplus/camera/professional/h;->C:Landroid/content/res/Resources;

    const v1, 0x7f1001e7

    .line 2530
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_high_resolution_key"

    .line 2529
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/camera/professional/h;->i:Z

    .line 2533
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->y:Lcom/oplus/camera/p;

    if-eqz p1, :cond_1

    .line 2534
    invoke-virtual {p1}, Lcom/oplus/camera/p;->a()V

    .line 2537
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/oplus/camera/util/Util;->z(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2538
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->B:Lcom/oplus/camera/professional/h$a;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 2539
    invoke-virtual {p1, v0}, Lcom/oplus/camera/professional/h$a;->setVisibility(I)V

    .line 2542
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/oplus/camera/capmode/a;->d(Z)V

    .line 2543
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/h;->a(I)V

    :cond_3
    return-void
.end method

.method public onShareMenuExpand()V
    .locals 5

    .line 187
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/e;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v1}, Lcom/oplus/camera/capmode/a;->a(ZZ)V

    .line 189
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0, v1}, Lcom/oplus/camera/capmode/a;->d(Z)V

    .line 191
    new-instance v0, Lcom/oplus/camera/professional/u$a;

    invoke-direct {v0}, Lcom/oplus/camera/professional/u$a;-><init>()V

    const/4 v2, 0x0

    .line 192
    iput-boolean v2, v0, Lcom/oplus/camera/professional/u$a;->a:Z

    const/16 v3, 0xfa

    .line 193
    iput v3, v0, Lcom/oplus/camera/professional/u$a;->c:I

    const/16 v3, 0x190

    .line 194
    iput v3, v0, Lcom/oplus/camera/professional/u$a;->g:I

    const/4 v3, 0x0

    .line 195
    iput v3, v0, Lcom/oplus/camera/professional/u$a;->d:F

    .line 196
    iget-object v3, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07063f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, v0, Lcom/oplus/camera/professional/u$a;->e:F

    .line 197
    iget-object v3, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    invoke-virtual {v3, v0}, Lcom/oplus/camera/professional/g;->setAllPopupInvisibility(Lcom/oplus/camera/professional/u$a;)V

    .line 198
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/e;->a()V

    .line 199
    invoke-direct {p0, v2, v1}, Lcom/oplus/camera/professional/h;->b(IZ)V

    .line 200
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p0, v1}, Lcom/oplus/camera/e/d;->j(Z)V

    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 3178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSharedPreferenceChanged, key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HSProfessionalCapMode"

    invoke-static {v3, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "pref_professional_whitebalance_key"

    .line 3180
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 3181
    invoke-direct {v0, v3}, Lcom/oplus/camera/professional/h;->e(Z)V

    return-void

    :cond_0
    const-string v2, "pref_professional_iso_key"

    .line 3183
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    const-string v5, "off"

    if-eqz v2, :cond_2

    .line 3184
    sget-boolean v1, Lcom/oplus/camera/Camera;->l:Z

    if-nez v1, :cond_1

    .line 3185
    iget-object v1, v0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/professional/h;->getFlashMode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/oplus/camera/e/d;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 3187
    :cond_1
    iget-object v1, v0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v1, v5}, Lcom/oplus/camera/e/d;->b(Ljava/lang/String;)V

    .line 3190
    :goto_0
    invoke-direct {v0, v4}, Lcom/oplus/camera/professional/h;->e(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v2, "pref_professional_exposure_compensation_key"

    .line 3192
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3193
    iget-object v1, v0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/professional/h;->c()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3194
    iget-object v1, v0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v1, v4}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    .line 3195
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/professional/h;->w()V

    return-void

    :cond_3
    const-string v2, "pref_professional_exposure_time_key"

    .line 3197
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v6, 0x0

    if-eqz v2, :cond_6

    .line 3198
    sget-boolean v1, Lcom/oplus/camera/Camera;->l:Z

    if-nez v1, :cond_4

    .line 3199
    iget-object v1, v0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/professional/h;->getFlashMode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/oplus/camera/e/d;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 3201
    :cond_4
    iget-object v1, v0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v1, v5}, Lcom/oplus/camera/e/d;->b(Ljava/lang/String;)V

    .line 3204
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/professional/h;->L()V

    .line 3205
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/professional/h;->j()J

    move-result-wide v1

    .line 3207
    iget-object v3, v0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    invoke-virtual {v3}, Lcom/oplus/camera/professional/e;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, v0, Lcom/oplus/camera/professional/h;->o:Z

    if-eqz v3, :cond_5

    const-wide/32 v3, 0x1dcd6500

    cmp-long v1, v1, v3

    if-ltz v1, :cond_5

    .line 3210
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/professional/h;->isSuperRawOpen()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3211
    iput-boolean v6, v0, Lcom/oplus/camera/professional/h;->o:Z

    .line 3212
    iget-object v7, v0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v8, 0x7f100302

    const/4 v9, -0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface/range {v7 .. v12}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    :cond_5
    return-void

    :cond_6
    const-string v2, "pref_high_resolution_key"

    .line 3217
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3218
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/professional/h;->Q()V

    :goto_2
    move-object/from16 v7, p1

    goto/16 :goto_6

    :cond_7
    const-string v2, "pref_professional_focus_mode_key"

    .line 3219
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 3220
    iget-object v2, v0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Lcom/oplus/camera/professional/g;->h(I)Z

    .line 3222
    iget-object v2, v0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    invoke-virtual {v2, v5}, Lcom/oplus/camera/professional/g;->g(I)Z

    move-result v2

    if-nez v2, :cond_8

    .line 3223
    invoke-virtual {v0, v4}, Lcom/oplus/camera/professional/h;->a(Ljava/lang/String;)V

    .line 3224
    iput-boolean v3, v0, Lcom/oplus/camera/professional/h;->q:Z

    goto :goto_3

    .line 3226
    :cond_8
    iget-object v2, v0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v2}, Lcom/oplus/camera/e/d;->p()I

    move-result v2

    if-nez v2, :cond_9

    .line 3229
    iput-boolean v6, v0, Lcom/oplus/camera/professional/h;->q:Z

    .line 3232
    :cond_9
    iget-object v2, v0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v2}, Lcom/oplus/camera/e/d;->p()I

    move-result v2

    if-ne v5, v2, :cond_a

    iget-boolean v2, v0, Lcom/oplus/camera/professional/h;->q:Z

    if-eqz v2, :cond_b

    .line 3233
    :cond_a
    iget-object v2, v0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    .line 3234
    invoke-static {}, Lcom/oplus/camera/a;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v6

    invoke-static {}, Lcom/oplus/camera/a;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v7

    .line 3233
    invoke-interface {v2, v5, v6, v7, v3}, Lcom/oplus/camera/e/d;->a(I[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Z)V

    .line 3235
    iget-object v2, v0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v2, v4}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    .line 3238
    :cond_b
    iget-object v2, v0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v2}, Lcom/oplus/camera/e/d;->p()I

    move-result v2

    if-eq v5, v2, :cond_c

    iget-object v2, v0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    .line 3239
    invoke-interface {v2}, Lcom/oplus/camera/e/d;->p()I

    move-result v2

    if-ne v3, v2, :cond_d

    .line 3240
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/professional/h;->E()V

    .line 3241
    iget-object v2, v0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    invoke-virtual {v2, v5}, Lcom/oplus/camera/professional/g;->setPanelsBarAuto(I)V

    .line 3245
    :cond_d
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/professional/h;->N()V

    .line 3246
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/professional/h;->w()V

    goto :goto_2

    :cond_e
    const-string v2, "pref_camera_flashmode_key"

    .line 3247
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 3248
    iget-object v4, v0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    const v5, 0x7f1001bb

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v6, v0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    .line 3250
    invoke-virtual {v6, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v7, p1

    .line 3249
    invoke-interface {v7, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 3251
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/professional/h;->P()V

    .line 3252
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/professional/h;->w()V

    .line 3255
    :cond_f
    invoke-direct {v0, v3}, Lcom/oplus/camera/professional/h;->g(Z)V

    goto/16 :goto_6

    :cond_10
    move-object/from16 v7, p1

    const-string v2, "pref_raw_control_key"

    .line 3256
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-virtual {v0, v2}, Lcom/oplus/camera/professional/h;->getSupportFunction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 3257
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/professional/h;->M()V

    return-void

    :cond_11
    const-string v2, "pref_super_raw_control_key"

    .line 3260
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 3261
    invoke-virtual {v0, v2}, Lcom/oplus/camera/professional/h;->getSupportFunction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 3262
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/professional/h;->M()V

    return-void

    :cond_12
    const-string v2, "pref_parameter_saving"

    .line 3265
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 3266
    iget-boolean v1, v0, Lcom/oplus/camera/professional/h;->p:Z

    .line 3267
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/professional/h;->u()V

    if-nez v1, :cond_13

    .line 3270
    iget-boolean v1, v0, Lcom/oplus/camera/professional/h;->p:Z

    if-eqz v1, :cond_13

    .line 3271
    invoke-direct {v0, v3, v5}, Lcom/oplus/camera/professional/h;->a(ZLjava/lang/String;)V

    .line 3274
    :cond_13
    iget-object v1, v0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3275
    invoke-direct {v0, v6, v1}, Lcom/oplus/camera/professional/h;->a(ZLjava/lang/String;)V

    .line 3276
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/professional/h;->v()V

    .line 3279
    iget-object v1, v0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    invoke-virtual {v1}, Lcom/oplus/camera/professional/e;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 3280
    iget-object v1, v0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    invoke-virtual {v1}, Lcom/oplus/camera/professional/e;->getSelectedIndex()I

    move-result v1

    .line 3281
    iget-object v2, v0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    invoke-virtual {v2, v1}, Lcom/oplus/camera/professional/g;->b(I)Z

    move-result v1

    if-nez v1, :cond_14

    .line 3282
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/professional/h;->onBackPressed()Z

    :cond_14
    return-void

    :cond_15
    const-string v2, "pref_pro_histogram_key"

    .line 3287
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 3288
    invoke-direct {v0, v6, v3}, Lcom/oplus/camera/professional/h;->b(ZZ)V

    .line 3290
    iget-object v1, v0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v1, :cond_18

    .line 3291
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/professional/h;->T()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 3292
    iput-boolean v3, v0, Lcom/oplus/camera/professional/h;->U:Z

    const/16 v1, 0x10e

    .line 3294
    iget v2, v0, Lcom/oplus/camera/professional/h;->mOrientation:I

    if-eq v1, v2, :cond_16

    .line 3295
    iget-object v1, v0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/16 v2, 0x96

    invoke-interface {v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->w(I)V

    .line 3298
    :cond_16
    iget-object v3, v0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v4, 0x7f1005bf

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    goto :goto_4

    .line 3300
    :cond_17
    iput-boolean v6, v0, Lcom/oplus/camera/professional/h;->U:Z

    .line 3301
    iget-object v9, v0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v10, 0x7f1005be

    const/4 v11, -0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-interface/range {v9 .. v14}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    .line 3302
    iget-object v0, v0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v6}, Lcom/oplus/camera/ui/CameraUIInterface;->w(I)V

    :cond_18
    :goto_4
    return-void

    :cond_19
    const-string v2, "pref_subsetting_key"

    .line 3307
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 3308
    invoke-direct {v0, v3}, Lcom/oplus/camera/professional/h;->d(Z)V

    .line 3309
    invoke-direct {v0, v3, v6}, Lcom/oplus/camera/professional/h;->b(ZZ)V

    goto/16 :goto_6

    :cond_1a
    const-string v2, "pref_focus_peaking_key"

    .line 3310
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 3311
    iget-object v1, v0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 3313
    iget-object v2, v0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v2, :cond_1c

    if-eqz v1, :cond_1b

    .line 3315
    iget-object v4, v0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v5, 0x7f1005b8

    const/4 v6, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-interface/range {v4 .. v9}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    goto :goto_5

    .line 3317
    :cond_1b
    iget-object v10, v0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v11, 0x7f1005b7

    const/4 v12, -0x1

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-interface/range {v10 .. v15}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    .line 3321
    :cond_1c
    :goto_5
    iget-object v2, v0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v2, :cond_1d

    .line 3322
    iget-object v0, v0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0, v1, v3}, Lcom/oplus/camera/e/d;->a(ZZ)V

    :cond_1d
    return-void

    .line 3326
    :cond_1e
    iget-object v2, v0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v2}, Lcom/oplus/camera/ui/CameraUIInterface;->k()Lcom/oplus/camera/ui/a/a;

    move-result-object v2

    const-string v3, "pref_camera_photo_ratio_key"

    invoke-virtual {v2, v3}, Lcom/oplus/camera/ui/a/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1f

    iget-object v2, v0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 3327
    invoke-interface {v2}, Lcom/oplus/camera/ui/CameraUIInterface;->k()Lcom/oplus/camera/ui/a/a;

    move-result-object v2

    const-string v4, "pref_camera_photo_ratio_key_from_other_app"

    invoke-virtual {v2, v4}, Lcom/oplus/camera/ui/a/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 3328
    :cond_1f
    iget-object v2, v0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v4, v0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    const v5, 0x7f1002be

    .line 3329
    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3328
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "square"

    .line 3331
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 3332
    invoke-static {}, Lcom/oplus/camera/util/Util;->L()I

    move-result v2

    invoke-static {}, Lcom/oplus/camera/util/Util;->N()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Lcom/oplus/camera/professional/h;->ad:I

    goto :goto_6

    .line 3334
    :cond_20
    invoke-static {}, Lcom/oplus/camera/util/Util;->N()I

    move-result v2

    iput v2, v0, Lcom/oplus/camera/professional/h;->ad:I

    .line 3338
    :cond_21
    :goto_6
    invoke-super/range {p0 .. p2}, Lcom/oplus/camera/capmode/BaseMode;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    const-string v2, "pref_switch_camera_key"

    .line 3340
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 3341
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/professional/h;->O()V

    .line 3342
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/professional/h;->C()V

    :cond_22
    return-void
.end method

.method protected onShutterCallback(ZZ)V
    .locals 4

    .line 2279
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/BaseMode;->onShutterCallback(ZZ)V

    if-eqz p2, :cond_3

    .line 2282
    iget-boolean p1, p0, Lcom/oplus/camera/professional/h;->i:Z

    const/4 p2, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/professional/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 2283
    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2284
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->i()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0x3b9aca00

    cmp-long p1, v0, v2

    if-ltz p1, :cond_1

    .line 2285
    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->isSuperRawOpen()Z

    move-result p1

    if-nez p1, :cond_2

    .line 2286
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    .line 2287
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0, p1}, Lcom/oplus/camera/capmode/a;->c(I)V

    .line 2288
    invoke-direct {p0, p2}, Lcom/oplus/camera/professional/h;->b(I)V

    goto :goto_1

    .line 2291
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1, p2}, Lcom/oplus/camera/capmode/a;->c(I)V

    .line 2294
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->isSuperRawOpen()Z

    move-result p1

    if-nez p1, :cond_3

    .line 2295
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->h()V

    :cond_3
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3

    const-string v0, "HSProfessionalCapMode"

    const-string v1, "onSingleTapUp"

    .line 171
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->e(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 177
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/h;->isInPreviewArea(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/e;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->A()Z

    move-result v0

    if-nez v0, :cond_1

    .line 178
    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->onBackPressed()Z

    .line 181
    :cond_1
    invoke-direct {p0, p1}, Lcom/oplus/camera/professional/h;->a(Landroid/view/MotionEvent;)V

    return v1
.end method

.method protected onStop()V
    .locals 0

    return-void
.end method

.method protected onStopTakePicture()Z
    .locals 4

    .line 1932
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->g()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    .line 1933
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStopTakePicture failed, current camera state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->g()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "HSProfessionalCapMode"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 1938
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    new-instance v3, Lcom/oplus/camera/professional/h$5;

    invoke-direct {v3, p0}, Lcom/oplus/camera/professional/h$5;-><init>(Lcom/oplus/camera/professional/h;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1960
    iput-boolean v2, p0, Lcom/oplus/camera/professional/h;->mbInCapturing:Z

    .line 1961
    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/h;->setCapturePreviewDataState(I)V

    .line 1962
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->B:Lcom/oplus/camera/professional/h$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/h$a;->a(Z)V

    .line 1963
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0, v1}, Lcom/oplus/camera/capmode/a;->f(Z)V

    .line 1964
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZ)V

    return v1
.end method

.method public onTimeSnapShotEnd(Z)V
    .locals 3

    .line 1857
    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;

    move-result-object v0

    .line 1858
    iget-object v1, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    invoke-virtual {v1}, Lcom/oplus/camera/professional/g;->e()V

    .line 1859
    iget-object v1, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    invoke-virtual {v1}, Lcom/oplus/camera/professional/e;->a()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1860
    invoke-direct {p0, v1, v2}, Lcom/oplus/camera/professional/h;->b(IZ)V

    .line 1862
    iget-boolean v1, p0, Lcom/oplus/camera/professional/h;->i:Z

    const-string v2, "button_color_inside_none"

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    .line 1863
    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/control/b;->a(I)V

    .line 1864
    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/control/b;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 1866
    :cond_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x17

    goto :goto_0

    :cond_1
    const/16 p1, 0xb

    .line 1867
    :goto_0
    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/control/b;->a(I)V

    .line 1868
    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/control/b;->a(Ljava/lang/String;)V

    .line 1871
    :goto_1
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    return-void
.end method

.method protected onTopSubMenuExpand()V
    .locals 4

    .line 4187
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/e;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4188
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v1}, Lcom/oplus/camera/capmode/a;->a(ZZ)V

    .line 4189
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0, v1}, Lcom/oplus/camera/capmode/a;->d(Z)V

    const/4 v0, 0x0

    .line 4190
    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/professional/h;->b(IZ)V

    .line 4192
    new-instance v2, Lcom/oplus/camera/professional/u$a;

    invoke-direct {v2}, Lcom/oplus/camera/professional/u$a;-><init>()V

    .line 4193
    iput-boolean v0, v2, Lcom/oplus/camera/professional/u$a;->a:Z

    const/16 v0, 0xfa

    .line 4194
    iput v0, v2, Lcom/oplus/camera/professional/u$a;->c:I

    const/16 v0, 0x190

    .line 4195
    iput v0, v2, Lcom/oplus/camera/professional/u$a;->g:I

    const/4 v0, 0x0

    .line 4196
    iput v0, v2, Lcom/oplus/camera/professional/u$a;->d:F

    .line 4197
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f07063f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, v2, Lcom/oplus/camera/professional/u$a;->e:F

    .line 4198
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->w:Lcom/oplus/camera/professional/g;

    invoke-virtual {v0, v2}, Lcom/oplus/camera/professional/g;->setAllPopupInvisibility(Lcom/oplus/camera/professional/u$a;)V

    .line 4199
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/e;->a()V

    .line 4200
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p0, v1}, Lcom/oplus/camera/e/d;->j(Z)V

    goto :goto_0

    .line 4202
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->onTopSubMenuExpand()V

    :goto_0
    return-void
.end method

.method public onYuvDataReceviced([B)V
    .locals 1

    .line 4180
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->y:Lcom/oplus/camera/p;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->isHistogramOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4181
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->y:Lcom/oplus/camera/p;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/p;->a([B)V

    :cond_0
    return-void
.end method

.method public onZoomAlphaChanged(F)V
    .locals 0

    .line 704
    iput p1, p0, Lcom/oplus/camera/professional/h;->N:F

    return-void
.end method

.method public onZoomMenuCollapsed()V
    .locals 2

    .line 661
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->A()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/professional/h;->mbInCapturing:Z

    if-nez v0, :cond_0

    .line 662
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->B:Lcom/oplus/camera/professional/h$a;

    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/h$a;->setEnabled(Z)V

    goto :goto_0

    .line 664
    :cond_0
    iput-boolean v1, p0, Lcom/oplus/camera/professional/h;->k:Z

    :goto_0
    return-void
.end method

.method public onZoomMenuCollapsing()V
    .locals 2

    .line 648
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 649
    invoke-virtual {v0, v1, v1}, Lcom/oplus/camera/professional/e;->a(ZZ)V

    .line 651
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/e;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 652
    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/professional/h;->b(IZ)V

    goto :goto_0

    .line 653
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->isPanelMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 654
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v0, 0x0

    invoke-interface {p0, v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onZoomMenuExpand()V
    .locals 3

    .line 670
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 671
    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/professional/e;->a(ZZ)V

    .line 674
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->B:Lcom/oplus/camera/professional/h$a;

    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/h$a;->setEnabled(Z)V

    return-void
.end method

.method public onZoomTransitionChanged(I)V
    .locals 2

    .line 679
    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->getZoomBarOffset()I

    move-result v0

    sub-int/2addr p1, v0

    .line 681
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    if-eqz v0, :cond_2

    .line 682
    iget v0, p0, Lcom/oplus/camera/professional/h;->N:F

    .line 684
    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->getZoomBarOffset()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    if-gt p1, v1, :cond_0

    const/4 v0, 0x0

    .line 688
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/professional/e;->setAlpha(F)V

    .line 690
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    invoke-virtual {p1}, Lcom/oplus/camera/professional/e;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 691
    iget v0, p0, Lcom/oplus/camera/professional/h;->K:I

    iget v1, p0, Lcom/oplus/camera/professional/h;->M:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 692
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/professional/e;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 694
    iget p1, p0, Lcom/oplus/camera/professional/h;->J:I

    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->getZoomBarOffset()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 695
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    const p1, 0x7f0804dc

    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/e;->setBackgroundResource(I)V

    goto :goto_0

    .line 697
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/e;->setBackgroundResource(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public operateSpecificViewCallBack(Ljava/lang/Object;ZZ)V
    .locals 1

    .line 2037
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    check-cast p1, Ljava/lang/Integer;

    .line 2038
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne v0, p1, :cond_1

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    const-string p1, "HSProfessionalCapMode"

    const-string p2, "removeAllView when mEmptyViewToAnimate hide animation end"

    .line 2041
    invoke-static {p1, p2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2043
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->I()V

    .line 2044
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->y()V

    goto :goto_0

    .line 2046
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    if-eqz p1, :cond_1

    .line 2047
    new-instance p1, Lcom/oplus/camera/professional/u$a;

    invoke-direct {p1}, Lcom/oplus/camera/professional/u$a;-><init>()V

    const/4 p2, 0x0

    .line 2048
    iput-boolean p2, p1, Lcom/oplus/camera/professional/u$a;->a:Z

    const/16 p2, 0xfa

    .line 2049
    iput p2, p1, Lcom/oplus/camera/professional/u$a;->c:I

    const/4 p2, 0x0

    .line 2050
    iput p2, p1, Lcom/oplus/camera/professional/u$a;->d:F

    .line 2051
    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->getZoomBarOffset()I

    move-result p2

    int-to-float p2, p2

    iput p2, p1, Lcom/oplus/camera/professional/u$a;->e:F

    const/16 p2, 0x1f4

    .line 2052
    iput p2, p1, Lcom/oplus/camera/professional/u$a;->g:I

    .line 2053
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    invoke-static {p0, p1}, Lcom/oplus/camera/professional/u;->a(Landroid/view/View;Lcom/oplus/camera/professional/u$a;)Landroid/animation/Animator;

    :cond_1
    :goto_0
    return-void
.end method

.method public setFlashTemporaryDisabled(Z)V
    .locals 4

    const-string v0, "pref_switch_camera_key"

    .line 3458
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/h;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "pref_camera_flashmode_key"

    .line 3459
    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/h;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_3

    .line 3461
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "camera_main"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3462
    invoke-virtual {p0}, Lcom/oplus/camera/professional/h;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.oplus.feature.flash.full.zoom.support"

    .line 3464
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    const-string v1, "camera_tele"

    .line 3465
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "on"

    .line 3466
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "auto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    iput-boolean v3, p0, Lcom/oplus/camera/professional/h;->mbFlashTemporaryDisabled:Z

    goto :goto_1

    .line 3468
    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v3

    iput-boolean p1, p0, Lcom/oplus/camera/professional/h;->mbFlashTemporaryDisabled:Z

    goto :goto_1

    .line 3471
    :cond_3
    iput-boolean p1, p0, Lcom/oplus/camera/professional/h;->mbFlashTemporaryDisabled:Z

    :goto_1
    return-void
.end method

.method public setOrientation(I)V
    .locals 2

    .line 2477
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->G:Lcom/oplus/camera/ui/RotateImageView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2478
    invoke-virtual {v0, p1, v1}, Lcom/oplus/camera/ui/RotateImageView;->a(IZ)V

    .line 2481
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->x:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz v0, :cond_1

    .line 2482
    invoke-virtual {v0, p1, v1}, Lcom/oplus/camera/ui/RotateImageView;->a(IZ)V

    .line 2485
    :cond_1
    iget v0, p0, Lcom/oplus/camera/professional/h;->mOrientation:I

    if-ne v0, p1, :cond_2

    return-void

    .line 2489
    :cond_2
    iput p1, p0, Lcom/oplus/camera/professional/h;->mOrientation:I

    .line 2491
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->z:Lcom/oplus/camera/p$a;

    if-eqz p1, :cond_3

    .line 2492
    iget v0, p0, Lcom/oplus/camera/professional/h;->mOrientation:I

    iput v0, p1, Lcom/oplus/camera/p$a;->e:I

    .line 2495
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->k()Lcom/oplus/camera/ui/a/a;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 2498
    invoke-virtual {p1}, Lcom/oplus/camera/ui/a/a;->g()V

    .line 2501
    :cond_4
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->ag:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_5

    .line 2502
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2505
    :cond_5
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->T()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    iget p1, p0, Lcom/oplus/camera/professional/h;->aa:I

    if-eqz p1, :cond_6

    .line 2506
    iput v0, p0, Lcom/oplus/camera/professional/h;->aa:I

    .line 2509
    :cond_6
    invoke-direct {p0}, Lcom/oplus/camera/professional/h;->V()V

    .line 2511
    iget-object p1, p0, Lcom/oplus/camera/professional/h;->y:Lcom/oplus/camera/p;

    if-eqz p1, :cond_7

    .line 2512
    iget-object p0, p0, Lcom/oplus/camera/professional/h;->z:Lcom/oplus/camera/p$a;

    invoke-virtual {p1, p0, v0}, Lcom/oplus/camera/p;->a(Lcom/oplus/camera/p$a;Z)V

    :cond_7
    return-void
.end method

.method public updateControlPanelBgColor(I)V
    .locals 4

    .line 709
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    if-eqz v0, :cond_2

    .line 710
    iget v0, p0, Lcom/oplus/camera/professional/h;->O:I

    if-gt v0, p1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget-object v2, p0, Lcom/oplus/camera/professional/h;->mOneCamera:Lcom/oplus/camera/e/d;

    .line 711
    invoke-interface {v2}, Lcom/oplus/camera/e/d;->e()Lcom/oplus/camera/e/h;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oplus/camera/professional/h;->getTargetPreviewRatio(Lcom/oplus/camera/e/h;)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    .line 712
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    const v1, 0x7f0804dc

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/e;->setBackgroundResource(I)V

    goto :goto_0

    .line 714
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/professional/h;->v:Lcom/oplus/camera/professional/e;

    invoke-static {p1}, Lcom/oplus/camera/util/c;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/e;->setBackgroundColor(I)V

    .line 718
    :cond_2
    :goto_0
    iput p1, p0, Lcom/oplus/camera/professional/h;->O:I

    return-void
.end method
