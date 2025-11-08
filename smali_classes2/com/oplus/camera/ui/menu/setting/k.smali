.class public Lcom/oplus/camera/ui/menu/setting/k;
.super Lcom/oplus/camera/ui/menu/setting/b;
.source "CameraSettingActivityFragment.java"


# static fields
.field private static final f:Z

.field private static final g:Z


# instance fields
.field private A:Lcom/android/ui/menu/CameraSwitchPreference;

.field private B:Lcom/android/ui/menu/CameraSwitchPreference;

.field private C:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

.field private D:Lcom/coui/appcompat/preference/COUIListPreference;

.field private E:Lcom/android/ui/menu/CameraSwitchPreference;

.field private F:Lcom/android/ui/menu/CameraSwitchPreference;

.field private G:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

.field private H:Lcom/coui/appcompat/preference/COUIListPreference;

.field private I:Lcom/android/ui/menu/CameraSwitchPreference;

.field private J:Lcom/android/ui/menu/CameraSwitchPreference;

.field private K:Lcom/android/ui/menu/CameraSwitchPreference;

.field private L:Lcom/android/ui/menu/CameraSwitchPreference;

.field private M:Lcom/android/ui/menu/CameraSwitchPreference;

.field private N:Landroidx/preference/Preference;

.field private O:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

.field private P:Lcom/coui/appcompat/preference/COUIJumpPreference;

.field private Q:Lcom/coui/appcompat/preference/COUIJumpPreference;

.field private R:Landroidx/preference/Preference;

.field private S:Lcom/coui/appcompat/preference/COUIJumpPreference;

.field private T:Lcom/coui/appcompat/preference/COUIJumpPreference;

.field private U:Lcom/android/ui/menu/CameraSwitchPreference;

.field private V:Lcom/coui/appcompat/dialog/app/b;

.field private W:Lcom/coui/appcompat/dialog/app/b;

.field private X:Z

.field private Y:Z

.field private Z:Z

.field private aa:Z

.field private ab:Z

.field private ac:Z

.field private ad:Z

.field private ae:Z

.field private af:Z

.field private ag:Z

.field private ah:Z

.field private ai:Z

.field private aj:Z

.field private ak:Z

.field private al:Z

.field private am:Z

.field private an:Z

.field private ao:Z

.field private ap:Z

.field private aq:Z

.field private ar:Z

.field private as:Z

.field private at:Z

.field private au:Z

.field private av:Z

.field private aw:Landroid/content/BroadcastReceiver;

.field private h:Landroid/widget/Toast;

.field private i:Lcom/oplus/camera/ComboPreferences;

.field private j:Landroidx/preference/PreferenceScreen;

.field private k:Landroidx/preference/Preference;

.field private l:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

.field private m:Lcom/coui/appcompat/preference/COUIJumpPreference;

.field private n:Lcom/coui/appcompat/preference/COUIListPreference;

.field private o:Lcom/android/ui/menu/CameraSwitchPreference;

.field private p:Lcom/android/ui/menu/CameraSwitchPreference;

.field private q:Lcom/android/ui/menu/CameraSwitchPreference;

.field private r:Lcom/android/ui/menu/CameraSwitchPreference;

.field private s:Lcom/android/ui/menu/CameraSwitchPreference;

.field private t:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

.field private u:Lcom/coui/appcompat/preference/COUIListPreference;

.field private v:Lcom/coui/appcompat/preference/COUIJumpPreference;

.field private w:Lcom/android/ui/menu/CameraSwitchPreference;

.field private x:Lcom/android/ui/menu/CameraSwitchPreference;

.field private y:Lcom/android/ui/menu/CameraSwitchPreference;

.field private z:Lcom/android/ui/menu/CameraSwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "oplus.software.video.surround_record_support"

    .line 71
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->h(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/camera/ui/menu/setting/k;->f:Z

    const-string v0, "oplus.software.motor.breathled"

    .line 74
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->h(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/camera/ui/menu/setting/k;->g:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 67
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/b;-><init>()V

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->h:Landroid/widget/Toast;

    .line 93
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->i:Lcom/oplus/camera/ComboPreferences;

    .line 94
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->j:Landroidx/preference/PreferenceScreen;

    .line 95
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->k:Landroidx/preference/Preference;

    .line 98
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->l:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    .line 99
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->m:Lcom/coui/appcompat/preference/COUIJumpPreference;

    .line 100
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->n:Lcom/coui/appcompat/preference/COUIListPreference;

    .line 101
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->o:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 102
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->p:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 103
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->q:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 104
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->r:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 105
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->s:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 108
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->t:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    .line 109
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->u:Lcom/coui/appcompat/preference/COUIListPreference;

    .line 110
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->v:Lcom/coui/appcompat/preference/COUIJumpPreference;

    .line 111
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->w:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 112
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->x:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 113
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->y:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 114
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->z:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 115
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->A:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 116
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->B:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 119
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->C:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    .line 120
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->D:Lcom/coui/appcompat/preference/COUIListPreference;

    .line 121
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->E:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 122
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->F:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 125
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->G:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    .line 126
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->H:Lcom/coui/appcompat/preference/COUIListPreference;

    .line 127
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->I:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 128
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->J:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 129
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->K:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 130
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->L:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 131
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->M:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 134
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->N:Landroidx/preference/Preference;

    .line 137
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->O:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    .line 138
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->P:Lcom/coui/appcompat/preference/COUIJumpPreference;

    .line 139
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->Q:Lcom/coui/appcompat/preference/COUIJumpPreference;

    .line 140
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->R:Landroidx/preference/Preference;

    .line 143
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->S:Lcom/coui/appcompat/preference/COUIJumpPreference;

    .line 144
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->T:Lcom/coui/appcompat/preference/COUIJumpPreference;

    .line 145
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->U:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 147
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->V:Lcom/coui/appcompat/dialog/app/b;

    .line 148
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->W:Lcom/coui/appcompat/dialog/app/b;

    const/4 v0, 0x1

    .line 151
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->X:Z

    .line 152
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->Y:Z

    .line 153
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->Z:Z

    const/4 v1, 0x0

    .line 154
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->aa:Z

    .line 155
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->ab:Z

    .line 156
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->ac:Z

    .line 157
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->ad:Z

    .line 158
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->ae:Z

    .line 159
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->af:Z

    .line 160
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->ag:Z

    .line 161
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->ah:Z

    .line 162
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->ai:Z

    .line 163
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->aj:Z

    .line 164
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->ak:Z

    .line 165
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->al:Z

    .line 166
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->am:Z

    .line 167
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->an:Z

    .line 168
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->ao:Z

    .line 169
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->ap:Z

    .line 170
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->aq:Z

    .line 171
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->ar:Z

    .line 174
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->as:Z

    .line 175
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->at:Z

    .line 176
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->au:Z

    .line 177
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->av:Z

    .line 179
    new-instance v0, Lcom/oplus/camera/ui/menu/setting/k$1;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/menu/setting/k$1;-><init>(Lcom/oplus/camera/ui/menu/setting/k;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->aw:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private A()V
    .locals 2

    const-string v0, "pref_camera_utility_function"

    .line 862
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/k;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->G:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    const-string v0, "pref_volume_key_function_key"

    .line 863
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/k;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIListPreference;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->H:Lcom/coui/appcompat/preference/COUIListPreference;

    const-string v0, "pref_camera_quick_launch_key"

    .line 864
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/k;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->I:Lcom/android/ui/menu/CameraSwitchPreference;

    const-string v0, "pref_camera_countdown_effect_key"

    .line 865
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/k;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->J:Lcom/android/ui/menu/CameraSwitchPreference;

    const-string v0, "pref_qr_code_key"

    .line 866
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/k;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->K:Lcom/android/ui/menu/CameraSwitchPreference;

    const-string v0, "pref_share_and_edit_key"

    .line 867
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/k;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->L:Lcom/android/ui/menu/CameraSwitchPreference;

    const-string v0, "pref_lens_dirty_detection_key"

    .line 868
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/k;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->M:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 870
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->H:Lcom/coui/appcompat/preference/COUIListPreference;

    if-eqz v0, :cond_0

    .line 871
    invoke-virtual {v0, p0}, Lcom/coui/appcompat/preference/COUIListPreference;->a(Landroidx/preference/Preference$b;)V

    .line 874
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->I:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_1

    .line 875
    new-instance v1, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$bOLdBrtJicjws171hwfwTJyz2RU;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$bOLdBrtJicjws171hwfwTJyz2RU;-><init>(Lcom/oplus/camera/ui/menu/setting/k;)V

    invoke-virtual {v0, v1}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Landroidx/preference/Preference$b;)V

    .line 877
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/oplus/camera/util/Util;->ak()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 878
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->I:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/k;->a(Lcom/coui/appcompat/preference/COUISwitchPreference;)V

    .line 882
    :cond_1
    sget-boolean v0, Lcom/oplus/camera/ui/menu/setting/k;->g:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->J:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_2

    .line 883
    new-instance v1, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$bOLdBrtJicjws171hwfwTJyz2RU;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$bOLdBrtJicjws171hwfwTJyz2RU;-><init>(Lcom/oplus/camera/ui/menu/setting/k;)V

    invoke-virtual {v0, v1}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Landroidx/preference/Preference$b;)V

    .line 885
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/oplus/camera/util/Util;->ak()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 886
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->J:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/k;->a(Lcom/coui/appcompat/preference/COUISwitchPreference;)V

    .line 890
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->K:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_3

    .line 891
    new-instance v1, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$bOLdBrtJicjws171hwfwTJyz2RU;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$bOLdBrtJicjws171hwfwTJyz2RU;-><init>(Lcom/oplus/camera/ui/menu/setting/k;)V

    invoke-virtual {v0, v1}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Landroidx/preference/Preference$b;)V

    .line 893
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/oplus/camera/util/Util;->ak()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 894
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->K:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/k;->a(Lcom/coui/appcompat/preference/COUISwitchPreference;)V

    .line 898
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->L:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_4

    .line 899
    new-instance v1, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$bOLdBrtJicjws171hwfwTJyz2RU;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$bOLdBrtJicjws171hwfwTJyz2RU;-><init>(Lcom/oplus/camera/ui/menu/setting/k;)V

    invoke-virtual {v0, v1}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Landroidx/preference/Preference$b;)V

    .line 901
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/oplus/camera/util/Util;->ak()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 902
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->L:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/k;->a(Lcom/coui/appcompat/preference/COUISwitchPreference;)V

    .line 906
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->M:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_5

    .line 907
    new-instance v1, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$bOLdBrtJicjws171hwfwTJyz2RU;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$bOLdBrtJicjws171hwfwTJyz2RU;-><init>(Lcom/oplus/camera/ui/menu/setting/k;)V

    invoke-virtual {v0, v1}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Landroidx/preference/Preference$b;)V

    .line 909
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/oplus/camera/util/Util;->ak()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 910
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->M:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/k;->a(Lcom/coui/appcompat/preference/COUISwitchPreference;)V

    :cond_5
    return-void
.end method

.method private B()V
    .locals 3

    const-string v0, "pref_help_and_feedback_function"

    .line 917
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/k;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->O:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    const-string v0, "pref_restore_key"

    .line 918
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/k;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->N:Landroidx/preference/Preference;

    const-string v0, "pref_help_and_feedback_key"

    .line 919
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/k;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIJumpPreference;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->P:Lcom/coui/appcompat/preference/COUIJumpPreference;

    const-string v0, "pref_about_key"

    .line 920
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/k;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIJumpPreference;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->Q:Lcom/coui/appcompat/preference/COUIJumpPreference;

    const-string v0, "pref_bottom_blank"

    .line 921
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/k;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->R:Landroidx/preference/Preference;

    .line 923
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->N:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    .line 924
    new-instance v1, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$i9w6_UWsvn0wfT-HGFaGYvMaPfM;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$i9w6_UWsvn0wfT-HGFaGYvMaPfM;-><init>(Lcom/oplus/camera/ui/menu/setting/k;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->a(Landroidx/preference/Preference$c;)V

    .line 925
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->N:Landroidx/preference/Preference;

    new-instance v1, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$bOLdBrtJicjws171hwfwTJyz2RU;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$bOLdBrtJicjws171hwfwTJyz2RU;-><init>(Lcom/oplus/camera/ui/menu/setting/k;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->a(Landroidx/preference/Preference$b;)V

    .line 928
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->Q:Lcom/coui/appcompat/preference/COUIJumpPreference;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 929
    new-instance v2, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$i9w6_UWsvn0wfT-HGFaGYvMaPfM;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$i9w6_UWsvn0wfT-HGFaGYvMaPfM;-><init>(Lcom/oplus/camera/ui/menu/setting/k;)V

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/preference/COUIJumpPreference;->a(Landroidx/preference/Preference$c;)V

    .line 931
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/oplus/camera/util/Util;->ak()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 932
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->Q:Lcom/coui/appcompat/preference/COUIJumpPreference;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUIJumpPreference;->b(Landroid/graphics/drawable/Drawable;)V

    .line 936
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->P:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-eqz v0, :cond_3

    .line 937
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/k;->getActivity()Landroidx/fragment/app/c;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/menu/setting/CameraSettingActivity;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingActivity;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 938
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->P:Lcom/coui/appcompat/preference/COUIJumpPreference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/preference/COUIJumpPreference;->a(Z)V

    .line 941
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->P:Lcom/coui/appcompat/preference/COUIJumpPreference;

    new-instance v2, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$i9w6_UWsvn0wfT-HGFaGYvMaPfM;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$i9w6_UWsvn0wfT-HGFaGYvMaPfM;-><init>(Lcom/oplus/camera/ui/menu/setting/k;)V

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/preference/COUIJumpPreference;->a(Landroidx/preference/Preference$c;)V

    .line 942
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->P:Lcom/coui/appcompat/preference/COUIJumpPreference;

    new-instance v2, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$bOLdBrtJicjws171hwfwTJyz2RU;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$bOLdBrtJicjws171hwfwTJyz2RU;-><init>(Lcom/oplus/camera/ui/menu/setting/k;)V

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/preference/COUIJumpPreference;->a(Landroidx/preference/Preference$b;)V

    .line 944
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/oplus/camera/util/Util;->ak()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 945
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/k;->P:Lcom/coui/appcompat/preference/COUIJumpPreference;

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/preference/COUIJumpPreference;->b(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method private C()V
    .locals 9

    .line 951
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->m:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-eqz v0, :cond_1

    .line 952
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/k;->D()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f10038b

    goto :goto_0

    :cond_0
    const v1, 0x7f100392

    .line 953
    :goto_0
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/menu/setting/k;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 952
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUIJumpPreference;->d(Ljava/lang/CharSequence;)V

    .line 956
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->n:Lcom/coui/appcompat/preference/COUIListPreference;

    const-string v1, "off"

    if-eqz v0, :cond_3

    .line 957
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->i:Lcom/oplus/camera/ComboPreferences;

    const-string v2, "pref_camera_line_photo"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 958
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->n:Lcom/coui/appcompat/preference/COUIListPreference;

    if-nez v0, :cond_2

    const-string v3, ""

    goto :goto_1

    :cond_2
    move-object v3, v0

    :goto_1
    invoke-static {v2, v3}, Lcom/oplus/camera/ui/menu/setting/k;->c(Landroidx/preference/Preference;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 960
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/k;->n:Lcom/coui/appcompat/preference/COUIListPreference;

    invoke-virtual {v3, v2}, Lcom/coui/appcompat/preference/COUIListPreference;->c(Ljava/lang/CharSequence;)V

    .line 961
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->n:Lcom/coui/appcompat/preference/COUIListPreference;

    invoke-virtual {v2, v0}, Lcom/coui/appcompat/preference/COUIListPreference;->a(Ljava/lang/String;)V

    .line 964
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->o:Lcom/android/ui/menu/CameraSwitchPreference;

    const-string v2, "on"

    if-eqz v0, :cond_4

    .line 965
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/k;->i:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/ui/menu/CameraSwitchPreference;->B()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v1}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 966
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/k;->o:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Z)V

    .line 969
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->p:Lcom/android/ui/menu/CameraSwitchPreference;

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    .line 970
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->i:Lcom/oplus/camera/ComboPreferences;

    const-string v4, "pref_mirror_key"

    invoke-virtual {v0, v4, v1}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 971
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/setting/k;->p:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-virtual {v4, v0}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Z)V

    .line 974
    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->q:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_6

    .line 975
    invoke-virtual {v0}, Lcom/android/ui/menu/CameraSwitchPreference;->L()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v4, p0, Lcom/oplus/camera/ui/menu/setting/k;->q:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v4}, Lcom/android/ui/menu/CameraSwitchPreference;->B()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 976
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/setting/k;->q:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v4, v0}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Z)V

    .line 979
    :cond_6
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->r:Lcom/android/ui/menu/CameraSwitchPreference;

    const/4 v4, 0x0

    if-eqz v0, :cond_8

    .line 980
    invoke-virtual {v0}, Lcom/android/ui/menu/CameraSwitchPreference;->L()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v5, p0, Lcom/oplus/camera/ui/menu/setting/k;->r:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 981
    invoke-virtual {v5}, Lcom/android/ui/menu/CameraSwitchPreference;->B()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 982
    iget-object v5, p0, Lcom/oplus/camera/ui/menu/setting/k;->r:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/k;->getActivity()Landroidx/fragment/app/c;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->x(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v3

    goto :goto_2

    :cond_7
    move v0, v4

    :goto_2
    invoke-virtual {v5, v0}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Z)V

    .line 985
    :cond_8
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->U:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_9

    .line 986
    invoke-virtual {v0}, Lcom/android/ui/menu/CameraSwitchPreference;->L()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v5, p0, Lcom/oplus/camera/ui/menu/setting/k;->U:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v5}, Lcom/android/ui/menu/CameraSwitchPreference;->B()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f1001b1

    .line 987
    invoke-virtual {p0, v6}, Lcom/oplus/camera/ui/menu/setting/k;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 986
    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 988
    iget-object v5, p0, Lcom/oplus/camera/ui/menu/setting/k;->U:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v5, v0}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Z)V

    .line 991
    :cond_9
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->s:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_e

    .line 992
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->l:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    if-eqz v0, :cond_c

    .line 993
    invoke-static {v4}, Lcom/oplus/camera/Storage;->b(Z)Z

    move-result v0

    if-nez v0, :cond_a

    .line 994
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->l:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/k;->s:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->d(Landroidx/preference/Preference;)Z

    return-void

    .line 997
    :cond_a
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->l:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    const-string v5, "pref_camera_storage_key"

    invoke-virtual {v0, v5}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->d(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_b

    .line 998
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->s:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v0, v3}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Z)V

    .line 999
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->l:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    iget-object v5, p0, Lcom/oplus/camera/ui/menu/setting/k;->s:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v0, v5}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->c(Landroidx/preference/Preference;)Z

    .line 1002
    :cond_b
    invoke-static {}, Lcom/oplus/camera/util/Util;->ac()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1003
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->s:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v0, v4}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Z)V

    .line 1004
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/k;->s:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ui/menu/CameraSwitchPreference;->c(Ljava/lang/Object;)V

    return-void

    .line 1009
    :cond_c
    invoke-static {v3}, Lcom/oplus/camera/Storage;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_d

    const-wide/high16 v5, 0x4020000000000000L    # 8.0

    .line 1010
    invoke-static {}, Lcom/oplus/camera/Storage;->g()D

    move-result-wide v7

    cmpl-double v0, v5, v7

    if-lez v0, :cond_d

    .line 1011
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->s:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/ui/menu/CameraSwitchPreference;->c(Ljava/lang/Object;)V

    goto :goto_3

    .line 1013
    :cond_d
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->s:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/ui/menu/CameraSwitchPreference;->c(Ljava/lang/Object;)V

    .line 1016
    :goto_3
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->s:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v0}, Lcom/android/ui/menu/CameraSwitchPreference;->L()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/k;->s:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v3}, Lcom/android/ui/menu/CameraSwitchPreference;->B()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1019
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/k;->s:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Z)V

    :cond_e
    return-void
.end method

.method private D()Z
    .locals 2

    .line 1024
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/k;->i:Lcom/oplus/camera/ComboPreferences;

    const-string v0, "pref_watermark_function_key"

    const-string v1, "off"

    .line 1025
    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    .line 1024
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private E()V
    .locals 0

    .line 1029
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/k;->L()V

    .line 1030
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/k;->M()V

    .line 1031
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/k;->Y()V

    .line 1032
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/k;->W()V

    .line 1033
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/k;->T()V

    .line 1034
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/k;->U()V

    .line 1035
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/k;->V()V

    return-void
.end method

.method private F()V
    .locals 0

    .line 1039
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/k;->Q()V

    .line 1040
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/k;->Z()V

    .line 1041
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/k;->ab()V

    return-void
.end method

.method private G()V
    .locals 0

    .line 1045
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/k;->K()V

    .line 1046
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/k;->J()V

    .line 1047
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/k;->O()V

    .line 1048
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/k;->P()V

    .line 1049
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/k;->I()V

    .line 1050
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/k;->H()V

    return-void
.end method

.method private H()V
    .locals 3

    .line 1054
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->M:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_0

    .line 1055
    invoke-virtual {v0}, Lcom/android/ui/menu/CameraSwitchPreference;->L()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->M:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 1056
    invoke-virtual {v1}, Lcom/android/ui/menu/CameraSwitchPreference;->B()Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    .line 1055
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1057
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/k;->M:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Z)V

    :cond_0
    return-void
.end method

.method private I()V
    .locals 3

    .line 1062
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->L:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_1

    const-string v0, "com.oplus.share.edit.support"

    .line 1063
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1064
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->L:Lcom/android/ui/menu/CameraSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Z)V

    .line 1065
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/k;->L:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {p0, v1}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Z)V

    goto :goto_0

    .line 1067
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->L:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v0}, Lcom/android/ui/menu/CameraSwitchPreference;->L()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->L:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v1}, Lcom/android/ui/menu/CameraSwitchPreference;->B()Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1069
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/k;->L:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private J()V
    .locals 3

    .line 1075
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->I:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_2

    .line 1076
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/k;->getActivity()Landroidx/fragment/app/c;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1080
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "com.oplus.camera quick launch"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1083
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/k;->I:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Z)V

    :cond_2
    return-void
.end method

.method private K()V
    .locals 3

    .line 1088
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->H:Lcom/coui/appcompat/preference/COUIListPreference;

    if-eqz v0, :cond_0

    .line 1089
    invoke-virtual {v0}, Lcom/coui/appcompat/preference/COUIListPreference;->L()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->H:Lcom/coui/appcompat/preference/COUIListPreference;

    invoke-virtual {v1}, Lcom/coui/appcompat/preference/COUIListPreference;->B()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1004ff

    .line 1090
    invoke-virtual {p0, v2}, Lcom/oplus/camera/ui/menu/setting/k;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1089
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1091
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->H:Lcom/coui/appcompat/preference/COUIListPreference;

    invoke-static {v1, v0}, Lcom/oplus/camera/ui/menu/setting/k;->c(Landroidx/preference/Preference;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1092
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->H:Lcom/coui/appcompat/preference/COUIListPreference;

    invoke-virtual {v2, v1}, Lcom/coui/appcompat/preference/COUIListPreference;->c(Ljava/lang/CharSequence;)V

    .line 1093
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/k;->H:Lcom/coui/appcompat/preference/COUIListPreference;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/preference/COUIListPreference;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private L()V
    .locals 3

    .line 1099
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->u:Lcom/coui/appcompat/preference/COUIListPreference;

    if-eqz v0, :cond_0

    .line 1100
    invoke-virtual {v0}, Lcom/coui/appcompat/preference/COUIListPreference;->L()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->u:Lcom/coui/appcompat/preference/COUIListPreference;

    invoke-virtual {v1}, Lcom/coui/appcompat/preference/COUIListPreference;->B()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f10035a

    .line 1101
    invoke-virtual {p0, v2}, Lcom/oplus/camera/ui/menu/setting/k;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1100
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1102
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->u:Lcom/coui/appcompat/preference/COUIListPreference;

    invoke-static {v1, v0}, Lcom/oplus/camera/ui/menu/setting/k;->c(Landroidx/preference/Preference;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1103
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->u:Lcom/coui/appcompat/preference/COUIListPreference;

    invoke-virtual {v2, v1}, Lcom/coui/appcompat/preference/COUIListPreference;->c(Ljava/lang/CharSequence;)V

    .line 1104
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/k;->u:Lcom/coui/appcompat/preference/COUIListPreference;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/preference/COUIListPreference;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private M()V
    .locals 3

    .line 1109
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->w:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_0

    .line 1110
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->i:Lcom/oplus/camera/ComboPreferences;

    iget v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->d:I

    const-string v2, "pref_camera_hdr_mode_key"

    .line 1111
    invoke-static {v2, v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1110
    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1112
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/k;->w:Lcom/android/ui/menu/CameraSwitchPreference;

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Z)V

    :cond_0
    return-void
.end method

.method private N()V
    .locals 0

    return-void
.end method

.method private O()V
    .locals 3

    .line 1121
    sget-boolean v0, Lcom/oplus/camera/ui/menu/setting/k;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->J:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_0

    .line 1122
    invoke-virtual {v0}, Lcom/android/ui/menu/CameraSwitchPreference;->L()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->J:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v1}, Lcom/android/ui/menu/CameraSwitchPreference;->B()Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1124
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/k;->J:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Z)V

    :cond_0
    return-void
.end method

.method private P()V
    .locals 3

    .line 1129
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->K:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_1

    .line 1130
    invoke-virtual {v0}, Lcom/android/ui/menu/CameraSwitchPreference;->L()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->K:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v1}, Lcom/android/ui/menu/CameraSwitchPreference;->B()Ljava/lang/String;

    move-result-object v1

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1131
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->K:Lcom/android/ui/menu/CameraSwitchPreference;

    const-string v2, "on"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Z)V

    .line 1132
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->ak:Z

    if-eqz v0, :cond_0

    const-string v0, "com.oplus.feature.qr.code.enable.support"

    .line 1133
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->au:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1135
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/k;->K:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {p0, v0}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Z)V

    :cond_1
    return-void
.end method

.method private Q()V
    .locals 3

    .line 1140
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->D:Lcom/coui/appcompat/preference/COUIListPreference;

    if-eqz v0, :cond_1

    .line 1141
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->i:Lcom/oplus/camera/ComboPreferences;

    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/k;->u()Ljava/lang/String;

    move-result-object v1

    const-string v2, "all_around"

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "normal"

    .line 1143
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1144
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->D:Lcom/coui/appcompat/preference/COUIListPreference;

    const v2, 0x7f1004d4

    invoke-virtual {p0, v2}, Lcom/oplus/camera/ui/menu/setting/k;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/preference/COUIListPreference;->c(Ljava/lang/CharSequence;)V

    .line 1145
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->D:Lcom/coui/appcompat/preference/COUIListPreference;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUIListPreference;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1147
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->D:Lcom/coui/appcompat/preference/COUIListPreference;

    const v1, 0x7f10048d

    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/menu/setting/k;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUIListPreference;->c(Ljava/lang/CharSequence;)V

    .line 1148
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->D:Lcom/coui/appcompat/preference/COUIListPreference;

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/preference/COUIListPreference;->a(Ljava/lang/String;)V

    .line 1151
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/k;->D:Lcom/coui/appcompat/preference/COUIListPreference;

    sget-boolean v0, Lcom/oplus/camera/ui/menu/setting/k;->f:Z

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/preference/COUIListPreference;->a(Z)V

    :cond_1
    return-void
.end method

.method private R()V
    .locals 4

    const-string v0, "SettingActivityFragment"

    const-string v1, "addOrRemoveCameraPreference()"

    .line 1160
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->l:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1163
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->s:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_1

    .line 1164
    invoke-static {v1}, Lcom/oplus/camera/Storage;->b(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1165
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->l:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->s:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->d(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 1166
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->l:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    const-string v2, "pref_camera_storage_key"

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->d(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1167
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->l:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->s:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->c(Landroidx/preference/Preference;)Z

    .line 1172
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->t:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    const-string v2, "com.oplus.face.rectify.support"

    if-eqz v0, :cond_7

    const-string v0, "com.oplus.quick.video.support"

    .line 1173
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1174
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->t:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/k;->u:Lcom/coui/appcompat/preference/COUIListPreference;

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->d(Landroidx/preference/Preference;)Z

    .line 1177
    :cond_2
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1178
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->t:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/k;->x:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->d(Landroidx/preference/Preference;)Z

    :cond_3
    const-string v0, "com.oplus.feature.super.clear.portrait.support"

    .line 1181
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1182
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->t:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/k;->y:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->d(Landroidx/preference/Preference;)Z

    :cond_4
    const-string v0, "com.oplus.feature.pi.ai.support"

    .line 1185
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1186
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->t:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/k;->z:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->d(Landroidx/preference/Preference;)Z

    .line 1189
    :cond_5
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->ab:Z

    if-nez v0, :cond_6

    .line 1190
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->t:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/k;->A:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->d(Landroidx/preference/Preference;)Z

    .line 1193
    :cond_6
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->aa:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->B:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_7

    .line 1194
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/k;->t:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    invoke-virtual {v3, v0}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->d(Landroidx/preference/Preference;)Z

    .line 1198
    :cond_7
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->C:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    if-eqz v0, :cond_c

    const-string v0, "com.oplus.track.focus.support"

    .line 1199
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1200
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->C:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/k;->E:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->d(Landroidx/preference/Preference;)Z

    .line 1203
    :cond_8
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->C:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/k;->n()Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "pref_sound_types_key_rear"

    goto :goto_1

    :cond_9
    const-string v3, "pref_sound_types_key_front"

    :goto_1
    invoke-virtual {v0, v3}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->c(Ljava/lang/CharSequence;)Z

    .line 1206
    sget-boolean v0, Lcom/oplus/camera/ui/menu/setting/k;->f:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->D:Lcom/coui/appcompat/preference/COUIListPreference;

    if-eqz v0, :cond_a

    .line 1207
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/k;->C:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    invoke-virtual {v3, v0}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->d(Landroidx/preference/Preference;)Z

    .line 1210
    :cond_a
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->am:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->F:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_b

    .line 1211
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/k;->C:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    invoke-virtual {v3, v0}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->d(Landroidx/preference/Preference;)Z

    .line 1214
    :cond_b
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->t:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    if-eqz v0, :cond_c

    .line 1215
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->x:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->d(Landroidx/preference/Preference;)Z

    .line 1219
    :cond_c
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->G:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    if-eqz v0, :cond_10

    .line 1220
    iget-boolean v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->Y:Z

    if-nez v2, :cond_d

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->M:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v2, :cond_d

    .line 1221
    invoke-virtual {v0, v2}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->d(Landroidx/preference/Preference;)Z

    .line 1224
    :cond_d
    sget-boolean v0, Lcom/oplus/camera/ui/menu/setting/k;->g:Z

    if-eqz v0, :cond_e

    .line 1225
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->G:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->J:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->c(Landroidx/preference/Preference;)Z

    goto :goto_2

    .line 1227
    :cond_e
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->G:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->J:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->d(Landroidx/preference/Preference;)Z

    :goto_2
    const-string v0, "com.oplus.share.edit.support"

    .line 1230
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->L:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_f

    .line 1232
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->G:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    invoke-virtual {v2, v0}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->d(Landroidx/preference/Preference;)Z

    .line 1235
    :cond_f
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->an:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->I:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_10

    .line 1236
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->G:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    invoke-virtual {v2, v0}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->d(Landroidx/preference/Preference;)Z

    .line 1240
    :cond_10
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->O:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    if-eqz v0, :cond_11

    .line 1241
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->P:Lcom/coui/appcompat/preference/COUIJumpPreference;

    invoke-static {v0, v2}, Lcom/oplus/camera/l/c;->a(Lcom/coui/appcompat/preference/COUIPreferenceCategory;Lcom/coui/appcompat/preference/COUIJumpPreference;)V

    :cond_11
    const-string v0, "com.oplus.storage.save.to.external.support"

    .line 1244
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1245
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/k;->o()Landroid/content/Context;

    move-result-object v0

    const-string v2, "com.coloros.movetosdcard"

    invoke-static {v0, v2}, Lcom/oplus/camera/util/Util;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->i:Lcom/oplus/camera/ComboPreferences;

    const-string v2, "pref_storage_save_to_external"

    .line 1246
    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_12

    .line 1247
    invoke-static {v1}, Lcom/oplus/camera/Storage;->b(Z)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1248
    :cond_12
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->j:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->k:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->d(Landroidx/preference/Preference;)Z

    .line 1251
    :cond_13
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->l:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/setting/k;->a(Lcom/coui/appcompat/preference/COUIPreferenceCategory;)V

    .line 1252
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->t:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/setting/k;->a(Lcom/coui/appcompat/preference/COUIPreferenceCategory;)V

    .line 1253
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->C:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/setting/k;->a(Lcom/coui/appcompat/preference/COUIPreferenceCategory;)V

    .line 1254
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->G:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/setting/k;->a(Lcom/coui/appcompat/preference/COUIPreferenceCategory;)V

    .line 1255
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->O:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/setting/k;->a(Lcom/coui/appcompat/preference/COUIPreferenceCategory;)V

    return-void
.end method

.method private S()V
    .locals 2

    const-string v0, "com.oplus.feature.quick.launch.support"

    .line 1259
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.oplus.feature.quick.launch.support.mode"

    .line 1260
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x14

    .line 1262
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 1263
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->I:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/k;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f10041f

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private T()V
    .locals 3

    .line 1282
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->z:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_2

    .line 1283
    invoke-virtual {v0}, Lcom/android/ui/menu/CameraSwitchPreference;->L()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->z:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v1}, Lcom/android/ui/menu/CameraSwitchPreference;->B()Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1284
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->z:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Z)V

    .line 1285
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->af:Z

    if-eqz v0, :cond_1

    .line 1286
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/k;->getActivity()Landroidx/fragment/app/c;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/menu/setting/CameraSettingActivity;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingActivity;->l()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->ac:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->ae:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1287
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->z:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Z)V

    :cond_2
    const-string v0, "com.oplus.feature.pi.ai.support"

    .line 1290
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->i:Lcom/oplus/camera/ComboPreferences;

    if-eqz v0, :cond_3

    .line 1292
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/k;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1002c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_pi_ai_mode_key"

    .line 1291
    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1293
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/k;->i:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {p0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "pref_ai_scene_key"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    return-void
.end method

.method private U()V
    .locals 3

    .line 1298
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->ab:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->A:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_0

    .line 1299
    invoke-virtual {v0}, Lcom/android/ui/menu/CameraSwitchPreference;->L()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->A:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 1300
    invoke-virtual {v1}, Lcom/android/ui/menu/CameraSwitchPreference;->B()Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1301
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/k;->A:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Z)V

    :cond_0
    return-void
.end method

.method private V()V
    .locals 3

    .line 1307
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->B:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_0

    .line 1308
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->i:Lcom/oplus/camera/ComboPreferences;

    const-string v1, "pref_photo_codec_key"

    const-string v2, "JPEG"

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1309
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/k;->B:Lcom/android/ui/menu/CameraSwitchPreference;

    const-string v1, "HEIF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Z)V

    :cond_0
    return-void
.end method

.method private W()V
    .locals 3

    .line 1314
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->y:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_2

    .line 1315
    invoke-virtual {v0}, Lcom/android/ui/menu/CameraSwitchPreference;->L()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->y:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v1}, Lcom/android/ui/menu/CameraSwitchPreference;->B()Ljava/lang/String;

    move-result-object v1

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1316
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->y:Lcom/android/ui/menu/CameraSwitchPreference;

    const-string v2, "on"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Z)V

    .line 1317
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->ag:Z

    if-eqz v0, :cond_1

    .line 1318
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/k;->getActivity()Landroidx/fragment/app/c;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/menu/setting/CameraSettingActivity;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingActivity;->l()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->ac:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->ae:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1319
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/k;->y:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {p0, v0}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Z)V

    :cond_2
    return-void
.end method

.method private X()V
    .locals 4

    .line 1324
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->i:Lcom/oplus/camera/ComboPreferences;

    if-eqz v0, :cond_0

    const-string v0, "com.oplus.face.rectify.config.value"

    .line 1325
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1326
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->i:Lcom/oplus/camera/ComboPreferences;

    const-string v2, "pref_facerectify_set_default_value"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1328
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1329
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/k;->i:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {p0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "pref_face_rectify_key"

    .line 1330
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "1"

    .line 1331
    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1332
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private Y()V
    .locals 3

    .line 1338
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->x:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_2

    .line 1339
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/k;->X()V

    .line 1340
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->x:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v0}, Lcom/android/ui/menu/CameraSwitchPreference;->L()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->x:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 1341
    invoke-virtual {v1}, Lcom/android/ui/menu/CameraSwitchPreference;->B()Ljava/lang/String;

    move-result-object v1

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1342
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->x:Lcom/android/ui/menu/CameraSwitchPreference;

    const-string v2, "on"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Z)V

    .line 1343
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->ah:Z

    if-eqz v0, :cond_1

    .line 1344
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/k;->getActivity()Landroidx/fragment/app/c;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/menu/setting/CameraSettingActivity;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingActivity;->l()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->ac:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->ae:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1345
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/k;->x:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {p0, v0}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Z)V

    :cond_2
    return-void
.end method

.method private Z()V
    .locals 3

    .line 1350
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->E:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_0

    .line 1351
    invoke-virtual {v0}, Lcom/android/ui/menu/CameraSwitchPreference;->L()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->E:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v1}, Lcom/android/ui/menu/CameraSwitchPreference;->B()Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1352
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->E:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Z)V

    .line 1353
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/k;->aa()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/menu/setting/k;)Lcom/oplus/camera/ComboPreferences;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/k;->i:Lcom/oplus/camera/ComboPreferences;

    return-object p0
.end method

.method private a(Landroid/app/Activity;)V
    .locals 3

    .line 1587
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->V:Lcom/coui/appcompat/dialog/app/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/app/b;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1588
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->V:Lcom/coui/appcompat/dialog/app/b;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/app/b;->dismiss()V

    .line 1591
    :cond_0
    new-instance v0, Lcom/coui/appcompat/dialog/app/b$a;

    invoke-direct {v0, p1}, Lcom/coui/appcompat/dialog/app/b$a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 1592
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/app/b$a;->f(I)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object v0

    const v1, 0x7f100381

    .line 1593
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/menu/setting/k;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/oplus/camera/ui/menu/setting/k$6;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/menu/setting/k$6;-><init>(Lcom/oplus/camera/ui/menu/setting/k;)V

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/dialog/app/b$a;->c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/oplus/camera/ui/menu/setting/k$5;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/menu/setting/k$5;-><init>(Lcom/oplus/camera/ui/menu/setting/k;)V

    .line 1602
    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/dialog/app/b$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object v0

    .line 1609
    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/app/b$a;->a()Lcom/coui/appcompat/dialog/app/b;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->V:Lcom/coui/appcompat/dialog/app/b;

    .line 1611
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1612
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/k;->V:Lcom/coui/appcompat/dialog/app/b;

    invoke-virtual {p1}, Lcom/coui/appcompat/dialog/app/b;->show()V

    .line 1613
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/k;->V:Lcom/coui/appcompat/dialog/app/b;

    const/4 v0, -0x3

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/dialog/app/b;->a(I)Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1614
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1615
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/k;->V:Lcom/coui/appcompat/dialog/app/b;

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/dialog/app/b;->a(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/k;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f060082

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method private a(Lcom/coui/appcompat/preference/COUIPreferenceCategory;)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 p0, 0x0

    .line 1270
    :goto_0
    invoke-virtual {p1}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->c()I

    move-result v0

    if-ge p0, v0, :cond_1

    .line 1271
    invoke-virtual {p1, p0}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->j(I)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1273
    invoke-virtual {v0}, Landroidx/preference/Preference;->B()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getSupportSettingMenuKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1274
    invoke-virtual {p1, v0}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->d(Landroidx/preference/Preference;)Z

    add-int/lit8 p0, p0, -0x1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 3

    .line 1700
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1701
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1702
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/k;->getActivity()Landroidx/fragment/app/c;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/menu/setting/CameraSettingActivity;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingActivity;->l()Z

    move-result v1

    const-string v2, "camera_entry_from"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1703
    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->X:Z

    const-string v2, "pref_camera_tap_shutter_key"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1704
    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->Y:Z

    const-string v2, "pref_lens_dirty_detection_key"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1705
    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->Z:Z

    const-string v2, "pref_camera_gesture_shutter_key"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1706
    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->aa:Z

    const-string v2, "pref_photo_codec_key"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1707
    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->ab:Z

    const-string v2, "pref_10bits_heic_encode_key"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1708
    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->ac:Z

    const-string v2, "key_is_capture_mode"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1709
    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->aj:Z

    const-string v2, "pref_assist_gradienter"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1710
    iget v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->d:I

    const-string v2, "pref_camera_id_key"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1711
    iget v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->c:I

    const-string v2, "camera_enter_type"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1712
    iget v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->e:I

    const-string v2, "camera_property_camera_id"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1713
    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->at:Z

    const-string v2, "camera_enter_form_lock_screen"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1714
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->b:Ljava/lang/String;

    const-string v2, "pref_camera_mode_key"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1715
    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->ad:Z

    const-string v2, "key_is_video_mode"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1716
    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->an:Z

    const-string v2, "pref_camera_quick_launch_key"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "camera_sub_setting_from"

    .line 1717
    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1718
    iget-boolean p2, p0, Lcom/oplus/camera/ui/menu/setting/k;->ar:Z

    const-string v1, "allow_location"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "camera_intent_data"

    .line 1719
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1720
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/k;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Z)Z
    .locals 5

    .line 493
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->i:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.oplus.feature.video.3hdr.support"

    .line 495
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "off"

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    const-string v1, "key_video_hdr"

    .line 497
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 500
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->i:Lcom/oplus/camera/ComboPreferences;

    const-string v3, "pref_10bits_heic_encode_key"

    .line 501
    invoke-virtual {v1, v3, v2}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "pref_photo_codec_click_key"

    const-string v3, "pref_photo_codec_key"

    const-string v4, "HEIF"

    if-nez v1, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string v4, "JPEG"

    .line 505
    :goto_0
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 506
    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 509
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 510
    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 518
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p0, 0x1

    return p0

    .line 512
    :cond_3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 513
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/k;->t()V

    const/4 p0, 0x0

    return p0
.end method

.method private aa()V
    .locals 4

    .line 1358
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->E:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_3

    .line 1359
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->i:Lcom/oplus/camera/ComboPreferences;

    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/k;->u()Ljava/lang/String;

    move-result-object v1

    const-string v2, "all_around"

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.oplus.video.60fps.track.focus.support"

    .line 1360
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v2, 0x7f100338

    goto :goto_0

    :cond_0
    const v2, 0x7f100337

    .line 1363
    :goto_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->G()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "normal"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v1, :cond_1

    const v0, 0x7f10033e

    goto :goto_1

    :cond_1
    const v0, 0x7f10033d

    :goto_1
    move v2, v0

    .line 1368
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/k;->E:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {p0, v2}, Lcom/android/ui/menu/CameraSwitchPreference;->f(I)V

    :cond_3
    return-void
.end method

.method private ab()V
    .locals 3

    .line 1373
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->F:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_1

    .line 1374
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->ao:Z

    const-string v1, "H264"

    if-eqz v0, :cond_0

    .line 1375
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->i:Lcom/oplus/camera/ComboPreferences;

    const-string v2, "pref_video_codec_key"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1377
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/k;->F:Lcom/android/ui/menu/CameraSwitchPreference;

    const-string v0, "H265"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Z)V

    :cond_1
    return-void
.end method

.method private ac()V
    .locals 3

    const-string v0, "SettingActivityFragment"

    const-string v1, "releasePreferences"

    .line 1382
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1384
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->s:Lcom/android/ui/menu/CameraSwitchPreference;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v1, "onDestroyView, Storage Dialog dismiss"

    .line 1385
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->s:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v0}, Lcom/android/ui/menu/CameraSwitchPreference;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1388
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->s:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v0}, Lcom/android/ui/menu/CameraSwitchPreference;->f()V

    .line 1391
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->s:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v0}, Lcom/android/ui/menu/CameraSwitchPreference;->d()V

    .line 1392
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->s:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 1395
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->r:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_2

    .line 1396
    invoke-virtual {v0}, Lcom/android/ui/menu/CameraSwitchPreference;->d()V

    .line 1397
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->r:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 1400
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->l:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    if-eqz v0, :cond_3

    .line 1401
    invoke-virtual {v0}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->d()V

    .line 1402
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->l:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    .line 1405
    :cond_3
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->H:Lcom/coui/appcompat/preference/COUIListPreference;

    .line 1406
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->S:Lcom/coui/appcompat/preference/COUIJumpPreference;

    .line 1407
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->T:Lcom/coui/appcompat/preference/COUIJumpPreference;

    .line 1408
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->m:Lcom/coui/appcompat/preference/COUIJumpPreference;

    .line 1409
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->n:Lcom/coui/appcompat/preference/COUIListPreference;

    .line 1410
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->o:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 1411
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->p:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 1412
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->U:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 1413
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->q:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 1414
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->u:Lcom/coui/appcompat/preference/COUIListPreference;

    .line 1416
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->t:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    if-eqz v0, :cond_4

    .line 1417
    invoke-virtual {v0}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->d()V

    .line 1418
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->t:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    .line 1421
    :cond_4
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->J:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 1422
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->z:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 1423
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->y:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 1424
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->v:Lcom/coui/appcompat/preference/COUIJumpPreference;

    .line 1425
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->w:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 1427
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->C:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    if-eqz v0, :cond_5

    .line 1428
    invoke-virtual {v0}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->d()V

    .line 1429
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->C:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    .line 1432
    :cond_5
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->D:Lcom/coui/appcompat/preference/COUIListPreference;

    .line 1434
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->j:Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_6

    .line 1435
    invoke-virtual {v0}, Landroidx/preference/PreferenceScreen;->d()V

    .line 1436
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->j:Landroidx/preference/PreferenceScreen;

    .line 1439
    :cond_6
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->i:Lcom/oplus/camera/ComboPreferences;

    if-eqz v0, :cond_7

    .line 1440
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/k;->o()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ComboPreferences;->a(Landroid/content/Context;)V

    .line 1441
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->i:Lcom/oplus/camera/ComboPreferences;

    .line 1444
    :cond_7
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->N:Landroidx/preference/Preference;

    .line 1446
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->O:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    if-eqz v0, :cond_8

    .line 1447
    invoke-virtual {v0}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->d()V

    .line 1448
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->O:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    .line 1451
    :cond_8
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->P:Lcom/coui/appcompat/preference/COUIJumpPreference;

    .line 1452
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->A:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 1453
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->F:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 1454
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->K:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 1455
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->L:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 1456
    iput-object v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->M:Lcom/android/ui/menu/CameraSwitchPreference;

    return-void
.end method

.method private ad()V
    .locals 5

    .line 1576
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/k;->getActivity()Landroidx/fragment/app/c;

    move-result-object v0

    const-string v1, "com.oplus.vip"

    invoke-static {v0, v1}, Lcom/oplus/camera/util/f;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1577
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/k;->getActivity()Landroidx/fragment/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f10011c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 1578
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/k;->getActivity()Landroidx/fragment/app/c;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/oplus/camera/util/f;->b(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1577
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1580
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/k;->getActivity()Landroidx/fragment/app/c;

    move-result-object p0

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/oplus/camera/util/f;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1582
    :cond_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/camera/l;->b(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method private ae()V
    .locals 4

    .line 1622
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/k;->getActivity()Landroidx/fragment/app/c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1625
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->i:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {v1}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref_lasted_video_codec"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1626
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/k;->af()V

    const v1, 0x7f130002

    const/4 v2, 0x1

    .line 1627
    invoke-static {v0, v1, v2}, Landroidx/preference/j;->a(Landroid/content/Context;IZ)V

    .line 1629
    sget-boolean v0, Lcom/oplus/camera/ui/menu/setting/k;->f:Z

    if-eqz v0, :cond_0

    .line 1630
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/k;->getActivity()Landroidx/fragment/app/c;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/j;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1631
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_video_noise_filter_key"

    const-string v2, "on"

    .line 1632
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1633
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1636
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/k;->q()V

    goto :goto_0

    :cond_1
    const-string p0, "SettingActivityFragment"

    const-string v0, "restore Camera settings failed, due to activity is null!"

    .line 1638
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private af()V
    .locals 3

    const-string v0, "com.oplus.camera quick launch"

    const/4 v1, 0x0

    .line 1643
    invoke-static {v0, v1}, Lcom/oplus/compat/a/a$a;->a(Ljava/lang/String;I)Z

    .line 1644
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->i:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1645
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->H:Lcom/coui/appcompat/preference/COUIListPreference;

    invoke-virtual {v1}, Lcom/coui/appcompat/preference/COUIListPreference;->B()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1646
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->q:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v1}, Lcom/android/ui/menu/CameraSwitchPreference;->B()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1647
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->r:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v1}, Lcom/android/ui/menu/CameraSwitchPreference;->B()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_mirror_key"

    .line 1648
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_lens_dirty_detection_key"

    .line 1649
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_camera_quick_launch_key"

    .line 1650
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_camera_storage_key"

    .line 1651
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_camera_countdown_effect_key"

    .line 1652
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_share_and_edit_key"

    .line 1653
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_camera_tap_shutter_key"

    .line 1654
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_camera_gesture_shutter_key"

    .line 1655
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_camera_assistant_line_key"

    .line 1656
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_long_process_choice_key"

    .line 1657
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_qr_code_key"

    .line 1658
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1659
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->z:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v1}, Lcom/android/ui/menu/CameraSwitchPreference;->B()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1660
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->y:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v1}, Lcom/android/ui/menu/CameraSwitchPreference;->B()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1661
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->x:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v1}, Lcom/android/ui/menu/CameraSwitchPreference;->B()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1662
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->E:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v1}, Lcom/android/ui/menu/CameraSwitchPreference;->B()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_video_codec_key"

    .line 1663
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "pref_slogan_customize_key"

    .line 1664
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "pref_watermark_function_key"

    .line 1665
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "pref_watermark_first_open_key"

    .line 1666
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "pref_watermark_display_info_key"

    .line 1667
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "pref_watermark_author_key"

    .line 1668
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "pref_watermark_position_key"

    .line 1669
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "pref_watermark_size_key"

    .line 1670
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "pref_watermark_makeup_function_key"

    .line 1671
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "pref_raw_key"

    .line 1672
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "pref_photo_codec_key"

    .line 1673
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "pref_photo_codec_backup_key"

    .line 1674
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "pref_photo_codec_click_key"

    .line 1675
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1676
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_sound_types_key_rear"

    .line 1677
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_sound_types_key_front"

    .line 1678
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1679
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->P:Lcom/coui/appcompat/preference/COUIJumpPreference;

    invoke-virtual {v1}, Lcom/coui/appcompat/preference/COUIJumpPreference;->B()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_camera_line_photo"

    .line 1680
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_camera_line_video"

    .line 1681
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_assist_gradienter"

    .line 1682
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_camera_fingerprint_shutter_key"

    .line 1683
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_10bits_heic_encode_key"

    .line 1684
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_10bits_heic_encode_backup_key"

    .line 1685
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_facerectify_set_default_value"

    .line 1686
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_watermark_location"

    .line 1687
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_watermark_phone"

    .line 1688
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_watermark_date_and_time"

    .line 1689
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1690
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/k;->p:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {p0}, Lcom/android/ui/menu/CameraSwitchPreference;->B()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1692
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/ui/menu/setting/k;)Landroidx/preference/Preference;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/k;->k:Landroidx/preference/Preference;

    return-object p0
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1696
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/menu/setting/k;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private b(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "H265"

    goto :goto_0

    :cond_0
    const-string v0, "H264"

    .line 556
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/k;->i:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {p0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "pref_video_codec_key"

    .line 557
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "com.oplus.feature.video.3hdr.support"

    .line 559
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    const-string p1, "key_video_hdr"

    const-string v0, "off"

    .line 561
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 564
    :cond_1
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static synthetic c(Lcom/oplus/camera/ui/menu/setting/k;)Landroidx/preference/PreferenceScreen;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/k;->j:Landroidx/preference/PreferenceScreen;

    return-object p0
.end method

.method private static c(Landroidx/preference/Preference;Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    .line 1746
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1748
    instance-of v0, p0, Landroidx/preference/ListPreference;

    if-eqz v0, :cond_1

    .line 1749
    check-cast p0, Landroidx/preference/ListPreference;

    .line 1750
    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->b(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 1753
    invoke-virtual {p0}, Landroidx/preference/ListPreference;->l()[Ljava/lang/CharSequence;

    move-result-object p0

    aget-object p0, p0, p1

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0

    :cond_1
    return-object p1
.end method

.method private c(Z)V
    .locals 1

    .line 568
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/k;->i:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {p0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-eqz p1, :cond_0

    const-string p1, "on"

    goto :goto_0

    :cond_0
    const-string p1, "off"

    :goto_0
    const-string v0, "pref_camera_hdr_mode_key"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 569
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static synthetic d(Lcom/oplus/camera/ui/menu/setting/k;)Lcom/android/ui/menu/CameraSwitchPreference;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/k;->A:Lcom/android/ui/menu/CameraSwitchPreference;

    return-object p0
.end method

.method static synthetic e(Lcom/oplus/camera/ui/menu/setting/k;)Lcom/android/ui/menu/CameraSwitchPreference;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/k;->B:Lcom/android/ui/menu/CameraSwitchPreference;

    return-object p0
.end method

.method static synthetic f(Lcom/oplus/camera/ui/menu/setting/k;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/k;->ad()V

    return-void
.end method

.method static synthetic g(Lcom/oplus/camera/ui/menu/setting/k;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/k;->ae()V

    return-void
.end method

.method private t()V
    .locals 4

    .line 523
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/k;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 526
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c004a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 527
    new-instance v2, Lcom/coui/appcompat/dialog/app/b$a;

    invoke-direct {v2, v0}, Lcom/coui/appcompat/dialog/app/b$a;-><init>(Landroid/content/Context;)V

    .line 528
    invoke-virtual {v2, v1}, Lcom/coui/appcompat/dialog/app/b$a;->a(Landroid/view/View;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/oplus/camera/ui/menu/setting/k$3;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/menu/setting/k$3;-><init>(Lcom/oplus/camera/ui/menu/setting/k;)V

    .line 529
    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/dialog/app/b$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/oplus/camera/ui/menu/setting/k$2;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/menu/setting/k$2;-><init>(Lcom/oplus/camera/ui/menu/setting/k;)V

    .line 542
    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/dialog/app/b$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object v0

    .line 548
    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/app/b$a;->a()Lcom/coui/appcompat/dialog/app/b;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->W:Lcom/coui/appcompat/dialog/app/b;

    .line 549
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/k;->W:Lcom/coui/appcompat/dialog/app/b;

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/app/b;->show()V

    :cond_0
    return-void
.end method

.method private u()Ljava/lang/String;
    .locals 0

    .line 573
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/k;->n()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "pref_sound_types_key_front"

    goto :goto_0

    :cond_0
    const-string p0, "pref_sound_types_key_rear"

    :goto_0
    return-object p0
.end method

.method private v()V
    .locals 3

    .line 653
    new-instance v0, Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/k;->o()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oplus/camera/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->i:Lcom/oplus/camera/ComboPreferences;

    .line 654
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->i:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/k;->o()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    const-string v0, "camera_setting_menu_root_preference"

    .line 655
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/k;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->j:Landroidx/preference/PreferenceScreen;

    .line 656
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/k;->w()V

    .line 657
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/k;->x()V

    .line 658
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/k;->y()V

    .line 659
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/k;->z()V

    .line 660
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/k;->A()V

    .line 661
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/k;->B()V

    return-void
.end method

.method private w()V
    .locals 2

    const-string v0, "pref_storage_save_to_external"

    .line 665
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/k;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->k:Landroidx/preference/Preference;

    .line 666
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->k:Landroidx/preference/Preference;

    new-instance v1, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$i9w6_UWsvn0wfT-HGFaGYvMaPfM;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$i9w6_UWsvn0wfT-HGFaGYvMaPfM;-><init>(Lcom/oplus/camera/ui/menu/setting/k;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->a(Landroidx/preference/Preference$c;)V

    return-void
.end method

.method private x()V
    .locals 2

    const-string v0, "pref_common_function"

    .line 670
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/k;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->l:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    const-string v0, "pref_watermark_setting_key"

    .line 671
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/k;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIJumpPreference;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->m:Lcom/coui/appcompat/preference/COUIJumpPreference;

    const-string v0, "pref_camera_reference_line"

    .line 672
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/k;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIListPreference;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->n:Lcom/coui/appcompat/preference/COUIListPreference;

    const-string v0, "pref_assist_gradienter"

    .line 673
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/k;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->o:Lcom/android/ui/menu/CameraSwitchPreference;

    const-string v0, "pref_mirror_setting_key"

    .line 674
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/k;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->p:Lcom/android/ui/menu/CameraSwitchPreference;

    const-string v0, "pref_camera_sound_key"

    .line 675
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/k;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->q:Lcom/android/ui/menu/CameraSwitchPreference;

    const-string v0, "pref_camera_recordlocation_key"

    .line 676
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/k;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->r:Lcom/android/ui/menu/CameraSwitchPreference;

    const-string v0, "pref_camera_storage_key"

    .line 677
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/k;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->s:Lcom/android/ui/menu/CameraSwitchPreference;

    const-string v0, "pref_camera_fingerprint_shutter_key"

    .line 678
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/k;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->U:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 680
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->m:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-eqz v0, :cond_0

    .line 682
    new-instance v1, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$i9w6_UWsvn0wfT-HGFaGYvMaPfM;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$i9w6_UWsvn0wfT-HGFaGYvMaPfM;-><init>(Lcom/oplus/camera/ui/menu/setting/k;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUIJumpPreference;->a(Landroidx/preference/Preference$c;)V

    .line 684
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oplus/camera/util/Util;->ak()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->m:Lcom/coui/appcompat/preference/COUIJumpPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUIJumpPreference;->b(Landroid/graphics/drawable/Drawable;)V

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->n:Lcom/coui/appcompat/preference/COUIListPreference;

    if-eqz v0, :cond_1

    .line 690
    new-instance v1, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$bOLdBrtJicjws171hwfwTJyz2RU;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$bOLdBrtJicjws171hwfwTJyz2RU;-><init>(Lcom/oplus/camera/ui/menu/setting/k;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUIListPreference;->a(Landroidx/preference/Preference$b;)V

    .line 693
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->o:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_2

    .line 694
    new-instance v1, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$bOLdBrtJicjws171hwfwTJyz2RU;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$bOLdBrtJicjws171hwfwTJyz2RU;-><init>(Lcom/oplus/camera/ui/menu/setting/k;)V

    invoke-virtual {v0, v1}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Landroidx/preference/Preference$b;)V

    .line 696
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/oplus/camera/util/Util;->ak()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 697
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->o:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/k;->a(Lcom/coui/appcompat/preference/COUISwitchPreference;)V

    .line 701
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->p:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_3

    .line 702
    new-instance v1, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$bOLdBrtJicjws171hwfwTJyz2RU;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$bOLdBrtJicjws171hwfwTJyz2RU;-><init>(Lcom/oplus/camera/ui/menu/setting/k;)V

    invoke-virtual {v0, v1}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Landroidx/preference/Preference$b;)V

    .line 704
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/oplus/camera/util/Util;->ak()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 705
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->p:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/k;->a(Lcom/coui/appcompat/preference/COUISwitchPreference;)V

    .line 709
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->q:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_4

    .line 710
    new-instance v1, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$bOLdBrtJicjws171hwfwTJyz2RU;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$bOLdBrtJicjws171hwfwTJyz2RU;-><init>(Lcom/oplus/camera/ui/menu/setting/k;)V

    invoke-virtual {v0, v1}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Landroidx/preference/Preference$b;)V

    .line 712
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/oplus/camera/util/Util;->ak()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 713
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->q:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/k;->a(Lcom/coui/appcompat/preference/COUISwitchPreference;)V

    .line 717
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->r:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_5

    .line 718
    new-instance v1, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$bOLdBrtJicjws171hwfwTJyz2RU;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$bOLdBrtJicjws171hwfwTJyz2RU;-><init>(Lcom/oplus/camera/ui/menu/setting/k;)V

    invoke-virtual {v0, v1}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Landroidx/preference/Preference$b;)V

    .line 719
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->r:Lcom/android/ui/menu/CameraSwitchPreference;

    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->ar:Z

    invoke-virtual {v0, v1}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Z)V

    .line 721
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/oplus/camera/util/Util;->ak()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 722
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->r:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/k;->a(Lcom/coui/appcompat/preference/COUISwitchPreference;)V

    .line 726
    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->s:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_6

    .line 727
    new-instance v1, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$bOLdBrtJicjws171hwfwTJyz2RU;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$bOLdBrtJicjws171hwfwTJyz2RU;-><init>(Lcom/oplus/camera/ui/menu/setting/k;)V

    invoke-virtual {v0, v1}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Landroidx/preference/Preference$b;)V

    .line 729
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/oplus/camera/util/Util;->ak()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 730
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->s:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/k;->a(Lcom/coui/appcompat/preference/COUISwitchPreference;)V

    .line 734
    :cond_6
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->U:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_7

    .line 735
    new-instance v1, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$bOLdBrtJicjws171hwfwTJyz2RU;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$bOLdBrtJicjws171hwfwTJyz2RU;-><init>(Lcom/oplus/camera/ui/menu/setting/k;)V

    invoke-virtual {v0, v1}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Landroidx/preference/Preference$b;)V

    :cond_7
    return-void
.end method

.method private y()V
    .locals 3

    const-string v0, "pref_capture_function"

    .line 740
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/k;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->t:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    const-string v0, "pref_long_process_choice_key"

    .line 741
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/k;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIListPreference;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->u:Lcom/coui/appcompat/preference/COUIListPreference;

    const-string v0, "pref_shutter_help_key"

    .line 742
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/k;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIJumpPreference;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->v:Lcom/coui/appcompat/preference/COUIJumpPreference;

    const-string v0, "pref_camera_hdr_mode_key"

    .line 743
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/k;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->w:Lcom/android/ui/menu/CameraSwitchPreference;

    const-string v0, "pref_face_rectify_key"

    .line 744
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/k;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->x:Lcom/android/ui/menu/CameraSwitchPreference;

    const-string v0, "pref_super_clear_portrait"

    .line 745
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/k;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->y:Lcom/android/ui/menu/CameraSwitchPreference;

    const-string v0, "pref_ai_scene_key"

    .line 746
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/k;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->z:Lcom/android/ui/menu/CameraSwitchPreference;

    const-string v0, "pref_10bits_heic_encode_key"

    .line 747
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/k;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->A:Lcom/android/ui/menu/CameraSwitchPreference;

    const-string v0, "pref_heif_format_key"

    .line 748
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/k;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->B:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 750
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->u:Lcom/coui/appcompat/preference/COUIListPreference;

    if-eqz v0, :cond_0

    .line 751
    new-instance v1, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$bOLdBrtJicjws171hwfwTJyz2RU;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$bOLdBrtJicjws171hwfwTJyz2RU;-><init>(Lcom/oplus/camera/ui/menu/setting/k;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUIListPreference;->a(Landroidx/preference/Preference$b;)V

    .line 754
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->v:Lcom/coui/appcompat/preference/COUIJumpPreference;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 755
    new-instance v2, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$i9w6_UWsvn0wfT-HGFaGYvMaPfM;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$i9w6_UWsvn0wfT-HGFaGYvMaPfM;-><init>(Lcom/oplus/camera/ui/menu/setting/k;)V

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/preference/COUIJumpPreference;->a(Landroidx/preference/Preference$c;)V

    .line 757
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/oplus/camera/util/Util;->ak()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 758
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->v:Lcom/coui/appcompat/preference/COUIJumpPreference;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUIJumpPreference;->b(Landroid/graphics/drawable/Drawable;)V

    .line 762
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->w:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_2

    .line 763
    new-instance v2, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$bOLdBrtJicjws171hwfwTJyz2RU;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$bOLdBrtJicjws171hwfwTJyz2RU;-><init>(Lcom/oplus/camera/ui/menu/setting/k;)V

    invoke-virtual {v0, v2}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Landroidx/preference/Preference$b;)V

    .line 765
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/oplus/camera/util/Util;->ak()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 766
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->w:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/k;->a(Lcom/coui/appcompat/preference/COUISwitchPreference;)V

    .line 770
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->x:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_3

    .line 771
    new-instance v2, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$bOLdBrtJicjws171hwfwTJyz2RU;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$bOLdBrtJicjws171hwfwTJyz2RU;-><init>(Lcom/oplus/camera/ui/menu/setting/k;)V

    invoke-virtual {v0, v2}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Landroidx/preference/Preference$b;)V

    .line 773
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/oplus/camera/util/Util;->ak()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 774
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->x:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/k;->a(Lcom/coui/appcompat/preference/COUISwitchPreference;)V

    .line 778
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->y:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_4

    .line 779
    new-instance v2, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$bOLdBrtJicjws171hwfwTJyz2RU;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$bOLdBrtJicjws171hwfwTJyz2RU;-><init>(Lcom/oplus/camera/ui/menu/setting/k;)V

    invoke-virtual {v0, v2}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Landroidx/preference/Preference$b;)V

    .line 781
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/oplus/camera/util/Util;->ak()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 782
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->y:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/k;->a(Lcom/coui/appcompat/preference/COUISwitchPreference;)V

    .line 786
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->z:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_5

    .line 787
    new-instance v2, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$bOLdBrtJicjws171hwfwTJyz2RU;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$bOLdBrtJicjws171hwfwTJyz2RU;-><init>(Lcom/oplus/camera/ui/menu/setting/k;)V

    invoke-virtual {v0, v2}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Landroidx/preference/Preference$b;)V

    .line 789
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/oplus/camera/util/Util;->ak()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 790
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->z:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/k;->a(Lcom/coui/appcompat/preference/COUISwitchPreference;)V

    .line 794
    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->A:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_6

    .line 795
    new-instance v2, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$bOLdBrtJicjws171hwfwTJyz2RU;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$bOLdBrtJicjws171hwfwTJyz2RU;-><init>(Lcom/oplus/camera/ui/menu/setting/k;)V

    invoke-virtual {v0, v2}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Landroidx/preference/Preference$b;)V

    .line 797
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/oplus/camera/util/Util;->ak()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 798
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->A:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/k;->a(Lcom/coui/appcompat/preference/COUISwitchPreference;)V

    .line 802
    :cond_6
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->B:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_7

    .line 803
    new-instance v2, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$bOLdBrtJicjws171hwfwTJyz2RU;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$bOLdBrtJicjws171hwfwTJyz2RU;-><init>(Lcom/oplus/camera/ui/menu/setting/k;)V

    invoke-virtual {v0, v2}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Landroidx/preference/Preference$b;)V

    .line 805
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/oplus/camera/util/Util;->ak()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 806
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->B:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/k;->a(Lcom/coui/appcompat/preference/COUISwitchPreference;)V

    :cond_7
    const-string v0, "pref_advance_setting_key"

    .line 810
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/k;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIJumpPreference;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->S:Lcom/coui/appcompat/preference/COUIJumpPreference;

    const-string v0, "pref_build_image_setting_key"

    .line 811
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/k;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIJumpPreference;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->T:Lcom/coui/appcompat/preference/COUIJumpPreference;

    .line 813
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->S:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-eqz v0, :cond_8

    .line 814
    new-instance v2, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$i9w6_UWsvn0wfT-HGFaGYvMaPfM;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$i9w6_UWsvn0wfT-HGFaGYvMaPfM;-><init>(Lcom/oplus/camera/ui/menu/setting/k;)V

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/preference/COUIJumpPreference;->a(Landroidx/preference/Preference$c;)V

    .line 816
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/oplus/camera/util/Util;->ak()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 817
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->S:Lcom/coui/appcompat/preference/COUIJumpPreference;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUIJumpPreference;->b(Landroid/graphics/drawable/Drawable;)V

    .line 821
    :cond_8
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->T:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-eqz v0, :cond_9

    .line 822
    new-instance v2, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$i9w6_UWsvn0wfT-HGFaGYvMaPfM;

    invoke-direct {v2, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$i9w6_UWsvn0wfT-HGFaGYvMaPfM;-><init>(Lcom/oplus/camera/ui/menu/setting/k;)V

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/preference/COUIJumpPreference;->a(Landroidx/preference/Preference$c;)V

    .line 824
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/oplus/camera/util/Util;->ak()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 825
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/k;->T:Lcom/coui/appcompat/preference/COUIJumpPreference;

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/preference/COUIJumpPreference;->b(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    return-void
.end method

.method private z()V
    .locals 3

    const-string v0, "pref_video_function"

    .line 831
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/k;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->C:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    const-string v0, "pref_video_sound_effect_key"

    .line 832
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/k;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIListPreference;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->D:Lcom/coui/appcompat/preference/COUIListPreference;

    const-string v0, "pref_track_focus_key"

    .line 833
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/k;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->E:Lcom/android/ui/menu/CameraSwitchPreference;

    const-string v0, "pref_hevc_video_key"

    .line 834
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/k;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->F:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 836
    sget-boolean v0, Lcom/oplus/camera/ui/menu/setting/k;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->D:Lcom/coui/appcompat/preference/COUIListPreference;

    if-eqz v0, :cond_0

    .line 837
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/k;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030090

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUIListPreference;->a([Ljava/lang/CharSequence;)V

    .line 838
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->D:Lcom/coui/appcompat/preference/COUIListPreference;

    new-instance v1, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$bOLdBrtJicjws171hwfwTJyz2RU;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$bOLdBrtJicjws171hwfwTJyz2RU;-><init>(Lcom/oplus/camera/ui/menu/setting/k;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUIListPreference;->a(Landroidx/preference/Preference$b;)V

    .line 841
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->E:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_1

    .line 842
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/k;->aa()V

    .line 843
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->E:Lcom/android/ui/menu/CameraSwitchPreference;

    new-instance v1, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$bOLdBrtJicjws171hwfwTJyz2RU;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$bOLdBrtJicjws171hwfwTJyz2RU;-><init>(Lcom/oplus/camera/ui/menu/setting/k;)V

    invoke-virtual {v0, v1}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Landroidx/preference/Preference$b;)V

    .line 845
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/oplus/camera/util/Util;->ak()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 846
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->E:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/k;->a(Lcom/coui/appcompat/preference/COUISwitchPreference;)V

    .line 850
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->F:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_2

    .line 851
    new-instance v1, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$bOLdBrtJicjws171hwfwTJyz2RU;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$bOLdBrtJicjws171hwfwTJyz2RU;-><init>(Lcom/oplus/camera/ui/menu/setting/k;)V

    invoke-virtual {v0, v1}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Landroidx/preference/Preference$b;)V

    .line 853
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/oplus/camera/util/Util;->ak()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 854
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->F:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/k;->a(Lcom/coui/appcompat/preference/COUISwitchPreference;)V

    .line 858
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->i:Lcom/oplus/camera/ComboPreferences;

    const/4 v1, 0x0

    const-string v2, "pref_video_blur_menu_state"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->av:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    .line 205
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/b;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    const-string p1, "SettingActivityFragment"

    const-string p2, "onCreatePreferences start"

    .line 207
    invoke-static {p1, p2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/k;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/MyApplication;

    invoke-virtual {p1}, Lcom/oplus/camera/MyApplication;->i()V

    const p1, 0x7f130002

    .line 210
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/k;->b(I)V

    .line 211
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/k;->v()V

    .line 212
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/k;->R()V

    .line 213
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/k;->S()V

    .line 215
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/k;->i:Lcom/oplus/camera/ComboPreferences;

    const-string p2, "pref_video_blur_menu_state"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/oplus/camera/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/k;->av:Z

    return-void
.end method

.method protected a(Landroid/os/Bundle;)Z
    .locals 3

    .line 257
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/k;->getActivity()Landroidx/fragment/app/c;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->s:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_0

    const-string v0, "key_storage_dialog_show"

    .line 259
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/k;->s:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {p0}, Lcom/android/ui/menu/CameraSwitchPreference;->c()V

    return v1

    .line 265
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/k;->getActivity()Landroidx/fragment/app/c;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "key_reset_dialog_show"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/k;->getActivity()Landroidx/fragment/app/c;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/setting/k;->a(Landroid/app/Activity;)V

    return v1

    .line 270
    :cond_1
    invoke-super {p0, p1}, Lcom/oplus/camera/ui/menu/setting/b;->a(Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method protected b(Landroid/os/Bundle;)V
    .locals 4

    .line 275
    invoke-super {p0, p1}, Lcom/oplus/camera/ui/menu/setting/b;->b(Landroid/os/Bundle;)V

    .line 276
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->V:Lcom/coui/appcompat/dialog/app/b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/app/b;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "key_reset_dialog_show"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 277
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/k;->s:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz p0, :cond_1

    .line 278
    invoke-virtual {p0}, Lcom/android/ui/menu/CameraSwitchPreference;->e()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    const-string p0, "key_storage_dialog_show"

    .line 277
    invoke-virtual {p1, p0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public b(Landroidx/preference/Preference;)V
    .locals 5

    .line 593
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/k;->getFragmentManager()Landroidx/fragment/app/h;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "androidx.preference.PreferenceFragment.DIALOG"

    .line 595
    invoke-virtual {v0, v1}, Landroidx/fragment/app/h;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    .line 598
    instance-of v3, p1, Lcom/oplus/camera/ui/menu/setting/CameraCustomListPreference;

    if-eqz v3, :cond_2

    .line 599
    invoke-virtual {p1}, Landroidx/preference/Preference;->B()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_sound_types_key_rear"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 600
    invoke-virtual {p1}, Landroidx/preference/Preference;->B()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_sound_types_key_front"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 604
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->B()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/setting/e;->a(Ljava/lang/String;)Lcom/oplus/camera/ui/menu/setting/e;

    move-result-object v2

    goto :goto_1

    .line 601
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->B()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->b:Ljava/lang/String;

    iget v3, p0, Lcom/oplus/camera/ui/menu/setting/k;->d:I

    iget v4, p0, Lcom/oplus/camera/ui/menu/setting/k;->e:I

    invoke-static {p1, v2, v3, v4}, Lcom/oplus/camera/ui/menu/setting/r;->a(Ljava/lang/String;Ljava/lang/String;II)Lcom/oplus/camera/ui/menu/setting/r;

    move-result-object v2

    goto :goto_1

    .line 607
    :cond_2
    invoke-super {p0, p1}, Lcom/oplus/camera/ui/menu/setting/b;->b(Landroidx/preference/Preference;)V

    :goto_1
    if-eqz v2, :cond_3

    const/4 p1, 0x0

    .line 611
    invoke-virtual {v2, p0, p1}, Landroidx/fragment/app/b;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 612
    invoke-virtual {v2, v0, v1}, Landroidx/fragment/app/b;->show(Landroidx/fragment/app/h;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method protected c(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "SettingActivityFragment"

    const-string v1, "parseActivityArguments start"

    .line 283
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, "pref_camera_tap_shutter_key"

    .line 289
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->X:Z

    const-string v1, "pref_lens_dirty_detection_key"

    .line 290
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->Y:Z

    const-string v1, "pref_camera_gesture_shutter_key"

    .line 291
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->Z:Z

    const-string v1, "key_is_capture_mode"

    .line 292
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->ac:Z

    const/4 v1, 0x0

    const-string v2, "key_is_video_mode"

    .line 293
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->ad:Z

    const/4 v2, 0x0

    const-string v3, "pref_camera_mode_key"

    .line 294
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/2addr v2, v0

    iput-boolean v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->ae:Z

    const-string v2, "pref_ai_scene_key"

    .line 295
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->af:Z

    const-string v2, "pref_super_clear_portrait"

    .line 296
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->ag:Z

    const-string v2, "pref_face_rectify_key"

    .line 297
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->ah:Z

    const-string v2, "pref_raw_key"

    .line 298
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->ai:Z

    const-string v2, "pref_assist_gradienter"

    .line 299
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->aj:Z

    .line 300
    iget v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->c:I

    if-ne v2, v0, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->ak:Z

    const-string v2, "camera_enter_form_lock_screen"

    .line 301
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->at:Z

    const-string v2, "pref_photo_codec_key"

    .line 302
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->aa:Z

    const-string v2, "pref_10bits_heic_encode_key"

    .line 303
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->ab:Z

    const-string v2, "pref_10bits_support_mode_key"

    .line 304
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->aq:Z

    const-string v2, "pref_video_sound_key"

    .line 305
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->al:Z

    const-string v2, "pref_video_codec_key"

    .line 306
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->am:Z

    const-string v2, "pref_camera_quick_launch_key"

    .line 307
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->an:Z

    const-string v2, "key_support_slow_video_h265"

    .line 308
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->ao:Z

    const-string v2, "pref_long_process_choice_key"

    .line 309
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->ap:Z

    const-string v2, "pref_qr_code_key"

    .line 310
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->au:Z

    const-string v1, "allow_location"

    .line 311
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/k;->ar:Z

    return-void
.end method

.method public j()V
    .locals 3

    .line 1769
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->i:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_recordlocation_key"

    const-string v2, "on"

    .line 1770
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1771
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1773
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/k;->r:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 1774
    invoke-virtual {p0, v0}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Z)V

    :cond_0
    return-void
.end method

.method public k()V
    .locals 3

    .line 1780
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->i:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_recordlocation_key"

    const-string v2, "off"

    .line 1781
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1782
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1784
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/k;->r:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 1785
    invoke-virtual {p0, v0}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Z)V

    :cond_0
    return-void
.end method

.method protected l()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method protected m()V
    .locals 3

    .line 1796
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->r:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->i:Lcom/oplus/camera/ComboPreferences;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/k;->getActivity()Landroidx/fragment/app/c;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->x(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1797
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->i:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_recordlocation_key"

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1798
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/k;->r:Lcom/android/ui/menu/CameraSwitchPreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Z)V

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroyView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingActivityFragment"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->V:Lcom/coui/appcompat/dialog/app/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/app/b;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "onDestroyView, mResetSettingDialog dismiss"

    .line 229
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->V:Lcom/coui/appcompat/dialog/app/b;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/app/b;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 234
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->V:Lcom/coui/appcompat/dialog/app/b;

    .line 236
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/k;->W:Lcom/coui/appcompat/dialog/app/b;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/coui/appcompat/dialog/app/b;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "onDestroyView, mConfirmPhotoCodecDialog dismiss"

    .line 237
    invoke-static {v1, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->W:Lcom/coui/appcompat/dialog/app/b;

    invoke-virtual {v1}, Lcom/coui/appcompat/dialog/app/b;->dismiss()V

    .line 242
    :cond_1
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/k;->W:Lcom/coui/appcompat/dialog/app/b;

    .line 244
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/k;->ac()V

    .line 245
    invoke-super {p0}, Lcom/oplus/camera/ui/menu/setting/b;->onDestroyView()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 16
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ApplySharedPref"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    if-nez v1, :cond_0

    return v3

    .line 321
    :cond_0
    invoke-super/range {p0 .. p2}, Lcom/oplus/camera/ui/menu/setting/b;->b(Landroidx/preference/Preference;Ljava/lang/Object;)V

    .line 326
    instance-of v4, v1, Lcom/coui/appcompat/preference/COUIListPreference;

    if-eqz v4, :cond_1

    .line 327
    invoke-static/range {p1 .. p2}, Lcom/oplus/camera/ui/menu/setting/k;->c(Landroidx/preference/Preference;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 328
    move-object v5, v1

    check-cast v5, Lcom/coui/appcompat/preference/COUIListPreference;

    invoke-virtual {v5, v4}, Lcom/coui/appcompat/preference/COUIListPreference;->c(Ljava/lang/CharSequence;)V

    .line 332
    :cond_1
    iget-object v4, v0, Lcom/oplus/camera/ui/menu/setting/k;->r:Lcom/android/ui/menu/CameraSwitchPreference;

    if-ne v1, v4, :cond_3

    .line 335
    instance-of v4, v2, Ljava/lang/Boolean;

    if-eqz v4, :cond_2

    .line 336
    move-object v3, v2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :cond_2
    if-eqz v3, :cond_5

    .line 340
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/setting/k;->h()Z

    move-result v0

    return v0

    .line 342
    :cond_3
    iget-object v4, v0, Lcom/oplus/camera/ui/menu/setting/k;->F:Lcom/android/ui/menu/CameraSwitchPreference;

    if-ne v1, v4, :cond_6

    .line 345
    instance-of v4, v2, Ljava/lang/Boolean;

    if-eqz v4, :cond_4

    .line 346
    move-object v3, v2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 349
    :cond_4
    invoke-direct {v0, v3}, Lcom/oplus/camera/ui/menu/setting/k;->b(Z)V

    :cond_5
    :goto_0
    move-object v0, v2

    const/4 v5, 0x1

    goto/16 :goto_7

    .line 350
    :cond_6
    iget-object v4, v0, Lcom/oplus/camera/ui/menu/setting/k;->B:Lcom/android/ui/menu/CameraSwitchPreference;

    if-ne v1, v4, :cond_8

    .line 353
    instance-of v1, v2, Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    .line 354
    move-object v1, v2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 357
    :cond_7
    invoke-direct {v0, v3}, Lcom/oplus/camera/ui/menu/setting/k;->a(Z)Z

    move-result v0

    return v0

    .line 358
    :cond_8
    iget-object v4, v0, Lcom/oplus/camera/ui/menu/setting/k;->w:Lcom/android/ui/menu/CameraSwitchPreference;

    if-ne v1, v4, :cond_a

    .line 361
    instance-of v4, v2, Ljava/lang/Boolean;

    if-eqz v4, :cond_9

    .line 362
    move-object v3, v2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 365
    :cond_9
    invoke-direct {v0, v3}, Lcom/oplus/camera/ui/menu/setting/k;->c(Z)V

    goto :goto_0

    .line 366
    :cond_a
    iget-object v4, v0, Lcom/oplus/camera/ui/menu/setting/k;->p:Lcom/android/ui/menu/CameraSwitchPreference;

    const-string v6, "on"

    const-string v7, "off"

    if-ne v1, v4, :cond_d

    .line 369
    instance-of v4, v2, Ljava/lang/Boolean;

    if-eqz v4, :cond_b

    .line 370
    move-object v3, v2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 373
    :cond_b
    iget-object v0, v0, Lcom/oplus/camera/ui/menu/setting/k;->i:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v3, :cond_c

    move-object v6, v7

    :cond_c
    const-string v3, "pref_mirror_key"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 374
    :cond_d
    iget-object v4, v0, Lcom/oplus/camera/ui/menu/setting/k;->D:Lcom/coui/appcompat/preference/COUIListPreference;

    if-ne v1, v4, :cond_e

    .line 375
    iget-object v3, v0, Lcom/oplus/camera/ui/menu/setting/k;->i:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {v3}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/setting/k;->u()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 376
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/setting/k;->u()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/oplus/camera/ui/menu/setting/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 377
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/setting/k;->aa()V

    goto :goto_0

    .line 378
    :cond_e
    iget-object v4, v0, Lcom/oplus/camera/ui/menu/setting/k;->n:Lcom/coui/appcompat/preference/COUIListPreference;

    if-ne v1, v4, :cond_f

    .line 379
    iget-object v0, v0, Lcom/oplus/camera/ui/menu/setting/k;->i:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_line_photo"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 380
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_line_video"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 381
    :cond_f
    iget-object v4, v0, Lcom/oplus/camera/ui/menu/setting/k;->u:Lcom/coui/appcompat/preference/COUIListPreference;

    if-ne v1, v4, :cond_10

    .line 382
    iget-object v0, v0, Lcom/oplus/camera/ui/menu/setting/k;->i:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_long_process_choice_key"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 383
    :cond_10
    iget-object v4, v0, Lcom/oplus/camera/ui/menu/setting/k;->A:Lcom/android/ui/menu/CameraSwitchPreference;

    if-ne v1, v4, :cond_1d

    .line 386
    instance-of v4, v2, Ljava/lang/Boolean;

    if-eqz v4, :cond_11

    .line 387
    move-object v4, v2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    goto :goto_1

    :cond_11
    move v4, v3

    .line 390
    :goto_1
    iget-object v8, v0, Lcom/oplus/camera/ui/menu/setting/k;->i:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {v8}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 391
    iget-object v9, v0, Lcom/oplus/camera/ui/menu/setting/k;->i:Lcom/oplus/camera/ComboPreferences;

    const-string v10, "pref_photo_codec_key"

    const-string v11, "JPEG"

    invoke-virtual {v9, v10, v11}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v12, "pref_video_blur_menu_state"

    const-string v13, "com.oplus.feature.video.10bit.support"

    const-string v14, "pref_10bits_heic_encode_backup_key"

    const-string v15, "pref_photo_codec_backup_key"

    if-eqz v4, :cond_18

    const-string v4, "key_high_picture_size"

    .line 395
    invoke-interface {v8, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v4, "standard"

    const-string v3, "pref_camera_high_resolution_key"

    .line 396
    invoke-interface {v8, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 398
    iget-object v3, v0, Lcom/oplus/camera/ui/menu/setting/k;->i:Lcom/oplus/camera/ComboPreferences;

    const-string v5, "pref_camera_photo_ratio_key"

    invoke-virtual {v3, v5, v4}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "standard_high"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 400
    invoke-interface {v8, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 403
    :cond_12
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 404
    invoke-interface {v8, v14, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 406
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "HEIF"

    if-eqz v2, :cond_14

    iget-boolean v2, v0, Lcom/oplus/camera/ui/menu/setting/k;->aq:Z

    if-eqz v2, :cond_14

    .line 407
    iget-object v2, v0, Lcom/oplus/camera/ui/menu/setting/k;->h:Landroid/widget/Toast;

    if-eqz v2, :cond_13

    .line 408
    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 411
    :cond_13
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f10006f

    .line 412
    invoke-virtual {v0, v4}, Lcom/oplus/camera/ui/menu/setting/k;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    .line 411
    invoke-static {v2, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, v0, Lcom/oplus/camera/ui/menu/setting/k;->h:Landroid/widget/Toast;

    .line 413
    iget-object v2, v0, Lcom/oplus/camera/ui/menu/setting/k;->h:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 415
    invoke-interface {v8, v10, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 416
    invoke-interface {v8, v15, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 418
    iget-object v2, v0, Lcom/oplus/camera/ui/menu/setting/k;->B:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v2, :cond_15

    .line 419
    invoke-virtual {v2, v5}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Z)V

    goto :goto_2

    :cond_14
    const/4 v5, 0x1

    .line 421
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 422
    invoke-interface {v8, v10, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 423
    invoke-interface {v8, v15, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 425
    iget-object v2, v0, Lcom/oplus/camera/ui/menu/setting/k;->B:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v2, :cond_15

    .line 426
    invoke-virtual {v2, v5}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Z)V

    .line 430
    :cond_15
    :goto_2
    invoke-static {v13}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 431
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/setting/k;->n()Z

    move-result v2

    if-nez v2, :cond_16

    const-string v2, "pref_video_super_eis_key"

    .line 432
    invoke-interface {v8, v2, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "pref_video_size_key"

    const-string v3, "video_size_1080p"

    .line 433
    invoke-interface {v8, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "pref_none_sat_ultra_wide_angle_key"

    .line 434
    invoke-interface {v8, v2, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "pref_video_facebeauty_level_menu"

    const/4 v3, 0x0

    .line 435
    invoke-interface {v8, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "key_filter_index"

    .line 436
    invoke-interface {v8, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 439
    :cond_16
    iget-boolean v2, v0, Lcom/oplus/camera/ui/menu/setting/k;->av:Z

    if-eqz v2, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/setting/k;->n()Z

    move-result v0

    if-nez v0, :cond_17

    .line 440
    invoke-interface {v8, v12}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 444
    :cond_17
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v5, 0x1

    goto :goto_4

    .line 446
    :cond_18
    invoke-interface {v8, v14, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 447
    iget-object v2, v0, Lcom/oplus/camera/ui/menu/setting/k;->i:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {v2, v15, v11}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 450
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 451
    invoke-interface {v8, v10, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 453
    iget-object v2, v0, Lcom/oplus/camera/ui/menu/setting/k;->B:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v2, :cond_19

    const/4 v3, 0x0

    .line 454
    invoke-virtual {v2, v3}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Z)V

    .line 457
    :cond_19
    iget-object v2, v0, Lcom/oplus/camera/ui/menu/setting/k;->h:Landroid/widget/Toast;

    if-eqz v2, :cond_1a

    .line 458
    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 461
    :cond_1a
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f10006d

    .line 462
    invoke-virtual {v0, v3}, Lcom/oplus/camera/ui/menu/setting/k;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    .line 461
    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, v0, Lcom/oplus/camera/ui/menu/setting/k;->h:Landroid/widget/Toast;

    .line 463
    iget-object v2, v0, Lcom/oplus/camera/ui/menu/setting/k;->h:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_3

    :cond_1b
    const/4 v5, 0x1

    .line 466
    :goto_3
    invoke-static {v13}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 467
    iget-boolean v0, v0, Lcom/oplus/camera/ui/menu/setting/k;->av:Z

    if-eqz v0, :cond_1c

    .line 468
    invoke-interface {v8, v12, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_1c
    :goto_4
    const-string v0, "pref_lasted_video_save_status"

    const/4 v2, 0x0

    .line 473
    invoke-interface {v8, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 474
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_6

    :cond_1d
    move v2, v3

    const/4 v5, 0x1

    .line 475
    iget-object v0, v0, Lcom/oplus/camera/ui/menu/setting/k;->I:Lcom/android/ui/menu/CameraSwitchPreference;

    if-ne v1, v0, :cond_20

    move-object/from16 v0, p2

    .line 478
    instance-of v3, v0, Ljava/lang/Boolean;

    if-eqz v3, :cond_1e

    .line 479
    move-object v3, v0

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_5

    :cond_1e
    move v3, v2

    :goto_5
    if-eqz v3, :cond_1f

    move v2, v5

    :cond_1f
    const-string v3, "com.oplus.camera quick launch"

    .line 482
    invoke-static {v3, v2}, Lcom/oplus/compat/a/a$a;->a(Ljava/lang/String;I)Z

    goto :goto_7

    :cond_20
    :goto_6
    move-object/from16 v0, p2

    .line 485
    :goto_7
    instance-of v2, v1, Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v2, :cond_21

    .line 486
    move-object v2, v1

    check-cast v2, Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v2, v1, v0}, Lcom/android/ui/menu/CameraSwitchPreference;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result v5

    :cond_21
    return v5
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 16

    move-object/from16 v0, p0

    .line 1461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceClick, key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroidx/preference/Preference;->B()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SettingActivityFragment"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1463
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/setting/k;->getActivity()Landroidx/fragment/app/c;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/menu/setting/CameraSettingActivity;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 1469
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/preference/Preference;->B()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x4

    const-string v9, "pref_help_and_feedback_key"

    const-string v10, "pref_watermark_setting_key"

    const-string v11, "pref_shutter_help_key"

    const-string v12, "pref_camera_code_key"

    const-string v13, "pref_storage_save_to_external"

    const-string v14, "pref_build_image_setting_key"

    const-string v15, "pref_about_key"

    const-string v4, "pref_advance_setting_key"

    const/4 v8, 0x1

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v5, "pref_video_sound_key"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x7

    goto :goto_1

    :sswitch_1
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v6

    goto :goto_1

    :sswitch_2
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x6

    goto :goto_1

    :sswitch_3
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_4
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x8

    goto :goto_1

    :sswitch_5
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x9

    goto :goto_1

    :sswitch_6
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x5

    goto :goto_1

    :sswitch_7
    const-string v5, "pref_restore_key"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :sswitch_8
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v8

    goto :goto_1

    :sswitch_9
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v7

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, -0x1

    :goto_1
    const-string v5, "oplus.intent.action.APP_SUB_SETTING"

    const/4 v2, 0x0

    packed-switch v3, :pswitch_data_0

    :cond_2
    :goto_2
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 1558
    :pswitch_0
    iget-object v1, v0, Lcom/oplus/camera/ui/menu/setting/k;->j:Landroidx/preference/PreferenceScreen;

    iget-object v2, v0, Lcom/oplus/camera/ui/menu/setting/k;->k:Landroidx/preference/Preference;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceScreen;->d(Landroidx/preference/Preference;)Z

    .line 1560
    iget-object v1, v0, Lcom/oplus/camera/ui/menu/setting/k;->i:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {v1}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1561
    invoke-interface {v1, v13, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1562
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1564
    new-instance v1, Landroid/content/Intent;

    const-string v2, "oplus.intent.action.settings.SHOW_SDCARD_SCREEN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1565
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/setting/k;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 1552
    :pswitch_1
    invoke-virtual {v1, v8}, Lcom/oplus/camera/ui/menu/setting/CameraSettingActivity;->b(Z)V

    .line 1553
    invoke-virtual {v0, v12, v2}, Lcom/oplus/camera/ui/menu/setting/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "oplus.intent.action.APP_CODE_SETTING"

    .line 1554
    invoke-direct {v0, v1}, Lcom/oplus/camera/ui/menu/setting/k;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 1546
    :pswitch_2
    invoke-virtual {v1, v8}, Lcom/oplus/camera/ui/menu/setting/CameraSettingActivity;->b(Z)V

    const/4 v1, 0x3

    .line 1547
    invoke-direct {v0, v5, v1}, Lcom/oplus/camera/ui/menu/setting/k;->a(Ljava/lang/String;I)V

    goto :goto_2

    .line 1539
    :pswitch_3
    invoke-virtual {v1, v8}, Lcom/oplus/camera/ui/menu/setting/CameraSettingActivity;->b(Z)V

    .line 1540
    invoke-virtual {v0, v10, v2}, Lcom/oplus/camera/ui/menu/setting/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1541
    invoke-direct {v0, v5, v6}, Lcom/oplus/camera/ui/menu/setting/k;->a(Ljava/lang/String;I)V

    goto :goto_2

    .line 1532
    :pswitch_4
    invoke-virtual {v1, v8}, Lcom/oplus/camera/ui/menu/setting/CameraSettingActivity;->b(Z)V

    .line 1533
    invoke-virtual {v0, v14, v2}, Lcom/oplus/camera/ui/menu/setting/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1534
    invoke-direct {v0, v5, v7}, Lcom/oplus/camera/ui/menu/setting/k;->a(Ljava/lang/String;I)V

    goto :goto_2

    .line 1525
    :pswitch_5
    invoke-virtual {v1, v8}, Lcom/oplus/camera/ui/menu/setting/CameraSettingActivity;->b(Z)V

    .line 1526
    invoke-virtual {v0, v4, v2}, Lcom/oplus/camera/ui/menu/setting/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v3, 0x0

    .line 1527
    invoke-direct {v0, v5, v3}, Lcom/oplus/camera/ui/menu/setting/k;->a(Ljava/lang/String;I)V

    goto :goto_3

    :pswitch_6
    const/4 v3, 0x0

    .line 1518
    invoke-virtual {v1, v8}, Lcom/oplus/camera/ui/menu/setting/CameraSettingActivity;->b(Z)V

    .line 1519
    invoke-virtual {v0, v11, v2}, Lcom/oplus/camera/ui/menu/setting/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1520
    invoke-direct {v0, v5, v8}, Lcom/oplus/camera/ui/menu/setting/k;->a(Ljava/lang/String;I)V

    :goto_3
    move v0, v3

    goto :goto_4

    :pswitch_7
    const/4 v3, 0x0

    .line 1482
    iget-object v1, v0, Lcom/oplus/camera/ui/menu/setting/k;->i:Lcom/oplus/camera/ComboPreferences;

    const-string v2, "pref_allow_network_access"

    invoke-virtual {v1, v2, v3}, Lcom/oplus/camera/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_3

    const v1, 0x7f10027e

    .line 1483
    new-instance v2, Lcom/oplus/camera/ui/menu/setting/k$4;

    invoke-direct {v2, v0}, Lcom/oplus/camera/ui/menu/setting/k$4;-><init>(Lcom/oplus/camera/ui/menu/setting/k;)V

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/menu/setting/k;->a(ILandroid/content/DialogInterface$OnClickListener;)Z

    goto :goto_2

    .line 1510
    :cond_3
    invoke-static {}, Lcom/oplus/camera/l/c;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ""

    .line 1511
    invoke-virtual {v0, v9, v1}, Lcom/oplus/camera/ui/menu/setting/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1512
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/ui/menu/setting/k;->ad()V

    goto/16 :goto_2

    .line 1475
    :pswitch_8
    invoke-virtual {v1, v8}, Lcom/oplus/camera/ui/menu/setting/CameraSettingActivity;->b(Z)V

    .line 1476
    invoke-virtual {v0, v15, v2}, Lcom/oplus/camera/ui/menu/setting/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x5

    .line 1477
    invoke-direct {v0, v5, v1}, Lcom/oplus/camera/ui/menu/setting/k;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1471
    :pswitch_9
    invoke-direct {v0, v1}, Lcom/oplus/camera/ui/menu/setting/k;->a(Landroid/app/Activity;)V

    goto/16 :goto_2

    :goto_4
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x68f4b869 -> :sswitch_9
        -0x44fd106f -> :sswitch_8
        -0x392872ee -> :sswitch_7
        -0x2b9296a1 -> :sswitch_6
        -0x16dffed3 -> :sswitch_5
        -0x11d7c935 -> :sswitch_4
        0xb89f30f -> :sswitch_3
        0xed9db79 -> :sswitch_2
        0x3348882f -> :sswitch_1
        0x60d1ba4f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 220
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 221
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/k;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f06004a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/k;->c(I)V

    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 0

    .line 250
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/k;->getActivity()Landroidx/fragment/app/c;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 252
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method protected q()V
    .locals 0

    .line 579
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/k;->C()V

    .line 580
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/k;->E()V

    .line 581
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/k;->F()V

    .line 582
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/k;->G()V

    .line 583
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/k;->N()V

    return-void
.end method

.method protected r()V
    .locals 4

    .line 619
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/k;->getActivity()Landroidx/fragment/app/c;

    move-result-object v0

    const-string v1, "com.oplus.storage.save.to.external.support"

    .line 621
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 622
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/k;->o()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.coloros.movetosdcard"

    invoke-static {v1, v2}, Lcom/oplus/camera/util/Util;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->as:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 625
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->as:Z

    .line 626
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    .line 627
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    .line 628
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MEDIA_EJECT"

    .line 629
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "file"

    .line 630
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 631
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/k;->aw:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x0

    const-string v3, "oplus.permission.OPLUS_COMPONENT_SAFE"

    invoke-virtual {v0, p0, v1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method protected s()V
    .locals 3

    .line 638
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/k;->getActivity()Landroidx/fragment/app/c;

    move-result-object v0

    const-string v1, "com.oplus.storage.save.to.external.support"

    .line 640
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 641
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/k;->o()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.coloros.movetosdcard"

    invoke-static {v1, v2}, Lcom/oplus/camera/util/Util;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->as:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 644
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/k;->as:Z

    .line 645
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/k;->aw:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
