.class public Lcom/oplus/camera/timelapsepro/b;
.super Landroid/widget/RelativeLayout;
.source "ParameterContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/timelapsepro/b$a;
    }
.end annotation


# instance fields
.field private A:Lcom/oplus/camera/timelapsepro/b$a;

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/camera/timelapsepro/a/e;",
            ">;"
        }
    .end annotation
.end field

.field private G:Landroid/os/Handler;

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:Lcom/oplus/camera/timelapsepro/a/e;

.field private L:Lcom/oplus/camera/timelapsepro/a/e;

.field private M:Lcom/oplus/camera/timelapsepro/a/e;

.field private N:Lcom/oplus/camera/timelapsepro/a/e;

.field private O:Lcom/oplus/camera/timelapsepro/a/e;

.field private P:Lcom/oplus/camera/timelapsepro/a/e;

.field private Q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private R:Z

.field private S:Landroid/view/View$OnTouchListener;

.field private final a:Lcom/oplus/camera/ComboPreferences;

.field private final b:I

.field private final c:Lcom/a/a/f;

.field private d:Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter;

.field private e:Landroid/content/Context;

.field private f:Landroidx/recyclerview/widget/COUIRecyclerView;

.field private g:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private h:Landroid/widget/RelativeLayout;

.field private i:Landroid/widget/RelativeLayout;

.field private j:Landroid/widget/RelativeLayout;

.field private k:Landroid/widget/RelativeLayout;

.field private l:Landroid/widget/RelativeLayout;

.field private m:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

.field private n:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

.field private o:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

.field private p:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

.field private q:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:Lcom/oplus/camera/ui/inverse/InverseTextView;

.field private x:Lcom/oplus/camera/ui/inverse/InverseTextView;

.field private y:Lcom/oplus/camera/ui/inverse/InverseTextView;

.field private z:Lcom/oplus/camera/ui/inverse/InverseTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oplus/camera/ComboPreferences;)V
    .locals 3

    .line 130
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 58
    invoke-static {}, Lcom/oplus/camera/professional/u;->a()Lcom/a/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->c:Lcom/a/a/f;

    const/4 v0, -0x1

    .line 77
    iput v0, p0, Lcom/oplus/camera/timelapsepro/b;->r:I

    .line 78
    iput v0, p0, Lcom/oplus/camera/timelapsepro/b;->s:I

    const/4 v1, 0x0

    .line 79
    iput v1, p0, Lcom/oplus/camera/timelapsepro/b;->t:I

    .line 80
    iput v0, p0, Lcom/oplus/camera/timelapsepro/b;->u:I

    .line 81
    iput v0, p0, Lcom/oplus/camera/timelapsepro/b;->v:I

    .line 89
    iput v1, p0, Lcom/oplus/camera/timelapsepro/b;->B:I

    const/4 v2, 0x2

    .line 92
    iput v2, p0, Lcom/oplus/camera/timelapsepro/b;->D:I

    .line 93
    iput v1, p0, Lcom/oplus/camera/timelapsepro/b;->E:I

    const/4 v2, 0x0

    .line 94
    iput-object v2, p0, Lcom/oplus/camera/timelapsepro/b;->F:Ljava/util/List;

    .line 95
    iput-object v2, p0, Lcom/oplus/camera/timelapsepro/b;->G:Landroid/os/Handler;

    .line 96
    iput-boolean v1, p0, Lcom/oplus/camera/timelapsepro/b;->H:Z

    .line 97
    iput-boolean v1, p0, Lcom/oplus/camera/timelapsepro/b;->I:Z

    .line 98
    iput-boolean v1, p0, Lcom/oplus/camera/timelapsepro/b;->J:Z

    .line 99
    iput-object v2, p0, Lcom/oplus/camera/timelapsepro/b;->K:Lcom/oplus/camera/timelapsepro/a/e;

    .line 100
    iput-object v2, p0, Lcom/oplus/camera/timelapsepro/b;->L:Lcom/oplus/camera/timelapsepro/a/e;

    .line 101
    iput-object v2, p0, Lcom/oplus/camera/timelapsepro/b;->M:Lcom/oplus/camera/timelapsepro/a/e;

    .line 102
    iput-object v2, p0, Lcom/oplus/camera/timelapsepro/b;->N:Lcom/oplus/camera/timelapsepro/a/e;

    .line 103
    iput-object v2, p0, Lcom/oplus/camera/timelapsepro/b;->O:Lcom/oplus/camera/timelapsepro/a/e;

    .line 104
    iput-object v2, p0, Lcom/oplus/camera/timelapsepro/b;->P:Lcom/oplus/camera/timelapsepro/a/e;

    .line 106
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/timelapsepro/b;->Q:Ljava/util/Map;

    .line 107
    iput-boolean v1, p0, Lcom/oplus/camera/timelapsepro/b;->R:Z

    .line 109
    new-instance v2, Lcom/oplus/camera/timelapsepro/b$1;

    invoke-direct {v2, p0}, Lcom/oplus/camera/timelapsepro/b$1;-><init>(Lcom/oplus/camera/timelapsepro/b;)V

    iput-object v2, p0, Lcom/oplus/camera/timelapsepro/b;->S:Landroid/view/View$OnTouchListener;

    .line 131
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/b;->e:Landroid/content/Context;

    .line 132
    iput-object p2, p0, Lcom/oplus/camera/timelapsepro/b;->a:Lcom/oplus/camera/ComboPreferences;

    .line 133
    iput-boolean v1, p0, Lcom/oplus/camera/timelapsepro/b;->I:Z

    .line 135
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b;->e:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c0170

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 136
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {p2, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2}, Lcom/oplus/camera/timelapsepro/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/b;->h()V

    .line 138
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/b;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f0700cf

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/oplus/camera/timelapsepro/b;->b:I

    const p2, 0x7f0902b3

    .line 140
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/COUIRecyclerView;

    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/b;->f:Landroidx/recyclerview/widget/COUIRecyclerView;

    .line 143
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b;->f:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->setItemViewCacheSize(I)V

    .line 144
    new-instance p1, Lcom/oplus/camera/timelapsepro/b$7;

    iget-object p2, p0, Lcom/oplus/camera/timelapsepro/b;->e:Landroid/content/Context;

    invoke-direct {p1, p0, p2}, Lcom/oplus/camera/timelapsepro/b$7;-><init>(Lcom/oplus/camera/timelapsepro/b;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/b;->g:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 156
    new-instance p1, Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter;

    iget-object p2, p0, Lcom/oplus/camera/timelapsepro/b;->e:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/b;->d:Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter;

    .line 157
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b;->g:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 158
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b;->f:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object p2, p0, Lcom/oplus/camera/timelapsepro/b;->g:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/COUIRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 159
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b;->d:Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter;

    new-instance p2, Lcom/oplus/camera/timelapsepro/-$$Lambda$b$8Eg7xdIZuFH1gRwibIbSBSXdYWc;

    invoke-direct {p2, p0}, Lcom/oplus/camera/timelapsepro/-$$Lambda$b$8Eg7xdIZuFH1gRwibIbSBSXdYWc;-><init>(Lcom/oplus/camera/timelapsepro/b;)V

    invoke-virtual {p1, p2}, Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter;->a(Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter$a;)V

    .line 160
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b;->d:Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter;

    new-instance p2, Lcom/oplus/camera/timelapsepro/-$$Lambda$b$9uAEfNDaxvrGpPkuCMWZtKuwjkM;

    invoke-direct {p2, p0}, Lcom/oplus/camera/timelapsepro/-$$Lambda$b$9uAEfNDaxvrGpPkuCMWZtKuwjkM;-><init>(Lcom/oplus/camera/timelapsepro/b;)V

    invoke-virtual {p1, p2}, Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter;->a(Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter$b;)V

    .line 162
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b;->f:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object p2, p0, Lcom/oplus/camera/timelapsepro/b;->d:Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/COUIRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 163
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b;->f:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->setClipChildren(Z)V

    .line 164
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b;->f:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->setClipToPadding(Z)V

    .line 166
    new-instance p1, Lcom/oplus/camera/timelapsepro/b$8;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/oplus/camera/timelapsepro/b$8;-><init>(Lcom/oplus/camera/timelapsepro/b;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/b;->G:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/timelapsepro/b;)Lcom/a/a/f;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/b;->c:Lcom/a/a/f;

    return-object p0
.end method

.method private a(I)V
    .locals 1

    const/4 v0, 0x1

    .line 208
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/timelapsepro/b;->a(II)V

    return-void
.end method

.method private a(II)V
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 212
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/oplus/camera/timelapsepro/b;->a(IIJ)V

    return-void
.end method

.method private a(IIJ)V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->G:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->G:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 220
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/b;->G:Landroid/os/Handler;

    invoke-static {p0, v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private a(ILcom/oplus/camera/timelapsepro/a/e;)V
    .locals 9

    .line 949
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onParamItemClick, position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", parameter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mParamsContainer.isEnabled():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/b;->f:Landroidx/recyclerview/widget/COUIRecyclerView;

    .line 950
    invoke-virtual {v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ParameterContainer"

    .line 949
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->F:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v2, :cond_a

    const/4 v3, 0x2

    if-eq p1, v3, :cond_8

    if-eq p1, v0, :cond_6

    const/4 v3, 0x4

    if-eq p1, v3, :cond_4

    const/4 v3, 0x5

    if-eq p1, v3, :cond_2

    :cond_1
    move-object v3, v1

    goto/16 :goto_0

    .line 1002
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/b;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f10050b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1005
    iget-object v3, p0, Lcom/oplus/camera/timelapsepro/b;->l:Landroid/widget/RelativeLayout;

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/oplus/camera/timelapsepro/b;->P:Lcom/oplus/camera/timelapsepro/a/e;

    if-eqz v3, :cond_3

    .line 1006
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/b;->m()V

    :cond_3
    const-string v3, "time_lapse_wb"

    goto :goto_0

    .line 993
    :cond_4
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/b;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1001c6

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 996
    iget-object v3, p0, Lcom/oplus/camera/timelapsepro/b;->k:Landroid/widget/RelativeLayout;

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/oplus/camera/timelapsepro/b;->O:Lcom/oplus/camera/timelapsepro/a/e;

    if-eqz v3, :cond_5

    .line 997
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/b;->l()V

    :cond_5
    const-string v3, "time_lapse_focus"

    goto :goto_0

    .line 984
    :cond_6
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/b;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f10013c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 987
    iget-object v3, p0, Lcom/oplus/camera/timelapsepro/b;->j:Landroid/widget/RelativeLayout;

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/oplus/camera/timelapsepro/b;->N:Lcom/oplus/camera/timelapsepro/a/e;

    if-eqz v3, :cond_7

    .line 988
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/b;->k()V

    :cond_7
    const-string v3, "time_lapse_ev"

    goto :goto_0

    .line 975
    :cond_8
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/b;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f100140

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 978
    iget-object v3, p0, Lcom/oplus/camera/timelapsepro/b;->i:Landroid/widget/RelativeLayout;

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/oplus/camera/timelapsepro/b;->M:Lcom/oplus/camera/timelapsepro/a/e;

    if-eqz v3, :cond_9

    .line 979
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/b;->j()V

    :cond_9
    const-string v3, "time_lapse_exp"

    goto :goto_0

    .line 966
    :cond_a
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/b;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f10021e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 969
    iget-object v3, p0, Lcom/oplus/camera/timelapsepro/b;->h:Landroid/widget/RelativeLayout;

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/oplus/camera/timelapsepro/b;->L:Lcom/oplus/camera/timelapsepro/a/e;

    if-eqz v3, :cond_b

    .line 970
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/b;->i()V

    :cond_b
    const-string v3, "time_lapse_iso"

    :goto_0
    const/4 v4, 0x0

    if-nez p1, :cond_10

    .line 1013
    iget-object v5, p0, Lcom/oplus/camera/timelapsepro/b;->a:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {v5}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "pref_time_lapse_pro_index_of_iso_key"

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "pref_time_lapse_pro_index_of_exposure_time_key"

    .line 1014
    invoke-interface {v5, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "pref_time_lapse_pro_index_of_exposure_compensation_key"

    .line 1015
    invoke-interface {v5, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "pref_time_lapse_pro_index_of_focus_mode_key"

    .line 1016
    invoke-interface {v5, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "pref_time_lapse_pro_index_of_whitebalance_key"

    .line 1017
    invoke-interface {v5, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1019
    invoke-virtual {p2, v4}, Lcom/oplus/camera/timelapsepro/a/e;->b(Z)V

    move v5, v2

    .line 1021
    :goto_1
    iget-object v6, p0, Lcom/oplus/camera/timelapsepro/b;->F:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_f

    .line 1022
    iget-object v6, p0, Lcom/oplus/camera/timelapsepro/b;->F:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oplus/camera/timelapsepro/a/e;

    .line 1024
    invoke-virtual {v6}, Lcom/oplus/camera/timelapsepro/a/e;->g()Z

    move-result v7

    if-nez v7, :cond_d

    .line 1025
    invoke-direct {p0, v5}, Lcom/oplus/camera/timelapsepro/b;->d(I)Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    move-result-object v7

    .line 1026
    invoke-direct {p0, v5}, Lcom/oplus/camera/timelapsepro/b;->e(I)Lcom/oplus/camera/ui/inverse/InverseTextView;

    move-result-object v8

    if-eqz v7, :cond_c

    .line 1029
    invoke-virtual {v7, v4}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->a(Z)V

    :cond_c
    if-eqz v8, :cond_d

    .line 1033
    invoke-virtual {v8, v2}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setInverseColor(Z)V

    .line 1034
    invoke-direct {p0, v8, v2, v4}, Lcom/oplus/camera/timelapsepro/b;->a(Lcom/oplus/camera/ui/inverse/InverseTextView;ZZ)V

    .line 1038
    :cond_d
    invoke-virtual {v6}, Lcom/oplus/camera/timelapsepro/a/e;->b()V

    .line 1039
    invoke-virtual {v6, v4}, Lcom/oplus/camera/timelapsepro/a/e;->c(Z)V

    .line 1040
    invoke-virtual {v6}, Lcom/oplus/camera/timelapsepro/a/e;->f()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5}, Lcom/oplus/camera/timelapsepro/b;->f(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/oplus/camera/timelapsepro/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v0, v5, :cond_e

    .line 1042
    iget-object v6, p0, Lcom/oplus/camera/timelapsepro/b;->N:Lcom/oplus/camera/timelapsepro/a/e;

    if-eqz v6, :cond_e

    .line 1043
    invoke-virtual {v6}, Lcom/oplus/camera/timelapsepro/a/e;->n()I

    move-result v6

    iput v6, p0, Lcom/oplus/camera/timelapsepro/b;->C:I

    .line 1045
    iget-object v6, p0, Lcom/oplus/camera/timelapsepro/b;->o:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    if-eqz v6, :cond_e

    .line 1046
    iget-object v7, p0, Lcom/oplus/camera/timelapsepro/b;->N:Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {v7}, Lcom/oplus/camera/timelapsepro/a/e;->n()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->b(I)V

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1051
    :cond_f
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/b;->p()V

    goto :goto_6

    :cond_10
    move v0, v2

    .line 1053
    :goto_2
    iget-object v5, p0, Lcom/oplus/camera/timelapsepro/b;->F:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_15

    .line 1054
    iget-object v5, p0, Lcom/oplus/camera/timelapsepro/b;->F:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oplus/camera/timelapsepro/a/e;

    if-ne p1, v0, :cond_11

    move v6, v2

    goto :goto_3

    :cond_11
    move v6, v4

    .line 1056
    :goto_3
    invoke-virtual {v5}, Lcom/oplus/camera/timelapsepro/a/e;->i()Z

    move-result v7

    if-eq v6, v7, :cond_13

    if-ne v0, p1, :cond_12

    .line 1057
    invoke-virtual {v5}, Lcom/oplus/camera/timelapsepro/a/e;->i()Z

    move-result v6

    if-nez v6, :cond_12

    move v6, v2

    goto :goto_4

    :cond_12
    move v6, v4

    :goto_4
    invoke-virtual {v5, v6}, Lcom/oplus/camera/timelapsepro/a/e;->c(Z)V

    goto :goto_5

    .line 1058
    :cond_13
    invoke-virtual {v5}, Lcom/oplus/camera/timelapsepro/a/e;->i()Z

    move-result v6

    if-eqz v6, :cond_14

    .line 1059
    invoke-virtual {v5, v4}, Lcom/oplus/camera/timelapsepro/a/e;->c(Z)V

    :cond_14
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1063
    :cond_15
    invoke-virtual {p2}, Lcom/oplus/camera/timelapsepro/a/e;->g()Z

    move-result v0

    if-nez v0, :cond_16

    .line 1064
    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/b;->a(I)V

    .line 1068
    :cond_16
    :goto_6
    invoke-virtual {p2}, Lcom/oplus/camera/timelapsepro/a/e;->i()Z

    move-result v0

    if-eqz v0, :cond_17

    move v4, p1

    :cond_17
    iput v4, p0, Lcom/oplus/camera/timelapsepro/b;->B:I

    .line 1070
    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/b;->g(I)V

    .line 1071
    invoke-virtual {p2}, Lcom/oplus/camera/timelapsepro/a/e;->i()Z

    move-result p1

    invoke-direct {p0, v1, p1, v3}, Lcom/oplus/camera/timelapsepro/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 4

    .line 652
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->z:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/inverse/InverseTextView;->a()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setInverseColor(Z)V

    .line 653
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->P:Lcom/oplus/camera/timelapsepro/a/e;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/b;->z:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/inverse/InverseTextView;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/timelapsepro/a/e;->a(Z)V

    .line 654
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->q:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/b;->z:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/inverse/InverseTextView;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->setAutoState(Z)V

    .line 655
    check-cast p1, Lcom/oplus/camera/ui/inverse/InverseTextView;

    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->z:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/inverse/InverseTextView;->a()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/timelapsepro/b;->a(Lcom/oplus/camera/ui/inverse/InverseTextView;Z)V

    .line 656
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/b;->p()V

    .line 657
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/b;->o()V

    .line 659
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b;->z:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/inverse/InverseTextView;->a()Z

    move-result p1

    const-string v0, "time_lapse_wb"

    const-string v1, "pref_time_lapse_pro_index_of_whitebalance_key"

    if-eqz p1, :cond_0

    .line 660
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b;->P:Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {p1}, Lcom/oplus/camera/timelapsepro/a/e;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/b;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10050a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/oplus/camera/timelapsepro/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 661
    invoke-direct {p0, v1, p1}, Lcom/oplus/camera/timelapsepro/b;->a(Ljava/lang/String;I)V

    const-string p1, "auto"

    .line 662
    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/timelapsepro/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 664
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b;->P:Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {p1}, Lcom/oplus/camera/timelapsepro/a/e;->n()I

    move-result p1

    invoke-direct {p0, v1, p1}, Lcom/oplus/camera/timelapsepro/b;->a(Ljava/lang/String;I)V

    const/4 p1, 0x5

    .line 665
    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/b;->b(I)V

    .line 666
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b;->P:Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {p1}, Lcom/oplus/camera/timelapsepro/a/e;->e()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/timelapsepro/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private a(Landroid/view/View;ZZ)V
    .locals 13

    move-object v1, p0

    move-object v2, p1

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-string v0, "alpha"

    const/4 v3, 0x2

    if-eqz p2, :cond_1

    .line 1215
    new-array v4, v3, [F

    fill-array-data v4, :array_0

    invoke-static {p1, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_0

    .line 1217
    :cond_1
    new-array v4, v3, [F

    fill-array-data v4, :array_1

    invoke-static {p1, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1220
    :goto_0
    sget-object v4, Lcom/oplus/camera/professional/t;->a:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0x190

    if-eqz p2, :cond_2

    move-wide v6, v4

    goto :goto_1

    :cond_2
    const-wide/16 v6, 0xfa

    .line 1221
    :goto_1
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1222
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1223
    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    .line 1225
    iget v6, v1, Lcom/oplus/camera/timelapsepro/b;->b:I

    int-to-float v6, v6

    const/4 v8, 0x0

    if-eqz p3, :cond_6

    .line 1230
    iget v9, v1, Lcom/oplus/camera/timelapsepro/b;->D:I

    const/4 v10, 0x1

    const-string v11, "translationX"

    if-ne v10, v9, :cond_3

    const/16 v9, 0x10e

    .line 1233
    iget v12, v1, Lcom/oplus/camera/timelapsepro/b;->E:I

    if-eq v9, v12, :cond_4

    neg-float v6, v6

    goto :goto_2

    :cond_3
    const-string v11, "translationY"

    :cond_4
    :goto_2
    const/4 v9, 0x0

    if-eqz p2, :cond_5

    .line 1243
    new-array v3, v3, [F

    aput v6, v3, v8

    aput v9, v3, v10

    invoke-static {p1, v11, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    goto :goto_3

    .line 1245
    :cond_5
    new-array v3, v3, [F

    aput v9, v3, v8

    aput v6, v3, v10

    invoke-static {p1, v11, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 1248
    :goto_3
    sget-object v9, Lcom/oplus/camera/professional/t;->b:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1249
    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1251
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    if-eqz p2, :cond_6

    const-wide/16 v3, 0x96

    .line 1254
    invoke-virtual {v7, v3, v4}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    :cond_6
    move v5, v6

    .line 1258
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v6

    .line 1261
    iget-object v0, v1, Lcom/oplus/camera/timelapsepro/b;->f:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/COUIRecyclerView;->setEnabled(Z)V

    .line 1262
    new-instance v8, Lcom/oplus/camera/timelapsepro/b$6;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/timelapsepro/b$6;-><init>(Lcom/oplus/camera/timelapsepro/b;Landroid/view/View;ZZFZ)V

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1314
    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private a(Landroid/widget/RelativeLayout;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 1199
    iput-boolean v0, p0, Lcom/oplus/camera/timelapsepro/b;->J:Z

    .line 1200
    invoke-direct {p0, p1, v0, p2}, Lcom/oplus/camera/timelapsepro/b;->a(Landroid/view/View;ZZ)V

    return-void
.end method

.method private a(Landroid/widget/RelativeLayout;ZZ)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_2

    if-eqz p2, :cond_1

    .line 1177
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result p2

    if-nez p2, :cond_0

    .line 1178
    iget-boolean p2, p0, Lcom/oplus/camera/timelapsepro/b;->J:Z

    xor-int/2addr p2, v1

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/timelapsepro/b;->a(Landroid/widget/RelativeLayout;Z)V

    goto :goto_1

    .line 1180
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/oplus/camera/timelapsepro/b;->b(Landroid/widget/RelativeLayout;Z)V

    .line 1181
    iput-boolean v0, p0, Lcom/oplus/camera/timelapsepro/b;->J:Z

    goto :goto_1

    .line 1184
    :cond_1
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1185
    iget-boolean p2, p0, Lcom/oplus/camera/timelapsepro/b;->J:Z

    xor-int/2addr p2, v1

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/timelapsepro/b;->b(Landroid/widget/RelativeLayout;Z)V

    goto :goto_1

    :cond_2
    const/16 p3, 0x8

    if-eqz p2, :cond_4

    .line 1189
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    move p3, v0

    .line 1190
    :cond_4
    :goto_0
    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    if-nez p3, :cond_5

    .line 1193
    iput-boolean v1, p0, Lcom/oplus/camera/timelapsepro/b;->J:Z

    :cond_5
    :goto_1
    return-void
.end method

.method private a(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;)V
    .locals 3

    .line 727
    iget v0, p0, Lcom/oplus/camera/timelapsepro/b;->D:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    .line 728
    invoke-virtual {p1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 729
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/b;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070c11

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 730
    iget v0, p0, Lcom/oplus/camera/timelapsepro/b;->E:I

    const/16 v1, 0x10e

    const v2, 0x7f070c17

    if-ne v0, v1, :cond_0

    .line 731
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/b;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    iput p0, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    .line 733
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/b;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    iput p0, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/timelapsepro/b;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/b;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/timelapsepro/b;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/timelapsepro/b;Ljava/lang/String;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/timelapsepro/b;->a(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/timelapsepro/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/timelapsepro/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/timelapsepro/b;ZII)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/timelapsepro/b;->a(ZII)V

    return-void
.end method

.method private a(Lcom/oplus/camera/ui/inverse/InverseTextView;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 289
    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/camera/timelapsepro/b;->a(Lcom/oplus/camera/ui/inverse/InverseTextView;ZZ)V

    return-void
.end method

.method private a(Lcom/oplus/camera/ui/inverse/InverseTextView;ZZ)V
    .locals 0

    .line 293
    invoke-static {p1, p2, p3}, Lcom/oplus/camera/timelapsepro/d;->a(Lcom/oplus/camera/ui/inverse/InverseTextView;ZZ)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1388
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/timelapsepro/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 2

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "putPreferenceInt, key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ParameterContainer"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/b;->a:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {p0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1367
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->Q:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1369
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1374
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1375
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "parameterChange empty value, key: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", value: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ParameterContainer"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1380
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->Q:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1382
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/b;->A:Lcom/oplus/camera/timelapsepro/b$a;

    if-eqz p0, :cond_2

    .line 1383
    invoke-interface {p0, p1, p2}, Lcom/oplus/camera/timelapsepro/b$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private a(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 1398
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/b;->A:Lcom/oplus/camera/timelapsepro/b$a;

    if-eqz p0, :cond_0

    .line 1399
    invoke-interface {p0, p1, p2, p3}, Lcom/oplus/camera/timelapsepro/b$a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a(ZII)V
    .locals 2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v1, 0x2

    if-eq p2, v1, :cond_3

    const/4 v1, 0x3

    if-eq p2, v1, :cond_2

    const/4 v1, 0x4

    if-eq p2, v1, :cond_1

    const/4 v1, 0x5

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    iget-object p2, p0, Lcom/oplus/camera/timelapsepro/b;->q:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->isShown()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 260
    iget-object p2, p0, Lcom/oplus/camera/timelapsepro/b;->q:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    invoke-virtual {p2, p1, v0}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->a(ZZ)V

    goto :goto_0

    .line 253
    :cond_1
    iget-object p2, p0, Lcom/oplus/camera/timelapsepro/b;->p:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->isShown()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 254
    iget-object p2, p0, Lcom/oplus/camera/timelapsepro/b;->p:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    invoke-virtual {p2, p1, v0}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->a(ZZ)V

    goto :goto_0

    .line 247
    :cond_2
    iget-object p2, p0, Lcom/oplus/camera/timelapsepro/b;->o:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->isShown()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 248
    iget-object p2, p0, Lcom/oplus/camera/timelapsepro/b;->o:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    invoke-virtual {p2, p1, v0}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->a(ZZ)V

    goto :goto_0

    .line 241
    :cond_3
    iget-object p2, p0, Lcom/oplus/camera/timelapsepro/b;->n:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->isShown()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 242
    iget-object p2, p0, Lcom/oplus/camera/timelapsepro/b;->n:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    invoke-virtual {p2, p1, v0}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->a(ZZ)V

    goto :goto_0

    .line 235
    :cond_4
    iget-object p2, p0, Lcom/oplus/camera/timelapsepro/b;->m:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->isShown()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 236
    iget-object p2, p0, Lcom/oplus/camera/timelapsepro/b;->m:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    invoke-virtual {p2, p1, v0}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->a(ZZ)V

    :cond_5
    :goto_0
    if-ne v0, p3, :cond_6

    const/4 p1, 0x0

    .line 267
    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/b;->a(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/timelapsepro/b;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/oplus/camera/timelapsepro/b;->H:Z

    return p1
.end method

.method static synthetic b(Lcom/oplus/camera/timelapsepro/b;I)I
    .locals 0

    .line 48
    iput p1, p0, Lcom/oplus/camera/timelapsepro/b;->C:I

    return p1
.end method

.method private b(Ljava/lang/String;I)I
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/b;->a:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 202
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getPreferenceInt, value: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ParameterContainer"

    invoke-static {p2, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method static synthetic b(Lcom/oplus/camera/timelapsepro/b;)Lcom/oplus/camera/timelapsepro/a/e;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/b;->L:Lcom/oplus/camera/timelapsepro/a/e;

    return-object p0
.end method

.method private b(I)V
    .locals 3

    .line 224
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->G:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->G:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->G:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x1

    const-wide/16 v1, 0x5dc

    .line 229
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/oplus/camera/timelapsepro/b;->a(IIJ)V

    return-void
.end method

.method private b(II)V
    .locals 2

    .line 908
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onParamValueChanged, scale scroll position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ParameterContainer"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 933
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b;->q:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/b;->b(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 934
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/b;->q:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    invoke-virtual {p0, p2}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->b(I)V

    goto :goto_0

    .line 926
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b;->p:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/b;->b(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 927
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/b;->p:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    invoke-virtual {p0, p2}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->b(I)V

    goto :goto_0

    .line 919
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b;->n:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/b;->b(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 920
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/b;->n:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    invoke-virtual {p0, p2}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->b(I)V

    goto :goto_0

    .line 912
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b;->m:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/b;->b(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 913
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/b;->m:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    invoke-virtual {p0, p2}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->b(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 4

    .line 561
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->y:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/inverse/InverseTextView;->a()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setInverseColor(Z)V

    .line 562
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->O:Lcom/oplus/camera/timelapsepro/a/e;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/b;->y:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/inverse/InverseTextView;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/timelapsepro/a/e;->a(Z)V

    .line 563
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->p:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/b;->y:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/inverse/InverseTextView;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->setAutoState(Z)V

    .line 564
    check-cast p1, Lcom/oplus/camera/ui/inverse/InverseTextView;

    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->y:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/inverse/InverseTextView;->a()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/timelapsepro/b;->a(Lcom/oplus/camera/ui/inverse/InverseTextView;Z)V

    .line 565
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/b;->p()V

    .line 566
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/b;->o()V

    .line 568
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b;->y:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/inverse/InverseTextView;->a()Z

    move-result p1

    const-string v0, "time_lapse_focus"

    const-string v1, "pref_time_lapse_pro_index_of_focus_mode_key"

    if-eqz p1, :cond_0

    .line 569
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b;->O:Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {p1}, Lcom/oplus/camera/timelapsepro/a/e;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/b;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1001c5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/oplus/camera/timelapsepro/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 570
    invoke-direct {p0, v1, p1}, Lcom/oplus/camera/timelapsepro/b;->a(Ljava/lang/String;I)V

    const-string p1, "auto"

    .line 571
    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/timelapsepro/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 573
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b;->O:Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {p1}, Lcom/oplus/camera/timelapsepro/a/e;->n()I

    move-result p1

    invoke-direct {p0, v1, p1}, Lcom/oplus/camera/timelapsepro/b;->a(Ljava/lang/String;I)V

    const/4 p1, 0x4

    .line 574
    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/b;->b(I)V

    .line 575
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b;->M:Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {p1}, Lcom/oplus/camera/timelapsepro/a/e;->e()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/timelapsepro/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private b(Landroid/widget/RelativeLayout;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1204
    invoke-direct {p0, p1, v0, p2}, Lcom/oplus/camera/timelapsepro/b;->a(Landroid/view/View;ZZ)V

    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/timelapsepro/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/timelapsepro/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1392
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/b;->A:Lcom/oplus/camera/timelapsepro/b$a;

    if-eqz p0, :cond_0

    .line 1393
    invoke-interface {p0, p1, p2}, Lcom/oplus/camera/timelapsepro/b$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private b(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 945
    invoke-virtual {p1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->isShown()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private c(I)V
    .locals 5

    .line 811
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->g:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 813
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->f:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x9

    .line 815
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v2, 0xb

    .line 816
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v3, 0xa

    .line 817
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 818
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/b;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070c13

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 819
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/b;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070c12

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    const v3, 0x7f070c10

    const/16 v4, 0x10e

    if-ne v4, p1, :cond_0

    .line 822
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 823
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/b;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    iput p0, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    .line 825
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 826
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/b;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    iput p0, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    :goto_0
    return-void
.end method

.method private synthetic c(Landroid/view/View;)V
    .locals 4

    .line 406
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->x:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/inverse/InverseTextView;->a()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setInverseColor(Z)V

    .line 407
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->M:Lcom/oplus/camera/timelapsepro/a/e;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/b;->x:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/inverse/InverseTextView;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/timelapsepro/a/e;->a(Z)V

    .line 408
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->n:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/b;->x:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/inverse/InverseTextView;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->setAutoState(Z)V

    .line 409
    check-cast p1, Lcom/oplus/camera/ui/inverse/InverseTextView;

    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->x:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/inverse/InverseTextView;->a()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/timelapsepro/b;->a(Lcom/oplus/camera/ui/inverse/InverseTextView;Z)V

    .line 410
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/b;->p()V

    .line 411
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/b;->o()V

    .line 413
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b;->x:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/inverse/InverseTextView;->a()Z

    move-result p1

    const-string v0, "time_lapse_exp"

    const-string v1, "pref_time_lapse_pro_index_of_exposure_time_key"

    if-eqz p1, :cond_0

    .line 414
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b;->M:Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {p1}, Lcom/oplus/camera/timelapsepro/a/e;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/b;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10013e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/oplus/camera/timelapsepro/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 415
    invoke-direct {p0, v1, p1}, Lcom/oplus/camera/timelapsepro/b;->a(Ljava/lang/String;I)V

    const-string p1, "auto"

    .line 416
    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/timelapsepro/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 418
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b;->M:Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {p1}, Lcom/oplus/camera/timelapsepro/a/e;->n()I

    move-result p1

    invoke-direct {p0, v1, p1}, Lcom/oplus/camera/timelapsepro/b;->a(Ljava/lang/String;I)V

    const/4 p1, 0x2

    .line 419
    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/b;->b(I)V

    .line 420
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b;->M:Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {p1}, Lcom/oplus/camera/timelapsepro/a/e;->e()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/timelapsepro/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/oplus/camera/timelapsepro/b;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/b;->p()V

    return-void
.end method

.method static synthetic c(Lcom/oplus/camera/timelapsepro/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/timelapsepro/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1428
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/b;->A:Lcom/oplus/camera/timelapsepro/b$a;

    if-eqz p0, :cond_0

    .line 1429
    invoke-interface {p0, p1, p2}, Lcom/oplus/camera/timelapsepro/b$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private d(I)Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1089
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/b;->q:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    return-object p0

    .line 1086
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/b;->p:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    return-object p0

    .line 1083
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/b;->o:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    return-object p0

    .line 1080
    :cond_3
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/b;->n:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    return-object p0

    .line 1077
    :cond_4
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/b;->m:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    return-object p0
.end method

.method private synthetic d(Landroid/view/View;)V
    .locals 4

    .line 314
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->w:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/inverse/InverseTextView;->a()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setInverseColor(Z)V

    .line 315
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->L:Lcom/oplus/camera/timelapsepro/a/e;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/b;->w:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/inverse/InverseTextView;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/timelapsepro/a/e;->a(Z)V

    .line 316
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->m:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/b;->w:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/inverse/InverseTextView;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->setAutoState(Z)V

    .line 317
    check-cast p1, Lcom/oplus/camera/ui/inverse/InverseTextView;

    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->w:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/inverse/InverseTextView;->a()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/timelapsepro/b;->a(Lcom/oplus/camera/ui/inverse/InverseTextView;Z)V

    .line 318
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/b;->p()V

    .line 319
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/b;->o()V

    .line 321
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b;->w:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/inverse/InverseTextView;->a()Z

    move-result p1

    const-string v0, "time_lapse_iso"

    const-string v1, "pref_time_lapse_pro_index_of_iso_key"

    if-eqz p1, :cond_0

    .line 322
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b;->L:Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {p1}, Lcom/oplus/camera/timelapsepro/a/e;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/b;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10021d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/oplus/camera/timelapsepro/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 323
    invoke-direct {p0, v1, p1}, Lcom/oplus/camera/timelapsepro/b;->a(Ljava/lang/String;I)V

    const-string p1, "auto"

    .line 324
    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/timelapsepro/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 326
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b;->L:Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {p1}, Lcom/oplus/camera/timelapsepro/a/e;->n()I

    move-result p1

    invoke-direct {p0, v1, p1}, Lcom/oplus/camera/timelapsepro/b;->a(Ljava/lang/String;I)V

    .line 327
    invoke-direct {p0, v2}, Lcom/oplus/camera/timelapsepro/b;->b(I)V

    .line 328
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b;->L:Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {p1}, Lcom/oplus/camera/timelapsepro/a/e;->e()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/timelapsepro/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic d(Lcom/oplus/camera/timelapsepro/b;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/b;->o()V

    return-void
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1435
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/b;->A:Lcom/oplus/camera/timelapsepro/b$a;

    if-eqz p0, :cond_0

    .line 1436
    invoke-interface {p0, p1, p2}, Lcom/oplus/camera/timelapsepro/b$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/oplus/camera/timelapsepro/b;)Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/b;->m:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    return-object p0
.end method

.method private e(I)Lcom/oplus/camera/ui/inverse/InverseTextView;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1108
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/b;->z:Lcom/oplus/camera/ui/inverse/InverseTextView;

    return-object p0

    .line 1105
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/b;->y:Lcom/oplus/camera/ui/inverse/InverseTextView;

    return-object p0

    .line 1102
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/b;->x:Lcom/oplus/camera/ui/inverse/InverseTextView;

    return-object p0

    .line 1099
    :cond_3
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/b;->w:Lcom/oplus/camera/ui/inverse/InverseTextView;

    return-object p0
.end method

.method static synthetic f(Lcom/oplus/camera/timelapsepro/b;)Lcom/oplus/camera/ui/inverse/InverseTextView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/b;->w:Lcom/oplus/camera/ui/inverse/InverseTextView;

    return-object p0
.end method

.method private f(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1130
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/b;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f10050a

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1127
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/b;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1001c5

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1124
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/b;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f10013b

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1121
    :cond_3
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/b;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f10013e

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1118
    :cond_4
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/b;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f10021d

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private g(I)V
    .locals 5

    .line 1138
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->F:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 1142
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->h:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->L:Lcom/oplus/camera/timelapsepro/a/e;

    if-eqz v0, :cond_3

    .line 1143
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->m:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    invoke-virtual {v0, v2}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->b(Z)V

    .line 1144
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->w:Lcom/oplus/camera/ui/inverse/InverseTextView;

    iget-object v3, p0, Lcom/oplus/camera/timelapsepro/b;->L:Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {v3}, Lcom/oplus/camera/timelapsepro/a/e;->g()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setInverseColor(Z)V

    .line 1145
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->h:Landroid/widget/RelativeLayout;

    if-ne p1, v1, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    if-ne p1, v1, :cond_2

    move v4, v1

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    invoke-direct {p0, v0, v3, v4}, Lcom/oplus/camera/timelapsepro/b;->a(Landroid/widget/RelativeLayout;ZZ)V

    .line 1148
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->i:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->M:Lcom/oplus/camera/timelapsepro/a/e;

    if-eqz v0, :cond_6

    .line 1149
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->n:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    invoke-virtual {v0, v2}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->b(Z)V

    .line 1150
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->x:Lcom/oplus/camera/ui/inverse/InverseTextView;

    iget-object v3, p0, Lcom/oplus/camera/timelapsepro/b;->M:Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {v3}, Lcom/oplus/camera/timelapsepro/a/e;->g()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setInverseColor(Z)V

    .line 1151
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->i:Landroid/widget/RelativeLayout;

    const/4 v3, 0x2

    if-ne p1, v3, :cond_4

    move v4, v1

    goto :goto_2

    :cond_4
    move v4, v2

    :goto_2
    if-ne p1, v3, :cond_5

    move v3, v1

    goto :goto_3

    :cond_5
    move v3, v2

    :goto_3
    invoke-direct {p0, v0, v4, v3}, Lcom/oplus/camera/timelapsepro/b;->a(Landroid/widget/RelativeLayout;ZZ)V

    .line 1154
    :cond_6
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->j:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_9

    .line 1155
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->o:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    invoke-virtual {v0, v2}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->b(Z)V

    .line 1156
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->j:Landroid/widget/RelativeLayout;

    const/4 v3, 0x3

    if-ne p1, v3, :cond_7

    move v4, v1

    goto :goto_4

    :cond_7
    move v4, v2

    :goto_4
    if-ne p1, v3, :cond_8

    move v3, v1

    goto :goto_5

    :cond_8
    move v3, v2

    :goto_5
    invoke-direct {p0, v0, v4, v3}, Lcom/oplus/camera/timelapsepro/b;->a(Landroid/widget/RelativeLayout;ZZ)V

    .line 1159
    :cond_9
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->k:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->O:Lcom/oplus/camera/timelapsepro/a/e;

    if-eqz v0, :cond_c

    .line 1160
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->p:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    invoke-virtual {v0, v2}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->b(Z)V

    .line 1161
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->y:Lcom/oplus/camera/ui/inverse/InverseTextView;

    iget-object v3, p0, Lcom/oplus/camera/timelapsepro/b;->O:Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {v3}, Lcom/oplus/camera/timelapsepro/a/e;->g()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setInverseColor(Z)V

    .line 1162
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->k:Landroid/widget/RelativeLayout;

    const/4 v3, 0x4

    if-ne p1, v3, :cond_a

    move v4, v1

    goto :goto_6

    :cond_a
    move v4, v2

    :goto_6
    if-ne p1, v3, :cond_b

    move v3, v1

    goto :goto_7

    :cond_b
    move v3, v2

    :goto_7
    invoke-direct {p0, v0, v4, v3}, Lcom/oplus/camera/timelapsepro/b;->a(Landroid/widget/RelativeLayout;ZZ)V

    .line 1165
    :cond_c
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->l:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->P:Lcom/oplus/camera/timelapsepro/a/e;

    if-eqz v0, :cond_f

    .line 1166
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->q:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    invoke-virtual {v0, v2}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->b(Z)V

    .line 1167
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->z:Lcom/oplus/camera/ui/inverse/InverseTextView;

    iget-object v3, p0, Lcom/oplus/camera/timelapsepro/b;->P:Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {v3}, Lcom/oplus/camera/timelapsepro/a/e;->g()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setInverseColor(Z)V

    .line 1168
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->l:Landroid/widget/RelativeLayout;

    const/4 v3, 0x5

    if-ne p1, v3, :cond_d

    move v4, v1

    goto :goto_8

    :cond_d
    move v4, v2

    :goto_8
    if-ne p1, v3, :cond_e

    goto :goto_9

    :cond_e
    move v1, v2

    :goto_9
    invoke-direct {p0, v0, v4, v1}, Lcom/oplus/camera/timelapsepro/b;->a(Landroid/widget/RelativeLayout;ZZ)V

    .line 1171
    :cond_f
    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/b;->a(I)V

    return-void
.end method

.method static synthetic g(Lcom/oplus/camera/timelapsepro/b;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/b;->q()V

    return-void
.end method

.method private getScaleLayoutId()I
    .locals 2

    .line 739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getScaleLayoutId, mScreenLayoutMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/timelapsepro/b;->D:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mModeOrientation : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/timelapsepro/b;->E:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ParameterContainer"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    iget v0, p0, Lcom/oplus/camera/timelapsepro/b;->D:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    const/16 v0, 0x10e

    .line 743
    iget p0, p0, Lcom/oplus/camera/timelapsepro/b;->E:I

    if-ne v0, p0, :cond_0

    const p0, 0x7f0c0176

    return p0

    :cond_0
    const p0, 0x7f0c0175

    return p0

    :cond_1
    const p0, 0x7f0c0174

    return p0
.end method

.method private getScaleLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 7

    .line 272
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 274
    iget v1, p0, Lcom/oplus/camera/timelapsepro/b;->D:I

    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    const/16 p0, 0xf

    .line 275
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    const v3, 0x7f0700df

    const v4, 0x7f070c16

    const v5, 0x7f0902b3

    const/4 v6, 0x2

    if-ne v2, v1, :cond_1

    .line 277
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/b;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070c2e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 278
    invoke-virtual {v0, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 279
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/b;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/b;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sub-int/2addr v1, p0

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 281
    :cond_1
    invoke-virtual {v0, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 282
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/b;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/b;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sub-int/2addr v1, p0

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    :goto_0
    return-object v0
.end method

.method static synthetic h(Lcom/oplus/camera/timelapsepro/b;)Landroid/os/Handler;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/b;->G:Landroid/os/Handler;

    return-object p0
.end method

.method private h()V
    .locals 3

    const/4 v0, -0x1

    const-string v1, "pref_time_lapse_pro_index_of_iso_key"

    .line 186
    invoke-direct {p0, v1, v0}, Lcom/oplus/camera/timelapsepro/b;->b(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/timelapsepro/b;->r:I

    const-string v1, "pref_time_lapse_pro_index_of_exposure_time_key"

    .line 187
    invoke-direct {p0, v1, v0}, Lcom/oplus/camera/timelapsepro/b;->b(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/timelapsepro/b;->s:I

    .line 188
    sget v1, Lcom/oplus/camera/timelapsepro/e;->a:I

    const-string v2, "pref_time_lapse_pro_index_of_exposure_compensation_key"

    invoke-direct {p0, v2, v1}, Lcom/oplus/camera/timelapsepro/b;->b(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/timelapsepro/b;->t:I

    const-string v1, "pref_time_lapse_pro_index_of_focus_mode_key"

    .line 189
    invoke-direct {p0, v1, v0}, Lcom/oplus/camera/timelapsepro/b;->b(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/timelapsepro/b;->u:I

    const-string v1, "pref_time_lapse_pro_index_of_whitebalance_key"

    .line 190
    invoke-direct {p0, v1, v0}, Lcom/oplus/camera/timelapsepro/b;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/timelapsepro/b;->v:I

    return-void
.end method

.method static synthetic i(Lcom/oplus/camera/timelapsepro/b;)Lcom/oplus/camera/timelapsepro/a/e;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/b;->M:Lcom/oplus/camera/timelapsepro/a/e;

    return-object p0
.end method

.method private i()V
    .locals 4

    const-string v0, "ParameterContainer"

    const-string v1, "initIsoContainer."

    .line 297
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/b;->getScaleLayoutId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->h:Landroid/widget/RelativeLayout;

    .line 300
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->h:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->h:Landroid/widget/RelativeLayout;

    const v1, 0x7f090305

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->m:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    .line 302
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->h:Landroid/widget/RelativeLayout;

    const v1, 0x7f090062

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/inverse/InverseTextView;

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->w:Lcom/oplus/camera/ui/inverse/InverseTextView;

    .line 303
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->w:Lcom/oplus/camera/ui/inverse/InverseTextView;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/oplus/camera/util/Util;->c(Z)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 304
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->w:Lcom/oplus/camera/ui/inverse/InverseTextView;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v0, v1, v3}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setTextSize(IF)V

    .line 305
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->w:Lcom/oplus/camera/ui/inverse/InverseTextView;

    iget-object v3, p0, Lcom/oplus/camera/timelapsepro/b;->S:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v3}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 307
    iget v0, p0, Lcom/oplus/camera/timelapsepro/b;->D:I

    const/4 v3, 0x4

    if-ne v3, v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->w:Lcom/oplus/camera/ui/inverse/InverseTextView;

    iget-boolean v3, p0, Lcom/oplus/camera/timelapsepro/b;->R:Z

    if-eqz v3, :cond_0

    const v3, 0x7f08064d

    goto :goto_0

    :cond_0
    const v3, 0x7f08064e

    :goto_0
    invoke-virtual {v0, v3}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setBackgroundResource(I)V

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->m:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    invoke-direct {p0, v0}, Lcom/oplus/camera/timelapsepro/b;->a(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;)V

    .line 313
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->w:Lcom/oplus/camera/ui/inverse/InverseTextView;

    new-instance v3, Lcom/oplus/camera/timelapsepro/-$$Lambda$b$CYQbdzb8AX5XQ0dKf15eQxut9x4;

    invoke-direct {v3, p0}, Lcom/oplus/camera/timelapsepro/-$$Lambda$b$CYQbdzb8AX5XQ0dKf15eQxut9x4;-><init>(Lcom/oplus/camera/timelapsepro/b;)V

    invoke-virtual {v0, v3}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->F:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 333
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->w:Lcom/oplus/camera/ui/inverse/InverseTextView;

    iget-object v3, p0, Lcom/oplus/camera/timelapsepro/b;->L:Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {v3}, Lcom/oplus/camera/timelapsepro/a/e;->g()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setInverseColor(Z)V

    .line 334
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->w:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/inverse/InverseTextView;->a()Z

    move-result v3

    invoke-direct {p0, v0, v3, v2}, Lcom/oplus/camera/timelapsepro/b;->a(Lcom/oplus/camera/ui/inverse/InverseTextView;ZZ)V

    .line 336
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->m:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/b;->L:Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {v2}, Lcom/oplus/camera/timelapsepro/a/e;->n()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->b(I)V

    .line 337
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->m:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->setScaleSpace(I)V

    .line 338
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->m:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/b;->L:Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {v2}, Lcom/oplus/camera/timelapsepro/a/e;->o()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->setValueList(Ljava/util/List;)V

    .line 339
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->m:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/b;->L:Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {v2}, Lcom/oplus/camera/timelapsepro/a/e;->n()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->setCurrentIndex(I)V

    .line 341
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->m:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    new-instance v2, Lcom/oplus/camera/timelapsepro/b$9;

    invoke-direct {v2, p0}, Lcom/oplus/camera/timelapsepro/b$9;-><init>(Lcom/oplus/camera/timelapsepro/b;)V

    invoke-virtual {v0, v2}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->setScaleListener(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$b;)V

    .line 361
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->m:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    new-instance v2, Lcom/oplus/camera/timelapsepro/b$10;

    invoke-direct {v2, p0}, Lcom/oplus/camera/timelapsepro/b$10;-><init>(Lcom/oplus/camera/timelapsepro/b;)V

    invoke-virtual {v0, v2}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->setMoveListener(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$a;)V

    .line 379
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->L:Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {v0}, Lcom/oplus/camera/timelapsepro/a/e;->g()Z

    move-result v0

    if-nez v0, :cond_2

    .line 380
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->m:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->c(Z)V

    .line 381
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->m:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    iget v1, p0, Lcom/oplus/camera/timelapsepro/b;->r:I

    invoke-virtual {v0, v1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->b(I)V

    .line 385
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->h:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/b;->getScaleLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/timelapsepro/b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic j(Lcom/oplus/camera/timelapsepro/b;)Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/b;->n:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    return-object p0
.end method

.method private j()V
    .locals 4

    const-string v0, "ParameterContainer"

    const-string v1, "initShutterContainer."

    .line 389
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/b;->getScaleLayoutId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->i:Landroid/widget/RelativeLayout;

    .line 392
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->i:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 393
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->i:Landroid/widget/RelativeLayout;

    const v1, 0x7f090305

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->n:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    .line 394
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->i:Landroid/widget/RelativeLayout;

    const v1, 0x7f090062

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/inverse/InverseTextView;

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->x:Lcom/oplus/camera/ui/inverse/InverseTextView;

    .line 395
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->x:Lcom/oplus/camera/ui/inverse/InverseTextView;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/oplus/camera/util/Util;->c(Z)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 396
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->x:Lcom/oplus/camera/ui/inverse/InverseTextView;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v0, v1, v3}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setTextSize(IF)V

    .line 397
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->x:Lcom/oplus/camera/ui/inverse/InverseTextView;

    iget-object v3, p0, Lcom/oplus/camera/timelapsepro/b;->S:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v3}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 399
    iget v0, p0, Lcom/oplus/camera/timelapsepro/b;->D:I

    const/4 v3, 0x4

    if-ne v3, v0, :cond_1

    .line 400
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->x:Lcom/oplus/camera/ui/inverse/InverseTextView;

    iget-boolean v3, p0, Lcom/oplus/camera/timelapsepro/b;->R:Z

    if-eqz v3, :cond_0

    const v3, 0x7f08064d

    goto :goto_0

    :cond_0
    const v3, 0x7f08064e

    :goto_0
    invoke-virtual {v0, v3}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setBackgroundResource(I)V

    .line 403
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->n:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    invoke-direct {p0, v0}, Lcom/oplus/camera/timelapsepro/b;->a(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;)V

    .line 405
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->x:Lcom/oplus/camera/ui/inverse/InverseTextView;

    new-instance v3, Lcom/oplus/camera/timelapsepro/-$$Lambda$b$Ap44TBEX-Tddfp0NygY42bbbYn4;

    invoke-direct {v3, p0}, Lcom/oplus/camera/timelapsepro/-$$Lambda$b$Ap44TBEX-Tddfp0NygY42bbbYn4;-><init>(Lcom/oplus/camera/timelapsepro/b;)V

    invoke-virtual {v0, v3}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 424
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->F:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 425
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->x:Lcom/oplus/camera/ui/inverse/InverseTextView;

    iget-object v3, p0, Lcom/oplus/camera/timelapsepro/b;->M:Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {v3}, Lcom/oplus/camera/timelapsepro/a/e;->g()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setInverseColor(Z)V

    .line 426
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->x:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/inverse/InverseTextView;->a()Z

    move-result v3

    invoke-direct {p0, v0, v3, v2}, Lcom/oplus/camera/timelapsepro/b;->a(Lcom/oplus/camera/ui/inverse/InverseTextView;ZZ)V

    .line 428
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->n:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/b;->M:Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {v2}, Lcom/oplus/camera/timelapsepro/a/e;->n()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->b(I)V

    .line 429
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->n:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->setScaleSpace(I)V

    .line 430
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->n:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/b;->M:Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {v2}, Lcom/oplus/camera/timelapsepro/a/e;->o()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->setValueList(Ljava/util/List;)V

    .line 431
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->n:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/b;->M:Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {v2}, Lcom/oplus/camera/timelapsepro/a/e;->n()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->setCurrentIndex(I)V

    .line 433
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->n:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    new-instance v2, Lcom/oplus/camera/timelapsepro/b$11;

    invoke-direct {v2, p0}, Lcom/oplus/camera/timelapsepro/b$11;-><init>(Lcom/oplus/camera/timelapsepro/b;)V

    invoke-virtual {v0, v2}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->setScaleListener(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$b;)V

    .line 454
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->n:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    new-instance v2, Lcom/oplus/camera/timelapsepro/b$12;

    invoke-direct {v2, p0}, Lcom/oplus/camera/timelapsepro/b$12;-><init>(Lcom/oplus/camera/timelapsepro/b;)V

    invoke-virtual {v0, v2}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->setMoveListener(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$a;)V

    .line 472
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->M:Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {v0}, Lcom/oplus/camera/timelapsepro/a/e;->g()Z

    move-result v0

    if-nez v0, :cond_2

    .line 473
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->n:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->c(Z)V

    .line 474
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->n:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    iget v1, p0, Lcom/oplus/camera/timelapsepro/b;->s:I

    invoke-virtual {v0, v1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->b(I)V

    .line 478
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->i:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/b;->getScaleLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/timelapsepro/b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic k(Lcom/oplus/camera/timelapsepro/b;)Lcom/oplus/camera/ui/inverse/InverseTextView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/b;->x:Lcom/oplus/camera/ui/inverse/InverseTextView;

    return-object p0
.end method

.method private k()V
    .locals 3

    const-string v0, "ParameterContainer"

    const-string v1, "initEvContainer."

    .line 482
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/b;->getScaleLayoutId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->j:Landroid/widget/RelativeLayout;

    .line 485
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->j:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 486
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->j:Landroid/widget/RelativeLayout;

    const v2, 0x7f090305

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->o:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    .line 487
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->j:Landroid/widget/RelativeLayout;

    const v2, 0x7f090062

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 489
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->o:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    invoke-direct {p0, v0}, Lcom/oplus/camera/timelapsepro/b;->a(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;)V

    .line 491
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->F:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->o:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/b;->N:Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {v1}, Lcom/oplus/camera/timelapsepro/a/e;->n()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->b(I)V

    .line 493
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->o:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    const/16 v1, 0xa

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->a(II)V

    .line 494
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->o:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/b;->N:Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {v1}, Lcom/oplus/camera/timelapsepro/a/e;->o()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->setValueList(Ljava/util/List;)V

    .line 495
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->o:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->c(Z)V

    .line 496
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->o:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/b;->N:Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {v1}, Lcom/oplus/camera/timelapsepro/a/e;->n()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->setCurrentIndex(I)V

    .line 498
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->o:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    new-instance v1, Lcom/oplus/camera/timelapsepro/b$13;

    invoke-direct {v1, p0}, Lcom/oplus/camera/timelapsepro/b$13;-><init>(Lcom/oplus/camera/timelapsepro/b;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->setScaleListener(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$b;)V

    .line 520
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->o:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    new-instance v1, Lcom/oplus/camera/timelapsepro/b$14;

    invoke-direct {v1, p0}, Lcom/oplus/camera/timelapsepro/b$14;-><init>(Lcom/oplus/camera/timelapsepro/b;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->setMoveListener(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$a;)V

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->j:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/b;->getScaleLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/timelapsepro/b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic l(Lcom/oplus/camera/timelapsepro/b;)Lcom/oplus/camera/timelapsepro/a/e;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/b;->N:Lcom/oplus/camera/timelapsepro/a/e;

    return-object p0
.end method

.method private l()V
    .locals 4

    const-string v0, "ParameterContainer"

    const-string v1, "initFocusContainer."

    .line 544
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/b;->getScaleLayoutId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->k:Landroid/widget/RelativeLayout;

    .line 547
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->k:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 548
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->k:Landroid/widget/RelativeLayout;

    const v1, 0x7f090305

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->p:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    .line 549
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->k:Landroid/widget/RelativeLayout;

    const v1, 0x7f090062

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/inverse/InverseTextView;

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->y:Lcom/oplus/camera/ui/inverse/InverseTextView;

    .line 550
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->y:Lcom/oplus/camera/ui/inverse/InverseTextView;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/oplus/camera/util/Util;->c(Z)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 551
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->y:Lcom/oplus/camera/ui/inverse/InverseTextView;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v0, v1, v3}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setTextSize(IF)V

    .line 552
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->y:Lcom/oplus/camera/ui/inverse/InverseTextView;

    iget-object v3, p0, Lcom/oplus/camera/timelapsepro/b;->S:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v3}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 554
    iget v0, p0, Lcom/oplus/camera/timelapsepro/b;->D:I

    const/4 v3, 0x4

    if-ne v3, v0, :cond_1

    .line 555
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->y:Lcom/oplus/camera/ui/inverse/InverseTextView;

    iget-boolean v3, p0, Lcom/oplus/camera/timelapsepro/b;->R:Z

    if-eqz v3, :cond_0

    const v3, 0x7f08064d

    goto :goto_0

    :cond_0
    const v3, 0x7f08064e

    :goto_0
    invoke-virtual {v0, v3}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setBackgroundResource(I)V

    .line 558
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->p:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    invoke-direct {p0, v0}, Lcom/oplus/camera/timelapsepro/b;->a(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;)V

    .line 560
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->y:Lcom/oplus/camera/ui/inverse/InverseTextView;

    new-instance v3, Lcom/oplus/camera/timelapsepro/-$$Lambda$b$ovlCsbMe7pXmOu3t-Y-eH-eZzTA;

    invoke-direct {v3, p0}, Lcom/oplus/camera/timelapsepro/-$$Lambda$b$ovlCsbMe7pXmOu3t-Y-eH-eZzTA;-><init>(Lcom/oplus/camera/timelapsepro/b;)V

    invoke-virtual {v0, v3}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 579
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->F:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 580
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->y:Lcom/oplus/camera/ui/inverse/InverseTextView;

    iget-object v3, p0, Lcom/oplus/camera/timelapsepro/b;->O:Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {v3}, Lcom/oplus/camera/timelapsepro/a/e;->g()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setInverseColor(Z)V

    .line 581
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->y:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/inverse/InverseTextView;->a()Z

    move-result v3

    invoke-direct {p0, v0, v3, v2}, Lcom/oplus/camera/timelapsepro/b;->a(Lcom/oplus/camera/ui/inverse/InverseTextView;ZZ)V

    .line 583
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->p:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/b;->O:Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {v2}, Lcom/oplus/camera/timelapsepro/a/e;->n()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->b(I)V

    .line 584
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->p:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->setScaleSpace(I)V

    .line 585
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->p:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/b;->O:Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {v2}, Lcom/oplus/camera/timelapsepro/a/e;->o()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->setValueList(Ljava/util/List;)V

    .line 586
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->p:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/b;->O:Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {v2}, Lcom/oplus/camera/timelapsepro/a/e;->n()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->setCurrentIndex(I)V

    .line 588
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->p:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    new-instance v2, Lcom/oplus/camera/timelapsepro/b$2;

    invoke-direct {v2, p0}, Lcom/oplus/camera/timelapsepro/b$2;-><init>(Lcom/oplus/camera/timelapsepro/b;)V

    invoke-virtual {v0, v2}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->setScaleListener(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$b;)V

    .line 607
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->p:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    new-instance v2, Lcom/oplus/camera/timelapsepro/b$3;

    invoke-direct {v2, p0}, Lcom/oplus/camera/timelapsepro/b$3;-><init>(Lcom/oplus/camera/timelapsepro/b;)V

    invoke-virtual {v0, v2}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->setMoveListener(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$a;)V

    .line 625
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->O:Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {v0}, Lcom/oplus/camera/timelapsepro/a/e;->g()Z

    move-result v0

    if-nez v0, :cond_2

    .line 626
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->p:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->c(Z)V

    .line 627
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->p:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    iget v1, p0, Lcom/oplus/camera/timelapsepro/b;->u:I

    invoke-virtual {v0, v1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->b(I)V

    .line 631
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->k:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/b;->getScaleLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/timelapsepro/b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic lambda$8Eg7xdIZuFH1gRwibIbSBSXdYWc(Lcom/oplus/camera/timelapsepro/b;ILcom/oplus/camera/timelapsepro/a/e;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/timelapsepro/b;->a(ILcom/oplus/camera/timelapsepro/a/e;)V

    return-void
.end method

.method public static synthetic lambda$9uAEfNDaxvrGpPkuCMWZtKuwjkM(Lcom/oplus/camera/timelapsepro/b;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/timelapsepro/b;->b(II)V

    return-void
.end method

.method public static synthetic lambda$Ap44TBEX-Tddfp0NygY42bbbYn4(Lcom/oplus/camera/timelapsepro/b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/b;->c(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$CYQbdzb8AX5XQ0dKf15eQxut9x4(Lcom/oplus/camera/timelapsepro/b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/b;->d(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$YPZHG20aPbfopjBzaNxik_rM3gk(Lcom/oplus/camera/timelapsepro/b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/b;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$ovlCsbMe7pXmOu3t-Y-eH-eZzTA(Lcom/oplus/camera/timelapsepro/b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/timelapsepro/b;->b(Landroid/view/View;)V

    return-void
.end method

.method static synthetic m(Lcom/oplus/camera/timelapsepro/b;)Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/b;->o:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    return-object p0
.end method

.method private m()V
    .locals 4

    const-string v0, "ParameterContainer"

    const-string v1, "initWbContainer."

    .line 635
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/b;->getScaleLayoutId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->l:Landroid/widget/RelativeLayout;

    .line 638
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->l:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 639
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->l:Landroid/widget/RelativeLayout;

    const v1, 0x7f090305

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->q:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    .line 640
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->l:Landroid/widget/RelativeLayout;

    const v1, 0x7f090062

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/inverse/InverseTextView;

    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->z:Lcom/oplus/camera/ui/inverse/InverseTextView;

    .line 641
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->z:Lcom/oplus/camera/ui/inverse/InverseTextView;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/oplus/camera/util/Util;->c(Z)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 642
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->z:Lcom/oplus/camera/ui/inverse/InverseTextView;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v0, v1, v3}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setTextSize(IF)V

    .line 643
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->z:Lcom/oplus/camera/ui/inverse/InverseTextView;

    iget-object v3, p0, Lcom/oplus/camera/timelapsepro/b;->S:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v3}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 645
    iget v0, p0, Lcom/oplus/camera/timelapsepro/b;->D:I

    const/4 v3, 0x4

    if-ne v3, v0, :cond_1

    .line 646
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->z:Lcom/oplus/camera/ui/inverse/InverseTextView;

    iget-boolean v3, p0, Lcom/oplus/camera/timelapsepro/b;->R:Z

    if-eqz v3, :cond_0

    const v3, 0x7f08064d

    goto :goto_0

    :cond_0
    const v3, 0x7f08064e

    :goto_0
    invoke-virtual {v0, v3}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setBackgroundResource(I)V

    .line 649
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->q:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    invoke-direct {p0, v0}, Lcom/oplus/camera/timelapsepro/b;->a(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;)V

    .line 651
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->z:Lcom/oplus/camera/ui/inverse/InverseTextView;

    new-instance v3, Lcom/oplus/camera/timelapsepro/-$$Lambda$b$YPZHG20aPbfopjBzaNxik_rM3gk;

    invoke-direct {v3, p0}, Lcom/oplus/camera/timelapsepro/-$$Lambda$b$YPZHG20aPbfopjBzaNxik_rM3gk;-><init>(Lcom/oplus/camera/timelapsepro/b;)V

    invoke-virtual {v0, v3}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 670
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->F:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 671
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->z:Lcom/oplus/camera/ui/inverse/InverseTextView;

    iget-object v3, p0, Lcom/oplus/camera/timelapsepro/b;->P:Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {v3}, Lcom/oplus/camera/timelapsepro/a/e;->g()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setInverseColor(Z)V

    .line 672
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->z:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/inverse/InverseTextView;->a()Z

    move-result v3

    invoke-direct {p0, v0, v3, v2}, Lcom/oplus/camera/timelapsepro/b;->a(Lcom/oplus/camera/ui/inverse/InverseTextView;ZZ)V

    .line 674
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->q:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/b;->P:Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {v2}, Lcom/oplus/camera/timelapsepro/a/e;->n()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->b(I)V

    .line 675
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->q:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->setScaleSpace(I)V

    .line 676
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->q:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/b;->P:Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {v2}, Lcom/oplus/camera/timelapsepro/a/e;->o()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->setValueList(Ljava/util/List;)V

    .line 677
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->q:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/b;->P:Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {v2}, Lcom/oplus/camera/timelapsepro/a/e;->n()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->setCurrentIndex(I)V

    .line 679
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->q:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    new-instance v2, Lcom/oplus/camera/timelapsepro/b$4;

    invoke-direct {v2, p0}, Lcom/oplus/camera/timelapsepro/b$4;-><init>(Lcom/oplus/camera/timelapsepro/b;)V

    invoke-virtual {v0, v2}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->setScaleListener(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$b;)V

    .line 699
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->q:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    new-instance v2, Lcom/oplus/camera/timelapsepro/b$5;

    invoke-direct {v2, p0}, Lcom/oplus/camera/timelapsepro/b$5;-><init>(Lcom/oplus/camera/timelapsepro/b;)V

    invoke-virtual {v0, v2}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->setMoveListener(Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar$a;)V

    .line 717
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->P:Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {v0}, Lcom/oplus/camera/timelapsepro/a/e;->g()Z

    move-result v0

    if-nez v0, :cond_2

    .line 718
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->q:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->c(Z)V

    .line 719
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->q:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    iget v1, p0, Lcom/oplus/camera/timelapsepro/b;->v:I

    invoke-virtual {v0, v1}, Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;->b(I)V

    .line 723
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->l:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/b;->getScaleLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/timelapsepro/b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic n(Lcom/oplus/camera/timelapsepro/b;)Lcom/oplus/camera/timelapsepro/a/e;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/b;->O:Lcom/oplus/camera/timelapsepro/a/e;

    return-object p0
.end method

.method private n()V
    .locals 2

    .line 831
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->g:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 832
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/b;->f:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    .line 833
    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/16 v0, 0xa

    .line 834
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v0, 0x9

    .line 835
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v0, 0xb

    .line 836
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 837
    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    return-void
.end method

.method static synthetic o(Lcom/oplus/camera/timelapsepro/b;)Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/b;->p:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    return-object p0
.end method

.method private o()V
    .locals 5

    .line 866
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->F:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->K:Lcom/oplus/camera/timelapsepro/a/e;

    if-nez v0, :cond_0

    goto :goto_4

    :cond_0
    const/4 v0, 0x1

    move v1, v0

    move v2, v1

    .line 871
    :goto_0
    iget-object v3, p0, Lcom/oplus/camera/timelapsepro/b;->F:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    const/4 v2, 0x3

    if-ne v2, v1, :cond_1

    .line 873
    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/b;->F:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {v2}, Lcom/oplus/camera/timelapsepro/a/e;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/b;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10013b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    .line 875
    :cond_1
    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/b;->F:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {v2}, Lcom/oplus/camera/timelapsepro/a/e;->g()Z

    move-result v2

    :goto_1
    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 883
    :cond_3
    :goto_2
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/b;->K:Lcom/oplus/camera/timelapsepro/a/e;

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0, v0}, Lcom/oplus/camera/timelapsepro/a/e;->b(Z)V

    :cond_5
    :goto_4
    return-void
.end method

.method static synthetic p(Lcom/oplus/camera/timelapsepro/b;)Lcom/oplus/camera/ui/inverse/InverseTextView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/b;->y:Lcom/oplus/camera/ui/inverse/InverseTextView;

    return-object p0
.end method

.method private p()V
    .locals 3

    .line 887
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->F:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->N:Lcom/oplus/camera/timelapsepro/a/e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->L:Lcom/oplus/camera/timelapsepro/a/e;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/b;->M:Lcom/oplus/camera/timelapsepro/a/e;

    if-nez v1, :cond_0

    goto :goto_0

    .line 894
    :cond_0
    invoke-virtual {v0}, Lcom/oplus/camera/timelapsepro/a/e;->g()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->M:Lcom/oplus/camera/timelapsepro/a/e;

    .line 895
    invoke-virtual {v0}, Lcom/oplus/camera/timelapsepro/a/e;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 896
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->N:Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {v0}, Lcom/oplus/camera/timelapsepro/a/e;->b()V

    .line 897
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->N:Lcom/oplus/camera/timelapsepro/a/e;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Lcom/oplus/camera/timelapsepro/a/e;->a(Ljava/lang/String;)V

    .line 898
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->N:Lcom/oplus/camera/timelapsepro/a/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/timelapsepro/a/e;->b(Z)V

    .line 900
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->N:Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {v0}, Lcom/oplus/camera/timelapsepro/a/e;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/b;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10013b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/timelapsepro/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 902
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->N:Lcom/oplus/camera/timelapsepro/a/e;

    iget v1, p0, Lcom/oplus/camera/timelapsepro/b;->C:I

    invoke-virtual {v0, v1}, Lcom/oplus/camera/timelapsepro/a/e;->a(I)V

    .line 903
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/b;->N:Lcom/oplus/camera/timelapsepro/a/e;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oplus/camera/timelapsepro/a/e;->b(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic q(Lcom/oplus/camera/timelapsepro/b;)Lcom/oplus/camera/timelapsepro/a/e;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/b;->P:Lcom/oplus/camera/timelapsepro/a/e;

    return-object p0
.end method

.method private q()V
    .locals 0

    .line 1361
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/b;->A:Lcom/oplus/camera/timelapsepro/b$a;

    if-eqz p0, :cond_0

    .line 1362
    invoke-interface {p0}, Lcom/oplus/camera/timelapsepro/b$a;->a()V

    :cond_0
    return-void
.end method

.method static synthetic r(Lcom/oplus/camera/timelapsepro/b;)Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/b;->q:Lcom/oplus/camera/timelapsepro/TimeLapseProParamScaleBar;

    return-object p0
.end method

.method static synthetic s(Lcom/oplus/camera/timelapsepro/b;)Lcom/oplus/camera/ui/inverse/InverseTextView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/b;->z:Lcom/oplus/camera/ui/inverse/InverseTextView;

    return-object p0
.end method

.method static synthetic t(Lcom/oplus/camera/timelapsepro/b;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/oplus/camera/timelapsepro/b;->D:I

    return p0
.end method

.method static synthetic u(Lcom/oplus/camera/timelapsepro/b;)Landroidx/recyclerview/widget/COUIRecyclerView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/b;->f:Landroidx/recyclerview/widget/COUIRecyclerView;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "ParameterContainer"

    const-string v1, "clearScales."

    .line 754
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->h:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 757
    invoke-virtual {p0, v0}, Lcom/oplus/camera/timelapsepro/b;->removeView(Landroid/view/View;)V

    .line 758
    iput-object v1, p0, Lcom/oplus/camera/timelapsepro/b;->h:Landroid/widget/RelativeLayout;

    .line 761
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->i:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 762
    invoke-virtual {p0, v0}, Lcom/oplus/camera/timelapsepro/b;->removeView(Landroid/view/View;)V

    .line 763
    iput-object v1, p0, Lcom/oplus/camera/timelapsepro/b;->i:Landroid/widget/RelativeLayout;

    .line 766
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->j:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 767
    invoke-virtual {p0, v0}, Lcom/oplus/camera/timelapsepro/b;->removeView(Landroid/view/View;)V

    .line 768
    iput-object v1, p0, Lcom/oplus/camera/timelapsepro/b;->j:Landroid/widget/RelativeLayout;

    .line 771
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->k:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    .line 772
    invoke-virtual {p0, v0}, Lcom/oplus/camera/timelapsepro/b;->removeView(Landroid/view/View;)V

    .line 773
    iput-object v1, p0, Lcom/oplus/camera/timelapsepro/b;->k:Landroid/widget/RelativeLayout;

    .line 776
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->l:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_4

    .line 777
    invoke-virtual {p0, v0}, Lcom/oplus/camera/timelapsepro/b;->removeView(Landroid/view/View;)V

    .line 778
    iput-object v1, p0, Lcom/oplus/camera/timelapsepro/b;->l:Landroid/widget/RelativeLayout;

    :cond_4
    return-void
.end method

.method public a(J)V
    .locals 4

    .line 1414
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->M:Lcom/oplus/camera/timelapsepro/a/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/timelapsepro/a/e;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1416
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->M:Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {v0}, Lcom/oplus/camera/timelapsepro/a/e;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    cmp-long p1, p1, v0

    if-gtz p1, :cond_0

    .line 1417
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b;->i:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    .line 1418
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/b;->x:Lcom/oplus/camera/ui/inverse/InverseTextView;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/inverse/InverseTextView;->performClick()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1422
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Lcom/oplus/camera/screen/b/a;II)V
    .locals 1

    .line 783
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->d:Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter;

    if-eqz v0, :cond_0

    .line 784
    invoke-virtual {v0, p1, p2, p3}, Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter;->a(Lcom/oplus/camera/screen/b/a;II)V

    .line 787
    :cond_0
    iput p2, p0, Lcom/oplus/camera/timelapsepro/b;->D:I

    .line 788
    iput p3, p0, Lcom/oplus/camera/timelapsepro/b;->E:I

    .line 789
    invoke-virtual {p1}, Lcom/oplus/camera/screen/b/a;->q()Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/camera/timelapsepro/b;->R:Z

    .line 790
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/b;->a()V

    const/4 p1, 0x1

    if-eq p2, p1, :cond_2

    const/4 p1, 0x2

    if-eq p2, p1, :cond_1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_1

    const/4 p1, 0x4

    if-eq p2, p1, :cond_1

    goto :goto_0

    .line 796
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b;->f:Landroidx/recyclerview/widget/COUIRecyclerView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/COUIRecyclerView;->setVerticalFadingEdgeEnabled(Z)V

    .line 797
    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/b;->n()V

    goto :goto_0

    .line 802
    :cond_2
    invoke-direct {p0, p3}, Lcom/oplus/camera/timelapsepro/b;->c(I)V

    .line 803
    iget-object p2, p0, Lcom/oplus/camera/timelapsepro/b;->f:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->setVerticalFadingEdgeEnabled(Z)V

    .line 804
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b;->f:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/b;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f070c14

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->setFadingEdgeLength(I)V

    :goto_0
    return-void
.end method

.method public b()Z
    .locals 0

    .line 862
    iget-boolean p0, p0, Lcom/oplus/camera/timelapsepro/b;->I:Z

    return p0
.end method

.method protected c()V
    .locals 2

    .line 1318
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/b;->removeAllViews()V

    const/4 v0, 0x0

    .line 1320
    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->e:Landroid/content/Context;

    .line 1322
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/b;->f:Landroidx/recyclerview/widget/COUIRecyclerView;

    if-eqz v1, :cond_0

    .line 1323
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 1325
    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/b;->d:Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter;

    if-eqz v1, :cond_0

    .line 1326
    invoke-virtual {v1}, Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter;->a()V

    .line 1327
    iput-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->d:Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter;

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 0

    .line 1333
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/b;->K:Lcom/oplus/camera/timelapsepro/a/e;

    if-eqz p0, :cond_0

    .line 1334
    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/a/e;->h()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public e()V
    .locals 2

    .line 1341
    iget v0, p0, Lcom/oplus/camera/timelapsepro/b;->B:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/b;->F:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1342
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/timelapsepro/a/e;

    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/timelapsepro/b;->a(ILcom/oplus/camera/timelapsepro/a/e;)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    .line 1347
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/b;->F:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/timelapsepro/a/e;

    invoke-direct {p0, v1, v0}, Lcom/oplus/camera/timelapsepro/b;->a(ILcom/oplus/camera/timelapsepro/a/e;)V

    return-void
.end method

.method public g()V
    .locals 0

    .line 1441
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/b;->y:Lcom/oplus/camera/ui/inverse/InverseTextView;

    if-eqz p0, :cond_0

    .line 1442
    invoke-virtual {p0}, Lcom/oplus/camera/ui/inverse/InverseTextView;->performClick()Z

    :cond_0
    return-void
.end method

.method public setParamList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/camera/timelapsepro/a/e;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 841
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 846
    :cond_0
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/b;->F:Ljava/util/List;

    .line 847
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b;->F:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/timelapsepro/a/e;

    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/b;->K:Lcom/oplus/camera/timelapsepro/a/e;

    .line 848
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b;->F:Ljava/util/List;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/timelapsepro/a/e;

    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/b;->L:Lcom/oplus/camera/timelapsepro/a/e;

    .line 849
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b;->F:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/timelapsepro/a/e;

    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/b;->M:Lcom/oplus/camera/timelapsepro/a/e;

    .line 850
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b;->F:Ljava/util/List;

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/timelapsepro/a/e;

    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/b;->N:Lcom/oplus/camera/timelapsepro/a/e;

    .line 851
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b;->F:Ljava/util/List;

    const/4 v1, 0x4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/timelapsepro/a/e;

    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/b;->O:Lcom/oplus/camera/timelapsepro/a/e;

    .line 852
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b;->F:Ljava/util/List;

    const/4 v1, 0x5

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/timelapsepro/a/e;

    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/b;->P:Lcom/oplus/camera/timelapsepro/a/e;

    .line 854
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b;->N:Lcom/oplus/camera/timelapsepro/a/e;

    invoke-virtual {p1}, Lcom/oplus/camera/timelapsepro/a/e;->n()I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/timelapsepro/b;->C:I

    .line 856
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/b;->d:Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter;

    iget-object v1, p0, Lcom/oplus/camera/timelapsepro/b;->F:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/oplus/camera/timelapsepro/adapter/ParamsAdapter;->a(Ljava/util/List;)V

    .line 858
    iput-boolean v0, p0, Lcom/oplus/camera/timelapsepro/b;->I:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setParameterCallback(Lcom/oplus/camera/timelapsepro/b$a;)V
    .locals 0

    .line 1410
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/b;->A:Lcom/oplus/camera/timelapsepro/b$a;

    return-void
.end method
