.class public Lcom/oplus/camera/professional/v;
.super Lcom/oplus/camera/capmode/BaseMode;
.source "ProfessionalCapMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/oplus/camera/professional/ListProfessionalModeBar$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/professional/v$a;
    }
.end annotation


# instance fields
.field private A:Lcom/oplus/camera/p$a;

.field private B:Landroid/os/Handler;

.field private C:Lcom/oplus/camera/professional/v$a;

.field private D:Landroid/content/res/Resources;

.field private E:I

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Lcom/oplus/camera/ui/RotateImageView;

.field private J:I

.field private K:Landroid/animation/ValueAnimator;

.field private L:I

.field private M:I

.field private N:I

.field private O:F

.field private P:Z

.field private Q:Z

.field private R:[B

.field private S:Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;

.field private T:Z

.field private U:Z

.field private V:Z

.field private W:I

.field private X:I

.field private Y:I

.field private Z:I

.field private aa:I

.field private ab:I

.field private ac:I

.field private ad:I

.field private ae:I

.field private af:I

.field private ag:Ljava/lang/String;

.field private ah:[B

.field private ai:Landroid/widget/TextView;

.field private aj:Landroid/animation/ValueAnimator;

.field private ak:Landroid/view/animation/PathInterpolator;

.field private al:Lcom/oplus/camera/screen/b/a;

.field private am:Lcom/oplus/camera/professional/p$b;

.field private final g:Ljava/lang/Object;

.field private volatile h:Z

.field private volatile i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:I

.field private t:J

.field private u:Ljava/lang/Thread;

.field private v:Lcom/oplus/camera/ui/h;

.field private w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

.field private x:Lcom/oplus/camera/professional/p;

.field private y:Lcom/oplus/camera/ui/RotateImageView;

.field private z:Lcom/oplus/camera/p;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V
    .locals 3

    .line 172
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/camera/capmode/BaseMode;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 108
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/oplus/camera/professional/v;->g:Ljava/lang/Object;

    const/4 p2, 0x0

    .line 109
    iput-boolean p2, p0, Lcom/oplus/camera/professional/v;->h:Z

    .line 110
    iput-boolean p2, p0, Lcom/oplus/camera/professional/v;->i:Z

    .line 111
    iput-boolean p2, p0, Lcom/oplus/camera/professional/v;->j:Z

    .line 112
    iput-boolean p2, p0, Lcom/oplus/camera/professional/v;->k:Z

    .line 113
    iput-boolean p2, p0, Lcom/oplus/camera/professional/v;->l:Z

    .line 114
    iput-boolean p2, p0, Lcom/oplus/camera/professional/v;->m:Z

    const/4 p3, 0x1

    .line 115
    iput-boolean p3, p0, Lcom/oplus/camera/professional/v;->n:Z

    .line 116
    iput-boolean p2, p0, Lcom/oplus/camera/professional/v;->o:Z

    .line 117
    iput-boolean p2, p0, Lcom/oplus/camera/professional/v;->p:Z

    .line 118
    iput-boolean p2, p0, Lcom/oplus/camera/professional/v;->q:Z

    .line 119
    iput-boolean p2, p0, Lcom/oplus/camera/professional/v;->r:Z

    .line 121
    iput p2, p0, Lcom/oplus/camera/professional/v;->s:I

    const-wide/16 v0, 0x0

    .line 122
    iput-wide v0, p0, Lcom/oplus/camera/professional/v;->t:J

    const/4 p4, 0x0

    .line 124
    iput-object p4, p0, Lcom/oplus/camera/professional/v;->u:Ljava/lang/Thread;

    .line 125
    iput-object p4, p0, Lcom/oplus/camera/professional/v;->v:Lcom/oplus/camera/ui/h;

    .line 126
    iput-object p4, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    .line 127
    iput-object p4, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    .line 128
    iput-object p4, p0, Lcom/oplus/camera/professional/v;->y:Lcom/oplus/camera/ui/RotateImageView;

    .line 129
    iput-object p4, p0, Lcom/oplus/camera/professional/v;->z:Lcom/oplus/camera/p;

    .line 130
    iput-object p4, p0, Lcom/oplus/camera/professional/v;->A:Lcom/oplus/camera/p$a;

    .line 132
    iput-object p4, p0, Lcom/oplus/camera/professional/v;->B:Landroid/os/Handler;

    .line 133
    iput-object p4, p0, Lcom/oplus/camera/professional/v;->C:Lcom/oplus/camera/professional/v$a;

    const/4 v0, -0x1

    .line 135
    iput v0, p0, Lcom/oplus/camera/professional/v;->E:I

    .line 136
    iput-boolean p2, p0, Lcom/oplus/camera/professional/v;->F:Z

    .line 137
    iput-boolean p2, p0, Lcom/oplus/camera/professional/v;->G:Z

    .line 138
    iput-boolean p2, p0, Lcom/oplus/camera/professional/v;->H:Z

    .line 139
    iput-object p4, p0, Lcom/oplus/camera/professional/v;->I:Lcom/oplus/camera/ui/RotateImageView;

    .line 140
    iput p2, p0, Lcom/oplus/camera/professional/v;->J:I

    .line 141
    iput-object p4, p0, Lcom/oplus/camera/professional/v;->K:Landroid/animation/ValueAnimator;

    .line 142
    iput p2, p0, Lcom/oplus/camera/professional/v;->L:I

    .line 143
    iput p2, p0, Lcom/oplus/camera/professional/v;->M:I

    .line 144
    iput p2, p0, Lcom/oplus/camera/professional/v;->N:I

    const/4 v0, 0x0

    .line 145
    iput v0, p0, Lcom/oplus/camera/professional/v;->O:F

    .line 146
    iput-boolean p2, p0, Lcom/oplus/camera/professional/v;->P:Z

    .line 147
    iput-boolean p3, p0, Lcom/oplus/camera/professional/v;->Q:Z

    .line 149
    iput-object p4, p0, Lcom/oplus/camera/professional/v;->S:Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;

    .line 150
    iput-boolean p2, p0, Lcom/oplus/camera/professional/v;->T:Z

    .line 151
    iput-boolean p2, p0, Lcom/oplus/camera/professional/v;->U:Z

    .line 152
    iput-boolean p2, p0, Lcom/oplus/camera/professional/v;->V:Z

    .line 153
    iput p2, p0, Lcom/oplus/camera/professional/v;->W:I

    .line 154
    iput p2, p0, Lcom/oplus/camera/professional/v;->X:I

    .line 155
    iput p2, p0, Lcom/oplus/camera/professional/v;->Y:I

    .line 156
    iput p2, p0, Lcom/oplus/camera/professional/v;->Z:I

    .line 157
    iput p2, p0, Lcom/oplus/camera/professional/v;->aa:I

    .line 158
    iput p2, p0, Lcom/oplus/camera/professional/v;->ab:I

    .line 159
    iput p2, p0, Lcom/oplus/camera/professional/v;->ac:I

    .line 160
    iput p2, p0, Lcom/oplus/camera/professional/v;->ad:I

    .line 161
    iput p2, p0, Lcom/oplus/camera/professional/v;->ae:I

    .line 162
    iput p2, p0, Lcom/oplus/camera/professional/v;->af:I

    .line 163
    iput-object p4, p0, Lcom/oplus/camera/professional/v;->ag:Ljava/lang/String;

    .line 164
    iput-object p4, p0, Lcom/oplus/camera/professional/v;->ah:[B

    .line 165
    iput-object p4, p0, Lcom/oplus/camera/professional/v;->ai:Landroid/widget/TextView;

    .line 166
    iput-object p4, p0, Lcom/oplus/camera/professional/v;->aj:Landroid/animation/ValueAnimator;

    .line 167
    new-instance p2, Landroid/view/animation/PathInterpolator;

    const p3, 0x3e99999a    # 0.3f

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p2, p3, v0, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p2, p0, Lcom/oplus/camera/professional/v;->ak:Landroid/view/animation/PathInterpolator;

    .line 168
    iput-object p4, p0, Lcom/oplus/camera/professional/v;->al:Lcom/oplus/camera/screen/b/a;

    .line 4063
    new-instance p2, Lcom/oplus/camera/professional/v$15;

    invoke-direct {p2, p0}, Lcom/oplus/camera/professional/v$15;-><init>(Lcom/oplus/camera/professional/v;)V

    iput-object p2, p0, Lcom/oplus/camera/professional/v;->am:Lcom/oplus/camera/professional/p$b;

    .line 173
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/professional/v;->D:Landroid/content/res/Resources;

    .line 174
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->D:Landroid/content/res/Resources;

    const p2, 0x7f0706fc

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/professional/v;->L:I

    .line 175
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->D:Landroid/content/res/Resources;

    const p2, 0x7f070175

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/professional/v;->M:I

    .line 176
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->D:Landroid/content/res/Resources;

    const p2, 0x7f0709ad

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/professional/v;->N:I

    return-void
.end method

.method private A()V
    .locals 4

    .line 1884
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->y()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1888
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_switch_camera_key"

    const-string v2, "camera_main"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1889
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "pref_parameter_saving"

    const-string v3, "off"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1890
    iget-object v2, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    invoke-virtual {v2, v0, v1}, Lcom/oplus/camera/professional/p;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1892
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->y:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz v1, :cond_2

    .line 1893
    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/RotateImageView;->setEnabled(Z)V

    if-eqz v0, :cond_1

    .line 1896
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->y:Lcom/oplus/camera/ui/RotateImageView;

    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/oplus/camera/util/Util;->A(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/RotateImageView;->setColorFilter(I)V

    goto :goto_0

    .line 1898
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->y:Lcom/oplus/camera/ui/RotateImageView;

    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    const v1, 0x7f06004d

    invoke-static {p0, v1}, Landroidx/core/a/a;->c(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/RotateImageView;->setColorFilter(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic A(Lcom/oplus/camera/professional/v;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->p()V

    return-void
.end method

.method static synthetic B(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/RotateImageView;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->I:Lcom/oplus/camera/ui/RotateImageView;

    return-object p0
.end method

.method private B()V
    .locals 2

    .line 1914
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/p;->b(I)Z

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/professional/v;->a(ZI)V

    .line 1917
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->A()V

    return-void
.end method

.method static synthetic C(Lcom/oplus/camera/professional/v;)Landroid/content/SharedPreferences;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method private C()V
    .locals 5

    .line 1932
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->C:Lcom/oplus/camera/professional/v$a;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 1933
    new-instance v0, Lcom/oplus/camera/professional/v$a;

    iget-object v2, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, p0, v2}, Lcom/oplus/camera/professional/v$a;-><init>(Lcom/oplus/camera/professional/v;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/professional/v;->C:Lcom/oplus/camera/professional/v$a;

    .line 1934
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->C:Lcom/oplus/camera/professional/v$a;

    const v2, 0x7f0902d9

    invoke-virtual {v0, v2}, Lcom/oplus/camera/professional/v$a;->setId(I)V

    .line 1936
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->getCurrentScreenMode()Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1939
    invoke-virtual {v0}, Lcom/oplus/camera/screen/b/a;->e()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    goto :goto_0

    .line 1941
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    .line 1942
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xc

    .line 1943
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xe

    .line 1944
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1946
    iget-object v2, p0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v2, :cond_1

    .line 1947
    iget-object v2, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v2}, Lcom/oplus/camera/ui/CameraUIInterface;->r()I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 1949
    :cond_1
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1953
    :goto_0
    iget-object v2, p0, Lcom/oplus/camera/professional/v;->C:Lcom/oplus/camera/professional/v$a;

    invoke-virtual {v2, v0}, Lcom/oplus/camera/professional/v$a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1954
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->C:Lcom/oplus/camera/professional/v$a;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/oplus/camera/professional/v$a;->setVisibility(I)V

    .line 1955
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->C:Lcom/oplus/camera/professional/v$a;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/v$a;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v2, Lcom/oplus/camera/professional/v$3;

    invoke-direct {v2, p0}, Lcom/oplus/camera/professional/v$3;-><init>(Lcom/oplus/camera/professional/v;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    .line 1969
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v2, p0, Lcom/oplus/camera/professional/v;->C:Lcom/oplus/camera/professional/v$a;

    const/4 v3, 0x1

    const-string v4, "professional"

    invoke-interface {v0, v2, v4, v3, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Landroid/view/View;Ljava/lang/String;IZ)V

    .line 1972
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->C:Lcom/oplus/camera/professional/v$a;

    if-eqz p0, :cond_3

    .line 1973
    invoke-virtual {p0, v3}, Lcom/oplus/camera/professional/v$a;->setTouchState(Z)V

    :cond_3
    return-void
.end method

.method private D()V
    .locals 2

    .line 2095
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->g(Z)V

    .line 2096
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->y:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 2097
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    .line 2100
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->C:Lcom/oplus/camera/professional/v$a;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 2101
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/v$a;->setTouchState(Z)V

    .line 2103
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    if-eqz v0, :cond_1

    .line 2104
    invoke-virtual {v0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->removeAllViews()V

    .line 2105
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->C:Lcom/oplus/camera/professional/v$a;

    iget-object v1, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/v$a;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 2106
    iput-object v0, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    :cond_1
    return-void
.end method

.method static synthetic D(Lcom/oplus/camera/professional/v;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->A()V

    return-void
.end method

.method static synthetic E(Lcom/oplus/camera/professional/v;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->Y()V

    return-void
.end method

.method private E()Z
    .locals 2

    .line 2581
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 2582
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

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

.method static synthetic F(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/RotateImageView;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->y:Lcom/oplus/camera/ui/RotateImageView;

    return-object p0
.end method

.method private F()Z
    .locals 0

    .line 2666
    iget p0, p0, Lcom/oplus/camera/professional/v;->mOrientation:I

    rem-int/lit16 p0, p0, 0xb4

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic G(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/professional/ListProfessionalModeBar;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    return-object p0
.end method

.method private G()Z
    .locals 1

    .line 2670
    iget p0, p0, Lcom/oplus/camera/professional/v;->mOrientation:I

    const/16 v0, 0x5a

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic H(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method private H()V
    .locals 6

    const-string v0, "pref_switch_camera_key"

    .line 2789
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/v;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "camera_main"

    const-string v4, "off"

    if-eqz v1, :cond_2

    const-string v1, "pref_raw_control_key"

    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/v;->getSupportFunction(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2790
    iget-object v5, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2792
    invoke-static {v5}, Lcom/oplus/camera/util/Util;->e(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2793
    iget-object v5, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v5, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2795
    :cond_0
    iget-object v5, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2797
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2798
    iget-object v5, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2801
    :cond_1
    iget-object v5, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v5, v1, v4}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2804
    :goto_0
    iget-object v5, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v5, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    .line 2807
    :cond_2
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/v;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "pref_super_raw_control_key"

    .line 2808
    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/v;->getSupportFunction(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2809
    iget-object v5, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2811
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2812
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2814
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2816
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2817
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2820
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v1, v4}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2823
    :goto_1
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method static synthetic I(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method private I()V
    .locals 11

    .line 2956
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v0, "pref_super_raw_control_key"

    .line 2962
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/v;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "raw"

    const-string v3, "none"

    const-string v4, "on"

    const-string v5, "off"

    if-eqz v1, :cond_8

    .line 2963
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

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

    .line 2973
    :cond_5
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->RAW_CONTROL:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-interface {p0, v0, v3}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    goto :goto_1

    .line 2969
    :cond_6
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->RAW_CONTROL:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-interface {p0, v0, v8}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    goto :goto_1

    .line 2965
    :cond_7
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->RAW_CONTROL:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-interface {p0, v0, v2}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    goto :goto_1

    .line 2980
    :cond_8
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_raw_control_key"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2983
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->RAW_CONTROL:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-interface {p0, v0, v2}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    goto :goto_1

    .line 2985
    :cond_9
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->RAW_CONTROL:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-interface {p0, v0, v3}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_a
    :goto_2
    const-string p0, "ProfessionalCapMode"

    const-string v0, "mPreferences or mOneCamera is null"

    .line 2957
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private J()V
    .locals 1

    .line 3035
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 3039
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/p;->setPreference(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic J(Lcom/oplus/camera/professional/v;)Z
    .locals 0

    .line 101
    iget-boolean p0, p0, Lcom/oplus/camera/professional/v;->mbPaused:Z

    return p0
.end method

.method static synthetic K(Lcom/oplus/camera/professional/v;)Ljava/lang/String;
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->m()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private K()V
    .locals 1

    .line 3043
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    .line 3047
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/p;->setPreference(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic L(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/e/d;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    return-object p0
.end method

.method private L()V
    .locals 2

    .line 3051
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 3055
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/p;->setPreference(I)V

    .line 3056
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/p;->setPreference(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic M(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/capmode/a;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    return-object p0
.end method

.method private M()V
    .locals 1

    .line 3060
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 3064
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/p;->setPreference(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private N()V
    .locals 2

    .line 3080
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 3081
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->setVisibility(I)V

    .line 3082
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->setItemPressed(Z)V

    .line 3085
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    if-eqz p0, :cond_1

    const/4 v0, 0x4

    .line 3086
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/p;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method static synthetic N(Lcom/oplus/camera/professional/v;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->z()V

    return-void
.end method

.method static synthetic O(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method private O()V
    .locals 3

    .line 3091
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3092
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->setVisibility(I)V

    .line 3093
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->setItemPressed(Z)V

    .line 3096
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    if-eqz p0, :cond_1

    .line 3097
    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/p;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method static synthetic P(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/professional/v$a;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->C:Lcom/oplus/camera/professional/v$a;

    return-object p0
.end method

.method private P()V
    .locals 0

    .line 3102
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    if-eqz p0, :cond_0

    .line 3103
    invoke-virtual {p0}, Lcom/oplus/camera/professional/p;->clearAnimation()V

    :cond_0
    return-void
.end method

.method static synthetic Q(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method private Q()V
    .locals 1

    const/4 v0, 0x1

    .line 3287
    invoke-direct {p0, v0}, Lcom/oplus/camera/professional/v;->f(Z)V

    return-void
.end method

.method private R()V
    .locals 19

    move-object/from16 v0, p0

    const-string v1, "pref_super_raw_control_key"

    .line 3554
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/v;->getSupportFunction(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "raw"

    const-string v4, "none"

    const-string v5, "on"

    const-string v6, "off"

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v2, :cond_b

    .line 3555
    iget-object v2, v0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

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

    .line 3587
    :cond_4
    iget-object v13, v0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v14, 0x7f100320

    const/4 v15, -0x1

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-interface/range {v13 .. v18}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    .line 3588
    iget-object v1, v0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v2, Lcom/oplus/ocs/camera/CameraParameter;->RAW_CONTROL:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-interface {v1, v2, v4}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    goto :goto_1

    .line 3562
    :cond_5
    iget-object v12, v0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v13, 0x7f100322

    const/4 v14, -0x1

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-interface/range {v12 .. v17}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    .line 3563
    iget-object v1, v0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    invoke-virtual {v1, v7}, Lcom/oplus/camera/professional/p;->b(Z)V

    .line 3564
    invoke-direct {v0, v8}, Lcom/oplus/camera/professional/v;->b(Z)V

    .line 3565
    iget-object v1, v0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    invoke-virtual {v1, v8}, Lcom/oplus/camera/professional/p;->b(Z)V

    .line 3567
    iget-boolean v1, v0, Lcom/oplus/camera/professional/v;->p:Z

    if-nez v1, :cond_6

    .line 3568
    iput-boolean v8, v0, Lcom/oplus/camera/professional/v;->p:Z

    .line 3571
    :cond_6
    iget-object v1, v0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v2, Lcom/oplus/ocs/camera/CameraParameter;->RAW_CONTROL:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-interface {v1, v2, v11}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    .line 3574
    iget-object v1, v0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "standard"

    const-string v3, "pref_camera_photo_ratio_key"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3576
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 3577
    iget-object v1, v0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3579
    iget-object v1, v0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v1, :cond_8

    .line 3580
    iget-object v1, v0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    goto :goto_1

    .line 3557
    :cond_7
    iget-object v9, v0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v10, 0x7f100321

    const/4 v11, -0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface/range {v9 .. v14}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    .line 3558
    iget-object v1, v0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v2, Lcom/oplus/ocs/camera/CameraParameter;->RAW_CONTROL:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-interface {v1, v2, v3}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    .line 3595
    :cond_8
    :goto_1
    iget-object v1, v0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v1, :cond_9

    .line 3596
    iget-object v1, v0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->aH()V

    .line 3599
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/professional/v;->isSuperRawOpen()Z

    move-result v1

    if-eqz v1, :cond_a

    const-wide/32 v1, 0x77359400

    goto :goto_2

    .line 3600
    :cond_a
    iget v1, v0, Lcom/oplus/camera/professional/v;->E:I

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/v;->getCameraInfo(I)Lcom/oplus/camera/e/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/e/h;->x()J

    move-result-wide v1

    .line 3601
    :goto_2
    iget-object v3, v0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    iget v4, v0, Lcom/oplus/camera/professional/v;->E:I

    invoke-virtual {v0, v4}, Lcom/oplus/camera/professional/v;->getCameraInfo(I)Lcom/oplus/camera/e/h;

    move-result-object v4

    invoke-virtual {v3, v4, v1, v2}, Lcom/oplus/camera/professional/p;->a(Lcom/oplus/camera/e/h;J)V

    .line 3602
    iget-object v1, v0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    invoke-virtual {v1}, Lcom/oplus/camera/professional/p;->a()V

    goto :goto_3

    .line 3604
    :cond_b
    iget-object v1, v0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "pref_raw_control_key"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 3607
    iget-object v9, v0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v10, 0x7f100301

    const/4 v11, -0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface/range {v9 .. v14}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    .line 3608
    iget-object v1, v0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v2, Lcom/oplus/ocs/camera/CameraParameter;->RAW_CONTROL:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-interface {v1, v2, v3}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    goto :goto_3

    .line 3610
    :cond_c
    iget-object v9, v0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v10, 0x7f100300

    const/4 v11, -0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface/range {v9 .. v14}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    .line 3611
    iget-object v1, v0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v2, Lcom/oplus/ocs/camera/CameraParameter;->RAW_CONTROL:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-interface {v1, v2, v4}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    .line 3615
    :goto_3
    iget-object v1, v0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    const-string v1, "pref_zoom_key"

    .line 3616
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/v;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v1}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->isSelected()Z

    move-result v1

    if-nez v1, :cond_d

    .line 3617
    iget-object v1, v0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1, v8, v7}, Lcom/oplus/camera/capmode/a;->a(ZZ)V

    .line 3618
    iget-object v1, v0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1, v8}, Lcom/oplus/camera/capmode/a;->d(Z)V

    goto :goto_4

    .line 3620
    :cond_d
    iget-object v1, v0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1, v2, v8, v7}, Lcom/oplus/camera/capmode/a;->a(Landroid/animation/AnimatorListenerAdapter;ZZ)V

    .line 3623
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/professional/v;->d()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 3624
    iget-object v1, v0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->aH()V

    .line 3628
    :cond_e
    iget-object v0, v0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0, v2}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    return-void
.end method

.method static synthetic R(Lcom/oplus/camera/professional/v;)Z
    .locals 0

    .line 101
    iget-boolean p0, p0, Lcom/oplus/camera/professional/v;->mbPaused:Z

    return p0
.end method

.method static synthetic S(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method private S()V
    .locals 5

    const-string v0, "pref_focus_peaking_key"

    .line 3632
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/v;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3636
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroidx/preference/j;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "focus_peaking_clicked"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 3641
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    if-nez v1, :cond_2

    return-void

    .line 3645
    :cond_2
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v1, :cond_3

    return-void

    .line 3649
    :cond_3
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/oplus/camera/professional/p;->g(I)Z

    move-result v1

    .line 3650
    iget-object v2, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "off"

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "on"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v1, v2, :cond_4

    return-void

    .line 3656
    :cond_4
    iget-object v2, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    move-object v3, v4

    .line 3657
    :goto_0
    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3658
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic T(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method private T()V
    .locals 9

    .line 3681
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return-void

    .line 3685
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oplus/camera/professional/v;->D:Landroid/content/res/Resources;

    const v2, 0x7f10013e

    .line 3686
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "pref_professional_exposure_time_key"

    .line 3685
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3687
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/oplus/camera/professional/v;->D:Landroid/content/res/Resources;

    const v4, 0x7f10021d

    .line 3688
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "pref_professional_iso_key"

    .line 3687
    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "pref_switch_camera_key"

    .line 3690
    invoke-virtual {p0, v3}, Lcom/oplus/camera/professional/v;->getSupportFunction(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "pref_camera_flashmode_key"

    .line 3691
    invoke-virtual {p0, v5}, Lcom/oplus/camera/professional/v;->getSupportFunction(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/oplus/camera/professional/v;->D:Landroid/content/res/Resources;

    .line 3692
    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oplus/camera/professional/v;->D:Landroid/content/res/Resources;

    .line 3693
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3694
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "camera_main"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3695
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->getFlashMode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.oplus.feature.flash.full.zoom.support"

    .line 3697
    invoke-static {v3}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v8, "off"

    if-eqz v3, :cond_4

    const-string v1, "camera_tele"

    .line 3698
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "auto"

    const-string v3, "on"

    if-eqz v0, :cond_3

    .line 3699
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3700
    :cond_1
    iput-boolean v7, p0, Lcom/oplus/camera/professional/v;->mbFlashTemporaryDisabled:Z

    .line 3701
    invoke-virtual {p0, v8}, Lcom/oplus/camera/professional/v;->updateFlashState(Ljava/lang/String;)V

    .line 3702
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v5, v8}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3705
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 3708
    :cond_3
    iput-boolean v6, p0, Lcom/oplus/camera/professional/v;->mbFlashTemporaryDisabled:Z

    .line 3709
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 3711
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v5, v4}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3712
    invoke-virtual {p0, v2}, Lcom/oplus/camera/professional/v;->updateFlashState(Ljava/lang/String;)V

    goto :goto_0

    .line 3715
    :cond_4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3716
    iput-boolean v6, p0, Lcom/oplus/camera/professional/v;->mbFlashTemporaryDisabled:Z

    .line 3717
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/v;->updateFlashState(Ljava/lang/String;)V

    .line 3718
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v5, v4}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3720
    :cond_5
    iput-boolean v7, p0, Lcom/oplus/camera/professional/v;->mbFlashTemporaryDisabled:Z

    .line 3721
    invoke-virtual {p0, v8}, Lcom/oplus/camera/professional/v;->updateFlashState(Ljava/lang/String;)V

    .line 3722
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v5, v8}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3727
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v5}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method static synthetic U(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method private U()V
    .locals 6

    .line 3732
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    const v2, 0x7f1001bb

    .line 3733
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_flashmode_key"

    .line 3732
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    .line 3735
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3736
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oplus/camera/professional/v;->D:Landroid/content/res/Resources;

    const v2, 0x7f10013e

    .line 3737
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "pref_professional_exposure_time_key"

    .line 3736
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3738
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/oplus/camera/professional/v;->D:Landroid/content/res/Resources;

    const v4, 0x7f10021d

    .line 3739
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "pref_professional_iso_key"

    .line 3738
    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3741
    iget-object v3, p0, Lcom/oplus/camera/professional/v;->D:Landroid/content/res/Resources;

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 3742
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lcom/oplus/camera/professional/p;->setAuto(I)V

    .line 3744
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3745
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v0, v5}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3748
    iget-object v5, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v5}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->getAdapter()Lcom/oplus/camera/professional/ListModeBarAdapter;

    move-result-object v5

    invoke-virtual {v5, v0, v2, v3}, Lcom/oplus/camera/professional/ListModeBarAdapter;->a(Landroid/view/View;IZ)V

    .line 3753
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->D:Landroid/content/res/Resources;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3754
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    invoke-virtual {v0, v3}, Lcom/oplus/camera/professional/p;->setAuto(I)V

    .line 3756
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3757
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v0, v3}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3760
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {p0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->getAdapter()Lcom/oplus/camera/professional/ListModeBarAdapter;

    move-result-object p0

    invoke-virtual {p0, v0, v2, v3}, Lcom/oplus/camera/professional/ListModeBarAdapter;->a(Landroid/view/View;IZ)V

    :cond_1
    return-void
.end method

.method static synthetic V(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method private V()V
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "ProfessionalCapMode"

    const-string v2, "updateHighResolutionMode"

    .line 3788
    invoke-static {v1, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3790
    iget-object v1, v0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v2, v0, Lcom/oplus/camera/professional/v;->D:Landroid/content/res/Resources;

    const v3, 0x7f1001e7

    .line 3791
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_high_resolution_key"

    .line 3790
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/oplus/camera/professional/v;->j:Z

    .line 3792
    new-instance v1, Lcom/oplus/camera/ui/control/b;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/oplus/camera/ui/control/b;-><init>(I)V

    const-string v3, "button_color_inside_none"

    .line 3793
    invoke-virtual {v1, v3}, Lcom/oplus/camera/ui/control/b;->a(Ljava/lang/String;)V

    .line 3795
    iget-object v3, v0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/professional/v;->getZSLMode()Z

    move-result v4

    invoke-interface {v3, v4}, Lcom/oplus/camera/e/d;->m(Z)V

    .line 3797
    iget-boolean v3, v0, Lcom/oplus/camera/professional/v;->j:Z

    if-eqz v3, :cond_3

    .line 3798
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/professional/v;->W()V

    .line 3799
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/professional/v;->X()V

    .line 3801
    iget-object v3, v0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    invoke-virtual {v3, v2}, Lcom/oplus/camera/professional/p;->setAuto(I)V

    .line 3802
    iget-object v3, v0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/oplus/camera/professional/p;->setAuto(I)V

    .line 3803
    iget-object v3, v0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/oplus/camera/professional/p;->setAuto(I)V

    .line 3804
    iget-object v3, v0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/oplus/camera/professional/p;->setAuto(I)V

    .line 3806
    iget-object v3, v0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    const/4 v5, 0x3

    .line 3808
    invoke-virtual {v3, v5}, Lcom/oplus/camera/professional/p;->c(I)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, v0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    .line 3809
    invoke-static {v7, v5}, Lcom/oplus/camera/professional/x;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    const-string v7, "pref_professional_exposure_compensation_key"

    .line 3806
    invoke-virtual {v3, v5, v7, v6}, Lcom/oplus/camera/professional/p;->a(ILjava/lang/String;I)V

    .line 3811
    invoke-virtual {v0, v2}, Lcom/oplus/camera/professional/v;->a(I)V

    .line 3812
    iget-object v3, v0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v3, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    .line 3814
    iget-object v1, v0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v1}, Lcom/oplus/camera/e/d;->p()I

    move-result v1

    if-nez v1, :cond_0

    .line 3815
    iget-object v1, v0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/professional/v;->getDefaultAFMode()I

    move-result v3

    invoke-static {}, Lcom/oplus/camera/a;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v5

    .line 3816
    invoke-static {}, Lcom/oplus/camera/a;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v6

    .line 3815
    invoke-interface {v1, v3, v5, v6, v2}, Lcom/oplus/camera/e/d;->a(I[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Z)V

    .line 3817
    iget-object v1, v0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {}, Lcom/oplus/camera/a;->c()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3818
    iget-object v1, v0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    .line 3821
    :cond_0
    iget-object v1, v0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v1}, Lcom/oplus/camera/e/d;->p()I

    move-result v1

    if-eq v2, v1, :cond_1

    iget-object v1, v0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    .line 3822
    invoke-interface {v1}, Lcom/oplus/camera/e/d;->p()I

    move-result v1

    if-ne v4, v1, :cond_2

    .line 3823
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/professional/v;->J()V

    .line 3824
    iget-object v1, v0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    invoke-virtual {v1, v4}, Lcom/oplus/camera/professional/p;->setPanelsBarAuto(I)V

    .line 3827
    :cond_2
    iget-object v5, v0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v6, 0x7f10047b

    const/4 v7, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v5 .. v10}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    goto :goto_0

    .line 3830
    :cond_3
    iget-object v11, v0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v12, 0x7f10047a

    const/4 v13, -0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-interface/range {v11 .. v16}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    .line 3832
    iget-object v0, v0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    :goto_0
    return-void
.end method

.method static synthetic W(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method private W()V
    .locals 3

    .line 3837
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    const v2, 0x7f1001bb

    .line 3838
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_flashmode_key"

    .line 3837
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    .line 3840
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3841
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3842
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3843
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3845
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/professional/v$14;

    invoke-direct {v1, p0}, Lcom/oplus/camera/professional/v$14;-><init>(Lcom/oplus/camera/professional/v;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static synthetic X(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method private X()V
    .locals 3

    .line 3859
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_raw_key"

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3861
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3862
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 3863
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3864
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method static synthetic Y(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method private Y()V
    .locals 4

    .line 4158
    new-instance v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;

    iget-object v1, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 4159
    invoke-virtual {v0, v1}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->buildEvent(Z)V

    const/16 v1, 0x4d

    .line 4161
    iput v1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    .line 4162
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "pref_parameter_saving"

    const-string v3, "off"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4163
    invoke-static {v1}, Lcom/oplus/camera/statistics/model/ProfessionalMsgData;->buildParameterSaving(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mItem:Ljava/lang/String;

    const-string v1, "save"

    .line 4164
    iput-object v1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mItemValue:Ljava/lang/String;

    .line 4166
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->getCameraMode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mCaptureMode:Ljava/lang/String;

    .line 4167
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->aw()I

    move-result v1

    iput v1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mCameraId:I

    .line 4168
    iget v1, p0, Lcom/oplus/camera/professional/v;->mOrientation:I

    iput v1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mOrientation:I

    .line 4169
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->aw()I

    move-result p0

    invoke-static {p0}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "front"

    goto :goto_0

    :cond_0
    const-string p0, "rear"

    .line 4170
    :goto_0
    iput-object p0, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mRearOrFront:Ljava/lang/String;

    .line 4171
    invoke-virtual {v0}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->report()V

    return-void
.end method

.method static synthetic Z(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method private Z()Z
    .locals 4

    .line 4298
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "off"

    const-string v2, "pref_pro_histogram_key"

    .line 4299
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "pref_subsetting_key"

    .line 4300
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/professional/v;->P:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/oplus/camera/professional/v;->Q:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
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

    .line 1027
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-gtz p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    .line 1031
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sub-float/2addr v0, p1

    .line 1032
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    move v1, v0

    move v0, p0

    .line 1035
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p0, v2, :cond_2

    .line 1036
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    sub-float/2addr v2, p1

    .line 1038
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v1

    if-gez v3, :cond_1

    .line 1039
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

    .line 1006
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-gtz p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    .line 1010
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sub-int/2addr v0, p1

    .line 1011
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    move v1, v0

    move v0, p0

    .line 1014
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p0, v2, :cond_2

    .line 1015
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v2, p1

    .line 1017
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v1, :cond_1

    .line 1018
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

    .line 1048
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-gtz p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    .line 1052
    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 1053
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    move-wide v1, v0

    move v0, p0

    .line 1056
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p0, v3, :cond_2

    .line 1057
    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    sub-long/2addr v3, p1

    .line 1059
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    cmp-long v5, v5, v1

    if-gez v5, :cond_1

    .line 1060
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

.method static synthetic a(Lcom/oplus/camera/professional/v;I)I
    .locals 0

    .line 101
    iput p1, p0, Lcom/oplus/camera/professional/v;->aa:I

    return p1
.end method

.method private a(Lcom/oplus/camera/e/h;)Landroid/util/Size;
    .locals 6

    const-string p0, "com.oplus.default.sensor.size.scale"

    .line 774
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigSizeListValue(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 776
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 777
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

    .line 779
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double p0, v2, v4

    if-gez p0, :cond_0

    const/16 p0, 0x100

    .line 780
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

    .line 343
    new-instance v0, Lcom/oplus/camera/g/a/c;

    invoke-direct {v0}, Lcom/oplus/camera/g/a/c;-><init>()V

    .line 344
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/oplus/camera/g/a/c;->c:Ljava/util/ArrayList;

    .line 345
    invoke-virtual {v0, p1}, Lcom/oplus/camera/g/a/c;->a(Ljava/nio/ByteOrder;)V

    const/4 p1, 0x1

    .line 348
    new-array v1, p1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v3, 0xfe

    invoke-virtual {v0, v3, v1}, Lcom/oplus/camera/g/a/c;->a(I[I)Z

    .line 349
    new-array v1, p1, [I

    iget v3, p0, Lcom/oplus/camera/professional/v;->W:I

    aput v3, v1, v2

    const/16 v3, 0x100

    invoke-virtual {v0, v3, v1}, Lcom/oplus/camera/g/a/c;->a(I[I)Z

    .line 350
    new-array v1, p1, [I

    iget v3, p0, Lcom/oplus/camera/professional/v;->X:I

    aput v3, v1, v2

    const/16 v3, 0x101

    invoke-virtual {v0, v3, v1}, Lcom/oplus/camera/g/a/c;->a(I[I)Z

    const/4 v1, 0x3

    .line 351
    new-array v3, v1, [I

    fill-array-data v3, :array_0

    const/16 v4, 0x102

    invoke-virtual {v0, v4, v3}, Lcom/oplus/camera/g/a/c;->a(I[I)Z

    .line 352
    new-array v3, p1, [I

    const/4 v4, 0x7

    aput v4, v3, v2

    const/16 v4, 0x103

    invoke-virtual {v0, v4, v3}, Lcom/oplus/camera/g/a/c;->a(I[I)Z

    .line 353
    new-array v3, p1, [I

    const/4 v4, 0x6

    aput v4, v3, v2

    const/16 v4, 0x106

    invoke-virtual {v0, v4, v3}, Lcom/oplus/camera/g/a/c;->a(I[I)Z

    .line 355
    new-array v3, p1, [I

    aput v2, v3, v2

    const/16 v4, 0x111

    invoke-virtual {v0, v4, v3}, Lcom/oplus/camera/g/a/c;->a(I[I)Z

    .line 356
    new-array v3, p1, [I

    aput v1, v3, v2

    const/16 v1, 0x115

    invoke-virtual {v0, v1, v3}, Lcom/oplus/camera/g/a/c;->a(I[I)Z

    .line 357
    new-array v1, p1, [I

    iget v3, p0, Lcom/oplus/camera/professional/v;->X:I

    aput v3, v1, v2

    const/16 v3, 0x116

    invoke-virtual {v0, v3, v1}, Lcom/oplus/camera/g/a/c;->a(I[I)Z

    .line 358
    new-array v1, p1, [I

    iget-object p0, p0, Lcom/oplus/camera/professional/v;->R:[B

    array-length p0, p0

    aput p0, v1, v2

    const/16 p0, 0x117

    invoke-virtual {v0, p0, v1}, Lcom/oplus/camera/g/a/c;->a(I[I)Z

    .line 359
    new-array p0, p1, [I

    aput p1, p0, v2

    const/16 v1, 0x11c

    invoke-virtual {v0, v1, p0}, Lcom/oplus/camera/g/a/c;->a(I[I)Z

    .line 360
    new-array p0, p1, [I

    aput p1, p0, v2

    const/16 v1, 0x211

    invoke-virtual {v0, v1, p0}, Lcom/oplus/camera/g/a/c;->a(I[I)Z

    const/4 p0, 0x2

    .line 361
    new-array v1, p0, [I

    fill-array-data v1, :array_1

    const/16 v3, 0x212

    invoke-virtual {v0, v3, v1}, Lcom/oplus/camera/g/a/c;->a(I[I)Z

    .line 362
    new-array v1, p1, [I

    aput p0, v1, v2

    const/16 p0, 0x213

    invoke-virtual {v0, p0, v1}, Lcom/oplus/camera/g/a/c;->a(I[I)Z

    .line 363
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

.method static synthetic a(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method private a(II)V
    .locals 4

    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startHistogramTransYAnimtor, originalY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", offsetY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProfessionalCapMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->aj:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 639
    new-array p1, v2, [I

    aput v3, p1, v3

    aput p2, p1, v1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/professional/v;->aj:Landroid/animation/ValueAnimator;

    .line 640
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->aj:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x15e

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 641
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->aj:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/oplus/camera/professional/v;->ak:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 642
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->aj:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/oplus/camera/professional/v$19;

    invoke-direct {p2, p0}, Lcom/oplus/camera/professional/v$19;-><init>(Lcom/oplus/camera/professional/v;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 654
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->aj:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/oplus/camera/professional/v$20;

    invoke-direct {p2, p0}, Lcom/oplus/camera/professional/v$20;-><init>(Lcom/oplus/camera/professional/v;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 667
    :cond_0
    new-array v2, v2, [I

    aput p1, v2, v3

    aput p2, v2, v1

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 670
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->aj:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_1

    .line 671
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->aj:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 2

    .line 4204
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 4205
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/professional/v$16;

    invoke-direct {v1, p0, p2, p1}, Lcom/oplus/camera/professional/v$16;-><init>(Lcom/oplus/camera/professional/v;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private a(ILjava/lang/String;Z)V
    .locals 1

    .line 4114
    new-instance p3, Lcom/oplus/camera/statistics/model/MenuClickMsgData;

    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    invoke-direct {p3, v0}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 4115
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

    .line 4130
    iput p1, p3, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    const-string p1, "profession_wb_value"

    .line 4131
    iput-object p1, p3, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mItem:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/16 p1, 0xe

    .line 4135
    iput p1, p3, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    const-string p1, "profession_focus_value"

    .line 4136
    iput-object p1, p3, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mItem:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/16 p1, 0xf

    .line 4140
    iput p1, p3, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    const-string p1, "profession_ev_value"

    .line 4141
    iput-object p1, p3, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mItem:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/16 p1, 0x1b

    .line 4124
    iput p1, p3, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    const-string p1, "profession_exp_time"

    .line 4125
    iput-object p1, p3, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mItem:Ljava/lang/String;

    .line 4126
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    const-string p2, "pref_professional_exposure_time_key"

    const-string v0, ""

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_4
    const/16 p1, 0x1c

    .line 4119
    iput p1, p3, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    const-string p1, "profession_ISO_value"

    .line 4120
    iput-object p1, p3, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mItem:Ljava/lang/String;

    .line 4148
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->getCameraMode()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p3, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mCaptureMode:Ljava/lang/String;

    .line 4149
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->aw()I

    move-result p1

    iput p1, p3, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mCameraId:I

    .line 4150
    iget p1, p0, Lcom/oplus/camera/professional/v;->mOrientation:I

    iput p1, p3, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mOrientation:I

    .line 4151
    iput-object p2, p3, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mItemValue:Ljava/lang/String;

    .line 4152
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->aw()I

    move-result p0

    invoke-static {p0}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "front"

    goto :goto_1

    :cond_5
    const-string p0, "rear"

    .line 4153
    :goto_1
    iput-object p0, p3, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mRearOrFront:Ljava/lang/String;

    .line 4154
    invoke-virtual {p3}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->report()V

    return-void
.end method

.method private a(IZ)V
    .locals 4

    .line 4071
    new-instance v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;

    iget-object v1, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 4072
    invoke-virtual {v0, v1}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->buildEvent(Z)V

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_5

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

    .line 4084
    iput p1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    goto :goto_0

    :cond_1
    const/16 p1, 0xe

    .line 4088
    iput p1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    goto :goto_0

    :cond_2
    const/16 p1, 0xf

    .line 4092
    iput p1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    goto :goto_0

    :cond_3
    const/16 p1, 0x1b

    .line 4080
    iput p1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    goto :goto_0

    :cond_4
    const/16 p1, 0x1c

    .line 4076
    iput p1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    goto :goto_0

    :cond_5
    const/16 p1, 0x51

    .line 4096
    iput p1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    :goto_0
    if-eqz p2, :cond_6

    move v1, v2

    .line 4103
    :cond_6
    iput v1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mFuncKeyResult:I

    .line 4105
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->getCameraMode()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mCaptureMode:Ljava/lang/String;

    .line 4106
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->aw()I

    move-result p1

    iput p1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mCameraId:I

    .line 4107
    iget p1, p0, Lcom/oplus/camera/professional/v;->mOrientation:I

    iput p1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mOrientation:I

    .line 4108
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->aw()I

    move-result p0

    invoke-static {p0}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "front"

    goto :goto_1

    :cond_7
    const-string p0, "rear"

    .line 4109
    :goto_1
    iput-object p0, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mRearOrFront:Ljava/lang/String;

    .line 4110
    invoke-virtual {v0}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->report()V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 5

    .line 224
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 225
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->p()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 227
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

    .line 231
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->getDefaultAFMode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v2, v0, :cond_1

    .line 232
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->getDefaultAFMode()I

    move-result v0

    if-ne v1, v0, :cond_2

    .line 233
    :cond_1
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->J()V

    .line 234
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/p;->setPanelsBarAuto(I)V

    .line 237
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_3

    const-string v0, "key_exposure_focus_separate_guide_animation"

    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/v;->isBubbleOpen(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 238
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->aU()Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 240
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v1, v3, v4}, Lcom/oplus/camera/screen/b/a;->a(Lcom/oplus/camera/ui/CameraUIInterface;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 241
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v2, v0, v1}, Lcom/oplus/camera/professional/v;->getTouchEnable(ZII)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "ProfessionalCapMode"

    const-string v1, "onSingleTapUp, bubble open, KEY_EXPOSURE_FOCUS_SEPARATE_TIPS"

    .line 242
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    const v1, 0x7f090299

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 v1, 0x12

    .line 245
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 244
    invoke-interface {v0, p0, v1, v2, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Landroid/view/View;III)V

    :cond_3
    return-void
.end method

.method private a(Lcom/oplus/camera/professional/ListProfessionalModeBar;ILcom/oplus/camera/professional/ListModeBarAdapter;Lcom/oplus/camera/professional/ListProfessionalModeBar$OnItemClickListener;)V
    .locals 0

    if-eqz p1, :cond_1

    .line 1327
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->getCurrentScreenMode()Lcom/oplus/camera/screen/b/a;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1330
    invoke-virtual {p1, p0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->setScreenMode(Lcom/oplus/camera/screen/b/a;)V

    .line 1333
    :cond_0
    invoke-virtual {p1, p2}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->setId(I)V

    .line 1334
    invoke-virtual {p1, p3}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->setAdapter(Lcom/oplus/camera/professional/ListModeBarAdapter;)V

    .line 1335
    invoke-virtual {p1, p4}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->setOnItemClickListener(Lcom/oplus/camera/professional/ListProfessionalModeBar$OnItemClickListener;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/professional/v;II)V
    .locals 0

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/professional/v;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/professional/v;ILjava/lang/String;Z)V
    .locals 0

    .line 101
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/professional/v;->a(ILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/professional/v;IZ)V
    .locals 0

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/professional/v;->b(IZ)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/professional/v;ZI)V
    .locals 0

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/professional/v;->a(ZI)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/professional/v;ZLjava/lang/String;)V
    .locals 0

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/professional/v;->a(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/professional/v;ZZ)V
    .locals 0

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/professional/v;->b(ZZ)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/professional/v;ZZZ)V
    .locals 0

    .line 101
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/professional/v;->a(ZZZ)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 5

    const v0, 0x7f10021d

    const-string v1, "pref_professional_iso_key"

    if-nez p1, :cond_0

    .line 3215
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/oplus/camera/professional/v;->D:Landroid/content/res/Resources;

    .line 3216
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3215
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3221
    :cond_0
    iget-object v2, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/oplus/camera/professional/v;->D:Landroid/content/res/Resources;

    .line 3222
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3221
    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3222
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3223
    iget-object v2, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 3224
    iget-object v3, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    const/4 v4, 0x1

    .line 3225
    invoke-static {v3, v4}, Lcom/oplus/camera/professional/x;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 3224
    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3226
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3229
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->D:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3230
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v1, -0x1

    invoke-interface {v0, v1, p2}, Lcom/oplus/camera/e/d;->b(IZ)V

    goto :goto_0

    .line 3232
    :cond_2
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->W()V

    .line 3233
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0}, Lcom/oplus/camera/e/d;->r()V

    .line 3234
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1, p2}, Lcom/oplus/camera/e/d;->b(IZ)V

    .line 3237
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setISOValue, iso: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ProfessionalCapMode"

    invoke-static {p2, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x7

    .line 3239
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/v;->a(I)V

    const/16 p1, 0x8

    .line 3240
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/v;->a(I)V

    return-void
.end method

.method private a(ZI)V
    .locals 1

    .line 3108
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    if-nez v0, :cond_0

    return-void

    .line 3112
    :cond_0
    invoke-virtual {v0, p2}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->a(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 3115
    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 3117
    instance-of v0, p2, Lcom/oplus/camera/professional/y;

    if-eqz v0, :cond_1

    .line 3118
    move-object v0, p2

    check-cast v0, Lcom/oplus/camera/professional/y;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/professional/y;->setRotateViewClickable(Z)V

    .line 3121
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {p0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->getAdapter()Lcom/oplus/camera/professional/ListModeBarAdapter;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p2, p1, v0}, Lcom/oplus/camera/professional/ListModeBarAdapter;->b(Landroid/view/View;ZZ)V

    :cond_2
    return-void
.end method

.method private a(ZLjava/lang/String;)V
    .locals 3

    .line 1904
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_switch_camera_key"

    const-string v2, "camera_main"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 1907
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    invoke-virtual {p0, v0, p2}, Lcom/oplus/camera/professional/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1909
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    invoke-virtual {p0, v0, p2}, Lcom/oplus/camera/professional/p;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private a(ZZ)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 3361
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "showOrHideFlashIcon, enable: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isOpenFlash: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->isOpenFlash()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ProfessionalCapMode"

    invoke-static {v0, p2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 3364
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->displayScreenHintIconInSwitchOn()V

    goto :goto_0

    .line 3366
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-interface {p0, p2, p1, p2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    :goto_0
    return-void
.end method

.method private a(ZZZ)V
    .locals 3

    .line 4433
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/oplus/camera/professional/v;->z:Lcom/oplus/camera/p;

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const-string v0, "pref_pro_histogram_key"

    .line 4437
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/v;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 4441
    :cond_1
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->Z()Z

    move-result v0

    .line 4443
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->z:Lcom/oplus/camera/p;

    invoke-virtual {v1}, Lcom/oplus/camera/p;->b()Z

    move-result v1

    if-ne v0, v1, :cond_2

    return-void

    .line 4447
    :cond_2
    iget v1, p0, Lcom/oplus/camera/professional/v;->ab:I

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    if-nez p3, :cond_3

    .line 4448
    iput v2, p0, Lcom/oplus/camera/professional/v;->ab:I

    .line 4449
    invoke-direct {p0, v2}, Lcom/oplus/camera/professional/v;->e(I)V

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_4

    .line 4451
    iget p3, p0, Lcom/oplus/camera/professional/v;->ab:I

    invoke-direct {p0, p3}, Lcom/oplus/camera/professional/v;->e(I)V

    .line 4454
    :cond_4
    :goto_0
    new-instance p3, Lcom/oplus/camera/professional/u$a;

    invoke-direct {p3}, Lcom/oplus/camera/professional/u$a;-><init>()V

    .line 4455
    iput-boolean v0, p3, Lcom/oplus/camera/professional/u$a;->a:Z

    const/16 v1, 0xfa

    if-eqz p1, :cond_6

    if-eqz v0, :cond_5

    move v2, v1

    .line 4458
    :cond_5
    iput v2, p3, Lcom/oplus/camera/professional/u$a;->b:I

    .line 4460
    iput v1, p3, Lcom/oplus/camera/professional/u$a;->c:I

    goto :goto_3

    :cond_6
    if-eqz p2, :cond_a

    .line 4462
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070997

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const/16 p2, 0x1f4

    if-eqz v0, :cond_7

    move v1, p2

    .line 4464
    :cond_7
    iput v1, p3, Lcom/oplus/camera/professional/u$a;->c:I

    .line 4466
    iput p2, p3, Lcom/oplus/camera/professional/u$a;->g:I

    const/4 p2, 0x0

    if-eqz v0, :cond_8

    int-to-float v1, p1

    goto :goto_1

    :cond_8
    move v1, p2

    .line 4467
    :goto_1
    iput v1, p3, Lcom/oplus/camera/professional/u$a;->d:F

    if-eqz v0, :cond_9

    goto :goto_2

    :cond_9
    int-to-float p2, p1

    .line 4468
    :goto_2
    iput p2, p3, Lcom/oplus/camera/professional/u$a;->e:F

    .line 4471
    :cond_a
    :goto_3
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->e()Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "translationX"

    goto :goto_4

    :cond_b
    const-string p1, "translationY"

    .line 4472
    :goto_4
    iput-object p1, p3, Lcom/oplus/camera/professional/u$a;->h:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 4475
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->z:Lcom/oplus/camera/p;

    invoke-virtual {p0, p3}, Lcom/oplus/camera/p;->a(Lcom/oplus/camera/professional/u$a;)V

    goto :goto_5

    .line 4477
    :cond_c
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->z:Lcom/oplus/camera/p;

    invoke-virtual {p0, p3}, Lcom/oplus/camera/p;->b(Lcom/oplus/camera/professional/u$a;)V

    :cond_d
    :goto_5
    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/professional/v;Ljava/lang/String;)Z
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Lcom/oplus/camera/professional/v;->b(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/oplus/camera/professional/v;Z)Z
    .locals 0

    .line 101
    iput-boolean p1, p0, Lcom/oplus/camera/professional/v;->U:Z

    return p1
.end method

.method static synthetic aA(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/capmode/a;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    return-object p0
.end method

.method static synthetic aB(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/capmode/a;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    return-object p0
.end method

.method static synthetic aC(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/e/d;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    return-object p0
.end method

.method static synthetic aD(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/capmode/a;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    return-object p0
.end method

.method static synthetic aE(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic aF(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic aG(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic aH(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic aI(Lcom/oplus/camera/professional/v;)Z
    .locals 0

    .line 101
    iget-boolean p0, p0, Lcom/oplus/camera/professional/v;->mbPaused:Z

    return p0
.end method

.method static synthetic aJ(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic aK(Lcom/oplus/camera/professional/v;)Z
    .locals 0

    .line 101
    iget-boolean p0, p0, Lcom/oplus/camera/professional/v;->mbCapModeInit:Z

    return p0
.end method

.method static synthetic aL(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/capmode/a;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    return-object p0
.end method

.method static synthetic aM(Lcom/oplus/camera/professional/v;)Z
    .locals 0

    .line 101
    iget-boolean p0, p0, Lcom/oplus/camera/professional/v;->k:Z

    return p0
.end method

.method static synthetic aN(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/capmode/a;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    return-object p0
.end method

.method static synthetic aa(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/capmode/a;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    return-object p0
.end method

.method private aa()V
    .locals 7

    .line 4311
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->al:Lcom/oplus/camera/screen/b/a;

    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->getCurrentScreenMode()Lcom/oplus/camera/screen/b/a;

    move-result-object v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 4312
    iput v2, p0, Lcom/oplus/camera/professional/v;->ab:I

    .line 4313
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->getCurrentScreenMode()Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/professional/v;->al:Lcom/oplus/camera/screen/b/a;

    .line 4316
    :cond_0
    iget v0, p0, Lcom/oplus/camera/professional/v;->ab:I

    invoke-direct {p0, v0}, Lcom/oplus/camera/professional/v;->e(I)V

    .line 4318
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->z:Lcom/oplus/camera/p;

    if-nez v0, :cond_1

    .line 4319
    new-instance v0, Lcom/oplus/camera/p;

    iget-object v1, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oplus/camera/professional/v;->mCameraRootView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/oplus/camera/professional/v;->A:Lcom/oplus/camera/p$a;

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/camera/p;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/oplus/camera/p$a;)V

    iput-object v0, p0, Lcom/oplus/camera/professional/v;->z:Lcom/oplus/camera/p;

    .line 4320
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->z:Lcom/oplus/camera/p;

    const v1, 0x7f0902d4

    invoke-virtual {v0, v1}, Lcom/oplus/camera/p;->a(I)V

    goto :goto_0

    .line 4322
    :cond_1
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->G()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oplus/camera/professional/v;->V:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4323
    iput-boolean v2, p0, Lcom/oplus/camera/professional/v;->V:Z

    .line 4324
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->z:Lcom/oplus/camera/p;

    invoke-virtual {v0}, Lcom/oplus/camera/p;->a()V

    .line 4325
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->z:Lcom/oplus/camera/p;

    iget-object v2, p0, Lcom/oplus/camera/professional/v;->A:Lcom/oplus/camera/p$a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/camera/p;->a(Lcom/oplus/camera/p$a;ZZJ)V

    goto :goto_0

    .line 4327
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->z:Lcom/oplus/camera/p;

    iget-object v1, p0, Lcom/oplus/camera/professional/v;->A:Lcom/oplus/camera/p$a;

    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->F()Z

    move-result v2

    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->G()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/oplus/camera/p;->a(Lcom/oplus/camera/p$a;ZZ)V

    .line 4331
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0}, Lcom/oplus/camera/e/d;->e()Lcom/oplus/camera/e/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/v;->getPreviewSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object v0

    .line 4333
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    .line 4332
    invoke-static {v1, v0}, Lcom/oplus/camera/p;->a(II)Landroid/util/Size;

    move-result-object v0

    .line 4334
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->z:Lcom/oplus/camera/p;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/p;->a(Landroid/util/Size;)V

    return-void
.end method

.method static synthetic ab(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic ac(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic ad(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic ae(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic af(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/capmode/a;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    return-object p0
.end method

.method static synthetic ag(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic ah(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic ai(Lcom/oplus/camera/professional/v;)Z
    .locals 0

    .line 101
    iget-boolean p0, p0, Lcom/oplus/camera/professional/v;->j:Z

    return p0
.end method

.method static synthetic aj(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic ak(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic al(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic am(Lcom/oplus/camera/professional/v;)Z
    .locals 0

    .line 101
    iget-boolean p0, p0, Lcom/oplus/camera/professional/v;->mbPaused:Z

    return p0
.end method

.method static synthetic an(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic ao(Lcom/oplus/camera/professional/v;)Landroid/content/res/Resources;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->D:Landroid/content/res/Resources;

    return-object p0
.end method

.method static synthetic ap(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic aq(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic ar(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic as(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic at(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic au(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic av(Lcom/oplus/camera/professional/v;)Z
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->E()Z

    move-result p0

    return p0
.end method

.method static synthetic aw(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method static synthetic ax(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/e/d;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    return-object p0
.end method

.method static synthetic ay(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/e/d;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    return-object p0
.end method

.method static synthetic az(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/e/d;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    return-object p0
.end method

.method static synthetic b(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/CameraUIInterface;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    return-object p0
.end method

.method private b(I)V
    .locals 2

    .line 2331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCameraMenuControlViewVisibility, visibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProfessionalCapMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2333
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2334
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->g(I)V

    .line 2335
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->f(I)V

    .line 2336
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->c(I)V

    .line 2337
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, p1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->b(IZ)V

    .line 2338
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->P(Z)V

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v0

    .line 2341
    :goto_0
    iput-boolean p1, p0, Lcom/oplus/camera/professional/v;->Q:Z

    .line 2342
    invoke-direct {p0, v0}, Lcom/oplus/camera/professional/v;->d(Z)V

    .line 2343
    invoke-direct {p0, v0, v0, v1}, Lcom/oplus/camera/professional/v;->a(ZZZ)V

    return-void
.end method

.method private b(IZ)V
    .locals 1

    .line 4274
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->isPanelMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4275
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, p1, p2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IZ)V

    goto :goto_0

    .line 4277
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, p1, p2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(II)V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/professional/v;I)V
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Lcom/oplus/camera/professional/v;->e(I)V

    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/professional/v;ZZ)V
    .locals 0

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/professional/v;->a(ZZ)V

    return-void
.end method

.method private b(Ljava/lang/String;Z)V
    .locals 4

    .line 3313
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 3314
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

    const-string v2, "ProfessionalCapMode"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3316
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3318
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "pref_camera_flashmode_key"

    if-nez v1, :cond_0

    .line 3319
    :try_start_1
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v1, :cond_1

    .line 3320
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 3321
    invoke-direct {p0, v1, p2}, Lcom/oplus/camera/professional/v;->a(ZZ)V

    goto :goto_0

    .line 3324
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 3325
    invoke-direct {p0, v1, p2}, Lcom/oplus/camera/professional/v;->a(ZZ)V

    .line 3326
    iget-object p2, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const-string v1, "off"

    invoke-interface {p2, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 3331
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 3333
    iget-object p2, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    if-eqz p2, :cond_1

    .line 3334
    iget-object p2, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/professional/v$13;

    invoke-direct {v1, p0, p1, v0}, Lcom/oplus/camera/professional/v$13;-><init>(Lcom/oplus/camera/professional/v;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p2, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private b(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1372
    iput-boolean v0, p0, Lcom/oplus/camera/professional/v;->F:Z

    .line 1373
    invoke-direct {p0, p1}, Lcom/oplus/camera/professional/v;->c(Z)V

    const/4 p1, 0x3

    .line 1374
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/v;->a(I)V

    .line 1376
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

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

    .line 4429
    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/camera/professional/v;->a(ZZZ)V

    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/professional/v;Ljava/lang/String;)Z
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Lcom/oplus/camera/professional/v;->c(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/oplus/camera/professional/v;Z)Z
    .locals 0

    .line 101
    iput-boolean p1, p0, Lcom/oplus/camera/professional/v;->Q:Z

    return p1
.end method

.method private b(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_0

    const-wide/32 v0, 0x3b9aca00

    .line 2197
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

.method static synthetic c(Lcom/oplus/camera/professional/v;I)I
    .locals 0

    .line 101
    iput p1, p0, Lcom/oplus/camera/professional/v;->ab:I

    return p1
.end method

.method private declared-synchronized c(I)V
    .locals 9

    monitor-enter p0

    .line 2589
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/p;->d()V

    .line 2591
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/v;->getCameraInfo(I)Lcom/oplus/camera/e/h;

    move-result-object p1

    .line 2593
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->u()I

    move-result v1

    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->v()I

    move-result v2

    .line 2594
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->w()I

    move-result v3

    iget-object v4, p0, Lcom/oplus/camera/professional/v;->B:Landroid/os/Handler;

    .line 2593
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/oplus/camera/professional/p;->a(IIILandroid/os/Handler;)V

    .line 2597
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->isSuperRawOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x77359400

    goto :goto_0

    .line 2598
    :cond_0
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->x()J

    move-result-wide v0

    :goto_0
    move-wide v3, v0

    .line 2600
    iget-object v2, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->y()J

    move-result-wide v5

    const/16 v0, 0x100

    .line 2601
    invoke-virtual {p1, v0}, Lcom/oplus/camera/e/h;->a(I)Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/oplus/camera/professional/v;->B:Landroid/os/Handler;

    .line 2600
    invoke-virtual/range {v2 .. v8}, Lcom/oplus/camera/professional/p;->a(JJLjava/util/List;Landroid/os/Handler;)V

    .line 2604
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->B()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/professional/v;->B:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/professional/p;->a(Ljava/util/List;Landroid/os/Handler;)V

    .line 2607
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->n()F

    move-result v1

    .line 2608
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->m()F

    move-result v2

    iget-object v3, p0, Lcom/oplus/camera/professional/v;->B:Landroid/os/Handler;

    .line 2607
    invoke-virtual {v0, v1, v2, v3}, Lcom/oplus/camera/professional/p;->a(FFLandroid/os/Handler;)V

    .line 2611
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->p()I

    move-result v1

    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->q()I

    move-result v2

    .line 2612
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->r()F

    move-result p1

    iget-object v3, p0, Lcom/oplus/camera/professional/v;->B:Landroid/os/Handler;

    .line 2611
    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/oplus/camera/professional/p;->a(IIFLandroid/os/Handler;)V

    .line 2614
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    invoke-virtual {p1}, Lcom/oplus/camera/professional/p;->e()V

    .line 2616
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {p1}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2617
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {p1}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->getSelectedIndex()I

    move-result p1

    .line 2618
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/professional/p;->f(I)V

    .line 2621
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    invoke-virtual {p1}, Lcom/oplus/camera/professional/p;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2622
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic c(Lcom/oplus/camera/professional/v;Z)V
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Lcom/oplus/camera/professional/v;->d(Z)V

    return-void
.end method

.method private c(Z)V
    .locals 4

    .line 1460
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    if-nez v0, :cond_0

    return-void

    .line 1464
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1465
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->D:Landroid/content/res/Resources;

    const v1, 0x7f10021d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/oplus/camera/professional/v;->a(Ljava/lang/String;Z)V

    .line 1466
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->D:Landroid/content/res/Resources;

    const v1, 0x7f10013e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1467
    iget-object v3, p0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v3, v0, v1}, Lcom/oplus/camera/e/d;->a(J)V

    .line 1468
    iget-object v3, p0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v3, v0, v1, v2}, Lcom/oplus/camera/e/d;->a(JZ)V

    .line 1469
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->L()V

    .line 1471
    iget-boolean v0, p0, Lcom/oplus/camera/professional/v;->F:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->E()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1474
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->c()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    .line 1472
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {}, Lcom/oplus/camera/a;->c()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1477
    :goto_1
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0, v2}, Lcom/oplus/camera/e/d;->i(Z)V

    if-eqz p1, :cond_3

    .line 1480
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    .line 1483
    :cond_3
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->K()V

    .line 1484
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->M()V

    .line 1486
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/oplus/camera/professional/v$21;

    invoke-direct {v0, p0}, Lcom/oplus/camera/professional/v$21;-><init>(Lcom/oplus/camera/professional/v;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic c(Lcom/oplus/camera/professional/v;)Z
    .locals 0

    .line 101
    iget-boolean p0, p0, Lcom/oplus/camera/professional/v;->mbPaused:Z

    return p0
.end method

.method static synthetic c(Lcom/oplus/camera/professional/v;Ljava/lang/String;)Z
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Lcom/oplus/camera/professional/v;->d(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 2202
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->isSuperRawOpen()Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/32 v0, 0x3b9aca00

    .line 2203
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

.method static synthetic d(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/ui/h;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->v:Lcom/oplus/camera/ui/h;

    return-object p0
.end method

.method private d(I)V
    .locals 6

    .line 4338
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->A:Lcom/oplus/camera/p$a;

    if-nez v0, :cond_0

    .line 4339
    new-instance v0, Lcom/oplus/camera/p$a;

    invoke-direct {v0}, Lcom/oplus/camera/p$a;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/professional/v;->A:Lcom/oplus/camera/p$a;

    .line 4340
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->A:Lcom/oplus/camera/p$a;

    const/16 v1, 0xa

    iput v1, v0, Lcom/oplus/camera/p$a;->a:I

    .line 4343
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->getCurrentScreenMode()Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    .line 4344
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->t()I

    move-result v1

    .line 4346
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateHistogramLayoutConfigs, previewMarginTop: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ProfessionalCapMode"

    invoke-static {v3, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 4349
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->A:Lcom/oplus/camera/p$a;

    iget p0, p0, Lcom/oplus/camera/professional/v;->mOrientation:I

    invoke-virtual {v0, p1, v1, p0}, Lcom/oplus/camera/screen/b/a;->a(Lcom/oplus/camera/p$a;II)V

    goto :goto_0

    .line 4351
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070999

    .line 4352
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f070998

    .line 4353
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x7f070614

    .line 4354
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v5, 0x7f070613

    .line 4355
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v2, p1

    .line 4358
    iget p1, p0, Lcom/oplus/camera/professional/v;->mOrientation:I

    rem-int/lit16 p1, p1, 0xb4

    if-nez p1, :cond_2

    .line 4359
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->A:Lcom/oplus/camera/p$a;

    add-int/2addr v1, v2

    iput v1, p1, Lcom/oplus/camera/p$a;->b:I

    .line 4360
    iput v3, p1, Lcom/oplus/camera/p$a;->d:I

    .line 4361
    iget p0, p0, Lcom/oplus/camera/professional/v;->mOrientation:I

    iput p0, p1, Lcom/oplus/camera/p$a;->e:I

    goto :goto_0

    .line 4363
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->A:Lcom/oplus/camera/p$a;

    sub-int v5, v4, v0

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v1

    add-int/2addr v5, v2

    iput v5, p1, Lcom/oplus/camera/p$a;->b:I

    sub-int/2addr v0, v4

    .line 4364
    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v3

    iput v0, p1, Lcom/oplus/camera/p$a;->d:I

    .line 4365
    iget p0, p0, Lcom/oplus/camera/professional/v;->mOrientation:I

    add-int/lit16 p0, p0, 0xb4

    rem-int/lit16 p0, p0, 0x168

    iput p0, p1, Lcom/oplus/camera/p$a;->e:I

    :goto_0
    return-void
.end method

.method static synthetic d(Lcom/oplus/camera/professional/v;I)V
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Lcom/oplus/camera/professional/v;->b(I)V

    return-void
.end method

.method private d(Z)V
    .locals 10

    .line 1784
    iget-boolean v0, p0, Lcom/oplus/camera/professional/v;->mbModePreInit:Z

    if-nez v0, :cond_0

    return-void

    .line 1788
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_subsetting_key"

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    .line 1789
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1790
    iget-boolean v0, p0, Lcom/oplus/camera/professional/v;->P:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oplus/camera/professional/v;->Q:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1792
    :goto_0
    iget-object v2, p0, Lcom/oplus/camera/professional/v;->I:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz v2, :cond_5

    if-eqz p1, :cond_3

    if-eqz v0, :cond_2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0xfa

    const-wide/16 v7, 0xfa

    .line 1795
    sget-object v9, Lcom/oplus/camera/professional/t;->a:Landroid/view/animation/PathInterpolator;

    invoke-static/range {v2 .. v9}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;JJLandroid/view/animation/Interpolator;)V

    goto :goto_2

    :cond_2
    const/4 v3, 0x4

    const/4 v4, 0x0

    const-wide/16 v5, 0xfa

    const-wide/16 v7, 0x0

    .line 1800
    sget-object v9, Lcom/oplus/camera/professional/t;->a:Landroid/view/animation/PathInterpolator;

    invoke-static/range {v2 .. v9}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;JJLandroid/view/animation/Interpolator;)V

    goto :goto_2

    .line 1806
    :cond_3
    invoke-virtual {v2}, Lcom/oplus/camera/ui/RotateImageView;->clearAnimation()V

    .line 1807
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->I:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x4

    :goto_1
    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    .line 1808
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->I:Lcom/oplus/camera/ui/RotateImageView;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/RotateImageView;->setAlpha(F)V

    :cond_5
    :goto_2
    return-void
.end method

.method private d(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 2208
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->isSuperRawOpen()Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/32 v0, 0x1dcd6500

    .line 2209
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

.method static synthetic e(Lcom/oplus/camera/professional/v;)I
    .locals 0

    .line 101
    iget p0, p0, Lcom/oplus/camera/professional/v;->mOrientation:I

    return p0
.end method

.method private e(I)V
    .locals 7

    .line 4371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateHistogramLayoutByAnim, offsetY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProfessionalCapMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4373
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070614

    .line 4377
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f070613

    .line 4378
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 4380
    iget-object v3, p0, Lcom/oplus/camera/professional/v;->A:Lcom/oplus/camera/p$a;

    if-nez v3, :cond_0

    .line 4381
    new-instance v3, Lcom/oplus/camera/p$a;

    invoke-direct {v3}, Lcom/oplus/camera/p$a;-><init>()V

    iput-object v3, p0, Lcom/oplus/camera/professional/v;->A:Lcom/oplus/camera/p$a;

    .line 4382
    iget-object v3, p0, Lcom/oplus/camera/professional/v;->A:Lcom/oplus/camera/p$a;

    const/16 v4, 0xa

    iput v4, v3, Lcom/oplus/camera/p$a;->a:I

    .line 4385
    :cond_0
    iget-object v3, p0, Lcom/oplus/camera/professional/v;->A:Lcom/oplus/camera/p$a;

    .line 4387
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4388
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->getCurrentScreenMode()Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 4391
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->t()I

    move-result v3

    .line 4392
    new-instance v4, Lcom/oplus/camera/p$a;

    invoke-direct {v4}, Lcom/oplus/camera/p$a;-><init>()V

    .line 4393
    iget v5, p0, Lcom/oplus/camera/professional/v;->mOrientation:I

    invoke-virtual {v0, v4, v3, v5}, Lcom/oplus/camera/screen/b/a;->a(Lcom/oplus/camera/p$a;II)V

    .line 4394
    iget v0, v4, Lcom/oplus/camera/p$a;->d:I

    .line 4395
    iget v3, v4, Lcom/oplus/camera/p$a;->b:I

    goto :goto_0

    :cond_1
    move v0, v4

    move-object v4, v3

    move v3, v0

    goto :goto_0

    :cond_2
    const v4, 0x7f070999

    .line 4398
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v5, 0x7f070998

    .line 4399
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    move v6, v4

    move-object v4, v3

    move v3, v6

    .line 4402
    :goto_0
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->F()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    const/16 v4, 0x5a

    .line 4418
    iget v5, p0, Lcom/oplus/camera/professional/v;->mOrientation:I

    if-ne v4, v5, :cond_4

    add-int/2addr v0, p1

    .line 4422
    :cond_4
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->A:Lcom/oplus/camera/p$a;

    sub-int v4, v1, v2

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/oplus/camera/professional/v;->ae:I

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    iput v4, p1, Lcom/oplus/camera/p$a;->b:I

    sub-int/2addr v2, v1

    .line 4423
    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    iput v2, p1, Lcom/oplus/camera/p$a;->d:I

    .line 4424
    iget p0, p0, Lcom/oplus/camera/professional/v;->mOrientation:I

    add-int/lit16 p0, p0, 0xb4

    rem-int/lit16 p0, p0, 0x168

    iput p0, p1, Lcom/oplus/camera/p$a;->e:I

    goto :goto_3

    :cond_5
    :goto_1
    add-int/2addr v3, p1

    .line 4405
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4406
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->A:Lcom/oplus/camera/p$a;

    iput v3, p1, Lcom/oplus/camera/p$a;->b:I

    goto :goto_2

    .line 4408
    :cond_6
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->A:Lcom/oplus/camera/p$a;

    iget v2, p0, Lcom/oplus/camera/professional/v;->ae:I

    add-int/2addr v2, v3

    iput v2, v1, Lcom/oplus/camera/p$a;->b:I

    .line 4410
    iget-boolean v2, p0, Lcom/oplus/camera/professional/v;->H:Z

    if-eqz v2, :cond_7

    if-eqz p1, :cond_7

    .line 4411
    iget p1, v1, Lcom/oplus/camera/p$a;->b:I

    iget v2, p0, Lcom/oplus/camera/professional/v;->af:I

    add-int/2addr p1, v2

    iput p1, v1, Lcom/oplus/camera/p$a;->b:I

    .line 4415
    :cond_7
    :goto_2
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->A:Lcom/oplus/camera/p$a;

    iput v0, p0, Lcom/oplus/camera/p$a;->d:I

    .line 4416
    iget p1, v4, Lcom/oplus/camera/p$a;->e:I

    iput p1, p0, Lcom/oplus/camera/p$a;->e:I

    :goto_3
    return-void
.end method

.method static synthetic e(Lcom/oplus/camera/professional/v;I)V
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Lcom/oplus/camera/professional/v;->c(I)V

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 3208
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/professional/v;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private e(Z)V
    .locals 4

    .line 3180
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oplus/camera/professional/v;->D:Landroid/content/res/Resources;

    const v2, 0x7f10050a

    .line 3181
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "pref_professional_whitebalance_key"

    .line 3180
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3183
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->D:Landroid/content/res/Resources;

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3184
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v2, -0x1

    invoke-interface {v1, v2, p1}, Lcom/oplus/camera/e/d;->a(IZ)V

    .line 3187
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/oplus/camera/professional/p;->c(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/professional/v;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3189
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2, p1}, Lcom/oplus/camera/e/d;->a(IZ)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3191
    :catch_0
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v1, p1}, Lcom/oplus/camera/e/d;->i(Z)V

    goto :goto_0

    .line 3194
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v1, p1}, Lcom/oplus/camera/e/d;->i(Z)V

    .line 3197
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWhiteBalance, whiteBalance: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ProfessionalCapMode"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x8

    .line 3199
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/v;->a(I)V

    return-void
.end method

.method static synthetic f(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/p;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->z:Lcom/oplus/camera/p;

    return-object p0
.end method

.method private f(Z)V
    .locals 5

    .line 3291
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oplus/camera/professional/v;->D:Landroid/content/res/Resources;

    const v2, 0x7f10013e

    .line 3292
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "pref_professional_exposure_time_key"

    .line 3291
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3293
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->D:Landroid/content/res/Resources;

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 3294
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    .line 3297
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->W()V

    .line 3301
    :cond_0
    iget-boolean v0, p0, Lcom/oplus/camera/professional/v;->mbFrontCamera:Z

    if-eqz v0, :cond_1

    .line 3302
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0, v1, v2, p1}, Lcom/oplus/camera/e/d;->a(JZ)V

    goto :goto_0

    .line 3304
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0, v3, v4, p1}, Lcom/oplus/camera/e/d;->a(JZ)V

    :goto_0
    const/4 p1, 0x5

    .line 3307
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/v;->a(I)V

    const/4 p1, 0x7

    .line 3308
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/v;->a(I)V

    const/16 p1, 0x8

    .line 3309
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/v;->a(I)V

    return-void
.end method

.method static synthetic g(Lcom/oplus/camera/professional/v;)I
    .locals 0

    .line 101
    iget p0, p0, Lcom/oplus/camera/professional/v;->aa:I

    return p0
.end method

.method private g(Z)V
    .locals 4

    const/4 v0, 0x1

    const-string v1, "off"

    if-eqz p1, :cond_0

    .line 3771
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    const v3, 0x7f1001bb

    .line 3772
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_flashmode_key"

    .line 3771
    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3773
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr v0, p1

    .line 3776
    :cond_0
    iget-boolean p1, p0, Lcom/oplus/camera/professional/v;->j:Z

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 3777
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "pref_high_resolution_key"

    .line 3778
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3779
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3780
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic h(Lcom/oplus/camera/professional/v;)Landroid/app/Activity;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic i(Lcom/oplus/camera/professional/v;)Landroid/widget/TextView;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->ai:Landroid/widget/TextView;

    return-object p0
.end method

.method private i()V
    .locals 12

    .line 294
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->S:Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;

    invoke-virtual {v0}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getImage()[B

    move-result-object v0

    .line 295
    invoke-static {v0}, Lcom/oplus/camera/g/a/e;->a([B)Lcom/oplus/camera/g/a/e;

    move-result-object v1

    .line 296
    iget-wide v2, p0, Lcom/oplus/camera/professional/v;->mCaptureDate:J

    const-wide/16 v4, 0xa

    sub-long v10, v2, v4

    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveResultToDng, mRawPreviewJpeg : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/camera/professional/v;->R:[B

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

    const-string v3, "ProfessionalCapMode"

    invoke-static {v3, v2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    .line 301
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->R:[B

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, v1, Lcom/oplus/camera/g/a/e;->f:Lcom/oplus/camera/g/a/c;

    invoke-virtual {v1, v0, v10, v11}, Lcom/oplus/camera/g/a/e;->a(Lcom/oplus/camera/g/a/c;J)V

    .line 303
    invoke-virtual {v1}, Lcom/oplus/camera/g/a/e;->b()V

    .line 304
    iget-object v0, v1, Lcom/oplus/camera/g/a/e;->f:Lcom/oplus/camera/g/a/c;

    iget-object v2, p0, Lcom/oplus/camera/professional/v;->ah:[B

    invoke-virtual {v0, v2}, Lcom/oplus/camera/g/a/c;->a([B)V

    .line 305
    iget-object v0, v1, Lcom/oplus/camera/g/a/e;->f:Lcom/oplus/camera/g/a/c;

    const/16 v2, 0x100

    invoke-virtual {v0, v2}, Lcom/oplus/camera/g/a/c;->b(I)Lcom/oplus/camera/g/a/b;

    move-result-object v0

    new-array v2, v4, [I

    iget v6, p0, Lcom/oplus/camera/professional/v;->Y:I

    aput v6, v2, v5

    .line 306
    invoke-virtual {v0, v2}, Lcom/oplus/camera/g/a/b;->a([I)V

    .line 307
    iget-object v0, v1, Lcom/oplus/camera/g/a/e;->f:Lcom/oplus/camera/g/a/c;

    const/16 v2, 0x101

    invoke-virtual {v0, v2}, Lcom/oplus/camera/g/a/c;->b(I)Lcom/oplus/camera/g/a/b;

    move-result-object v0

    new-array v2, v4, [I

    iget v6, p0, Lcom/oplus/camera/professional/v;->Z:I

    aput v6, v2, v5

    .line 308
    invoke-virtual {v0, v2}, Lcom/oplus/camera/g/a/b;->a([I)V

    .line 309
    iget-object v0, v1, Lcom/oplus/camera/g/a/e;->f:Lcom/oplus/camera/g/a/c;

    const/16 v2, 0x106

    invoke-virtual {v0, v2}, Lcom/oplus/camera/g/a/c;->b(I)Lcom/oplus/camera/g/a/b;

    move-result-object v0

    new-array v2, v4, [I

    iget v4, p0, Lcom/oplus/camera/professional/v;->Z:I

    aput v4, v2, v5

    .line 310
    invoke-virtual {v0, v2}, Lcom/oplus/camera/g/a/b;->a([I)V

    .line 311
    iget-object v0, v1, Lcom/oplus/camera/g/a/e;->a:Ljava/nio/ByteOrder;

    invoke-direct {p0, v0}, Lcom/oplus/camera/professional/v;->a(Ljava/nio/ByteOrder;)Lcom/oplus/camera/g/a/c;

    move-result-object v0

    .line 312
    iget-object v2, p0, Lcom/oplus/camera/professional/v;->R:[B

    invoke-virtual {v0, v2}, Lcom/oplus/camera/g/a/c;->a([B)V

    .line 313
    iget-object v2, v1, Lcom/oplus/camera/g/a/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    iget-object v2, v1, Lcom/oplus/camera/g/a/e;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    :cond_1
    invoke-virtual {v1}, Lcom/oplus/camera/g/a/e;->a()V

    .line 318
    iget-object v0, v1, Lcom/oplus/camera/g/a/e;->f:Lcom/oplus/camera/g/a/c;

    invoke-virtual {v1, v0, v10, v11}, Lcom/oplus/camera/g/a/e;->a(Lcom/oplus/camera/g/a/c;J)V

    .line 319
    iget-object v0, v1, Lcom/oplus/camera/g/a/e;->g:Lcom/oplus/camera/g/a/c;

    invoke-virtual {v1, v0, v10, v11}, Lcom/oplus/camera/g/a/e;->a(Lcom/oplus/camera/g/a/c;J)V

    .line 320
    invoke-virtual {v1}, Lcom/oplus/camera/g/a/e;->d()V

    .line 321
    iget-object v0, v1, Lcom/oplus/camera/g/a/e;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    :cond_2
    move-object v8, v0

    const/4 v0, 0x0

    .line 325
    iput-object v0, p0, Lcom/oplus/camera/professional/v;->R:[B

    .line 326
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->S:Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;

    invoke-virtual {v1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getFormat()I

    move-result v9

    .line 327
    iput-object v0, p0, Lcom/oplus/camera/professional/v;->S:Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;

    .line 329
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 330
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/professional/v$1;

    move-object v6, v1

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/oplus/camera/professional/v$1;-><init>(Lcom/oplus/camera/professional/v;[BIJ)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    const-string p0, "saveResultToDng finished"

    .line 339
    invoke-static {v3, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic j(Lcom/oplus/camera/professional/v;)Landroid/app/Activity;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method private j()V
    .locals 2

    .line 368
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 369
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->R:[B

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/oplus/camera/professional/v;->T:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 372
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->i()V

    return-void

    .line 370
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 372
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static synthetic k(Lcom/oplus/camera/professional/v;)I
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->t()I

    move-result p0

    return p0
.end method

.method private k()V
    .locals 2

    .line 552
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->k()Lcom/oplus/camera/ui/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 555
    new-instance v1, Lcom/oplus/camera/professional/v$18;

    invoke-direct {v1, p0}, Lcom/oplus/camera/professional/v$18;-><init>(Lcom/oplus/camera/professional/v;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/a/a;->a(Lcom/oplus/camera/ui/a/a$b;)V

    :cond_0
    return-void
.end method

.method static synthetic l(Lcom/oplus/camera/professional/v;)I
    .locals 0

    .line 101
    iget p0, p0, Lcom/oplus/camera/professional/v;->mOrientation:I

    return p0
.end method

.method private l()Z
    .locals 1

    const-string v0, "pref_parameter_saving"

    .line 909
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/v;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_focus_peaking_key"

    .line 910
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/v;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic m(Lcom/oplus/camera/professional/v;)Landroid/app/Activity;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method private m()Ljava/lang/String;
    .locals 2

    .line 966
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "-1"

    if-nez v0, :cond_0

    goto :goto_0

    .line 968
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "pref_professional_exposure_time_key"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private n()J
    .locals 2

    .line 975
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lcom/oplus/camera/professional/v;->D:Landroid/content/res/Resources;

    const v1, 0x7f10013e

    .line 976
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "pref_professional_exposure_time_key"

    .line 975
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 977
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic n(Lcom/oplus/camera/professional/v;)Landroid/content/SharedPreferences;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic o(Lcom/oplus/camera/professional/v;)I
    .locals 0

    .line 101
    iget p0, p0, Lcom/oplus/camera/professional/v;->ac:I

    return p0
.end method

.method private o()V
    .locals 6

    .line 1340
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_3

    .line 1341
    iget-boolean v0, p0, Lcom/oplus/camera/professional/v;->j:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1342
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    iget-object v2, p0, Lcom/oplus/camera/professional/v;->D:Landroid/content/res/Resources;

    const v3, 0x7f10013e

    .line 1343
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1342
    invoke-interface {v0, v4, v5}, Lcom/oplus/camera/e/d;->a(J)V

    .line 1344
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    iget-object v2, p0, Lcom/oplus/camera/professional/v;->D:Landroid/content/res/Resources;

    .line 1345
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1344
    invoke-interface {v0, v2, v3, v1}, Lcom/oplus/camera/e/d;->a(JZ)V

    goto :goto_2

    .line 1347
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x5

    invoke-static {v0, v2}, Lcom/oplus/camera/professional/x;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 1349
    iget-object v2, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "pref_professional_whitebalance_key"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1350
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1351
    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/v;->a(Z)V

    goto :goto_0

    .line 1353
    :cond_1
    invoke-direct {p0, v1}, Lcom/oplus/camera/professional/v;->e(Z)V

    .line 1356
    :goto_0
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->E()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1357
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {}, Lcom/oplus/camera/a;->c()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    .line 1359
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->c()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_1
    const/4 v0, 0x0

    .line 1362
    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/professional/v;->a(Ljava/lang/String;Z)V

    .line 1363
    invoke-direct {p0, v1}, Lcom/oplus/camera/professional/v;->f(Z)V

    .line 1364
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/v;->a(Ljava/lang/String;)V

    :goto_2
    const/4 v0, 0x3

    .line 1367
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/v;->a(I)V

    :cond_3
    return-void
.end method

.method static synthetic p(Lcom/oplus/camera/professional/v;)I
    .locals 0

    .line 101
    iget p0, p0, Lcom/oplus/camera/professional/v;->mOrientation:I

    return p0
.end method

.method private declared-synchronized p()V
    .locals 4

    monitor-enter p0

    .line 1499
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/p;->d(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1500
    iget-object v2, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    invoke-virtual {v2, v1}, Lcom/oplus/camera/professional/p;->c(I)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    .line 1501
    invoke-static {v3, v1}, Lcom/oplus/camera/professional/x;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 1500
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 1502
    iget-object v3, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    invoke-virtual {v3, v1, v2}, Lcom/oplus/camera/professional/p;->scrollTo(II)V

    .line 1503
    iget-object v3, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    invoke-virtual {v3, v1, v2}, Lcom/oplus/camera/professional/p;->b(II)V

    if-eqz v0, :cond_0

    .line 1505
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v2, :cond_0

    .line 1506
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1507
    invoke-direct {p0, v1, v0}, Lcom/oplus/camera/professional/v;->a(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1509
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic q(Lcom/oplus/camera/professional/v;)I
    .locals 0

    .line 101
    iget p0, p0, Lcom/oplus/camera/professional/v;->ad:I

    return p0
.end method

.method private q()V
    .locals 5

    .line 1512
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    if-nez v0, :cond_2

    .line 1513
    new-instance v0, Lcom/oplus/camera/professional/ListProfessionalModeBar;

    iget-object v1, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->b()I

    move-result v2

    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->h()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/camera/professional/ListProfessionalModeBar;-><init>(Landroid/app/Activity;II)V

    iput-object v0, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    .line 1514
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    iget-object v1, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->setPanelInterface(Lcom/oplus/camera/professional/q;)V

    .line 1515
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    iget-object v1, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->setCameraUIInterface(Lcom/oplus/camera/ui/CameraUIInterface;)V

    .line 1517
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1518
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->C:Lcom/oplus/camera/professional/v$a;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/v$a;->setVisibility(I)V

    .line 1521
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->setVisibility(I)V

    .line 1523
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->getCurrentScreenMode()Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1527
    invoke-virtual {v0}, Lcom/oplus/camera/screen/b/a;->f()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    goto :goto_0

    .line 1529
    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Lcom/oplus/camera/professional/v;->L:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    .line 1531
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xe

    .line 1532
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1535
    :goto_0
    new-instance v1, Lcom/oplus/camera/professional/ListModeBarAdapter;

    iget-object v2, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/oplus/camera/professional/p;->a(Z)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/oplus/camera/professional/ListModeBarAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 1536
    iget-object v2, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    invoke-virtual {v1, v2}, Lcom/oplus/camera/professional/ListModeBarAdapter;->a(Lcom/oplus/camera/professional/q;)V

    .line 1537
    iget-object v2, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    const v3, 0x7f09023a

    invoke-direct {p0, v2, v3, v1, p0}, Lcom/oplus/camera/professional/v;->a(Lcom/oplus/camera/professional/ListProfessionalModeBar;ILcom/oplus/camera/professional/ListModeBarAdapter;Lcom/oplus/camera/professional/ListProfessionalModeBar$OnItemClickListener;)V

    .line 1539
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->C:Lcom/oplus/camera/professional/v$a;

    iget-object p0, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v1, p0, v0}, Lcom/oplus/camera/professional/v$a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method private r()V
    .locals 5

    .line 1544
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    if-nez v0, :cond_2

    .line 1545
    new-instance v0, Lcom/oplus/camera/professional/p;

    iget-object v1, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->f()I

    move-result v3

    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->g()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oplus/camera/professional/p;-><init>(Landroid/content/Context;Lcom/oplus/camera/capmode/a;II)V

    iput-object v0, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    .line 1546
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/p;->setGravity(I)V

    .line 1547
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    const v1, 0x7f0902d5

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/p;->setId(I)V

    .line 1548
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->getCurrentScreenMode()Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    .line 1551
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1552
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    iget-object v2, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-virtual {v1, v2}, Lcom/oplus/camera/professional/p;->setCameraUIInterface(Lcom/oplus/camera/ui/CameraUIInterface;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 1555
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1556
    invoke-virtual {v0}, Lcom/oplus/camera/screen/b/a;->g()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    goto :goto_0

    .line 1558
    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v1

    iget v2, p0, Lcom/oplus/camera/professional/v;->M:I

    iget v3, p0, Lcom/oplus/camera/professional/v;->N:I

    add-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1560
    iget v1, p0, Lcom/oplus/camera/professional/v;->L:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v1, 0xe

    .line 1561
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xc

    .line 1562
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1565
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->C:Lcom/oplus/camera/professional/v$a;

    iget-object p0, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    invoke-virtual {v1, p0, v0}, Lcom/oplus/camera/professional/v$a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method static synthetic r(Lcom/oplus/camera/professional/v;)Z
    .locals 0

    .line 101
    iget-boolean p0, p0, Lcom/oplus/camera/professional/v;->U:Z

    return p0
.end method

.method static synthetic s(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/p$a;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->A:Lcom/oplus/camera/p$a;

    return-object p0
.end method

.method private s()V
    .locals 6

    .line 1570
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/professional/v;->u:Ljava/lang/Thread;

    .line 1571
    iget v0, p0, Lcom/oplus/camera/professional/v;->mCameraId:I

    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/v;->getProperCameraId(I)I

    move-result v0

    .line 1573
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addViewToRoot, mUiThread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/professional/v;->u:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ProfessionalCapMode"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1575
    iput-boolean v1, p0, Lcom/oplus/camera/professional/v;->o:Z

    .line 1576
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->C()V

    .line 1577
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->r()V

    .line 1580
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/oplus/camera/professional/v;->E:I

    if-eq v2, v0, :cond_0

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1581
    invoke-virtual {v1}, Lcom/oplus/camera/professional/p;->d()V

    .line 1584
    :cond_0
    iput v0, p0, Lcom/oplus/camera/professional/v;->E:I

    .line 1586
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->z(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 1587
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    iget v2, p0, Lcom/oplus/camera/professional/v;->E:I

    invoke-virtual {p0, v2}, Lcom/oplus/camera/professional/v;->getCameraInfo(I)Lcom/oplus/camera/e/h;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/camera/professional/v;->B:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/oplus/camera/professional/p;->a(Lcom/oplus/camera/e/h;Landroid/os/Handler;Lcom/oplus/camera/professional/p$a;)V

    .line 1589
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->isSuperRawOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1590
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    iget v2, p0, Lcom/oplus/camera/professional/v;->E:I

    invoke-virtual {p0, v2}, Lcom/oplus/camera/professional/v;->getCameraInfo(I)Lcom/oplus/camera/e/h;

    move-result-object v2

    const-wide/32 v3, 0x77359400

    invoke-virtual {v0, v2, v3, v4}, Lcom/oplus/camera/professional/p;->a(Lcom/oplus/camera/e/h;J)V

    .line 1594
    :cond_1
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->q()V

    .line 1595
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    iget-object v2, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v0, v2}, Lcom/oplus/camera/professional/p;->setSettleListener(Lcom/oplus/camera/professional/p$c;)V

    .line 1596
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    iget-object v2, p0, Lcom/oplus/camera/professional/v;->am:Lcom/oplus/camera/professional/p$b;

    invoke-virtual {v0, v2}, Lcom/oplus/camera/professional/p;->setMotionListener(Lcom/oplus/camera/professional/p$b;)V

    .line 1598
    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/v;->a(I)V

    .line 1600
    iput-boolean v1, p0, Lcom/oplus/camera/professional/v;->G:Z

    .line 1603
    :cond_2
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->u()V

    .line 1604
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->x()V

    .line 1606
    new-instance v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/professional/v;->ai:Landroid/widget/TextView;

    .line 1607
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->ai:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWillNotDraw(Z)V

    .line 1608
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->ai:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1609
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->ai:Landroid/widget/TextView;

    const v1, 0x7f0805e9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1610
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->ai:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070123

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oplus/camera/professional/v;->ai:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1611
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    .line 1612
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07014d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    .line 1613
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1614
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070129

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    .line 1615
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07012b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    .line 1616
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07012a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    .line 1617
    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070127

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1614
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1618
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->b()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/professional/v;->ai:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1619
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/professional/v;->ac:I

    .line 1620
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070128

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/professional/v;->ad:I

    .line 1621
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    const v2, 0x7f1002be

    .line 1622
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_photo_ratio_key"

    .line 1621
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/professional/v;->ag:Ljava/lang/String;

    .line 1624
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->ag:Ljava/lang/String;

    const-string v1, "square"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1625
    invoke-static {}, Lcom/oplus/camera/util/Util;->L()I

    move-result v0

    invoke-static {}, Lcom/oplus/camera/util/Util;->N()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oplus/camera/professional/v;->ae:I

    goto :goto_0

    .line 1627
    :cond_3
    invoke-static {}, Lcom/oplus/camera/util/Util;->N()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/professional/v;->ae:I

    :goto_0
    return-void
.end method

.method private t()I
    .locals 2

    .line 1632
    invoke-static {}, Lcom/oplus/camera/util/Util;->N()I

    move-result v0

    .line 1634
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v1, :cond_0

    .line 1635
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->p()Landroid/widget/RelativeLayout;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1637
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 1638
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v0

    :cond_0
    return v0
.end method

.method static synthetic t(Lcom/oplus/camera/professional/v;)I
    .locals 0

    .line 101
    iget p0, p0, Lcom/oplus/camera/professional/v;->ab:I

    return p0
.end method

.method static synthetic u(Lcom/oplus/camera/professional/v;)I
    .locals 0

    .line 101
    iget p0, p0, Lcom/oplus/camera/professional/v;->mOrientation:I

    return p0
.end method

.method private u()V
    .locals 5

    .line 1646
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->I:Lcom/oplus/camera/ui/RotateImageView;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 1647
    new-instance v0, Lcom/oplus/camera/ui/RotateImageView;

    iget-object v2, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/oplus/camera/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/professional/v;->I:Lcom/oplus/camera/ui/RotateImageView;

    .line 1648
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->I:Lcom/oplus/camera/ui/RotateImageView;

    const v2, 0x7f0902d6

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/RotateImageView;->setId(I)V

    .line 1649
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->I:Lcom/oplus/camera/ui/RotateImageView;

    const v2, 0x7f0805d6

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/RotateImageView;->setImageResource(I)V

    .line 1650
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->I:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/RotateImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/professional/v;->J:I

    .line 1651
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->D:Landroid/content/res/Resources;

    const v2, 0x7f07016d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1652
    iget v2, p0, Lcom/oplus/camera/professional/v;->J:I

    sub-int/2addr v0, v2

    div-int/2addr v0, v1

    .line 1654
    iget-object v2, p0, Lcom/oplus/camera/professional/v;->I:Lcom/oplus/camera/ui/RotateImageView;

    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->v()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oplus/camera/ui/RotateImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1655
    iget-object v2, p0, Lcom/oplus/camera/professional/v;->I:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v2, v0, v0, v0, v0}, Lcom/oplus/camera/ui/RotateImageView;->setPadding(IIII)V

    .line 1656
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->I:Lcom/oplus/camera/ui/RotateImageView;

    new-instance v2, Lcom/oplus/camera/professional/-$$Lambda$p8aM6hM1kA9Bw2NbF4BY_ZtrwFc;

    invoke-direct {v2, p0}, Lcom/oplus/camera/professional/-$$Lambda$p8aM6hM1kA9Bw2NbF4BY_ZtrwFc;-><init>(Lcom/oplus/camera/professional/v;)V

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1659
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->I:Lcom/oplus/camera/ui/RotateImageView;

    iget-object v2, p0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v2}, Lcom/oplus/camera/capmode/a;->u()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/oplus/camera/ui/RotateImageView;->a(IZ)V

    .line 1660
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v2, p0, Lcom/oplus/camera/professional/v;->I:Lcom/oplus/camera/ui/RotateImageView;

    const-string v4, "professional"

    invoke-interface {v0, v2, v4, v1, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Landroid/view/View;Ljava/lang/String;IZ)V

    .line 1662
    invoke-direct {p0, v3}, Lcom/oplus/camera/professional/v;->d(Z)V

    return-void
.end method

.method static synthetic v(Lcom/oplus/camera/professional/v;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->aj:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private v()Landroid/view/ViewGroup$LayoutParams;
    .locals 9

    .line 1668
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->D:Landroid/content/res/Resources;

    const v1, 0x7f07016d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1669
    iget v1, p0, Lcom/oplus/camera/professional/v;->J:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 1670
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->t()I

    move-result v1

    .line 1672
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGuideEntryLayoutParams, previewMarginTop: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ProfessionalCapMode"

    invoke-static {v3, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1674
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1677
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->f()I

    move-result v3

    const/16 v4, 0x14

    const/4 v5, 0x1

    const/16 v6, 0x15

    const/16 v7, 0xa

    if-ne v5, v3, :cond_1

    .line 1678
    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const v0, 0x7f0704d5

    .line 1679
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result v0

    const v1, 0x7f0704d4

    .line 1680
    invoke-static {v1}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result v1

    .line 1681
    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/16 v0, 0x10e

    .line 1683
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->g()I

    move-result p0

    if-ne v0, p0, :cond_0

    .line 1684
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1685
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_0

    .line 1687
    :cond_0
    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1688
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    .line 1690
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->f()I

    move-result v8

    if-ne v3, v8, :cond_2

    .line 1691
    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1692
    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1693
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->D:Landroid/content/res/Resources;

    const v1, 0x7f07053b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 1694
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->D:Landroid/content/res/Resources;

    const v1, 0x7f07053a

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    .line 1695
    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1696
    iput p0, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    :cond_2
    const/4 v3, 0x4

    .line 1697
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->f()I

    move-result v8

    if-ne v3, v8, :cond_3

    const/16 p0, 0xc

    .line 1698
    invoke-virtual {v2, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1699
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const p0, 0x7f070525

    .line 1700
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result p0

    iput p0, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    const p0, 0x7f070526

    .line 1701
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result p0

    iput p0, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    .line 1703
    :cond_3
    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1704
    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1705
    iget-object v3, p0, Lcom/oplus/camera/professional/v;->D:Landroid/content/res/Resources;

    const v4, 0x7f07016b

    .line 1706
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 1707
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->D:Landroid/content/res/Resources;

    const v3, 0x7f07016a

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sub-int/2addr v1, v0

    .line 1708
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1709
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/f/f;->a(Ljava/util/Locale;)I

    move-result v1

    if-ne v5, v1, :cond_4

    sub-int/2addr p0, v0

    .line 1710
    iput p0, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    :cond_4
    sub-int/2addr p0, v0

    .line 1712
    iput p0, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    :goto_0
    return-object v2
.end method

.method private w()V
    .locals 7

    .line 1721
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->I:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz v0, :cond_6

    .line 1722
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 1723
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->I:Lcom/oplus/camera/ui/RotateImageView;

    invoke-static {v0}, Lcom/oplus/camera/screen/d;->a(Landroid/view/View;)V

    .line 1724
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->I:Lcom/oplus/camera/ui/RotateImageView;

    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->v()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/RotateImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1726
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->f()I

    move-result v0

    const/4 v2, 0x0

    if-ne v1, v0, :cond_1

    .line 1727
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->g()I

    move-result v0

    if-nez v0, :cond_0

    .line 1728
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->I:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {p0, v2}, Lcom/oplus/camera/ui/RotateImageView;->setRotation(F)V

    goto :goto_0

    .line 1730
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->I:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->g()I

    move-result p0

    rsub-int p0, p0, 0x168

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/RotateImageView;->setRotation(F)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    .line 1732
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->f()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 1733
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->I:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->g()I

    move-result p0

    rsub-int p0, p0, 0x168

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/RotateImageView;->setRotation(F)V

    goto :goto_0

    .line 1735
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->I:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {p0, v2}, Lcom/oplus/camera/ui/RotateImageView;->setRotation(F)V

    :goto_0
    return-void

    .line 1741
    :cond_3
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->t()I

    move-result v0

    .line 1743
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateBottomGuideEntryPosition, previewMarginTop: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ProfessionalCapMode"

    invoke-static {v3, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1745
    iget-object v2, p0, Lcom/oplus/camera/professional/v;->D:Landroid/content/res/Resources;

    const v3, 0x7f07016b

    .line 1746
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 1747
    iget-object v2, p0, Lcom/oplus/camera/professional/v;->D:Landroid/content/res/Resources;

    const v3, 0x7f07016d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1748
    iget v3, p0, Lcom/oplus/camera/professional/v;->J:I

    sub-int/2addr v2, v3

    const/4 v3, 0x2

    div-int/2addr v2, v3

    .line 1750
    iget-object v4, p0, Lcom/oplus/camera/professional/v;->I:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v4}, Lcom/oplus/camera/ui/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    sub-int/2addr v0, v2

    .line 1753
    iget v2, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    if-eq v0, v2, :cond_5

    .line 1756
    iget-object v5, p0, Lcom/oplus/camera/professional/v;->K:Landroid/animation/ValueAnimator;

    const/4 v6, 0x0

    if-nez v5, :cond_4

    .line 1757
    new-array v3, v3, [I

    aput v2, v3, v6

    aput v0, v3, v1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/professional/v;->K:Landroid/animation/ValueAnimator;

    .line 1758
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->K:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1759
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->K:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/oplus/camera/professional/t;->b:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1761
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->K:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/camera/professional/v$22;

    invoke-direct {v1, p0, v4}, Lcom/oplus/camera/professional/v$22;-><init>(Lcom/oplus/camera/professional/v;Landroid/widget/RelativeLayout$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_1

    .line 1770
    :cond_4
    new-array v3, v3, [I

    aput v2, v3, v6

    aput v0, v3, v1

    invoke-virtual {v5, v3}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 1773
    :goto_1
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->K:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1774
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->K:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    .line 1777
    :cond_5
    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1778
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->I:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {p0, v4}, Lcom/oplus/camera/ui/RotateImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    :goto_2
    return-void
.end method

.method static synthetic w(Lcom/oplus/camera/professional/v;)Z
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->F()Z

    move-result p0

    return p0
.end method

.method private x()V
    .locals 4

    .line 1814
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->y:Lcom/oplus/camera/ui/RotateImageView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1815
    new-instance v0, Lcom/oplus/camera/ui/RotateImageView;

    iget-object v2, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/oplus/camera/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/professional/v;->y:Lcom/oplus/camera/ui/RotateImageView;

    .line 1816
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->y:Lcom/oplus/camera/ui/RotateImageView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 1817
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->y:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotateImageView;->setFocusable(Z)V

    .line 1818
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->y:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/RotateImageView;->setClickable(Z)V

    .line 1819
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->y:Lcom/oplus/camera/ui/RotateImageView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    .line 1820
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->y:Lcom/oplus/camera/ui/RotateImageView;

    iget-object v2, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    .line 1821
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10036d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1820
    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/RotateImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1822
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->y:Lcom/oplus/camera/ui/RotateImageView;

    new-instance v2, Lcom/oplus/camera/professional/v$23;

    invoke-direct {v2, p0}, Lcom/oplus/camera/professional/v$23;-><init>(Lcom/oplus/camera/professional/v;)V

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1832
    invoke-static {}, Lcom/oplus/camera/professional/u;->a()Lcom/a/a/f;

    move-result-object v0

    .line 1833
    iget-object v2, p0, Lcom/oplus/camera/professional/v;->y:Lcom/oplus/camera/ui/RotateImageView;

    new-instance v3, Lcom/oplus/camera/professional/v$2;

    invoke-direct {v3, p0, v0}, Lcom/oplus/camera/professional/v$2;-><init>(Lcom/oplus/camera/professional/v;Lcom/a/a/f;)V

    invoke-virtual {v2, v3}, Lcom/oplus/camera/ui/RotateImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1852
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x15

    .line 1855
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xb

    .line 1856
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1857
    iget-object v2, p0, Lcom/oplus/camera/professional/v;->D:Landroid/content/res/Resources;

    const v3, 0x7f07017f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1858
    iget-object v2, p0, Lcom/oplus/camera/professional/v;->D:Landroid/content/res/Resources;

    const v3, 0x7f07017e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 1859
    iget-object v2, p0, Lcom/oplus/camera/professional/v;->y:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v2, v0}, Lcom/oplus/camera/ui/RotateImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1860
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->y:Lcom/oplus/camera/ui/RotateImageView;

    const v2, 0x7f08048e

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/RotateImageView;->setImageResource(I)V

    .line 1861
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->y:Lcom/oplus/camera/ui/RotateImageView;

    const v2, 0x7f08063f

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/RotateImageView;->setBackgroundResource(I)V

    .line 1862
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0900e4

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/oplus/camera/professional/v;->y:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1865
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->y:Lcom/oplus/camera/ui/RotateImageView;

    iget-object v2, p0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v2}, Lcom/oplus/camera/capmode/a;->u()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/RotateImageView;->a(IZ)V

    .line 1866
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->z()V

    .line 1867
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->A()V

    return-void
.end method

.method static synthetic x(Lcom/oplus/camera/professional/v;)Z
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->G()Z

    move-result p0

    return p0
.end method

.method static synthetic y(Lcom/oplus/camera/professional/v;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->J()V

    return-void
.end method

.method private y()Z
    .locals 2

    const-string v0, "pref_parameter_saving"

    .line 1871
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/v;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "off"

    .line 1873
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

.method static synthetic z(Lcom/oplus/camera/professional/v;)Lcom/oplus/camera/professional/p;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    return-object p0
.end method

.method private z()V
    .locals 1

    .line 1877
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->y()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/camera/professional/v;->q:Z

    .line 1878
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->y:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz v0, :cond_1

    .line 1879
    iget-boolean p0, p0, Lcom/oplus/camera/professional/v;->q:Z

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


# virtual methods
.method public a(I)V
    .locals 2

    .line 1380
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/professional/v;->u:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    .line 1381
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->B:Landroid/os/Handler;

    if-eqz p0, :cond_1

    .line 1382
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1385
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/professional/v;->a(ILandroid/os/Message;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(ILandroid/os/Message;)V
    .locals 4

    const/4 p2, 0x0

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 1451
    :pswitch_0
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->B()V

    goto/16 :goto_0

    .line 1446
    :pswitch_1
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    invoke-virtual {p1, v1}, Lcom/oplus/camera/professional/p;->b(I)Z

    move-result p1

    invoke-direct {p0, p1, v1}, Lcom/oplus/camera/professional/v;->a(ZI)V

    goto/16 :goto_0

    .line 1436
    :pswitch_2
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->E()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "com.oplus.macro.best.focus.distance"

    .line 1437
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result p1

    .line 1438
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v0, 0x7f100234

    const v1, 0x7f0805e9

    const v3, 0x7f0604ff

    new-array v2, v2, [Ljava/lang/Object;

    .line 1440
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, p2

    .line 1438
    invoke-interface {p0, v0, v1, v3, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->b(III[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1429
    :pswitch_3
    iget-boolean p1, p0, Lcom/oplus/camera/professional/v;->m:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->A()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1430
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    goto :goto_0

    .line 1424
    :pswitch_4
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->J()V

    .line 1425
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/p;->setPanelsBarAuto(I)V

    goto :goto_0

    .line 1414
    :pswitch_5
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Lcom/oplus/camera/professional/p;->h(I)Z

    .line 1415
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    invoke-virtual {p1, v2}, Lcom/oplus/camera/professional/p;->h(I)Z

    .line 1416
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/oplus/camera/professional/p;->h(I)Z

    .line 1417
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    invoke-virtual {p1, v1}, Lcom/oplus/camera/professional/p;->h(I)Z

    .line 1418
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/professional/p;->h(I)Z

    .line 1420
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->B()V

    goto :goto_0

    .line 1410
    :pswitch_6
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->ac()V

    goto :goto_0

    .line 1392
    :pswitch_7
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {p1}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1393
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {p1}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->getSelectedPosition()I

    move-result p1

    .line 1394
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v0, p1, v2}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->a(IZ)V

    .line 1395
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1398
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->a(Landroid/view/View;)I

    move-result v0

    .line 1400
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/professional/p;->g(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1401
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->getAdapter()Lcom/oplus/camera/professional/ListModeBarAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v2}, Lcom/oplus/camera/professional/ListModeBarAdapter;->a(Landroid/view/View;IZ)V

    .line 1406
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    invoke-virtual {p0}, Lcom/oplus/camera/professional/p;->a()V

    :cond_1
    :goto_0
    return-void

    nop

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
    .locals 5

    .line 3127
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->A()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 3131
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {p1, p2}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->a(Landroid/view/View;)I

    move-result p1

    .line 3132
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->f()I

    move-result p2

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p2, :cond_1

    move p2, v2

    goto :goto_0

    :cond_1
    move p2, v1

    :goto_0
    if-nez p1, :cond_2

    .line 3136
    invoke-direct {p0, v2}, Lcom/oplus/camera/professional/v;->b(Z)V

    .line 3137
    invoke-virtual {p0, v2}, Lcom/oplus/camera/professional/v;->a(I)V

    .line 3138
    iget-object p2, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {p2}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->isSelected()Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/professional/v;->a(IZ)V

    return-void

    .line 3143
    :cond_2
    sget-object v3, Lcom/oplus/camera/professional/ListProfessionalModeBar$ModePressState;->NO_PRESSED:Lcom/oplus/camera/professional/ListProfessionalModeBar$ModePressState;

    iget-object v4, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v4}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->getModePressState()Lcom/oplus/camera/professional/ListProfessionalModeBar$ModePressState;

    move-result-object v4

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    .line 3144
    invoke-virtual {v3}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3145
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->onBackPressed()Z

    .line 3146
    invoke-direct {p0, p1, v1}, Lcom/oplus/camera/professional/v;->a(IZ)V

    return-void

    .line 3151
    :cond_3
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->e()Z

    move-result v3

    if-nez v3, :cond_4

    if-nez p2, :cond_4

    .line 3152
    iget-object v3, p0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v3, v1}, Lcom/oplus/camera/capmode/a;->d(Z)V

    .line 3153
    iget-object v3, p0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v2, v2}, Lcom/oplus/camera/capmode/a;->a(Landroid/animation/AnimatorListenerAdapter;ZZ)V

    .line 3156
    :cond_4
    iget-object v3, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v3, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->B(Z)V

    .line 3158
    iget-object v3, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v3}, Lcom/oplus/camera/ui/CameraUIInterface;->T()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3159
    iget-object v3, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v3, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->x(Z)V

    .line 3162
    :cond_5
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->P()V

    .line 3164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemClick, index: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", id: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "ProfessionalCapMode"

    invoke-static {p4, p3}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 3166
    invoke-direct {p0, p1, v2}, Lcom/oplus/camera/professional/v;->a(IZ)V

    const/4 p3, 0x2

    if-ne p3, p1, :cond_6

    .line 3169
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->isSuperRawOpen()Z

    move-result p3

    iput-boolean p3, p0, Lcom/oplus/camera/professional/v;->p:Z

    :cond_6
    if-eqz p2, :cond_7

    .line 3173
    iget-object p2, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p2, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->g(I)V

    .line 3176
    :cond_7
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    invoke-virtual {p0, p1, v2}, Lcom/oplus/camera/professional/p;->a(IZ)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    const v0, 0x7f1001c5

    if-nez p1, :cond_0

    .line 3247
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    .line 3248
    invoke-virtual {v1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_professional_focus_mode_key"

    .line 3247
    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3253
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFocusValue, focusValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ProfessionalCapMode"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3255
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3259
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->B:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3260
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3261
    iput v1, v0, Landroid/os/Message;->what:I

    .line 3262
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->B:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3264
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 3265
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->z()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3266
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0, v1, v1}, Lcom/oplus/camera/capmode/a;->b(ZZ)V

    .line 3269
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    const/4 v2, 0x1

    invoke-interface {v0, p1, v2}, Lcom/oplus/camera/e/d;->a(FZ)V

    .line 3272
    :cond_3
    iget-boolean p1, p0, Lcom/oplus/camera/professional/v;->j:Z

    if-eqz p1, :cond_4

    .line 3273
    invoke-direct {p0, v1}, Lcom/oplus/camera/professional/v;->g(Z)V

    :cond_4
    const/16 p1, 0x8

    .line 3276
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/v;->a(I)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 3203
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0, p1}, Lcom/oplus/camera/e/d;->i(Z)V

    const/16 p1, 0x8

    .line 3204
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/v;->a(I)V

    return-void
.end method

.method protected a()Z
    .locals 0

    const-string p0, "com.oplus.feature.professional.zoom.mutex.support"

    .line 843
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

    .line 466
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

    .line 962
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->u()I

    move-result p0

    return p0
.end method

.method public c()I
    .locals 2

    .line 3280
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lcom/oplus/camera/professional/v;->D:Landroid/content/res/Resources;

    const v1, 0x7f10013b

    .line 3281
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "pref_professional_exposure_compensation_key"

    .line 3280
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3283
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public cameraIdChanged(I)V
    .locals 2

    .line 2547
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->cameraIdChanged(I)V

    .line 2549
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->as()I

    move-result p1

    .line 2551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cameraIdChanged, id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProfessionalCapMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2553
    iget v0, p0, Lcom/oplus/camera/professional/v;->E:I

    if-eq v0, p1, :cond_0

    .line 2554
    iput p1, p0, Lcom/oplus/camera/professional/v;->E:I

    const/4 v0, 0x1

    .line 2555
    iput-boolean v0, p0, Lcom/oplus/camera/professional/v;->F:Z

    .line 2557
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/professional/v$9;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/professional/v$9;-><init>(Lcom/oplus/camera/professional/v;I)V

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

    .line 3950
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

    .line 3984
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->E()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 3985
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->B:Landroid/os/Handler;

    const/4 p1, 0x6

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    :cond_1
    if-eqz p2, :cond_2

    .line 3972
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    if-eqz p0, :cond_6

    .line 3973
    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->setVisibility(I)V

    goto :goto_2

    .line 3976
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    if-eqz p1, :cond_6

    .line 3977
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->N()V

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_4

    .line 3956
    iget-boolean p1, p0, Lcom/oplus/camera/professional/v;->mbInCapturing:Z

    if-eqz p1, :cond_4

    move p1, v1

    goto :goto_0

    :cond_4
    move p1, p2

    .line 3960
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->C:Lcom/oplus/camera/professional/v$a;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/professional/v$a;->setTouchState(Z)V

    if-eqz p2, :cond_5

    goto :goto_1

    :cond_5
    const/16 v1, 0x8

    .line 3962
    :goto_1
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->C:Lcom/oplus/camera/professional/v$a;

    const-wide/16 v2, 0x12c

    const/4 p2, 0x0

    invoke-static {p1, v1, p2, v2, v3}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    .line 3964
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->y()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 3965
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->y:Lcom/oplus/camera/ui/RotateImageView;

    invoke-static {p0, v1, p2, v2, v3}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    :cond_6
    :goto_2
    return-void
.end method

.method public checkoutTimerSnapShotState()V
    .locals 0

    .line 1979
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->checkoutTimerSnapShotState()V

    return-void
.end method

.method public closeImageReader()V
    .locals 2

    const-string v0, "ProfessionalCapMode"

    const-string v1, "closeImageReader"

    .line 864
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 865
    iput-boolean v0, p0, Lcom/oplus/camera/professional/v;->n:Z

    return-void
.end method

.method public consumeImage(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;)Z
    .locals 2

    .line 272
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->isSuperRawOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x100

    .line 273
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getFormat()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    .line 274
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getSourceType()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 275
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/professional/v;->W:I

    .line 276
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/professional/v;->X:I

    .line 278
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 279
    :try_start_0
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getImage()[B

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/professional/v;->R:[B

    .line 280
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 282
    iput p1, p0, Lcom/oplus/camera/professional/v;->Y:I

    .line 283
    iput p1, p0, Lcom/oplus/camera/professional/v;->Z:I

    .line 284
    iget v0, p0, Lcom/oplus/camera/professional/v;->Y:I

    iget v1, p0, Lcom/oplus/camera/professional/v;->Z:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/oplus/camera/professional/v;->ah:[B

    .line 286
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->j()V

    return p1

    :catchall_0
    move-exception p0

    .line 280
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

    .line 4200
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public e()Z
    .locals 0

    .line 4536
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->getCurrentScreenMode()Lcom/oplus/camera/screen/b/a;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4537
    invoke-virtual {p0}, Lcom/oplus/camera/screen/b/a;->l()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public f()I
    .locals 0

    .line 4541
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->getCurrentScreenMode()Lcom/oplus/camera/screen/b/a;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4542
    invoke-virtual {p0}, Lcom/oplus/camera/screen/b/a;->j()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public g()I
    .locals 0

    .line 4546
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->getCurrentScreenMode()Lcom/oplus/camera/screen/b/a;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4547
    invoke-virtual {p0}, Lcom/oplus/camera/screen/b/a;->k()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getCameraFeature()Ljava/lang/String;
    .locals 3

    .line 454
    iget-boolean v0, p0, Lcom/oplus/camera/professional/v;->mbDestroyed:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

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

    .line 462
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

    .line 996
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    .line 1002
    iget-wide v0, p0, Lcom/oplus/camera/professional/v;->t:J

    :cond_0
    return-wide v0
.end method

.method public getCaptureIso()I
    .locals 4

    .line 982
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oplus/camera/professional/v;->D:Landroid/content/res/Resources;

    const v2, 0x7f10021d

    .line 983
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "pref_professional_iso_key"

    .line 982
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 986
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->D:Landroid/content/res/Resources;

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 987
    iget p0, p0, Lcom/oplus/camera/professional/v;->s:I

    return p0

    .line 989
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getDefaultAFMode()I
    .locals 0

    .line 4036
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->getDefaultAFMode()I

    move-result p0

    return p0
.end method

.method public getFlashMode()Ljava/lang/String;
    .locals 3

    .line 2992
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/professional/v;->mbFlashTemporaryDisabled:Z

    if-nez v0, :cond_0

    .line 2993
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->D:Landroid/content/res/Resources;

    const v1, 0x7f10013e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2994
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "pref_professional_exposure_time_key"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2997
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2998
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

    .line 4225
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->isSuperRawOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4229
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->getHeicCodecFormat()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getHintTextId()I
    .locals 3

    .line 4041
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_5

    .line 4042
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "camera_main"

    const-string v2, "pref_switch_camera_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4044
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const p0, 0x7f10042f

    .line 4045
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->f(I)I

    move-result p0

    return p0

    :cond_0
    const-string v1, "camera_ultra_wide"

    .line 4046
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "com.oplus.isUWFixedFocus"

    .line 4047
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    .line 4048
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

    .line 4051
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->f(I)I

    move-result p0

    return p0

    :cond_2
    :goto_0
    const p0, 0x7f100434

    .line 4049
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->f(I)I

    move-result p0

    return p0

    :cond_3
    const-string p0, "camera_tele"

    .line 4053
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const p0, 0x7f100432

    return p0

    :cond_4
    const-string p0, "camera_macro"

    .line 4055
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

    .line 2475
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->isSuperRawOpen()Z

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

    .line 789
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_switch_camera_key"

    const-string v2, "camera_main"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "camera_ultra_wide"

    .line 791
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 792
    invoke-direct {p0, p1}, Lcom/oplus/camera/professional/v;->a(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 799
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getPictureSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;
    .locals 3

    .line 2774
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;

    move-result-object v0

    .line 2776
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2777
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->s()I

    move-result v1

    const/16 v2, 0x1c

    if-eq v1, v2, :cond_1

    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 2778
    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->s()I

    move-result p0

    const/16 v1, 0x1d

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x17

    .line 2781
    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/control/b;->a(I)V

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p0, 0x1a

    .line 2779
    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/control/b;->a(I)V

    :cond_2
    :goto_1
    return-object v0
.end method

.method public getSupportFunction(Ljava/lang/String;)Z
    .locals 11

    .line 1191
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x5

    const-string v3, "pref_professional_exposure_time_key"

    const-string v4, "pref_raw_key"

    const-string v5, "key_support_update_thumbnail_user_picture"

    const-string v6, "pref_switch_camera_key"

    const/4 v7, 0x0

    const/4 v8, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "pref_camera_tap_shutter_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

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

    const/16 v0, 0x17

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "pref_camera_flashmode_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "pref_support_capture_preview"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "pref_headline_control_by_mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "pref_support_switch_camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "pref_raw_control_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1c

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

    const/16 v0, 0x1d

    goto/16 :goto_1

    :sswitch_d
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "func_out_capture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "pref_zoom_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_10
    const-string v0, "pref_high_resolution_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    goto/16 :goto_1

    :sswitch_11
    const-string v0, "pref_camera_gesture_shutter_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_12
    const-string v0, "pref_subsetting_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_13
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_14
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    goto/16 :goto_1

    :sswitch_15
    const-string v0, "func_out_preview_capture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_16
    const-string v0, "pref_switch_dual_camera_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_17
    const-string v0, "pref_camera_timer_shutter_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_18
    const-string v0, "pref_setting_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_19
    const-string v0, "pref_parameter_saving"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v7

    goto :goto_1

    :sswitch_1a
    const-string v0, "pref_watermark_function_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    goto :goto_1

    :sswitch_1b
    const-string v0, "pref_camera_photo_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1f

    goto :goto_1

    :sswitch_1c
    const-string v0, "pref_support_post_view"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_1d
    const-string v0, "pref_exposure_focus_separate_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_1e
    const-string v0, "pref_sstart_preview_sync"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    goto :goto_1

    :sswitch_1f
    const-string v0, "pref_manual_exposure_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_20
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
    const-string v9, "camera_main"

    const-string v10, "focusPeaking"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 1311
    :pswitch_0
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->m()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/camera/professional/v;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    return v8

    .line 1297
    :pswitch_1
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1, v6, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "camera_ultra_wide"

    .line 1300
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1301
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    if-nez p1, :cond_1

    .line 1302
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->getCameraMode()Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/oplus/camera/professional/v;->E:I

    invoke-static {p1, v0}, Lcom/oplus/camera/e/a;->a(Ljava/lang/String;I)Lcom/oplus/camera/e/h;

    move-result-object p1

    goto :goto_2

    .line 1303
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p1}, Lcom/oplus/camera/e/d;->e()Lcom/oplus/camera/e/h;

    move-result-object p1

    .line 1304
    :goto_2
    invoke-direct {p0, p1}, Lcom/oplus/camera/professional/v;->a(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object p0

    if-nez p0, :cond_2

    move v7, v8

    :cond_2
    return v7

    :cond_3
    return v8

    .line 1294
    :pswitch_2
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->getCameraMode()Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/oplus/camera/professional/v;->mCameraId:I

    const-string v0, "aps_algo_watermark"

    invoke-static {p1, p0, v0}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportCaptureAlgo(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    return p0

    .line 1288
    :pswitch_3
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0, v6, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.oplus.feature.professional.super.raw.support"

    .line 1290
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1291
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->e(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    move v7, v8

    :cond_4
    return v7

    :pswitch_4
    const-string p0, "com.oplus.feature.professional.raw.support"

    .line 1285
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_5
    const-string p0, "com.oplus.professional.switch.camera.type"

    .line 1282
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_5

    move v7, v8

    :cond_5
    return v7

    .line 1269
    :pswitch_6
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->isSuperRawOpen()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 1271
    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    if-eqz p1, :cond_6

    .line 1273
    invoke-virtual {p1, v1}, Lcom/oplus/camera/professional/p;->g(I)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1274
    :cond_6
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->isRawRequestTag()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    if-eqz p1, :cond_7

    .line 1276
    invoke-virtual {p1, v2}, Lcom/oplus/camera/professional/p;->g(I)Z

    move-result p1

    if-nez p1, :cond_7

    .line 1277
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result p1

    if-nez p1, :cond_7

    .line 1278
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->isFlashState()Z

    move-result p1

    if-nez p1, :cond_8

    .line 1279
    :cond_7
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->getCameraFeature()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v10, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    :cond_8
    move v7, v8

    :cond_9
    return v7

    .line 1258
    :pswitch_7
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 1259
    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1260
    invoke-virtual {p0, v5}, Lcom/oplus/camera/professional/v;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 1261
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->isRawRequestTag()Z

    move-result p1

    if-nez p1, :cond_a

    .line 1262
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->getCameraFeature()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v10, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    return v8

    :cond_a
    return v7

    :pswitch_8
    const-string p0, "com.oplus.high.resolution.support"

    .line 1255
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 1248
    :pswitch_9
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    if-eqz v0, :cond_11

    .line 1249
    invoke-virtual {v0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->isSelected()Z

    move-result p0

    return p0

    .line 1245
    :pswitch_a
    invoke-static {v4}, Lcom/oplus/camera/aps/config/CameraConfig;->getSupportSettingMenuKey(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 1242
    :pswitch_b
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->E()Z

    move-result p1

    if-nez p1, :cond_c

    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->d()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->isRawOpen()Z

    move-result p1

    if-nez p1, :cond_c

    :cond_b
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->isSuperRawOpen()Z

    move-result p0

    if-nez p0, :cond_c

    move v7, v8

    :cond_c
    return v7

    .line 1232
    :pswitch_c
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_11

    .line 1233
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/oplus/camera/professional/v;->D:Landroid/content/res/Resources;

    const v1, 0x7f10013e

    .line 1234
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1233
    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1235
    iget-boolean p0, p0, Lcom/oplus/camera/professional/v;->j:Z

    if-nez p0, :cond_d

    const-wide/32 v0, 0x3b9aca00

    .line 1236
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-gtz p0, :cond_d

    move v7, v8

    :cond_d
    return v7

    .line 1225
    :pswitch_d
    invoke-static {}, Lcom/oplus/camera/util/Util;->aQ()Z

    move-result p1

    if-eqz p1, :cond_e

    return v7

    .line 1229
    :cond_e
    iget-boolean p0, p0, Lcom/oplus/camera/professional/v;->mbFrontCamera:Z

    xor-int/2addr p0, v8

    return p0

    .line 1222
    :pswitch_e
    iget-boolean p0, p0, Lcom/oplus/camera/professional/v;->mbFrontCamera:Z

    xor-int/2addr p0, v8

    return p0

    :pswitch_f
    return v7

    :pswitch_10
    return v8

    .line 1196
    :pswitch_11
    iget p1, p0, Lcom/oplus/camera/professional/v;->mCameraId:I

    invoke-static {v10, p1}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportCameraFeature(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_f

    .line 1197
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->getCameraMode()Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/oplus/camera/professional/v;->mCameraId:I

    const-string v0, "preview"

    const-string v1, "preview_edge_filter"

    invoke-static {p1, p0, v0, v1}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportPreviewAlgo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_10

    :cond_f
    move v7, v8

    :cond_10
    return v7

    :pswitch_12
    const-string p0, "com.oplus.feature.professional.parameter.saving.support"

    .line 1193
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 1321
    :cond_11
    :goto_3
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x717ea7aa -> :sswitch_20
        -0x64edfd1c -> :sswitch_1f
        -0x648cf4fa -> :sswitch_1e
        -0x6273229a -> :sswitch_1d
        -0x5f5094a8 -> :sswitch_1c
        -0x5f048920 -> :sswitch_1b
        -0x5efa20f1 -> :sswitch_1a
        -0x5e9d1914 -> :sswitch_19
        -0x541be82c -> :sswitch_18
        -0x4f05d6eb -> :sswitch_17
        -0x4bbda787 -> :sswitch_16
        -0x30f7a71d -> :sswitch_15
        -0x289e651d -> :sswitch_14
        -0x18dc5854 -> :sswitch_13
        -0xdae10b4 -> :sswitch_12
        -0xb0f5f67 -> :sswitch_11
        0x166286d -> :sswitch_10
        0x140b168f -> :sswitch_f
        0x27866a5a -> :sswitch_e
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
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
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
    .locals 3

    const-string v0, "pref_camera_flashmode_key"

    .line 915
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "pref_switch_dual_camera_key"

    .line 919
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "pref_raw_key"

    .line 920
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "pref_high_resolution_key"

    .line 921
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "pref_camera_photo_ratio_key"

    .line 922
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "pref_camera_timer_shutter_key"

    .line 923
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "pref_setting_key"

    .line 924
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "pref_switch_camera_key"

    .line 925
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "pref_parameter_saving"

    .line 926
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "pref_focus_peaking_key"

    .line 927
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "pref_pro_histogram_key"

    .line 928
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "pref_subsetting_key"

    .line 929
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    const-string v0, "pref_raw_control_key"

    .line 933
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 934
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/v;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->l()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1

    :cond_3
    const-string v0, "pref_super_raw_control_key"

    .line 937
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p1, "com.oplus.feature.professional.super.raw.support"

    .line 938
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 939
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->l()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    return v1

    .line 942
    :cond_5
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportMenu(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 930
    :cond_6
    :goto_2
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/v;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getSupportSubMenu(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "pref_camera_timer_shutter_key"

    .line 947
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "pref_camera_photo_ratio_key"

    .line 948
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "pref_setting_key"

    .line 949
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "pref_raw_control_key"

    .line 953
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const-string v0, "pref_super_raw_control_key"

    .line 954
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    .line 955
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/v;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->l()Z

    move-result p0

    if-nez p0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1

    .line 950
    :cond_4
    :goto_1
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/v;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getTouchEnable(ZII)Z
    .locals 6

    .line 4556
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070452

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 4557
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->aU()Lcom/oplus/camera/screen/b/a;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    .line 4558
    :cond_1
    invoke-virtual {v1}, Lcom/oplus/camera/screen/b/a;->j()I

    move-result v1

    :goto_1
    const/4 v3, 0x1

    if-ne v3, v1, :cond_2

    .line 4560
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0704db

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_2

    .line 4561
    :cond_2
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f070719

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 4563
    :goto_2
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 4564
    iget-object v5, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v5, v4}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 4565
    iget v5, v4, Landroid/graphics/Rect;->left:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v5, v0

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 4566
    iget v5, v4, Landroid/graphics/Rect;->top:I

    sub-int v1, v0, v1

    sub-int/2addr v5, v1

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 4567
    iget v1, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    iput v1, v4, Landroid/graphics/Rect;->right:I

    .line 4568
    iget v1, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v0

    iput v1, v4, Landroid/graphics/Rect;->bottom:I

    .line 4570
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 4572
    iget-object v5, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v5}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4573
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/p;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 4574
    iget p0, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, v0

    iput p0, v1, Landroid/graphics/Rect;->left:I

    .line 4575
    iget p0, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, v0

    iput p0, v1, Landroid/graphics/Rect;->top:I

    .line 4576
    iget p0, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr p0, v0

    iput p0, v1, Landroid/graphics/Rect;->right:I

    .line 4577
    iget p0, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p0, v0

    iput p0, v1, Landroid/graphics/Rect;->bottom:I

    :cond_3
    if-eqz p1, :cond_4

    .line 4580
    invoke-virtual {v4, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-nez p0, :cond_4

    .line 4581
    invoke-virtual {v1, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-nez p0, :cond_4

    move v2, v3

    :cond_4
    return v2
.end method

.method public getZSLMode()Z
    .locals 3

    .line 755
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oplus/camera/professional/v;->D:Landroid/content/res/Resources;

    const v2, 0x7f1001e7

    .line 756
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_high_resolution_key"

    .line 755
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/camera/professional/v;->j:Z

    .line 758
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    .line 759
    invoke-virtual {v0, v2}, Lcom/oplus/camera/professional/p;->g(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 760
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->isRawOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string p0, "ProfessionalCapMode"

    const-string v0, "getZSLMode exposure time isn\'t auto or raw open,so return false"

    .line 761
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 766
    :cond_2
    iget-boolean v0, p0, Lcom/oplus/camera/professional/v;->j:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->getLogicCameraType()I

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
    .locals 2

    .line 1922
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 1923
    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->aX()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 1924
    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->aX()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1925
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->getZoomBarOffset()I

    move-result p0

    return p0

    .line 1927
    :cond_1
    iget p0, p0, Lcom/oplus/camera/professional/v;->L:I

    return p0
.end method

.method public getZoomConfigure()Lcom/oplus/camera/af;
    .locals 2

    .line 4182
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->getZoomConfigure()Lcom/oplus/camera/af;

    move-result-object v0

    const-string v1, "pref_switch_camera_key"

    .line 4183
    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/v;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/af;->h(Z)V

    .line 4184
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->isRawOpen()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/oplus/camera/af;->K(Z)V

    return-object v0
.end method

.method public h()I
    .locals 0

    .line 4551
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->e()Z

    move-result p0

    return p0
.end method

.method protected hideViewWhileResume()V
    .locals 1

    .line 3029
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->C:Lcom/oplus/camera/professional/v$a;

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    .line 3030
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/v$a;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public isAutoFocus()Z
    .locals 4

    .line 4288
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    const v2, 0x7f1001c5

    .line 4289
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "pref_professional_focus_mode_key"

    .line 4288
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    .line 4290
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 4288
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

    .line 4220
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->I:Lcom/oplus/camera/ui/RotateImageView;

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
    .locals 4

    const-string v0, "pref_raw_control_key"

    .line 2829
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 2830
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/v;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const-string v1, "pref_super_raw_control_key"

    .line 2831
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "com.oplus.feature.professional.super.raw.support"

    .line 2832
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_4

    :cond_2
    const-string v0, "pref_switch_dual_camera_key"

    .line 2835
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/v;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_4

    .line 2837
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    const-string p1, "pref_switch_camera_key"

    const-string v0, "camera_main"

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2839
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->e(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v3

    .line 2846
    :cond_4
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->isCameraSettingMenuOptionEnable(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected isHideUICapture()Z
    .locals 1

    .line 2214
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->m()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/camera/professional/v;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->getIsCapturingState()Z

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

    .line 4307
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/v;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->Z()Z

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

    .line 4175
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4176
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->p()Landroid/widget/RelativeLayout;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 4177
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

.method protected isModeBarSelected()Z
    .locals 0

    .line 4191
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {p0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->isSelected()Z

    move-result p0

    return p0
.end method

.method public isNeedProgressBarInCapture()Z
    .locals 4

    .line 3870
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lcom/oplus/camera/professional/v;->D:Landroid/content/res/Resources;

    const v1, 0x7f10013e

    .line 3871
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "pref_professional_exposure_time_key"

    .line 3870
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3873
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3874
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

    .line 830
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/v;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "off"

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    .line 831
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "pref_super_raw_control_key"

    .line 832
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/v;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    .line 833
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

    .line 848
    iget-boolean p0, p0, Lcom/oplus/camera/professional/v;->mbRawRequestTag:Z

    return p0
.end method

.method public isShowProPanelMenu()Z
    .locals 0

    .line 4266
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    if-eqz p0, :cond_0

    .line 4267
    invoke-virtual {p0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->isSelected()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isShowZoomMenu()Z
    .locals 0

    .line 4283
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->a()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isSubMenuEnable()Z
    .locals 1

    const-string v0, "pref_subsetting_key"

    .line 4196
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/v;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected isSuperRawOpen()Z
    .locals 2

    .line 837
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    const-string v0, "pref_super_raw_control_key"

    .line 838
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/v;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "off"

    .line 839
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

    .line 401
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0x3b9aca00

    cmp-long v0, v2, v0

    if-gtz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 405
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->needDelayCloseForCapture()Z

    move-result p0

    return p0
.end method

.method public needSurface(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "type_still_capture_raw"

    .line 804
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "pref_super_raw_control_key"

    const-string v3, "pref_raw_control_key"

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    .line 805
    invoke-virtual {p0, v3}, Lcom/oplus/camera/professional/v;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 806
    invoke-virtual {p0, v2}, Lcom/oplus/camera/professional/v;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const-string p0, "com.oplus.disable.raw"

    .line 807
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    move v1, v4

    :cond_1
    return v1

    :cond_2
    const-string v0, "type_still_capture_jpeg"

    .line 810
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 811
    invoke-static {}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportApsCapture()Z

    move-result p0

    xor-int/2addr p0, v4

    return p0

    :cond_3
    const-string v0, "type_tuning_data_raw"

    .line 814
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 815
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "com.oplus.tuning.data.buffer.support"

    .line 816
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 817
    invoke-virtual {p0, v3}, Lcom/oplus/camera/professional/v;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 818
    invoke-virtual {p0, v2}, Lcom/oplus/camera/professional/v;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    move v1, v4

    :cond_5
    return v1

    :cond_6
    const-string v0, "type_preview_frame"

    .line 821
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v4

    .line 825
    :cond_7
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->needSurface(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected onAfterPictureTaken([BZ)V
    .locals 5

    const-string p1, "ProfessionalCapMode"

    const-string p2, "onAfterPictureTaken"

    .line 2481
    invoke-static {p1, p2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2483
    iget-boolean p1, p0, Lcom/oplus/camera/professional/v;->n:Z

    const/4 p2, 0x1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->isRawRequestTag()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2484
    iput-boolean p2, p0, Lcom/oplus/camera/professional/v;->n:Z

    .line 2486
    iget-boolean p1, p0, Lcom/oplus/camera/professional/v;->i:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/oplus/camera/professional/v;->h:Z

    if-nez p1, :cond_0

    return-void

    .line 2491
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->isSuperRawOpen()Z

    move-result p1

    const-wide/16 v0, 0x12c

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    .line 2492
    invoke-direct {p0, v3}, Lcom/oplus/camera/professional/v;->b(I)V

    .line 2493
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->C:Lcom/oplus/camera/professional/v$a;

    invoke-static {p1, v3, v2, v0, v1}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    .line 2495
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {p1}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->isSelected()Z

    move-result p1

    if-nez p1, :cond_1

    .line 2496
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1, p2, v3}, Lcom/oplus/camera/capmode/a;->a(ZZ)V

    .line 2497
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1, p2}, Lcom/oplus/camera/capmode/a;->d(Z)V

    .line 2500
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;

    move-result-object p1

    .line 2501
    iget-object v4, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v4, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    .line 2503
    invoke-direct {p0, v3, p2}, Lcom/oplus/camera/professional/v;->b(IZ)V

    .line 2505
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->y()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2506
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->y:Lcom/oplus/camera/ui/RotateImageView;

    invoke-static {p1, v3, v2, v0, v1}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    goto :goto_0

    .line 2508
    :cond_2
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->m()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/camera/professional/v;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2509
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;

    move-result-object p1

    .line 2511
    iget-object v4, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v4}, Lcom/oplus/camera/ui/CameraUIInterface;->s()I

    move-result v4

    if-eq p2, v4, :cond_3

    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v4

    if-nez v4, :cond_3

    const/16 v4, 0xb

    .line 2512
    invoke-virtual {p1, v4}, Lcom/oplus/camera/ui/control/b;->a(I)V

    .line 2515
    :cond_3
    iget-object v4, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v4, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    .line 2516
    invoke-direct {p0, v3}, Lcom/oplus/camera/professional/v;->b(I)V

    .line 2517
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->C:Lcom/oplus/camera/professional/v$a;

    invoke-static {p1, v3, v2, v0, v1}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    .line 2519
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {p1}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->isSelected()Z

    move-result p1

    if-nez p1, :cond_4

    .line 2520
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1, p2, v3}, Lcom/oplus/camera/capmode/a;->a(ZZ)V

    .line 2523
    :cond_4
    invoke-direct {p0, v3, p2}, Lcom/oplus/camera/professional/v;->b(IZ)V

    .line 2525
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->y()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2526
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->y:Lcom/oplus/camera/ui/RotateImageView;

    invoke-static {p1, v3, v2, v0, v1}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    .line 2530
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1, p2, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->d(ZZ)V

    .line 2532
    iget-boolean p1, p0, Lcom/oplus/camera/professional/v;->l:Z

    if-eqz p1, :cond_6

    .line 2533
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->C:Lcom/oplus/camera/professional/v$a;

    invoke-static {p1, v3, v2, v0, v1}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    .line 2534
    iput-boolean v3, p0, Lcom/oplus/camera/professional/v;->l:Z

    .line 2537
    :cond_6
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->C:Lcom/oplus/camera/professional/v$a;

    invoke-virtual {p0, p2}, Lcom/oplus/camera/professional/v$a;->setTouchState(Z)V

    return-void
.end method

.method public onAfterSnapping()Z
    .locals 5

    const-string v0, "ProfessionalCapMode"

    const-string v1, "onAfterSnapping"

    .line 2348
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2350
    iget-boolean v1, p0, Lcom/oplus/camera/professional/v;->j:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 2351
    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2352
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/32 v3, 0x3b9aca00

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    .line 2353
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    .line 2354
    :goto_0
    iget-object v2, p0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v2, v1}, Lcom/oplus/camera/capmode/a;->c(I)V

    goto :goto_1

    :cond_1
    const-string v1, "onAfterSnapping is ZSL mode, do nothing"

    .line 2356
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2359
    :goto_1
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->isRawOpen()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2360
    iput-boolean v2, p0, Lcom/oplus/camera/professional/v;->i:Z

    .line 2363
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->isSuperRawOpen()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2364
    iput-boolean v2, p0, Lcom/oplus/camera/professional/v;->h:Z

    .line 2367
    :cond_3
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/oplus/camera/professional/v$8;

    invoke-direct {v2, p0}, Lcom/oplus/camera/professional/v$8;-><init>(Lcom/oplus/camera/professional/v;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const-string p0, "onAfterSnapping X"

    .line 2416
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onAfterStartPreview(Z)V
    .locals 8

    const-string v0, "ProfessionalCapMode"

    const-string v1, "onAfterStartPreview"

    .line 2851
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2853
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->C:Lcom/oplus/camera/professional/v$a;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2854
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/v$a;->setTouchState(Z)V

    .line 2857
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->E()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v0, "com.oplus.macro.best.focus.distance"

    .line 2858
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result v0

    .line 2859
    iget-object v3, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v4, 0x7f100234

    const v5, 0x7f0805e9

    const v6, 0x7f0604ff

    new-array v7, v1, [Ljava/lang/Object;

    .line 2861
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v2

    .line 2859
    invoke-interface {v3, v4, v5, v6, v7}, Lcom/oplus/camera/ui/CameraUIInterface;->b(III[Ljava/lang/Object;)V

    :cond_1
    const-string v0, "pref_pro_histogram_key"

    .line 2864
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/v;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2865
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->aa()V

    .line 2868
    :cond_2
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->w()V

    .line 2869
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->T()V

    .line 2870
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->q()V

    .line 2872
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->isSuperRawOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2873
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZ)V

    .line 2876
    :cond_3
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onAfterStartPreview(Z)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 4

    .line 2000
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBackPressed, mbInCapturing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/professional/v;->mbInCapturing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProfessionalCapMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2002
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2003
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v1}, Lcom/oplus/camera/capmode/a;->a(ZZ)V

    .line 2004
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0, v1}, Lcom/oplus/camera/capmode/a;->d(Z)V

    const/4 v0, 0x4

    .line 2006
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->f()I

    move-result v2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    .line 2007
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->g(I)V

    .line 2010
    :cond_0
    new-instance v0, Lcom/oplus/camera/professional/u$a;

    invoke-direct {v0}, Lcom/oplus/camera/professional/u$a;-><init>()V

    .line 2011
    iput-boolean v3, v0, Lcom/oplus/camera/professional/u$a;->a:Z

    const/16 v2, 0xfa

    .line 2012
    iput v2, v0, Lcom/oplus/camera/professional/u$a;->c:I

    const/16 v2, 0x190

    .line 2013
    iput v2, v0, Lcom/oplus/camera/professional/u$a;->g:I

    const/4 v2, 0x0

    .line 2014
    iput v2, v0, Lcom/oplus/camera/professional/u$a;->d:F

    .line 2015
    iget-object v2, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0706fd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Lcom/oplus/camera/professional/u$a;->e:F

    .line 2016
    iget-object v2, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    invoke-virtual {v2, v0}, Lcom/oplus/camera/professional/p;->setAllPopupInvisibility(Lcom/oplus/camera/professional/u$a;)V

    .line 2017
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->a()V

    .line 2018
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p0, v1}, Lcom/oplus/camera/e/d;->j(Z)V

    return v1

    .line 2021
    :cond_1
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method protected onBeforePictureTaken([BZ)V
    .locals 0

    const-string p1, "ProfessionalCapMode"

    const-string p2, "onBeforePictureTaken"

    .line 2466
    invoke-static {p1, p2}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2468
    iget-boolean p1, p0, Lcom/oplus/camera/professional/v;->j:Z

    if-eqz p1, :cond_0

    .line 2469
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;

    move-result-object p0

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;Z)V

    :cond_0
    return-void
.end method

.method protected onBeforePreview()V
    .locals 7

    const-string v0, "ProfessionalCapMode"

    const-string v1, "onBeforePreview"

    .line 2881
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2883
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/oplus/camera/professional/v$10;

    invoke-direct {v2, p0}, Lcom/oplus/camera/professional/v$10;-><init>(Lcom/oplus/camera/professional/v;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2912
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v2, Lcom/oplus/ocs/camera/CameraParameter;->ZOOM_RATIO:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    iget-object v3, p0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v3}, Lcom/oplus/camera/capmode/a;->ak()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    const-string v1, "pref_focus_peaking_key"

    .line 2914
    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/v;->getSupportFunction(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "off"

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 2915
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2916
    iget-object v2, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/oplus/camera/util/Util;->A(Landroid/content/Context;)I

    move-result v2

    .line 2917
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v5, v6, v2}, Lcom/oplus/camera/util/Util;->b(III)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2919
    array-length v5, v2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 2920
    iget-object v5, p0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v5, v2}, Lcom/oplus/camera/e/d;->a([Ljava/lang/String;)V

    .line 2924
    :cond_0
    iget-object v2, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2925
    iget-object v2, p0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v2, v1, v4}, Lcom/oplus/camera/e/d;->a(ZZ)V

    .line 2928
    :cond_1
    iget-boolean v1, p0, Lcom/oplus/camera/professional/v;->F:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "pref_restore_professional_params"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 2947
    :cond_2
    iget-boolean v0, p0, Lcom/oplus/camera/professional/v;->mbCapModeInit:Z

    if-eqz v0, :cond_3

    .line 2948
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->o()V

    .line 2951
    :cond_3
    invoke-direct {p0, v4}, Lcom/oplus/camera/professional/v;->f(Z)V

    .line 2952
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->I()V

    return-void

    :cond_4
    :goto_0
    const-string v1, "onBeforePreview, initParamToAuto"

    .line 2929
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2931
    invoke-direct {p0, v4}, Lcom/oplus/camera/professional/v;->b(Z)V

    .line 2933
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_parameter_saving"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2935
    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/v;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2936
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/oplus/camera/professional/v$11;

    invoke-direct {v2, p0, v0}, Lcom/oplus/camera/professional/v$11;-><init>(Lcom/oplus/camera/professional/v;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_5
    return-void
.end method

.method protected onBeforeSnapping(Lcom/oplus/camera/e/c;)Z
    .locals 2

    .line 2219
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/oplus/camera/professional/p;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "ProfessionalCapMode"

    const-string p1, "onBeforeSnapping, levelPanelScrolling"

    .line 2220
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 2225
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/professional/v$7;

    invoke-direct {v1, p0}, Lcom/oplus/camera/professional/v$7;-><init>(Lcom/oplus/camera/professional/v;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2302
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/v;->setRawRequestTag(Z)V

    const/4 p1, 0x0

    .line 2303
    iput-object p1, p0, Lcom/oplus/camera/professional/v;->R:[B

    .line 2305
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->isRawOpen()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 2306
    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/v;->setRawRequestTag(Z)V

    .line 2307
    iput-boolean v0, p0, Lcom/oplus/camera/professional/v;->n:Z

    .line 2310
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->isSuperRawOpen()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2311
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/v;->setRawRequestTag(Z)V

    .line 2312
    iput-boolean v0, p0, Lcom/oplus/camera/professional/v;->n:Z

    .line 2314
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->g:Ljava/lang/Object;

    monitor-enter p1

    .line 2315
    :try_start_0
    iput-boolean v0, p0, Lcom/oplus/camera/professional/v;->T:Z

    .line 2316
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 2319
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->I()V

    .line 2321
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz p1, :cond_3

    .line 2322
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p1, v1}, Lcom/oplus/camera/e/d;->j(Z)V

    .line 2325
    :cond_3
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->setCaptureRequestPictureSizeScale()V

    return v1
.end method

.method public onCameraPermissionGranted()V
    .locals 6

    .line 410
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->as()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/professional/v;->E:I

    .line 412
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    .line 415
    iget-boolean v2, p0, Lcom/oplus/camera/professional/v;->G:Z

    const-wide/32 v3, 0x77359400

    if-eqz v2, :cond_1

    .line 416
    iget v2, p0, Lcom/oplus/camera/professional/v;->E:I

    invoke-virtual {p0, v2}, Lcom/oplus/camera/professional/v;->getCameraInfo(I)Lcom/oplus/camera/e/h;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/professional/p;->a(Lcom/oplus/camera/e/h;Lcom/oplus/camera/professional/p$a;)V

    .line 418
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->isSuperRawOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    iget v1, p0, Lcom/oplus/camera/professional/v;->E:I

    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/v;->getCameraInfo(I)Lcom/oplus/camera/e/h;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Lcom/oplus/camera/professional/p;->a(Lcom/oplus/camera/e/h;J)V

    .line 423
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    invoke-virtual {p0}, Lcom/oplus/camera/professional/p;->a()V

    goto :goto_0

    .line 425
    :cond_1
    iget v2, p0, Lcom/oplus/camera/professional/v;->E:I

    invoke-virtual {p0, v2}, Lcom/oplus/camera/professional/v;->getCameraInfo(I)Lcom/oplus/camera/e/h;

    move-result-object v2

    iget-object v5, p0, Lcom/oplus/camera/professional/v;->B:Landroid/os/Handler;

    invoke-virtual {v0, v2, v5, v1}, Lcom/oplus/camera/professional/p;->a(Lcom/oplus/camera/e/h;Landroid/os/Handler;Lcom/oplus/camera/professional/p$a;)V

    .line 427
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->isSuperRawOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 428
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    iget v1, p0, Lcom/oplus/camera/professional/v;->E:I

    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/v;->getCameraInfo(I)Lcom/oplus/camera/e/h;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Lcom/oplus/camera/professional/p;->a(Lcom/oplus/camera/e/h;J)V

    .line 432
    :cond_2
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->q()V

    .line 433
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    iget-object v1, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/p;->setSettleListener(Lcom/oplus/camera/professional/p$c;)V

    .line 434
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    iget-object v1, p0, Lcom/oplus/camera/professional/v;->am:Lcom/oplus/camera/professional/p$b;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/p;->setMotionListener(Lcom/oplus/camera/professional/p$b;)V

    .line 436
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->C:Lcom/oplus/camera/professional/v$a;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 437
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/v$a;->setVisibility(I)V

    .line 440
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oplus/camera/capmode/a;->d(Z)V

    .line 441
    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/v;->a(I)V

    .line 442
    iput-boolean v1, p0, Lcom/oplus/camera/professional/v;->G:Z

    :cond_4
    :goto_0
    return-void
.end method

.method public onCaptureCompleted(Lcom/oplus/camera/aps/service/CameraCaptureResult;Lcom/oplus/camera/e/c;)V
    .locals 0

    .line 2446
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/BaseMode;->onCaptureCompleted(Lcom/oplus/camera/aps/service/CameraCaptureResult;Lcom/oplus/camera/e/c;)V

    .line 2448
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onCaptureCompleted, systemTime: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ProfessionalCapMode"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CaptureRequest;Lcom/oplus/camera/e/c;)V
    .locals 0

    .line 2453
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/BaseMode;->onCaptureFailed(Landroid/hardware/camera2/CaptureRequest;Lcom/oplus/camera/e/c;)V

    .line 2455
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->isRawOpen()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 2456
    iput-boolean p2, p0, Lcom/oplus/camera/professional/v;->i:Z

    .line 2459
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->isSuperRawOpen()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2460
    iput-boolean p2, p0, Lcom/oplus/camera/professional/v;->h:Z

    :cond_1
    return-void
.end method

.method public onCaptureSequenceCompleted()V
    .locals 2

    .line 2027
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->onCaptureSequenceCompleted()V

    const-string v0, "ProfessionalCapMode"

    const-string v1, "onCaptureSequenceCompleted"

    .line 2029
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2031
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->isSuperRawOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2032
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f100314

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 2034
    iget-boolean v0, p0, Lcom/oplus/camera/professional/v;->h:Z

    if-nez v0, :cond_0

    .line 2035
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2036
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/professional/v$4;

    invoke-direct {v1, p0}, Lcom/oplus/camera/professional/v$4;-><init>(Lcom/oplus/camera/professional/v;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 0

    .line 379
    invoke-super/range {p0 .. p6}, Lcom/oplus/camera/capmode/BaseMode;->onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    .line 381
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    if-eqz p1, :cond_0

    const/4 p2, 0x5

    .line 383
    invoke-virtual {p1, p2}, Lcom/oplus/camera/professional/p;->g(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 384
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result p1

    if-nez p1, :cond_0

    .line 385
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->isFlashState()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 386
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->c()Lcom/oplus/camera/ui/preview/h;

    move-result-object p0

    invoke-virtual {p0, p5, p6, p3, p4}, Lcom/oplus/camera/ui/preview/h;->b(JJ)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 3012
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0902d6

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 3014
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/professional/v;->I:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz p1, :cond_1

    .line 3016
    invoke-virtual {p1}, Lcom/oplus/camera/ui/RotateImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 3017
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->at()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onDeInitCameraMode(Ljava/lang/String;)V
    .locals 2

    const-string p1, "ProfessionalCapMode"

    const-string v0, "onDeInitCameraMode"

    .line 2113
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2115
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->B:Landroid/os/Handler;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2116
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2119
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    if-eqz p1, :cond_1

    .line 2120
    invoke-virtual {p1}, Lcom/oplus/camera/professional/p;->h()V

    .line 2123
    :cond_1
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->E()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2124
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->w(Z)V

    .line 2127
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->C:Lcom/oplus/camera/professional/v$a;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/oplus/camera/professional/v$a;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_3

    .line 2128
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->N()V

    .line 2129
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->D()V

    :cond_3
    const/4 p1, 0x0

    const-string v1, "0"

    .line 2132
    invoke-direct {p0, v1, p1}, Lcom/oplus/camera/professional/v;->b(Ljava/lang/String;Z)V

    .line 2134
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->aj:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2135
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->aj:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2138
    :cond_4
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->z:Lcom/oplus/camera/p;

    if-eqz v1, :cond_5

    .line 2139
    invoke-virtual {v1}, Lcom/oplus/camera/p;->c()V

    .line 2140
    iput-object v0, p0, Lcom/oplus/camera/professional/v;->z:Lcom/oplus/camera/p;

    .line 2143
    :cond_5
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->Z()Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/oplus/camera/professional/v;->ab:I

    if-eqz v1, :cond_6

    .line 2144
    iput p1, p0, Lcom/oplus/camera/professional/v;->ab:I

    .line 2145
    invoke-direct {p0, p1}, Lcom/oplus/camera/professional/v;->e(I)V

    .line 2148
    :cond_6
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->w(I)V

    .line 2149
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->b()Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v1, p0, Lcom/oplus/camera/professional/v;->ai:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2150
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->k()Lcom/oplus/camera/ui/a/a;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 2153
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/a/a;->a(Lcom/oplus/camera/ui/a/a$b;)V

    :cond_7
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "ProfessionalCapMode"

    const-string v1, "onDestroy"

    .line 2746
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2748
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2749
    invoke-virtual {v0}, Lcom/oplus/camera/professional/p;->f()V

    .line 2750
    iput-object v1, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    const/4 v0, 0x0

    .line 2751
    iput-boolean v0, p0, Lcom/oplus/camera/professional/v;->G:Z

    .line 2754
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->C:Lcom/oplus/camera/professional/v$a;

    if-eqz v0, :cond_1

    .line 2755
    iput-object v1, p0, Lcom/oplus/camera/professional/v;->C:Lcom/oplus/camera/professional/v$a;

    .line 2758
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->I:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz v0, :cond_2

    .line 2759
    iput-object v1, p0, Lcom/oplus/camera/professional/v;->I:Lcom/oplus/camera/ui/RotateImageView;

    .line 2762
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    if-eqz v0, :cond_3

    .line 2763
    iput-object v1, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    .line 2766
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->z:Lcom/oplus/camera/p;

    if-eqz v0, :cond_4

    .line 2767
    invoke-virtual {v0}, Lcom/oplus/camera/p;->c()V

    .line 2768
    iput-object v1, p0, Lcom/oplus/camera/professional/v;->z:Lcom/oplus/camera/p;

    :cond_4
    return-void
.end method

.method public onGetBeforeCaptureMsgCommonData(Lcom/oplus/camera/statistics/model/DcsMsgData;)Lcom/oplus/camera/statistics/model/DcsMsgData;
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3889
    instance-of v1, p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;

    if-eqz v1, :cond_0

    .line 3890
    check-cast p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_1

    return-object v0

    .line 3897
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/p;->e(I)Ljava/lang/String;

    move-result-object v0

    .line 3898
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/oplus/camera/professional/p;->e(I)Ljava/lang/String;

    move-result-object v1

    .line 3899
    iget-object v2, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, p0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    .line 3900
    invoke-interface {v3}, Lcom/oplus/camera/e/d;->e()Lcom/oplus/camera/e/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/e/h;->r()F

    move-result v3

    .line 3899
    invoke-virtual {v2, v1, v3}, Lcom/oplus/camera/professional/p;->a(IF)Ljava/lang/String;

    move-result-object v1

    .line 3901
    iget-object v2, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/oplus/camera/professional/p;->e(I)Ljava/lang/String;

    move-result-object v2

    .line 3902
    iget-object v3, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/oplus/camera/professional/p;->e(I)Ljava/lang/String;

    move-result-object v3

    .line 3903
    iget-object v4, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    invoke-virtual {v4}, Lcom/oplus/camera/professional/p;->getFocusValue()Ljava/lang/String;

    move-result-object v4

    .line 3905
    iget-object v5, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    const v6, 0x7f10013e

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v2, "auto"

    .line 3909
    :cond_2
    iput-object v0, p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mProfessionWbValue:Ljava/lang/String;

    .line 3910
    iput-object v1, p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mProfessionEvValue:Ljava/lang/String;

    .line 3911
    iput-object v2, p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mProfessionExpValue:Ljava/lang/String;

    .line 3912
    iput-object v3, p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mProfessionISOValue:Ljava/lang/String;

    .line 3913
    iput-object v4, p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mProfessionFocusValue:Ljava/lang/String;

    .line 3914
    iget-boolean v0, p0, Lcom/oplus/camera/professional/v;->j:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mProfessionHighResolution:Ljava/lang/String;

    .line 3917
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "off"

    if-eqz v0, :cond_6

    const-string v0, "pref_super_raw_control_key"

    .line 3918
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/v;->getSupportFunction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3919
    iget-object v2, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 3921
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "pref_raw_control_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v2, "pref_parameter_saving"

    .line 3924
    invoke-virtual {p0, v2}, Lcom/oplus/camera/professional/v;->getSupportFunction(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3925
    iget-object v3, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3926
    invoke-static {v2}, Lcom/oplus/camera/statistics/model/ProfessionalMsgData;->buildParameterSaving(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mProfessionIsPresentParameter:Ljava/lang/String;

    :cond_4
    const-string v2, "pref_pro_histogram_key"

    .line 3929
    invoke-virtual {p0, v2}, Lcom/oplus/camera/professional/v;->getSupportFunction(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3930
    iget-object v3, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mProfessionIsHistogram:Ljava/lang/String;

    :cond_5
    const-string v2, "pref_focus_peaking_key"

    .line 3933
    invoke-virtual {p0, v2}, Lcom/oplus/camera/professional/v;->getSupportFunction(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3934
    iget-object v3, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mProfessionIsFocusPeaking:Ljava/lang/String;

    goto :goto_2

    :cond_6
    move-object v0, v1

    .line 3939
    :cond_7
    :goto_2
    iput-object v0, p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mProfessionRawControl:Ljava/lang/String;

    .line 3940
    invoke-static {v0}, Lcom/oplus/camera/statistics/model/ProfessionalMsgData;->buildPhotoFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3941
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "jpeg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3942
    :cond_8
    iget-object v0, p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mPhotoFormat:Ljava/lang/String;

    :cond_9
    iput-object v0, p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mPhotoFormat:Ljava/lang/String;

    .line 3943
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "camera_main"

    if-eqz v0, :cond_a

    .line 3944
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "pref_switch_camera_key"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_a
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

    .line 870
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 871
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/professional/v;->getSupportSettingList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    .line 872
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    .line 875
    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 878
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

    .line 881
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 882
    invoke-static {v0, p2}, Lcom/oplus/camera/aps/config/CameraConfig;->getSupportedList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    .line 883
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_3

    const-string p2, "standard"

    .line 885
    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 886
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 889
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

    .line 893
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 894
    iget p1, p0, Lcom/oplus/camera/professional/v;->mCameraId:I

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/professional/v;->getSupportSettingList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    .line 896
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_6

    .line 899
    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 902
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_7

    goto :goto_2

    :cond_7
    move-object p1, v1

    :goto_2
    return-object p1

    .line 905
    :cond_8
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/BaseMode;->onGetSupportSettingList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected onInitCameraMode()V
    .locals 5

    const-string v0, "ProfessionalCapMode"

    const-string v1, "onInitCameraMode, Start"

    .line 471
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->restoreProPreference()V

    .line 474
    invoke-static {}, Lcom/oplus/camera/professional/LevelPanel;->c()V

    .line 476
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->isNightProModeSupport()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 477
    iput-boolean v1, p0, Lcom/oplus/camera/professional/v;->F:Z

    :cond_0
    const/4 v0, 0x0

    .line 480
    iput-boolean v0, p0, Lcom/oplus/camera/professional/v;->P:Z

    .line 481
    iput-boolean v1, p0, Lcom/oplus/camera/professional/v;->Q:Z

    .line 483
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/oplus/camera/professional/v;->D:Landroid/content/res/Resources;

    const v3, 0x7f1001e7

    .line 484
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_high_resolution_key"

    .line 483
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oplus/camera/professional/v;->j:Z

    .line 486
    iget-boolean v1, p0, Lcom/oplus/camera/professional/v;->j:Z

    if-nez v1, :cond_1

    .line 487
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const-string v2, "off"

    invoke-interface {v1, v3, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->v:Lcom/oplus/camera/ui/h;

    if-nez v1, :cond_2

    .line 491
    new-instance v1, Lcom/oplus/camera/ui/h;

    iget-object v2, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    new-instance v3, Lcom/oplus/camera/professional/v$12;

    invoke-direct {v3, p0}, Lcom/oplus/camera/professional/v$12;-><init>(Lcom/oplus/camera/professional/v;)V

    invoke-direct {v1, v2, v3}, Lcom/oplus/camera/ui/h;-><init>(Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/h$a;)V

    iput-object v1, p0, Lcom/oplus/camera/professional/v;->v:Lcom/oplus/camera/ui/h;

    .line 512
    :cond_2
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->B:Landroid/os/Handler;

    if-nez v1, :cond_3

    .line 513
    new-instance v1, Lcom/oplus/camera/professional/v$17;

    invoke-direct {v1, p0}, Lcom/oplus/camera/professional/v$17;-><init>(Lcom/oplus/camera/professional/v;)V

    iput-object v1, p0, Lcom/oplus/camera/professional/v;->B:Landroid/os/Handler;

    :cond_3
    const-wide/32 v1, 0x3b9aca00

    .line 521
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->m()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gtz v1, :cond_4

    .line 522
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;

    move-result-object v1

    .line 523
    iget-object v2, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    .line 526
    :cond_4
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v2, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    const v3, 0x7f1000fd

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->c(Ljava/lang/String;)V

    .line 528
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->s()V

    .line 530
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    if-eqz v1, :cond_6

    .line 531
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->E()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 532
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    invoke-virtual {v1}, Lcom/oplus/camera/professional/p;->e()V

    goto :goto_0

    .line 534
    :cond_5
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/professional/p;->setVisibility(I)V

    .line 538
    :cond_6
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    if-eqz v1, :cond_8

    .line 539
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->E()Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v0, 0x8

    .line 540
    :cond_7
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->setAlpha(F)V

    .line 541
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->setVisibility(I)V

    .line 544
    :cond_8
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->A:Lcom/oplus/camera/p$a;

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->Z()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 545
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->A:Lcom/oplus/camera/p$a;

    iget v1, p0, Lcom/oplus/camera/professional/v;->mOrientation:I

    iput v1, v0, Lcom/oplus/camera/p$a;->e:I

    .line 548
    :cond_9
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->k()V

    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "ProfessionalCapMode"

    const-string v1, "onLongPress"

    .line 217
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-direct {p0, p1}, Lcom/oplus/camera/professional/v;->a(Landroid/view/MotionEvent;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onMenuOptionAdded(Ljava/lang/String;)V
    .locals 3

    const-string v0, "pref_super_raw_control_key"

    .line 853
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 854
    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->ag()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 855
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->D:Landroid/content/res/Resources;

    const v1, 0x7f070b41

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    .line 856
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->D:Landroid/content/res/Resources;

    const v2, 0x7f070b42

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 857
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v2, 0x1

    invoke-interface {p0, v0, v2, p1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Ljava/lang/String;ZII)V

    :cond_0
    return-void
.end method

.method public onMoreModeHidden(I)V
    .locals 2

    .line 4248
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onMoreModeHidden(I)V

    .line 4249
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->F()Z

    move-result p1

    .line 4250
    iput-boolean p1, p0, Lcom/oplus/camera/professional/v;->P:Z

    if-nez p1, :cond_0

    .line 4253
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->O()V

    .line 4256
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->y:Lcom/oplus/camera/ui/RotateImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 4257
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->y:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    .line 4260
    :cond_1
    invoke-direct {p0, v1}, Lcom/oplus/camera/professional/v;->d(Z)V

    .line 4261
    invoke-direct {p0, v1, v1}, Lcom/oplus/camera/professional/v;->b(ZZ)V

    return-void
.end method

.method public onMoreModeShown()V
    .locals 2

    .line 4234
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->onMoreModeShown()V

    const/4 v0, 0x1

    .line 4235
    iput-boolean v0, p0, Lcom/oplus/camera/professional/v;->P:Z

    .line 4236
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->N()V

    .line 4238
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->y:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 4239
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x0

    .line 4242
    invoke-direct {p0, v0}, Lcom/oplus/camera/professional/v;->d(Z)V

    .line 4243
    invoke-direct {p0, v0, v0}, Lcom/oplus/camera/professional/v;->b(ZZ)V

    return-void
.end method

.method protected onPause()V
    .locals 3

    const-string v0, "ProfessionalCapMode"

    const-string v1, "onPause"

    .line 2705
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2707
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->g(I)V

    .line 2708
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->g(Z)V

    .line 2710
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->Z()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oplus/camera/professional/v;->ab:I

    if-eqz v0, :cond_0

    .line 2711
    iput v1, p0, Lcom/oplus/camera/professional/v;->ab:I

    .line 2712
    invoke-direct {p0, v1}, Lcom/oplus/camera/professional/v;->e(I)V

    .line 2715
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->C:Lcom/oplus/camera/professional/v$a;

    if-eqz v0, :cond_1

    .line 2716
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/v$a;->setTouchState(Z)V

    .line 2719
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->K:Landroid/animation/ValueAnimator;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2720
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2721
    iput-object v2, p0, Lcom/oplus/camera/professional/v;->K:Landroid/animation/ValueAnimator;

    .line 2724
    :cond_2
    iput-boolean v1, p0, Lcom/oplus/camera/professional/v;->l:Z

    .line 2726
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->B:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 2727
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2730
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    if-eqz v0, :cond_4

    .line 2731
    invoke-virtual {v0}, Lcom/oplus/camera/professional/p;->h()V

    .line 2734
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 2735
    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->setBackgroundColor(I)V

    .line 2736
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->a(ZZ)V

    .line 2739
    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->d(ZZ)V

    .line 2740
    iput-boolean v1, p0, Lcom/oplus/camera/professional/v;->P:Z

    .line 2741
    iput-boolean v2, p0, Lcom/oplus/camera/professional/v;->Q:Z

    return-void
.end method

.method public onPreviewCaptureResult(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;)V
    .locals 9

    .line 1070
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onPreviewCaptureResult(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;)V

    .line 1072
    iget-boolean v0, p0, Lcom/oplus/camera/professional/v;->mbCapModeInit:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ProfessionalCapMode"

    if-eqz p1, :cond_c

    .line 1076
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v1

    if-nez v1, :cond_1

    goto/16 :goto_2

    .line 1082
    :cond_1
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object p1

    .line 1085
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1086
    sget-object v1, Lcom/oplus/camera/e/b;->T:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_0

    .line 1088
    :cond_2
    sget-object v1, Lcom/oplus/camera/e/b;->ah:Landroid/hardware/camera2/CaptureResult$Key;

    .line 1091
    :goto_0
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1092
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 1094
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    .line 1098
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

    .line 1100
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    const/4 p1, -0x1

    const/4 v1, 0x1

    if-eqz v2, :cond_5

    .line 1104
    iget-object v6, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    invoke-virtual {v6, v1}, Lcom/oplus/camera/professional/p;->g(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1105
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    .line 1106
    invoke-virtual {v7, v1}, Lcom/oplus/camera/professional/p;->c(I)Ljava/util/ArrayList;

    move-result-object v7

    .line 1105
    invoke-direct {p0, v6, v7}, Lcom/oplus/camera/professional/v;->a(ILjava/util/ArrayList;)I

    move-result v6

    if-le v6, p1, :cond_5

    .line 1108
    iget-object v7, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    .line 1109
    invoke-virtual {v7, v1, v6}, Lcom/oplus/camera/professional/p;->c(II)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-boolean v7, p0, Lcom/oplus/camera/professional/v;->o:Z

    if-nez v7, :cond_5

    .line 1110
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onPreviewCaptureResult, iso: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/oplus/camera/professional/v;->s:I

    .line 1115
    iget-object v2, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    invoke-virtual {v2, v1}, Lcom/oplus/camera/professional/p;->d(I)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1117
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v7, v6, :cond_5

    .line 1118
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v7, "pref_professional_iso_key"

    .line 1119
    invoke-static {v7, v2}, Lcom/oplus/camera/professional/LevelPanel;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    iget-object v7, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    invoke-virtual {v7, v1, v6}, Lcom/oplus/camera/professional/p;->scrollTo(II)V

    .line 1121
    invoke-direct {p0, v1, v2}, Lcom/oplus/camera/professional/v;->a(ILjava/lang/String;)V

    :cond_5
    if-eqz v3, :cond_7

    .line 1126
    iget-object v2, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Lcom/oplus/camera/professional/p;->g(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1127
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v2, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    .line 1128
    invoke-virtual {v2, v6}, Lcom/oplus/camera/professional/p;->c(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1127
    invoke-direct {p0, v7, v8, v2}, Lcom/oplus/camera/professional/v;->a(JLjava/util/ArrayList;)I

    move-result v2

    if-le v2, p1, :cond_7

    .line 1130
    iget-object v7, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    .line 1131
    invoke-virtual {v7, v6, v2}, Lcom/oplus/camera/professional/p;->c(II)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-boolean v7, p0, Lcom/oplus/camera/professional/v;->o:Z

    if-nez v7, :cond_7

    .line 1132
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onPreviewCaptureResult, exposureTime: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/oplus/camera/professional/v;->t:J

    .line 1136
    iget-object v3, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    invoke-virtual {v3, v6}, Lcom/oplus/camera/professional/p;->d(I)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 1138
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v7, v2, :cond_7

    .line 1139
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v7, "pref_professional_exposure_time_key"

    .line 1140
    invoke-static {v7, v3}, Lcom/oplus/camera/professional/LevelPanel;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    iget-object v7, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    invoke-virtual {v7, v6, v2}, Lcom/oplus/camera/professional/p;->scrollTo(II)V

    .line 1142
    invoke-direct {p0, v6, v3}, Lcom/oplus/camera/professional/v;->a(ILjava/lang/String;)V

    .line 1147
    :cond_7
    iget-object v2, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/oplus/camera/professional/p;->g(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1148
    iget-object v2, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    .line 1149
    invoke-virtual {v2, v3}, Lcom/oplus/camera/professional/p;->c(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1148
    invoke-direct {p0, v5, v2}, Lcom/oplus/camera/professional/v;->a(ILjava/util/ArrayList;)I

    move-result v2

    if-le v2, p1, :cond_9

    .line 1151
    iget-object v6, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    .line 1152
    invoke-virtual {v6, v3, v2}, Lcom/oplus/camera/professional/p;->c(II)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-boolean v6, p0, Lcom/oplus/camera/professional/v;->o:Z

    if-nez v6, :cond_9

    .line 1154
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPreviewCaptureResult, cct: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    iget-object v5, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    invoke-virtual {v5, v3}, Lcom/oplus/camera/professional/p;->d(I)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 1158
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v2, :cond_9

    .line 1159
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "pref_professional_whitebalance_key"

    .line 1160
    invoke-static {v6, v5}, Lcom/oplus/camera/professional/LevelPanel;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    iget-object v6, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    invoke-virtual {v6, v3, v2}, Lcom/oplus/camera/professional/p;->scrollTo(II)V

    .line 1162
    invoke-direct {p0, v3, v5}, Lcom/oplus/camera/professional/v;->a(ILjava/lang/String;)V

    :cond_9
    if-eqz v4, :cond_b

    .line 1167
    iget-object v2, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/oplus/camera/professional/p;->g(I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1168
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v5, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    .line 1169
    invoke-virtual {v5, v3}, Lcom/oplus/camera/professional/p;->c(I)Ljava/util/ArrayList;

    move-result-object v5

    .line 1168
    invoke-direct {p0, v2, v5}, Lcom/oplus/camera/professional/v;->a(FLjava/util/ArrayList;)I

    move-result v2

    if-le v2, p1, :cond_b

    .line 1171
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    .line 1172
    invoke-virtual {p1, v3, v2}, Lcom/oplus/camera/professional/p;->c(II)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-boolean p1, p0, Lcom/oplus/camera/professional/v;->o:Z

    if-nez p1, :cond_b

    .line 1173
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreviewCaptureResult, focusDistance: "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    invoke-virtual {p1, v3}, Lcom/oplus/camera/professional/p;->d(I)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 1177
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_b

    .line 1178
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "pref_professional_focus_mode_key"

    .line 1179
    invoke-static {v0, p1}, Lcom/oplus/camera/professional/LevelPanel;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    invoke-virtual {v0, v3, v2}, Lcom/oplus/camera/professional/p;->scrollTo(II)V

    .line 1181
    invoke-direct {p0, v3, p1}, Lcom/oplus/camera/professional/v;->a(ILjava/lang/String;)V

    .line 1186
    :cond_b
    iput-boolean v1, p0, Lcom/oplus/camera/professional/v;->o:Z

    return-void

    .line 1077
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

    .line 257
    iput-object p1, p0, Lcom/oplus/camera/professional/v;->S:Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;

    .line 259
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->isSuperRawOpen()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 260
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->g:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    .line 261
    :try_start_0
    iput-boolean v0, p0, Lcom/oplus/camera/professional/v;->T:Z

    .line 262
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->j()V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 262
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 266
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->i()V

    :goto_0
    return-void
.end method

.method protected onResume(Z)V
    .locals 2

    const-string p1, "ProfessionalCapMode"

    const-string v0, "onResume"

    .line 2675
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2677
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz p1, :cond_0

    .line 2678
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/oplus/camera/professional/v;->D:Landroid/content/res/Resources;

    const v1, 0x7f1001e7

    .line 2679
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_high_resolution_key"

    .line 2678
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/camera/professional/v;->j:Z

    .line 2682
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->z:Lcom/oplus/camera/p;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 2683
    invoke-direct {p0, v1, v1, v0}, Lcom/oplus/camera/professional/v;->a(ZZZ)V

    .line 2684
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->z:Lcom/oplus/camera/p;

    invoke-virtual {p1}, Lcom/oplus/camera/p;->a()V

    .line 2687
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/oplus/camera/util/Util;->z(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2688
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->C:Lcom/oplus/camera/professional/v$a;

    if-eqz p1, :cond_2

    .line 2689
    invoke-virtual {p1, v1}, Lcom/oplus/camera/professional/v$a;->setVisibility(I)V

    .line 2692
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1, v0}, Lcom/oplus/camera/capmode/a;->d(Z)V

    .line 2693
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/v;->a(I)V

    .line 2696
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    if-eqz p1, :cond_4

    .line 2697
    invoke-virtual {p1, v1}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->setBackgroundColor(I)V

    .line 2700
    :cond_4
    iput-boolean v1, p0, Lcom/oplus/camera/professional/v;->P:Z

    return-void
.end method

.method public onShareMenuExpand()V
    .locals 4

    .line 199
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v1}, Lcom/oplus/camera/capmode/a;->a(ZZ)V

    .line 201
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0, v1}, Lcom/oplus/camera/capmode/a;->d(Z)V

    .line 203
    new-instance v0, Lcom/oplus/camera/professional/u$a;

    invoke-direct {v0}, Lcom/oplus/camera/professional/u$a;-><init>()V

    const/4 v2, 0x0

    .line 204
    iput-boolean v2, v0, Lcom/oplus/camera/professional/u$a;->a:Z

    const/16 v2, 0xfa

    .line 205
    iput v2, v0, Lcom/oplus/camera/professional/u$a;->c:I

    const/16 v2, 0x190

    .line 206
    iput v2, v0, Lcom/oplus/camera/professional/u$a;->g:I

    const/4 v2, 0x0

    .line 207
    iput v2, v0, Lcom/oplus/camera/professional/u$a;->d:F

    .line 208
    iget-object v2, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0706fd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Lcom/oplus/camera/professional/u$a;->e:F

    .line 209
    iget-object v2, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    invoke-virtual {v2, v0}, Lcom/oplus/camera/professional/p;->setAllPopupInvisibility(Lcom/oplus/camera/professional/u$a;)V

    .line 210
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->a()V

    .line 211
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p0, v1}, Lcom/oplus/camera/e/d;->j(Z)V

    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 3372
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSharedPreferenceChanged, key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ProfessionalCapMode"

    invoke-static {v4, v3}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "pref_camera_photo_ratio_key"

    .line 3374
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "square"

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3376
    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3375
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/oplus/camera/professional/v;->H:Z

    .line 3377
    invoke-static {}, Lcom/oplus/camera/util/Util;->L()I

    move-result v4

    iput v4, v0, Lcom/oplus/camera/professional/v;->af:I

    :cond_0
    const-string v4, "pref_professional_whitebalance_key"

    .line 3380
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v7, 0x1

    if-eqz v4, :cond_1

    .line 3381
    invoke-direct {v0, v7}, Lcom/oplus/camera/professional/v;->e(Z)V

    return-void

    :cond_1
    const-string v4, "pref_professional_iso_key"

    .line 3383
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v8, "off"

    if-eqz v4, :cond_3

    .line 3384
    sget-boolean v1, Lcom/oplus/camera/Camera;->l:Z

    if-nez v1, :cond_2

    .line 3385
    iget-object v1, v0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/professional/v;->getFlashMode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/oplus/camera/e/d;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 3387
    :cond_2
    iget-object v1, v0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v1, v8}, Lcom/oplus/camera/e/d;->b(Ljava/lang/String;)V

    .line 3390
    :goto_0
    invoke-direct {v0, v6}, Lcom/oplus/camera/professional/v;->e(Ljava/lang/String;)V

    return-void

    :cond_3
    const-string v4, "pref_professional_exposure_compensation_key"

    .line 3392
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3393
    iget-object v1, v0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/professional/v;->c()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3394
    iget-object v1, v0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v1, v6}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    .line 3395
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/professional/v;->B()V

    return-void

    :cond_4
    const-string v4, "pref_professional_exposure_time_key"

    .line 3397
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v9, 0x0

    if-eqz v4, :cond_7

    .line 3398
    sget-boolean v1, Lcom/oplus/camera/Camera;->l:Z

    if-nez v1, :cond_5

    .line 3399
    iget-object v1, v0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/professional/v;->getFlashMode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/oplus/camera/e/d;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 3401
    :cond_5
    iget-object v1, v0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v1, v8}, Lcom/oplus/camera/e/d;->b(Ljava/lang/String;)V

    .line 3404
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/professional/v;->Q()V

    .line 3405
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/professional/v;->n()J

    move-result-wide v1

    .line 3407
    iget-object v3, v0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v3}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-boolean v3, v0, Lcom/oplus/camera/professional/v;->p:Z

    if-eqz v3, :cond_6

    const-wide/32 v3, 0x1dcd6500

    cmp-long v1, v1, v3

    if-ltz v1, :cond_6

    .line 3410
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/professional/v;->isSuperRawOpen()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3411
    iput-boolean v9, v0, Lcom/oplus/camera/professional/v;->p:Z

    .line 3412
    iget-object v2, v0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v3, 0x7f100302

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    :cond_6
    return-void

    :cond_7
    const-string v4, "pref_high_resolution_key"

    .line 3417
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 3418
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/professional/v;->V()V

    goto/16 :goto_7

    :cond_8
    const-string v4, "pref_professional_focus_mode_key"

    .line 3419
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 3420
    iget-object v3, v0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/oplus/camera/professional/p;->h(I)Z

    .line 3422
    iget-object v3, v0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    invoke-virtual {v3, v4}, Lcom/oplus/camera/professional/p;->g(I)Z

    move-result v3

    if-nez v3, :cond_9

    .line 3423
    invoke-virtual {v0, v6}, Lcom/oplus/camera/professional/v;->a(Ljava/lang/String;)V

    .line 3424
    iput-boolean v7, v0, Lcom/oplus/camera/professional/v;->r:Z

    goto :goto_2

    .line 3426
    :cond_9
    iget-object v3, v0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v3}, Lcom/oplus/camera/e/d;->p()I

    move-result v3

    if-nez v3, :cond_a

    .line 3429
    iput-boolean v9, v0, Lcom/oplus/camera/professional/v;->r:Z

    .line 3432
    :cond_a
    iget-object v3, v0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v3}, Lcom/oplus/camera/e/d;->p()I

    move-result v3

    if-ne v4, v3, :cond_b

    iget-boolean v3, v0, Lcom/oplus/camera/professional/v;->r:Z

    if-eqz v3, :cond_c

    .line 3433
    :cond_b
    iget-object v3, v0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    .line 3434
    invoke-static {}, Lcom/oplus/camera/a;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v5

    invoke-static {}, Lcom/oplus/camera/a;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v8

    .line 3433
    invoke-interface {v3, v4, v5, v8, v7}, Lcom/oplus/camera/e/d;->a(I[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Z)V

    .line 3435
    iget-object v3, v0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v3, v6}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    .line 3438
    :cond_c
    iget-object v3, v0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v3}, Lcom/oplus/camera/e/d;->p()I

    move-result v3

    if-eq v4, v3, :cond_d

    iget-object v3, v0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    .line 3439
    invoke-interface {v3}, Lcom/oplus/camera/e/d;->p()I

    move-result v3

    if-ne v7, v3, :cond_e

    .line 3440
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/professional/v;->J()V

    .line 3441
    iget-object v3, v0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    invoke-virtual {v3, v4}, Lcom/oplus/camera/professional/p;->setPanelsBarAuto(I)V

    .line 3445
    :cond_e
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/professional/v;->S()V

    .line 3446
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/professional/v;->B()V

    goto/16 :goto_7

    :cond_f
    const-string v4, "pref_camera_flashmode_key"

    .line 3447
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 3448
    iget-object v3, v0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    const v5, 0x7f1001bb

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v6, v0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    .line 3450
    invoke-virtual {v6, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3449
    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 3451
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/professional/v;->U()V

    .line 3452
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/professional/v;->B()V

    .line 3455
    :cond_10
    invoke-direct {v0, v7}, Lcom/oplus/camera/professional/v;->g(Z)V

    goto/16 :goto_7

    :cond_11
    const-string v4, "pref_raw_control_key"

    .line 3456
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-virtual {v0, v4}, Lcom/oplus/camera/professional/v;->getSupportFunction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 3457
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/professional/v;->R()V

    return-void

    :cond_12
    const-string v4, "pref_super_raw_control_key"

    .line 3460
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 3461
    invoke-virtual {v0, v4}, Lcom/oplus/camera/professional/v;->getSupportFunction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 3462
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/professional/v;->R()V

    return-void

    :cond_13
    const-string v4, "pref_parameter_saving"

    .line 3465
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 3466
    iget-boolean v1, v0, Lcom/oplus/camera/professional/v;->q:Z

    .line 3467
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/professional/v;->z()V

    if-nez v1, :cond_14

    .line 3470
    iget-boolean v1, v0, Lcom/oplus/camera/professional/v;->q:Z

    if-eqz v1, :cond_14

    .line 3471
    invoke-direct {v0, v7, v8}, Lcom/oplus/camera/professional/v;->a(ZLjava/lang/String;)V

    .line 3474
    :cond_14
    iget-object v1, v0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, v4, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3475
    invoke-direct {v0, v9, v1}, Lcom/oplus/camera/professional/v;->a(ZLjava/lang/String;)V

    .line 3476
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/professional/v;->A()V

    .line 3479
    iget-object v1, v0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v1}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 3480
    iget-object v1, v0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v1}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->getSelectedIndex()I

    move-result v1

    .line 3481
    iget-object v2, v0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    invoke-virtual {v2, v1}, Lcom/oplus/camera/professional/p;->b(I)Z

    move-result v1

    if-nez v1, :cond_15

    .line 3482
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/professional/v;->onBackPressed()Z

    :cond_15
    return-void

    :cond_16
    const-string v4, "pref_pro_histogram_key"

    .line 3487
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 3488
    invoke-direct {v0, v9, v7}, Lcom/oplus/camera/professional/v;->b(ZZ)V

    .line 3490
    iget-object v1, v0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v1, :cond_19

    .line 3491
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/professional/v;->Z()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 3492
    iput-boolean v7, v0, Lcom/oplus/camera/professional/v;->U:Z

    const/16 v1, 0x10e

    .line 3494
    iget v2, v0, Lcom/oplus/camera/professional/v;->mOrientation:I

    if-eq v1, v2, :cond_17

    .line 3495
    iget-object v1, v0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/16 v2, 0x96

    invoke-interface {v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->w(I)V

    .line 3498
    :cond_17
    iget-object v3, v0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v4, 0x7f1005bf

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    goto :goto_3

    .line 3500
    :cond_18
    iput-boolean v9, v0, Lcom/oplus/camera/professional/v;->U:Z

    .line 3501
    iget-object v10, v0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v11, 0x7f1005be

    const/4 v12, -0x1

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-interface/range {v10 .. v15}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    .line 3502
    iget-object v0, v0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v9}, Lcom/oplus/camera/ui/CameraUIInterface;->w(I)V

    :cond_19
    :goto_3
    return-void

    :cond_1a
    const-string v4, "pref_subsetting_key"

    .line 3507
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 3508
    invoke-direct {v0, v7}, Lcom/oplus/camera/professional/v;->d(Z)V

    .line 3509
    invoke-direct {v0, v7, v9}, Lcom/oplus/camera/professional/v;->b(ZZ)V

    goto/16 :goto_7

    :cond_1b
    const-string v4, "pref_focus_peaking_key"

    .line 3510
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 3511
    iget-object v1, v0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, v4, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 3513
    iget-object v2, v0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v2, :cond_1d

    if-eqz v1, :cond_1c

    .line 3515
    iget-object v8, v0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v9, 0x7f1005b8

    const/4 v10, -0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-interface/range {v8 .. v13}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    goto :goto_4

    .line 3517
    :cond_1c
    iget-object v14, v0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v15, 0x7f1005b7

    const/16 v16, -0x1

    const/16 v17, 0x1

    const/16 v18, 0x1

    const/16 v19, 0x0

    invoke-interface/range {v14 .. v19}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    .line 3521
    :cond_1d
    :goto_4
    iget-object v2, v0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v2, :cond_1e

    .line 3522
    iget-object v0, v0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0, v1, v7}, Lcom/oplus/camera/e/d;->a(ZZ)V

    :cond_1e
    return-void

    .line 3526
    :cond_1f
    iget-object v4, v0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v4}, Lcom/oplus/camera/ui/CameraUIInterface;->k()Lcom/oplus/camera/ui/a/a;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/oplus/camera/ui/a/a;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_20

    iget-object v4, v0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 3527
    invoke-interface {v4}, Lcom/oplus/camera/ui/CameraUIInterface;->k()Lcom/oplus/camera/ui/a/a;

    move-result-object v4

    const-string v6, "pref_camera_photo_ratio_key_from_other_app"

    invoke-virtual {v4, v6}, Lcom/oplus/camera/ui/a/a;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 3528
    :cond_20
    iget-object v4, v0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v6, v0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    const v8, 0x7f1002be

    .line 3529
    invoke-virtual {v6, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 3528
    invoke-interface {v4, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3531
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 3532
    invoke-static {}, Lcom/oplus/camera/util/Util;->L()I

    move-result v4

    invoke-static {}, Lcom/oplus/camera/util/Util;->N()I

    move-result v6

    add-int/2addr v4, v6

    iput v4, v0, Lcom/oplus/camera/professional/v;->ae:I

    goto :goto_5

    .line 3534
    :cond_21
    invoke-static {}, Lcom/oplus/camera/util/Util;->N()I

    move-result v4

    iput v4, v0, Lcom/oplus/camera/professional/v;->ae:I

    .line 3537
    :goto_5
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    iget-object v3, v0, Lcom/oplus/camera/professional/v;->ag:Ljava/lang/String;

    .line 3538
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    goto :goto_6

    .line 3541
    :cond_22
    iput-boolean v9, v0, Lcom/oplus/camera/professional/v;->V:Z

    goto :goto_7

    .line 3539
    :cond_23
    :goto_6
    iput-boolean v7, v0, Lcom/oplus/camera/professional/v;->V:Z

    .line 3545
    :cond_24
    :goto_7
    invoke-super/range {p0 .. p2}, Lcom/oplus/camera/capmode/BaseMode;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    const-string v1, "pref_switch_camera_key"

    .line 3547
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 3548
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/professional/v;->T()V

    .line 3549
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/professional/v;->H()V

    :cond_25
    return-void
.end method

.method protected onShutterCallback(ZZ)V
    .locals 4

    .line 2423
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/BaseMode;->onShutterCallback(ZZ)V

    if-eqz p2, :cond_3

    .line 2426
    iget-boolean p1, p0, Lcom/oplus/camera/professional/v;->j:Z

    const/4 p2, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 2427
    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2428
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->m()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0x3b9aca00

    cmp-long p1, v0, v2

    if-ltz p1, :cond_1

    .line 2429
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->isSuperRawOpen()Z

    move-result p1

    if-nez p1, :cond_2

    .line 2430
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    .line 2431
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0, p1}, Lcom/oplus/camera/capmode/a;->c(I)V

    .line 2432
    invoke-direct {p0, p2}, Lcom/oplus/camera/professional/v;->b(I)V

    goto :goto_1

    .line 2435
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1, p2}, Lcom/oplus/camera/capmode/a;->c(I)V

    .line 2438
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->isSuperRawOpen()Z

    move-result p1

    if-nez p1, :cond_3

    .line 2439
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->h()V

    :cond_3
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3

    const-string v0, "ProfessionalCapMode"

    const-string v1, "onSingleTapUp"

    .line 181
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

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

    :cond_0
    const/4 v0, 0x4

    .line 187
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->f()I

    move-result v2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 189
    :goto_0
    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/v;->isInPreviewArea(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->A()Z

    move-result v0

    if-nez v0, :cond_3

    .line 190
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->onBackPressed()Z

    .line 193
    :cond_3
    invoke-direct {p0, p1}, Lcom/oplus/camera/professional/v;->a(Landroid/view/MotionEvent;)V

    return v1
.end method

.method protected onStop()V
    .locals 0

    return-void
.end method

.method protected onStopTakePicture()Z
    .locals 4

    .line 2058
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->g()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    .line 2059
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStopTakePicture failed, current camera state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->g()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ProfessionalCapMode"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 2064
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    new-instance v3, Lcom/oplus/camera/professional/v$5;

    invoke-direct {v3, p0}, Lcom/oplus/camera/professional/v$5;-><init>(Lcom/oplus/camera/professional/v;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2086
    iput-boolean v2, p0, Lcom/oplus/camera/professional/v;->mbInCapturing:Z

    .line 2087
    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/v;->setCapturePreviewDataState(I)V

    .line 2088
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->C:Lcom/oplus/camera/professional/v$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/professional/v$a;->setTouchState(Z)V

    .line 2089
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0, v1}, Lcom/oplus/camera/capmode/a;->f(Z)V

    .line 2090
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZ)V

    return v1
.end method

.method public onTimeSnapShotEnd(Z)V
    .locals 3

    .line 1984
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;

    move-result-object v0

    .line 1986
    iget-boolean v1, p0, Lcom/oplus/camera/professional/v;->j:Z

    const-string v2, "button_color_inside_none"

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    .line 1987
    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/control/b;->a(I)V

    .line 1988
    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/control/b;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 1990
    :cond_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x17

    goto :goto_0

    :cond_1
    const/16 p1, 0xb

    .line 1991
    :goto_0
    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/control/b;->a(I)V

    .line 1992
    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/control/b;->a(Ljava/lang/String;)V

    .line 1995
    :goto_1
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    return-void
.end method

.method protected onTopSubMenuCollapse()V
    .locals 4

    .line 4517
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->onTopSubMenuCollapse()V

    .line 4519
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->f()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-ne v3, v0, :cond_1

    .line 4520
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->aw()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4521
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v0, v2}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->setVisibilityWithAnimation(I)V

    .line 4524
    :cond_0
    invoke-direct {p0, v2, v1}, Lcom/oplus/camera/professional/v;->b(IZ)V

    goto :goto_0

    .line 4525
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->f()I

    move-result v0

    if-ne v1, v0, :cond_2

    .line 4526
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v0, v2}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->setVisibilityWithAnimation(I)V

    .line 4527
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->getCurrentScreenMode()Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    .line 4529
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->g()I

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 4530
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->C:Lcom/oplus/camera/professional/v$a;

    invoke-virtual {v0}, Lcom/oplus/camera/screen/b/a;->e()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/v$a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onTopSubMenuExpand()V
    .locals 4

    .line 4490
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->isSelected()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4491
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0, v1, v1}, Lcom/oplus/camera/capmode/a;->a(ZZ)V

    .line 4492
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0, v1}, Lcom/oplus/camera/capmode/a;->d(Z)V

    .line 4494
    new-instance v0, Lcom/oplus/camera/professional/u$a;

    invoke-direct {v0}, Lcom/oplus/camera/professional/u$a;-><init>()V

    const/4 v2, 0x0

    .line 4495
    iput-boolean v2, v0, Lcom/oplus/camera/professional/u$a;->a:Z

    const/16 v2, 0xfa

    .line 4496
    iput v2, v0, Lcom/oplus/camera/professional/u$a;->c:I

    const/16 v2, 0x190

    .line 4497
    iput v2, v0, Lcom/oplus/camera/professional/u$a;->g:I

    const/4 v2, 0x0

    .line 4498
    iput v2, v0, Lcom/oplus/camera/professional/u$a;->d:F

    .line 4499
    iget-object v2, p0, Lcom/oplus/camera/professional/v;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0706fd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Lcom/oplus/camera/professional/u$a;->e:F

    .line 4500
    iget-object v2, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    invoke-virtual {v2, v0}, Lcom/oplus/camera/professional/p;->setAllPopupInvisibility(Lcom/oplus/camera/professional/u$a;)V

    .line 4501
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->a()V

    .line 4502
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0, v1}, Lcom/oplus/camera/e/d;->j(Z)V

    goto :goto_0

    .line 4504
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->onTopSubMenuExpand()V

    :goto_0
    const/4 v0, 0x4

    .line 4507
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->f()I

    move-result v2

    const/16 v3, 0x8

    if-ne v0, v2, :cond_1

    .line 4508
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v0, v3}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->setVisibilityWithAnimation(I)V

    .line 4509
    invoke-direct {p0, v3, v1}, Lcom/oplus/camera/professional/v;->b(IZ)V

    goto :goto_1

    .line 4510
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->f()I

    move-result v0

    if-ne v1, v0, :cond_2

    .line 4511
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {p0, v3}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->setVisibilityWithAnimation(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onYuvDataReceviced([B)V
    .locals 1

    .line 4483
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->z:Lcom/oplus/camera/p;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->isHistogramOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4484
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->z:Lcom/oplus/camera/p;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/p;->a([B)V

    :cond_0
    return-void
.end method

.method public onZoomAlphaChanged(F)V
    .locals 0

    .line 743
    iput p1, p0, Lcom/oplus/camera/professional/v;->O:F

    return-void
.end method

.method public onZoomMenuCollapsed()V
    .locals 2

    .line 690
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->A()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/professional/v;->mbInCapturing:Z

    if-nez v0, :cond_0

    .line 691
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->C:Lcom/oplus/camera/professional/v$a;

    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/v$a;->setEnabled(Z)V

    goto :goto_0

    .line 693
    :cond_0
    iput-boolean v1, p0, Lcom/oplus/camera/professional/v;->l:Z

    :goto_0
    return-void
.end method

.method public onZoomMenuCollapsing()V
    .locals 2

    .line 677
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    if-eqz v0, :cond_1

    .line 678
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->f()I

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v0, v1, v1}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->a(ZZ)V

    .line 682
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->f()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 683
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->setVisibilityWithAnimation(I)V

    :cond_1
    return-void
.end method

.method public onZoomMenuExpand()V
    .locals 3

    .line 699
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 700
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->f()I

    move-result v0

    const/4 v2, 0x1

    if-eq v2, v0, :cond_0

    .line 701
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->a(ZZ)V

    :cond_0
    const/4 v0, 0x4

    .line 704
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->f()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 705
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->x:Lcom/oplus/camera/professional/p;

    if-eqz v0, :cond_1

    .line 706
    invoke-virtual {v0}, Lcom/oplus/camera/professional/p;->e()V

    .line 709
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->a()V

    .line 710
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->setVisibilityWithAnimation(I)V

    .line 714
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->C:Lcom/oplus/camera/professional/v$a;

    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/v$a;->setEnabled(Z)V

    return-void
.end method

.method public onZoomTransitionChanged(I)V
    .locals 2

    .line 719
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->q()V

    .line 720
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->getZoomBarOffset()I

    move-result v0

    sub-int/2addr p1, v0

    .line 722
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    if-eqz v0, :cond_2

    .line 723
    iget v0, p0, Lcom/oplus/camera/professional/v;->O:F

    .line 725
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->getZoomBarOffset()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    if-gt p1, v1, :cond_0

    const/4 v0, 0x0

    .line 729
    :cond_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 733
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->setAlpha(F)V

    .line 735
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 736
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 737
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method public operateSpecificViewCallBack(Ljava/lang/Object;ZZ)V
    .locals 4

    .line 2159
    instance-of v0, p1, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    move-object v2, p1

    check-cast v2, Ljava/lang/Integer;

    .line 2160
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_1

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    const-string v2, "ProfessionalCapMode"

    const-string v3, "removeAllView when mEmptyViewToAnimate hide animation end"

    .line 2163
    invoke-static {v2, v3}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2165
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->N()V

    .line 2166
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->D()V

    goto :goto_0

    .line 2168
    :cond_0
    iget-object v2, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    if-eqz v2, :cond_1

    .line 2169
    new-instance v2, Lcom/oplus/camera/professional/u$a;

    invoke-direct {v2}, Lcom/oplus/camera/professional/u$a;-><init>()V

    const/4 v3, 0x0

    .line 2170
    iput-boolean v3, v2, Lcom/oplus/camera/professional/u$a;->a:Z

    const/16 v3, 0xfa

    .line 2171
    iput v3, v2, Lcom/oplus/camera/professional/u$a;->c:I

    const/4 v3, 0x0

    .line 2172
    iput v3, v2, Lcom/oplus/camera/professional/u$a;->d:F

    .line 2173
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->getZoomBarOffset()I

    move-result v3

    int-to-float v3, v3

    iput v3, v2, Lcom/oplus/camera/professional/u$a;->e:F

    const/16 v3, 0x1f4

    .line 2174
    iput v3, v2, Lcom/oplus/camera/professional/u$a;->g:I

    .line 2175
    iget-object v3, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-static {v3, v2}, Lcom/oplus/camera/professional/u;->a(Landroid/view/View;Lcom/oplus/camera/professional/u$a;)Landroid/animation/Animator;

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 2180
    check-cast p1, Ljava/lang/Integer;

    .line 2181
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne v1, p1, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 2184
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->B:Landroid/os/Handler;

    new-instance p2, Lcom/oplus/camera/professional/v$6;

    invoke-direct {p2, p0}, Lcom/oplus/camera/professional/v$6;-><init>(Lcom/oplus/camera/professional/v;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public setFlashTemporaryDisabled(Z)V
    .locals 4

    const-string v0, "pref_switch_camera_key"

    .line 3663
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/v;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "pref_camera_flashmode_key"

    .line 3664
    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/v;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_3

    .line 3666
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "camera_main"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3667
    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.oplus.feature.flash.full.zoom.support"

    .line 3669
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    const-string v1, "camera_tele"

    .line 3670
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "on"

    .line 3671
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
    iput-boolean v3, p0, Lcom/oplus/camera/professional/v;->mbFlashTemporaryDisabled:Z

    goto :goto_1

    .line 3673
    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v3

    iput-boolean p1, p0, Lcom/oplus/camera/professional/v;->mbFlashTemporaryDisabled:Z

    goto :goto_1

    .line 3676
    :cond_3
    iput-boolean p1, p0, Lcom/oplus/camera/professional/v;->mbFlashTemporaryDisabled:Z

    :goto_1
    return-void
.end method

.method public setOrientation(I)V
    .locals 2

    .line 2626
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->I:Lcom/oplus/camera/ui/RotateImageView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2627
    invoke-virtual {v0, p1, v1}, Lcom/oplus/camera/ui/RotateImageView;->a(IZ)V

    .line 2630
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->y:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz v0, :cond_1

    .line 2631
    invoke-virtual {v0, p1, v1}, Lcom/oplus/camera/ui/RotateImageView;->a(IZ)V

    .line 2634
    :cond_1
    iget v0, p0, Lcom/oplus/camera/professional/v;->mOrientation:I

    if-ne v0, p1, :cond_2

    return-void

    .line 2638
    :cond_2
    iput p1, p0, Lcom/oplus/camera/professional/v;->mOrientation:I

    .line 2640
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->A:Lcom/oplus/camera/p$a;

    if-eqz p1, :cond_3

    .line 2641
    iget v0, p0, Lcom/oplus/camera/professional/v;->mOrientation:I

    iput v0, p1, Lcom/oplus/camera/p$a;->e:I

    .line 2644
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->k()Lcom/oplus/camera/ui/a/a;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 2647
    invoke-virtual {p1}, Lcom/oplus/camera/ui/a/a;->g()V

    .line 2650
    :cond_4
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->aj:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_5

    .line 2651
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2654
    :cond_5
    invoke-direct {p0}, Lcom/oplus/camera/professional/v;->Z()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    iget p1, p0, Lcom/oplus/camera/professional/v;->ab:I

    if-eqz p1, :cond_6

    .line 2655
    iput v0, p0, Lcom/oplus/camera/professional/v;->ab:I

    .line 2658
    :cond_6
    invoke-direct {p0, v0}, Lcom/oplus/camera/professional/v;->d(I)V

    .line 2660
    iget-object p1, p0, Lcom/oplus/camera/professional/v;->z:Lcom/oplus/camera/p;

    if-eqz p1, :cond_7

    .line 2661
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->A:Lcom/oplus/camera/p$a;

    invoke-virtual {p1, p0, v0, v0}, Lcom/oplus/camera/p;->a(Lcom/oplus/camera/p$a;ZZ)V

    :cond_7
    return-void
.end method

.method public updateControlPanelBgColor(I)V
    .locals 2

    .line 748
    iget-object v0, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/oplus/camera/professional/v;->f()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 749
    iget-object p0, p0, Lcom/oplus/camera/professional/v;->w:Lcom/oplus/camera/professional/ListProfessionalModeBar;

    invoke-static {p1}, Lcom/oplus/camera/util/c;->a(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method
