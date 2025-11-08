.class public Lcom/oplus/camera/ui/menu/setting/p;
.super Lcom/oplus/camera/ui/menu/setting/b;
.source "CameraSubSettingFragment.java"


# static fields
.field private static f:Ljava/lang/String; = "\u3001"


# instance fields
.field private A:Lcom/android/ui/menu/CameraSwitchPreference;

.field private B:Lcom/coui/appcompat/preference/COUIJumpPreference;

.field private C:Lcom/android/ui/menu/CameraSwitchPreference;

.field private D:Lcom/android/ui/menu/CameraSwitchPreference;

.field private E:Lcom/coui/appcompat/preference/COUIMarkPreference;

.field private F:Lcom/coui/appcompat/preference/COUIMarkPreference;

.field private G:Lcom/coui/appcompat/preference/COUIMarkPreference;

.field private H:Lcom/android/ui/menu/CameraSwitchPreference;

.field private I:Lcom/android/ui/menu/CameraSwitchPreference;

.field private J:Lcom/android/ui/menu/CameraSwitchPreference;

.field private K:Lcom/coui/appcompat/preference/COUIListPreference;

.field private L:Lcom/coui/appcompat/preference/COUIListPreference;

.field private M:Lcom/coui/appcompat/preference/COUIJumpPreference;

.field private N:Lcom/coui/appcompat/preference/COUIJumpPreference;

.field private O:Landroidx/preference/Preference;

.field private P:Lcom/android/ui/menu/CameraSwitchPreference;

.field private Q:Lcom/android/ui/menu/CameraWatermarkVisualPreference;

.field private R:Lcom/coui/appcompat/preference/COUIPreference;

.field private S:Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;

.field private T:Lcom/coui/appcompat/preference/COUISwitchPreference;

.field private U:Lcom/coui/appcompat/preference/COUISwitchPreference;

.field private V:Lcom/coui/appcompat/preference/COUISwitchPreference;

.field private W:Lcom/coui/appcompat/preference/COUIListPreference;

.field private X:Lcom/coui/appcompat/preference/COUIListPreference;

.field private Y:Lcom/android/ui/menu/a;

.field private Z:Lcom/coui/appcompat/dialog/panel/b;

.field private aa:Lcom/android/ui/menu/CameraSwitchPreference;

.field private ab:Lcom/android/ui/menu/CameraWatermarkVisualPreference;

.field private ac:J

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

.field private ao:I

.field private ap:Z

.field private aq:Z

.field private ar:Ljava/lang/String;

.field private as:Landroid/location/Location;

.field private at:Lcom/oplus/camera/x;

.field private au:Landroidx/recyclerview/widget/RecyclerView;

.field private av:Lcom/android/ui/menu/a$a;

.field private aw:Landroid/content/BroadcastReceiver;

.field private ax:Lcom/oplus/camera/q$f;

.field private ay:Ljava/lang/Runnable;

.field private g:I

.field private h:Lcom/oplus/camera/ComboPreferences;

.field private i:Landroidx/preference/PreferenceScreen;

.field private j:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

.field private k:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

.field private l:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

.field private m:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

.field private n:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

.field private o:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

.field private p:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

.field private q:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

.field private r:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

.field private s:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

.field private t:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

.field private u:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

.field private v:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

.field private w:Lcom/android/ui/menu/CameraSwitchPreference;

.field private x:Lcom/android/ui/menu/CameraSwitchPreference;

.field private y:Lcom/android/ui/menu/CameraShutterSettingPreference;

.field private z:Lcom/android/ui/menu/CameraSwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 102
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/b;-><init>()V

    const/4 v0, 0x0

    .line 152
    iput v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->g:I

    const/4 v1, 0x0

    .line 154
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->h:Lcom/oplus/camera/ComboPreferences;

    .line 155
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->i:Landroidx/preference/PreferenceScreen;

    .line 157
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->j:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    .line 158
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->k:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    .line 159
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->l:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    .line 160
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->m:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    .line 161
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->n:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    .line 162
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->o:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    .line 163
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->p:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    .line 164
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->q:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    .line 165
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->r:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    .line 166
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->s:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    .line 167
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->t:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    .line 168
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->u:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    .line 169
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->v:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    .line 170
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->w:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 171
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->x:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 172
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->y:Lcom/android/ui/menu/CameraShutterSettingPreference;

    .line 173
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->z:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 174
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->A:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 175
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->B:Lcom/coui/appcompat/preference/COUIJumpPreference;

    .line 176
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->C:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 177
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->D:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 178
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->E:Lcom/coui/appcompat/preference/COUIMarkPreference;

    .line 179
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->F:Lcom/coui/appcompat/preference/COUIMarkPreference;

    .line 180
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->G:Lcom/coui/appcompat/preference/COUIMarkPreference;

    .line 181
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->H:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 182
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->I:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 183
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->J:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 184
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->K:Lcom/coui/appcompat/preference/COUIListPreference;

    .line 185
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->L:Lcom/coui/appcompat/preference/COUIListPreference;

    .line 186
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->M:Lcom/coui/appcompat/preference/COUIJumpPreference;

    .line 187
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->N:Lcom/coui/appcompat/preference/COUIJumpPreference;

    .line 189
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->O:Landroidx/preference/Preference;

    .line 191
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->P:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 192
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->Q:Lcom/android/ui/menu/CameraWatermarkVisualPreference;

    .line 193
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->R:Lcom/coui/appcompat/preference/COUIPreference;

    .line 194
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->S:Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;

    .line 195
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->T:Lcom/coui/appcompat/preference/COUISwitchPreference;

    .line 196
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->U:Lcom/coui/appcompat/preference/COUISwitchPreference;

    .line 197
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->V:Lcom/coui/appcompat/preference/COUISwitchPreference;

    .line 198
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->W:Lcom/coui/appcompat/preference/COUIListPreference;

    .line 199
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->X:Lcom/coui/appcompat/preference/COUIListPreference;

    .line 200
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->Y:Lcom/android/ui/menu/a;

    .line 201
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->Z:Lcom/coui/appcompat/dialog/panel/b;

    .line 202
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->aa:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 203
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->ab:Lcom/android/ui/menu/CameraWatermarkVisualPreference;

    const-wide/16 v2, 0x0

    .line 205
    iput-wide v2, p0, Lcom/oplus/camera/ui/menu/setting/p;->ac:J

    const/4 v2, 0x1

    .line 206
    iput-boolean v2, p0, Lcom/oplus/camera/ui/menu/setting/p;->ad:Z

    .line 207
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->ae:Z

    .line 208
    iput-boolean v2, p0, Lcom/oplus/camera/ui/menu/setting/p;->af:Z

    .line 209
    iput-boolean v2, p0, Lcom/oplus/camera/ui/menu/setting/p;->ag:Z

    .line 210
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->ah:Z

    .line 211
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->ai:Z

    .line 212
    iput-boolean v2, p0, Lcom/oplus/camera/ui/menu/setting/p;->aj:Z

    .line 213
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->ak:Z

    .line 214
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->al:Z

    .line 215
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->am:Z

    .line 216
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->an:Z

    .line 217
    iput v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->ao:I

    .line 218
    iput-boolean v2, p0, Lcom/oplus/camera/ui/menu/setting/p;->ap:Z

    .line 219
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->aq:Z

    .line 220
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->ar:Ljava/lang/String;

    .line 221
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->as:Landroid/location/Location;

    .line 222
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->at:Lcom/oplus/camera/x;

    .line 223
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->au:Landroidx/recyclerview/widget/RecyclerView;

    .line 1486
    new-instance v0, Lcom/oplus/camera/ui/menu/setting/p$4;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/menu/setting/p$4;-><init>(Lcom/oplus/camera/ui/menu/setting/p;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->av:Lcom/android/ui/menu/a$a;

    .line 1671
    new-instance v0, Lcom/oplus/camera/ui/menu/setting/p$11;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/menu/setting/p$11;-><init>(Lcom/oplus/camera/ui/menu/setting/p;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->aw:Landroid/content/BroadcastReceiver;

    .line 1686
    new-instance v0, Lcom/oplus/camera/ui/menu/setting/p$2;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/menu/setting/p$2;-><init>(Lcom/oplus/camera/ui/menu/setting/p;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->ax:Lcom/oplus/camera/q$f;

    .line 1727
    new-instance v0, Lcom/oplus/camera/ui/menu/setting/p$3;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/menu/setting/p$3;-><init>(Lcom/oplus/camera/ui/menu/setting/p;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->ay:Ljava/lang/Runnable;

    return-void
.end method

.method private A()V
    .locals 6

    .line 1198
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->G:Lcom/coui/appcompat/preference/COUIMarkPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->F:Lcom/coui/appcompat/preference/COUIMarkPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->E:Lcom/coui/appcompat/preference/COUIMarkPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->H:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_0

    .line 1202
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->h:Lcom/oplus/camera/ComboPreferences;

    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/p;->F()Ljava/lang/String;

    move-result-object v1

    const-string v2, "panorama"

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1203
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->h:Lcom/oplus/camera/ComboPreferences;

    const-string v3, "pref_video_noise_filter_key"

    const-string v4, "off"

    invoke-virtual {v1, v3, v4}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1205
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/p;->E:Lcom/coui/appcompat/preference/COUIMarkPreference;

    const-string v4, "normal"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/coui/appcompat/preference/COUIMarkPreference;->e(Z)V

    .line 1206
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/p;->F:Lcom/coui/appcompat/preference/COUIMarkPreference;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/coui/appcompat/preference/COUIMarkPreference;->e(Z)V

    .line 1207
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/p;->G:Lcom/coui/appcompat/preference/COUIMarkPreference;

    const-string v3, "focusing"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/preference/COUIMarkPreference;->e(Z)V

    .line 1208
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/p;->H:Lcom/android/ui/menu/CameraSwitchPreference;

    const-string v3, "on"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Z)V

    .line 1209
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/p;->H:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Z)V

    :cond_0
    return-void
.end method

.method private B()V
    .locals 7

    const-string v0, "CameraSubSettingFragment"

    const-string v1, "updateStoragePreference()"

    .line 1214
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->D:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_5

    .line 1217
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/p;->o()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.coloros.movetosdcard"

    invoke-static {v0, v1}, Lcom/oplus/camera/util/Util;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.oplus.storage.save.to.external.support"

    .line 1218
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1219
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->m:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 1220
    invoke-static {v2}, Lcom/oplus/camera/Storage;->b(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1221
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->m:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/p;->D:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->d(Landroidx/preference/Preference;)Z

    return-void

    .line 1224
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->m:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    const-string v3, "pref_camera_storage_key"

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->d(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1225
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->D:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Z)V

    .line 1226
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->m:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/p;->D:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->c(Landroidx/preference/Preference;)Z

    .line 1228
    :cond_2
    invoke-static {}, Lcom/oplus/camera/util/Util;->ac()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1229
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->D:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Z)V

    .line 1230
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/p;->D:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ui/menu/CameraSwitchPreference;->c(Ljava/lang/Object;)V

    return-void

    .line 1235
    :cond_3
    invoke-static {v1}, Lcom/oplus/camera/Storage;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    const-wide/high16 v3, 0x4020000000000000L    # 8.0

    .line 1236
    invoke-static {}, Lcom/oplus/camera/Storage;->g()D

    move-result-wide v5

    cmpl-double v0, v3, v5

    if-lez v0, :cond_4

    .line 1237
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->D:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ui/menu/CameraSwitchPreference;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 1239
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->D:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ui/menu/CameraSwitchPreference;->c(Ljava/lang/Object;)V

    .line 1242
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->D:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v0}, Lcom/android/ui/menu/CameraSwitchPreference;->L()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->D:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v1}, Lcom/android/ui/menu/CameraSwitchPreference;->B()Ljava/lang/String;

    move-result-object v1

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1245
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/p;->D:Lcom/android/ui/menu/CameraSwitchPreference;

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Z)V

    :cond_5
    return-void
.end method

.method private C()V
    .locals 4

    .line 1250
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->h:Lcom/oplus/camera/ComboPreferences;

    if-eqz v0, :cond_0

    const-string v1, "pref_photo_codec_key"

    const-string v2, "JPEG"

    .line 1251
    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1252
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->h:Lcom/oplus/camera/ComboPreferences;

    const-string v2, "pref_video_codec_key"

    const-string v3, "H264"

    invoke-virtual {v1, v2, v3}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1253
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/p;->B:Lcom/coui/appcompat/preference/COUIJumpPreference;

    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/ui/menu/setting/p;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/coui/appcompat/preference/COUIJumpPreference;->d(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private D()V
    .locals 3

    .line 1258
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->w:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_0

    .line 1259
    invoke-virtual {v0}, Lcom/android/ui/menu/CameraSwitchPreference;->L()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->w:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v1}, Lcom/android/ui/menu/CameraSwitchPreference;->B()Ljava/lang/String;

    move-result-object v1

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1260
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/p;->w:Lcom/android/ui/menu/CameraSwitchPreference;

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Z)V

    :cond_0
    return-void
.end method

.method private E()V
    .locals 3

    .line 1265
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->x:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_0

    .line 1266
    invoke-virtual {v0}, Lcom/android/ui/menu/CameraSwitchPreference;->L()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->x:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v1}, Lcom/android/ui/menu/CameraSwitchPreference;->B()Ljava/lang/String;

    move-result-object v1

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1268
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/p;->x:Lcom/android/ui/menu/CameraSwitchPreference;

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Z)V

    :cond_0
    return-void
.end method

.method private F()Ljava/lang/String;
    .locals 0

    .line 1292
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/p;->n()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "pref_sound_types_key_front"

    goto :goto_0

    :cond_0
    const-string p0, "pref_sound_types_key_rear"

    :goto_0
    return-object p0
.end method

.method private G()V
    .locals 4

    .line 1418
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->h:Lcom/oplus/camera/ComboPreferences;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const-string v2, "pref_watermark_display_info_key"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ComboPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 1420
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->h:Lcom/oplus/camera/ComboPreferences;

    const-string v2, "pref_watermark_author_key"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1422
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz v1, :cond_1

    .line 1423
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "com.oplus.device_series"

    .line 1424
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result v0

    if-eq v2, v0, :cond_2

    .line 1426
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->W:Lcom/coui/appcompat/preference/COUIListPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUIListPreference;->a(Z)V

    .line 1427
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/p;->X:Lcom/coui/appcompat/preference/COUIListPreference;

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/preference/COUIListPreference;->a(Z)V

    goto :goto_0

    .line 1429
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->W:Lcom/coui/appcompat/preference/COUIListPreference;

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/preference/COUIListPreference;->a(Z)V

    .line 1430
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/p;->X:Lcom/coui/appcompat/preference/COUIListPreference;

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/preference/COUIListPreference;->a(Z)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/menu/setting/p;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/p;->ar:Ljava/lang/String;

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "HEIF"

    .line 1275
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const v1, 0x7f10037e

    const-string v2, ": "

    const-string v3, ""

    if-eqz p1, :cond_0

    .line 1276
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/menu/setting/p;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1278
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/menu/setting/p;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "JPEG"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1281
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "H265"

    .line 1283
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const v0, 0x7f10037f

    if-eqz p2, :cond_1

    .line 1284
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "H.265"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 1286
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "H.264"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private a(Landroid/app/Activity;)V
    .locals 2

    .line 852
    invoke-static {}, Lcom/oplus/camera/q;->a()Lcom/oplus/camera/q;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->ar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/q;->a(Ljava/lang/String;)V

    .line 853
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->Q:Lcom/android/ui/menu/CameraWatermarkVisualPreference;

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/p;->h:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {v0, p1, p0}, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->a(Landroid/app/Activity;Lcom/oplus/camera/ComboPreferences;)V

    return-void
.end method

.method private a(Landroid/location/Location;)V
    .locals 0

    .line 1722
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/p;->as:Landroid/location/Location;

    .line 1723
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/p;->ay:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/oplus/camera/util/Util;->b(Ljava/lang/Runnable;)V

    .line 1724
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/p;->ay:Ljava/lang/Runnable;

    invoke-static {p0}, Lcom/oplus/camera/util/Util;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Landroid/os/Parcelable;)V
    .locals 12

    .line 1519
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->Z:Lcom/coui/appcompat/dialog/panel/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/panel/b;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "CameraSubSettingFragment"

    const-string p1, "showWatermarkAuthorDialog, dialog showing"

    .line 1520
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1525
    :cond_0
    new-instance v0, Lcom/coui/appcompat/dialog/panel/b;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/p;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f11014d

    invoke-direct {v0, v1, v2}, Lcom/coui/appcompat/dialog/panel/b;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->Z:Lcom/coui/appcompat/dialog/panel/b;

    .line 1526
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/p;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0042

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090089

    .line 1527
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    const v2, 0x7f090088

    .line 1528
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/widget/COUIEditText;

    .line 1529
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/p;->Z:Lcom/coui/appcompat/dialog/panel/b;

    invoke-virtual {v3, v0}, Lcom/coui/appcompat/dialog/panel/b;->setContentView(Landroid/view/View;)V

    .line 1530
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->Z:Lcom/coui/appcompat/dialog/panel/b;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/p;->getActivity()Landroidx/fragment/app/c;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/dialog/panel/b;->setOwnerActivity(Landroid/app/Activity;)V

    .line 1532
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/p;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f1003a1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 1533
    invoke-virtual {v1, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setIsTitleCenterStyle(Z)V

    if-eqz p1, :cond_1

    .line 1536
    invoke-virtual {v2, p1}, Lcom/coui/appcompat/widget/COUIEditText;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0

    .line 1538
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/p;->h:Lcom/oplus/camera/ComboPreferences;

    const-string v1, "pref_watermark_author_key"

    const-string v3, ""

    invoke-virtual {p1, v1, v3}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1539
    invoke-virtual {v2, p1}, Lcom/coui/appcompat/widget/COUIEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1542
    :goto_0
    invoke-virtual {v2, v0}, Lcom/coui/appcompat/widget/COUIEditText;->setFastDeletable(Z)V

    .line 1543
    new-array p1, v0, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v3, Lcom/oplus/camera/ui/menu/setting/p$5;

    invoke-direct {v3, p0}, Lcom/oplus/camera/ui/menu/setting/p$5;-><init>(Lcom/oplus/camera/ui/menu/setting/p;)V

    aput-object v3, p1, v1

    invoke-virtual {v2, p1}, Lcom/coui/appcompat/widget/COUIEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1567
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/setting/p;->Z:Lcom/coui/appcompat/dialog/panel/b;

    const/4 v5, 0x0

    .line 1568
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/p;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f1003ff

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/oplus/camera/ui/menu/setting/p$6;

    invoke-direct {v7, p0}, Lcom/oplus/camera/ui/menu/setting/p$6;-><init>(Lcom/oplus/camera/ui/menu/setting/p;)V

    .line 1581
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/p;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f100052

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/oplus/camera/ui/menu/setting/p$7;

    invoke-direct {v9, p0, v2}, Lcom/oplus/camera/ui/menu/setting/p$7;-><init>(Lcom/oplus/camera/ui/menu/setting/p;Lcom/coui/appcompat/widget/COUIEditText;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 1567
    invoke-virtual/range {v4 .. v11}, Lcom/coui/appcompat/dialog/panel/b;->a(ZLjava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 1595
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/p;->Z:Lcom/coui/appcompat/dialog/panel/b;

    invoke-virtual {p1}, Lcom/coui/appcompat/dialog/panel/b;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1598
    check-cast p1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    new-instance v1, Lcom/oplus/camera/ui/menu/setting/p$8;

    invoke-direct {v1, p0, v2}, Lcom/oplus/camera/ui/menu/setting/p$8;-><init>(Lcom/oplus/camera/ui/menu/setting/p;Lcom/coui/appcompat/widget/COUIEditText;)V

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->a(Lcom/coui/appcompat/dialog/panel/e;)V

    .line 1609
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/p;->Z:Lcom/coui/appcompat/dialog/panel/b;

    new-instance v1, Lcom/oplus/camera/ui/menu/setting/p$9;

    invoke-direct {v1, p0, v2}, Lcom/oplus/camera/ui/menu/setting/p$9;-><init>(Lcom/oplus/camera/ui/menu/setting/p;Lcom/coui/appcompat/widget/COUIEditText;)V

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/dialog/panel/b;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1627
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/p;->Z:Lcom/coui/appcompat/dialog/panel/b;

    new-instance v1, Lcom/oplus/camera/ui/menu/setting/p$10;

    invoke-direct {v1, p0, v2}, Lcom/oplus/camera/ui/menu/setting/p$10;-><init>(Lcom/oplus/camera/ui/menu/setting/p;Lcom/coui/appcompat/widget/COUIEditText;)V

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/dialog/panel/b;->a(Landroid/view/View$OnTouchListener;)V

    .line 1645
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/p;->Z:Lcom/coui/appcompat/dialog/panel/b;

    invoke-virtual {p1}, Lcom/coui/appcompat/dialog/panel/b;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1648
    invoke-virtual {v2, v0}, Lcom/coui/appcompat/widget/COUIEditText;->setFocusable(Z)V

    .line 1649
    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUIEditText;->requestFocus()Z

    const/4 v1, 0x5

    .line 1650
    invoke-virtual {p1, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1653
    :cond_3
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->d(Z)V

    return-void
.end method

.method private a(Lcom/coui/appcompat/preference/COUIPreferenceCategory;)V
    .locals 3

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 858
    :goto_0
    invoke-virtual {p1}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->c()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 859
    invoke-virtual {p1, v0}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->j(I)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 861
    invoke-virtual {v1}, Landroidx/preference/Preference;->B()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getSupportSettingMenuKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 862
    invoke-virtual {p1, v1}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->d(Landroidx/preference/Preference;)Z

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 866
    :cond_1
    invoke-virtual {p1}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->c()I

    move-result v0

    if-nez v0, :cond_2

    .line 867
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/p;->i:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceScreen;->d(Landroidx/preference/Preference;)Z

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/menu/setting/p;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/p;->w()V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/menu/setting/p;Landroid/app/Activity;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/setting/p;->a(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/menu/setting/p;Landroid/location/Location;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/setting/p;->a(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/menu/setting/p;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/ui/menu/setting/p;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/menu/setting/p;Z)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/setting/p;->d(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 3

    .line 1070
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/p;->getActivity()Landroidx/fragment/app/c;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/menu/setting/l;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1073
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/setting/l;->b(Z)V

    .line 1076
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1077
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1078
    iget v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->d:I

    const-string v2, "pref_camera_id_key"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1079
    iget v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->c:I

    const-string v2, "camera_enter_type"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1080
    iget v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->e:I

    const-string v2, "camera_property_camera_id"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1081
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->b:Ljava/lang/String;

    const-string v2, "pref_camera_mode_key"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->aq:Z

    const-string v2, "camera_enter_form_lock_screen"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "camera_slogan_setting_from"

    .line 1083
    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "camera_intent_data"

    .line 1084
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1085
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 1747
    new-instance v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/p;->o()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;-><init>(Landroid/content/Context;)V

    .line 1748
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mCaptureMode:Ljava/lang/String;

    .line 1749
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/p;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mCaptureType:I

    .line 1750
    iget v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->c:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mCameraEnterType:Ljava/lang/String;

    .line 1751
    iget v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->e:I

    iput v1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mCameraId:I

    .line 1752
    iput-object p3, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mGuesture:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 1755
    iget p0, p0, Lcom/oplus/camera/ui/menu/setting/p;->e:I

    invoke-static {p0}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "front"

    goto :goto_0

    :cond_0
    const-string p0, "rear"

    .line 1756
    :goto_0
    iput-object p0, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mRearOrFront:Ljava/lang/String;

    .line 1757
    invoke-virtual {v0, p1, p2}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->buildSettingMenuItem(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 1759
    :cond_1
    invoke-virtual {v0, p1}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->buildSettingJumpItem(Ljava/lang/String;)V

    .line 1762
    :goto_1
    invoke-virtual {v0}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->report()V

    return-void
.end method

.method private a(Z)V
    .locals 8

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateWatermarkCategoryPreference, watermarkOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraSubSettingFragment"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.oplus.feature.custom.makeup.watermark.support"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_4

    .line 529
    invoke-direct {p0, v2}, Lcom/oplus/camera/ui/menu/setting/p;->b(Z)V

    .line 530
    invoke-static {}, Lcom/oplus/camera/q;->a()Lcom/oplus/camera/q;

    move-result-object v3

    iget-object v4, p0, Lcom/oplus/camera/ui/menu/setting/p;->h:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {v3, v4}, Lcom/oplus/camera/q;->b(Lcom/oplus/camera/ComboPreferences;)V

    .line 531
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/p;->r:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    iget-object v4, p0, Lcom/oplus/camera/ui/menu/setting/p;->Q:Lcom/android/ui/menu/CameraWatermarkVisualPreference;

    invoke-virtual {v3, v4}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->c(Landroidx/preference/Preference;)Z

    .line 532
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/p;->r:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    iget-object v4, p0, Lcom/oplus/camera/ui/menu/setting/p;->s:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    invoke-virtual {v3, v4}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->c(Landroidx/preference/Preference;)Z

    .line 533
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/p;->r:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    iget-object v4, p0, Lcom/oplus/camera/ui/menu/setting/p;->t:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    invoke-virtual {v3, v4}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->c(Landroidx/preference/Preference;)Z

    .line 535
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 536
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/p;->r:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    iget-object v4, p0, Lcom/oplus/camera/ui/menu/setting/p;->v:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    invoke-virtual {v3, v4}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->c(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 538
    :cond_0
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/p;->r:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    iget-object v4, p0, Lcom/oplus/camera/ui/menu/setting/p;->v:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    invoke-virtual {v3, v4}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->d(Landroidx/preference/Preference;)Z

    .line 541
    :goto_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->al()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/oplus/camera/util/Util;->am()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/oplus/camera/util/Util;->ar()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 542
    :cond_1
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/p;->t:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    iget-object v4, p0, Lcom/oplus/camera/ui/menu/setting/p;->X:Lcom/coui/appcompat/preference/COUIListPreference;

    invoke-virtual {v3, v4}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->c(Landroidx/preference/Preference;)Z

    .line 545
    :cond_2
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/p;->S:Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;

    .line 546
    invoke-virtual {v3}, Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;->m()Ljava/util/Set;

    move-result-object v4

    .line 545
    invoke-direct {p0, v3, v4}, Lcom/oplus/camera/ui/menu/setting/p;->c(Landroidx/preference/Preference;Ljava/lang/Object;)V

    .line 547
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/p;->R:Lcom/coui/appcompat/preference/COUIPreference;

    iget-object v4, p0, Lcom/oplus/camera/ui/menu/setting/p;->h:Lcom/oplus/camera/ComboPreferences;

    const-string v5, "pref_watermark_author_key"

    const-string v6, ""

    .line 548
    invoke-virtual {v4, v5, v6}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 547
    invoke-direct {p0, v3, v4}, Lcom/oplus/camera/ui/menu/setting/p;->c(Landroidx/preference/Preference;Ljava/lang/Object;)V

    .line 549
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/p;->W:Lcom/coui/appcompat/preference/COUIListPreference;

    invoke-virtual {v3}, Lcom/coui/appcompat/preference/COUIListPreference;->o()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/oplus/camera/ui/menu/setting/p;->c(Landroidx/preference/Preference;Ljava/lang/Object;)V

    .line 550
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/p;->X:Lcom/coui/appcompat/preference/COUIListPreference;

    invoke-virtual {v3}, Lcom/coui/appcompat/preference/COUIListPreference;->o()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/oplus/camera/ui/menu/setting/p;->c(Landroidx/preference/Preference;Ljava/lang/Object;)V

    .line 552
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/p;->h:Lcom/oplus/camera/ComboPreferences;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const-string v5, "pref_watermark_display_info_key"

    invoke-virtual {v3, v5, v4}, Lcom/oplus/camera/ComboPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 555
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 556
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/p;->o()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f030013

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 558
    aget-object v5, v4, v1

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 559
    aget-object v6, v4, v2

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x2

    .line 560
    aget-object v4, v4, v7

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 561
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/setting/p;->V:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v4, v3}, Lcom/oplus/camera/ui/menu/setting/p;->c(Landroidx/preference/Preference;Ljava/lang/Object;)V

    .line 562
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/p;->T:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/oplus/camera/ui/menu/setting/p;->c(Landroidx/preference/Preference;Ljava/lang/Object;)V

    .line 563
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/p;->U:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/oplus/camera/ui/menu/setting/p;->c(Landroidx/preference/Preference;Ljava/lang/Object;)V

    .line 566
    :cond_3
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/p;->getActivity()Landroidx/fragment/app/c;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/oplus/camera/ui/menu/setting/p;->a(Landroid/app/Activity;)V

    .line 567
    iput-boolean v2, p0, Lcom/oplus/camera/ui/menu/setting/p;->am:Z

    goto :goto_2

    .line 569
    :cond_4
    invoke-static {}, Lcom/oplus/camera/q;->a()Lcom/oplus/camera/q;

    move-result-object v3

    iget-object v4, p0, Lcom/oplus/camera/ui/menu/setting/p;->ax:Lcom/oplus/camera/q$f;

    invoke-virtual {v3, v4}, Lcom/oplus/camera/q;->b(Lcom/oplus/camera/q$f;)V

    .line 571
    iget-boolean v3, p0, Lcom/oplus/camera/ui/menu/setting/p;->am:Z

    if-eqz v3, :cond_5

    .line 572
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 573
    new-instance v4, Lcom/oplus/camera/ui/menu/setting/p$1;

    invoke-direct {v4, p0}, Lcom/oplus/camera/ui/menu/setting/p$1;-><init>(Lcom/oplus/camera/ui/menu/setting/p;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 580
    :cond_5
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/p;->w()V

    .line 583
    :goto_1
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/p;->i:Landroidx/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/oplus/camera/ui/menu/setting/p;->O:Landroidx/preference/Preference;

    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceScreen;->c(Landroidx/preference/Preference;)Z

    .line 586
    invoke-direct {p0, v1}, Lcom/oplus/camera/ui/menu/setting/p;->b(Z)V

    .line 588
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/p;->getFragmentManager()Landroidx/fragment/app/h;

    move-result-object v3

    const-string v4, "androidx.preference.PreferenceFragment.DIALOG"

    invoke-virtual {v3, v4}, Landroidx/fragment/app/h;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 590
    instance-of v4, v3, Lcom/coui/appcompat/preference/c;

    if-eqz v4, :cond_7

    .line 591
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_7

    const-string v5, "key"

    .line 594
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_watermark_size_key"

    .line 596
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "pref_watermark_position_key"

    .line 597
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 598
    :cond_6
    check-cast v3, Lcom/coui/appcompat/preference/c;

    invoke-virtual {v3}, Lcom/coui/appcompat/preference/c;->dismiss()V

    .line 604
    :cond_7
    :goto_2
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/p;->i:Landroidx/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/oplus/camera/ui/menu/setting/p;->O:Landroidx/preference/Preference;

    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceScreen;->d(Landroidx/preference/Preference;)Z

    .line 606
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 607
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->h:Lcom/oplus/camera/ComboPreferences;

    const v3, 0x7f1003d5

    .line 609
    invoke-virtual {p0, v3}, Lcom/oplus/camera/ui/menu/setting/p;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_watermark_makeup_function_key"

    .line 607
    invoke-virtual {v0, v4, v3}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "on"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz p1, :cond_8

    move v1, v2

    .line 610
    :cond_8
    invoke-direct {p0, v1}, Lcom/oplus/camera/ui/menu/setting/p;->c(Z)V

    :cond_9
    return-void
.end method

.method private a(Lcom/coui/appcompat/widget/COUIEditText;ILjava/lang/String;)Z
    .locals 6

    .line 1657
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/COUIEditText;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x7d0

    .line 1658
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/oplus/camera/ui/menu/setting/p;->ac:J

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    goto :goto_0

    .line 1665
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->ac:J

    .line 1666
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/p;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/oplus/camera/util/o;->a(Landroid/content/Context;I)V

    const/4 p0, 0x1

    return p0

    .line 1659
    :cond_1
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "decisionAuthorDialogDismiss, need to dismiss editText length: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/coui/appcompat/widget/COUIEditText;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CameraSubSettingFragment"

    invoke-static {v0, p2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 1661
    invoke-direct {p0, p2}, Lcom/oplus/camera/ui/menu/setting/p;->d(Z)V

    .line 1662
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/COUIEditText;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "pref_watermark_author_key"

    invoke-direct {p0, v0, p1, p3}, Lcom/oplus/camera/ui/menu/setting/p;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return p2
.end method

.method static synthetic a(Lcom/oplus/camera/ui/menu/setting/p;Lcom/coui/appcompat/widget/COUIEditText;ILjava/lang/String;)Z
    .locals 0

    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/ui/menu/setting/p;->a(Lcom/coui/appcompat/widget/COUIEditText;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/oplus/camera/ui/menu/setting/p;)Lcom/oplus/camera/ComboPreferences;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/p;->h:Lcom/oplus/camera/ComboPreferences;

    return-object p0
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1066
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private b(Z)V
    .locals 1

    .line 623
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->s:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->a(Z)V

    .line 624
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->t:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->a(Z)V

    .line 625
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/p;->v:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->a(Z)V

    return-void
.end method

.method static synthetic c(Lcom/oplus/camera/ui/menu/setting/p;)Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/p;->S:Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;

    return-object p0
.end method

.method private c(Landroidx/preference/Preference;Ljava/lang/Object;)V
    .locals 11

    .line 642
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->h:Lcom/oplus/camera/ComboPreferences;

    const-string v1, "pref_watermark_first_open_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 643
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/p;->h:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {v3}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 645
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/p;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f030013

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 646
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/p;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f030012

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 647
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/p;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f030017

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 649
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateWatermarkContentAndConfig, isFirstOpen: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "CameraSubSettingFragment"

    invoke-static {v9, v8}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const v8, 0x7f100389

    const-string v9, "bottom_left_corner"

    const/4 v10, 0x0

    if-eqz v0, :cond_1

    .line 654
    invoke-interface {v3, v1, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 657
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/p;->S:Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;

    invoke-virtual {p1}, Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;->m()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 658
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/p;->S:Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;

    aget-object p2, v4, v10

    invoke-static {p2}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;->a(Ljava/util/Set;)V

    .line 661
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/p;->S:Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;

    invoke-virtual {p1}, Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;->m()Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;->b(Ljava/lang/Object;)Z

    .line 662
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/p;->R:Lcom/coui/appcompat/preference/COUIPreference;

    invoke-virtual {p0, v8}, Lcom/oplus/camera/ui/menu/setting/p;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/preference/COUIPreference;->d(Ljava/lang/CharSequence;)V

    .line 663
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/p;->W:Lcom/coui/appcompat/preference/COUIListPreference;

    aget-object p2, v7, v2

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/preference/COUIListPreference;->a(Ljava/lang/String;)V

    .line 664
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/p;->W:Lcom/coui/appcompat/preference/COUIListPreference;

    invoke-virtual {p1}, Lcom/coui/appcompat/preference/COUIListPreference;->o()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/preference/COUIListPreference;->b(Ljava/lang/Object;)Z

    .line 665
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/p;->X:Lcom/coui/appcompat/preference/COUIListPreference;

    invoke-virtual {p1, v9}, Lcom/coui/appcompat/preference/COUIListPreference;->a(Ljava/lang/String;)V

    .line 666
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/p;->X:Lcom/coui/appcompat/preference/COUIListPreference;

    invoke-virtual {p1}, Lcom/coui/appcompat/preference/COUIListPreference;->o()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/preference/COUIListPreference;->b(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :cond_1
    if-eqz p2, :cond_22

    .line 668
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->S:Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;

    const/4 v1, 0x2

    if-ne p1, v0, :cond_8

    const-string p1, "com.oplus.feature.slogan.location.support"

    .line 669
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    .line 670
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/p;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v7, 0x7f030011

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_2

    .line 673
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/p;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 674
    array-length v0, p1

    sub-int/2addr v0, v2

    invoke-static {p1, v10, v0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 675
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->S:Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;->a([Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 677
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/p;->S:Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;->b([Ljava/lang/CharSequence;)V

    .line 680
    :goto_0
    check-cast p2, Ljava/util/Set;

    .line 682
    aget-object p1, v4, v1

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 683
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/p;->h()Z

    move-result p1

    if-nez p1, :cond_3

    .line 686
    aget-object p1, v4, v1

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 690
    :cond_3
    aget-object p1, v4, v10

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    .line 692
    aget-object v0, v4, v2

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 694
    aget-object v4, v4, v1

    invoke-interface {p2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 696
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_4

    .line 699
    aget-object p1, v5, v10

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/oplus/camera/ui/menu/setting/p;->f:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    if-eqz v0, :cond_5

    .line 703
    aget-object p1, v5, v2

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/oplus/camera/ui/menu/setting/p;->f:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    if-eqz v4, :cond_6

    .line 707
    aget-object p1, v5, v1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/oplus/camera/ui/menu/setting/p;->f:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    invoke-static {}, Lcom/oplus/camera/q;->a()Lcom/oplus/camera/q;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->h:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/q;->a(Lcom/oplus/camera/ComboPreferences;)V

    .line 711
    :cond_6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    sget-object p1, Lcom/oplus/camera/ui/menu/setting/p;->f:Ljava/lang/String;

    .line 712
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 713
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-virtual {v6, v10, p1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_7
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 714
    :goto_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->S:Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;->c(Ljava/lang/CharSequence;)V

    .line 715
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/p;->S:Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;->a(Ljava/util/Set;)V

    goto/16 :goto_9

    .line 716
    :cond_8
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->T:Lcom/coui/appcompat/preference/COUISwitchPreference;

    const-string v5, "pref_watermark_display_info_key"

    if-ne p1, v0, :cond_b

    .line 717
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 718
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/setting/p;->h:Lcom/oplus/camera/ComboPreferences;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p2, v5, v0}, Lcom/oplus/camera/ComboPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    if-eqz p2, :cond_22

    .line 722
    aget-object v0, v4, v2

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-nez p1, :cond_9

    .line 726
    aget-object p1, v4, v2

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    if-nez v0, :cond_a

    if-eqz p1, :cond_a

    .line 728
    aget-object p1, v4, v2

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 731
    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/p;->S:Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;->a(Ljava/util/Set;)V

    goto/16 :goto_9

    .line 733
    :cond_b
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->U:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-ne p1, v0, :cond_e

    .line 734
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 735
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/setting/p;->h:Lcom/oplus/camera/ComboPreferences;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p2, v5, v0}, Lcom/oplus/camera/ComboPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    if-eqz p2, :cond_22

    .line 739
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->U:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {v0}, Lcom/coui/appcompat/preference/COUISwitchPreference;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    if-nez p1, :cond_c

    .line 742
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/p;->U:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {p1, v10}, Lcom/coui/appcompat/preference/COUISwitchPreference;->e(Z)V

    .line 743
    aget-object p1, v4, v10

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_c
    if-nez v0, :cond_d

    if-eqz p1, :cond_d

    .line 745
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/p;->U:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {p1, v2}, Lcom/coui/appcompat/preference/COUISwitchPreference;->e(Z)V

    .line 746
    aget-object p1, v4, v10

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 749
    :cond_d
    :goto_3
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/p;->S:Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;->a(Ljava/util/Set;)V

    goto/16 :goto_9

    .line 751
    :cond_e
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->V:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-ne p1, v0, :cond_13

    .line 752
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 756
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/p;->h()Z

    move-result v10

    xor-int/lit8 p2, v10, 0x1

    .line 757
    iput-boolean p2, p0, Lcom/oplus/camera/ui/menu/setting/p;->an:Z

    .line 760
    :cond_f
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/setting/p;->h:Lcom/oplus/camera/ComboPreferences;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p2, v5, v0}, Lcom/oplus/camera/ComboPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    if-eqz p2, :cond_12

    .line 764
    aget-object v0, v4, v1

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    if-nez p1, :cond_10

    .line 768
    aget-object v0, v4, v1

    invoke-interface {p2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 769
    invoke-static {}, Lcom/oplus/camera/q;->a()Lcom/oplus/camera/q;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->h:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/q;->a(Lcom/oplus/camera/ComboPreferences;)V

    goto :goto_4

    :cond_10
    if-nez v0, :cond_11

    if-eqz p1, :cond_11

    if-eqz v10, :cond_11

    .line 771
    aget-object v0, v4, v1

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 773
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->ar:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 774
    invoke-static {}, Lcom/oplus/camera/q;->a()Lcom/oplus/camera/q;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->h:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/q;->a(Lcom/oplus/camera/ComboPreferences;)V

    .line 778
    :cond_11
    :goto_4
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->S:Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;->a(Ljava/util/Set;)V

    .line 781
    :cond_12
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/setting/p;->V:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {p2, p1}, Lcom/coui/appcompat/preference/COUISwitchPreference;->e(Z)V

    goto/16 :goto_9

    .line 782
    :cond_13
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->R:Lcom/coui/appcompat/preference/COUIPreference;

    if-ne p1, v0, :cond_15

    .line 783
    check-cast p2, Ljava/lang/String;

    .line 784
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/p;->h:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {p1}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "pref_watermark_author_key"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 785
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 786
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/p;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 787
    :cond_14
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/p;->R:Lcom/coui/appcompat/preference/COUIPreference;

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/preference/COUIPreference;->d(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 788
    :cond_15
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->W:Lcom/coui/appcompat/preference/COUIListPreference;

    if-ne p1, v0, :cond_18

    .line 789
    check-cast p2, Ljava/lang/String;

    .line 790
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/p;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030016

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 792
    aget-object v0, v7, v10

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 793
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->W:Lcom/coui/appcompat/preference/COUIListPreference;

    aget-object p1, p1, v10

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/preference/COUIListPreference;->c(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 794
    :cond_16
    aget-object v0, v7, v2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 795
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->W:Lcom/coui/appcompat/preference/COUIListPreference;

    aget-object p1, p1, v2

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/preference/COUIListPreference;->c(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 797
    :cond_17
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->W:Lcom/coui/appcompat/preference/COUIListPreference;

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/preference/COUIListPreference;->c(Ljava/lang/CharSequence;)V

    .line 800
    :goto_5
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/p;->W:Lcom/coui/appcompat/preference/COUIListPreference;

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/preference/COUIListPreference;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 801
    :cond_18
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->X:Lcom/coui/appcompat/preference/COUIListPreference;

    if-ne p1, v0, :cond_22

    .line 802
    move-object p1, p2

    check-cast p1, Ljava/lang/String;

    .line 804
    invoke-static {}, Lcom/oplus/camera/util/Util;->am()Z

    move-result p2

    if-eqz p2, :cond_1b

    invoke-static {}, Lcom/oplus/camera/util/Util;->ar()Z

    move-result p2

    if-eqz p2, :cond_19

    goto :goto_6

    .line 837
    :cond_19
    invoke-static {}, Lcom/oplus/camera/util/Util;->am()Z

    move-result p1

    if-eqz p1, :cond_1a

    invoke-static {}, Lcom/oplus/camera/util/Util;->an()Z

    move-result p1

    if-nez p1, :cond_1a

    const-string p1, "oplus_left_bottom_watermark_position"

    goto/16 :goto_8

    :cond_1a
    const-string p1, "oplus_c_watermark_position"

    goto/16 :goto_8

    :cond_1b
    :goto_6
    const/4 p2, -0x1

    .line 805
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v4, 0x4

    const/4 v5, 0x3

    sparse-switch v0, :sswitch_data_0

    goto :goto_7

    :sswitch_0
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    move p2, v2

    goto :goto_7

    :sswitch_1
    const-string v0, "bottom_right_corner"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    move p2, v4

    goto :goto_7

    :sswitch_2
    const-string v0, "upper_right_corner"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    move p2, v5

    goto :goto_7

    :sswitch_3
    const-string v0, "upper_left_corner"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    move p2, v10

    goto :goto_7

    :sswitch_4
    const-string v0, "center"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    move p2, v1

    :cond_1c
    :goto_7
    if-eqz p2, :cond_21

    const v0, 0x7f1003b1

    if-eq p2, v2, :cond_20

    if-eq p2, v1, :cond_1f

    if-eq p2, v5, :cond_1e

    if-eq p2, v4, :cond_1d

    .line 832
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/p;->X:Lcom/coui/appcompat/preference/COUIListPreference;

    .line 833
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 832
    invoke-virtual {p1, p2}, Lcom/coui/appcompat/preference/COUIListPreference;->c(Ljava/lang/CharSequence;)V

    move-object p1, v9

    goto :goto_8

    .line 827
    :cond_1d
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/setting/p;->X:Lcom/coui/appcompat/preference/COUIListPreference;

    const v0, 0x7f1003ae

    .line 828
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 827
    invoke-virtual {p2, v0}, Lcom/coui/appcompat/preference/COUIListPreference;->c(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 822
    :cond_1e
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/setting/p;->X:Lcom/coui/appcompat/preference/COUIListPreference;

    const v0, 0x7f1003ad

    .line 823
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 822
    invoke-virtual {p2, v0}, Lcom/coui/appcompat/preference/COUIListPreference;->c(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 817
    :cond_1f
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/setting/p;->X:Lcom/coui/appcompat/preference/COUIListPreference;

    const v0, 0x7f1003af

    .line 818
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 817
    invoke-virtual {p2, v0}, Lcom/coui/appcompat/preference/COUIListPreference;->c(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 812
    :cond_20
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/setting/p;->X:Lcom/coui/appcompat/preference/COUIListPreference;

    .line 813
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 812
    invoke-virtual {p2, v0}, Lcom/coui/appcompat/preference/COUIListPreference;->c(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 807
    :cond_21
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/setting/p;->X:Lcom/coui/appcompat/preference/COUIListPreference;

    const v0, 0x7f1003b0

    .line 808
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 807
    invoke-virtual {p2, v0}, Lcom/coui/appcompat/preference/COUIListPreference;->c(Ljava/lang/CharSequence;)V

    .line 843
    :goto_8
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/setting/p;->X:Lcom/coui/appcompat/preference/COUIListPreference;

    invoke-virtual {p2, p1}, Lcom/coui/appcompat/preference/COUIListPreference;->a(Ljava/lang/String;)V

    .line 847
    :cond_22
    :goto_9
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 848
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/p;->G()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_4
        -0x4d552290 -> :sswitch_3
        -0x3d4101ab -> :sswitch_2
        -0x3b46bc94 -> :sswitch_1
        0x26581979 -> :sswitch_0
    .end sparse-switch
.end method

.method private c(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 630
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/p;->v:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->ab:Lcom/android/ui/menu/CameraWatermarkVisualPreference;

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->c(Landroidx/preference/Preference;)Z

    .line 631
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/p;->ab:Lcom/android/ui/menu/CameraWatermarkVisualPreference;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->h:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {p1, v0, v1}, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->a(ZLcom/oplus/camera/ComboPreferences;)V

    .line 633
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/p;->au:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 634
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/p;->au:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a;->getItemCount()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    goto :goto_0

    .line 637
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/p;->v:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/p;->ab:Lcom/android/ui/menu/CameraWatermarkVisualPreference;

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->d(Landroidx/preference/Preference;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic d(Lcom/oplus/camera/ui/menu/setting/p;)Lcom/coui/appcompat/preference/COUIPreference;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/p;->R:Lcom/coui/appcompat/preference/COUIPreference;

    return-object p0
.end method

.method private static d(Landroidx/preference/Preference;Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    .line 1297
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1299
    instance-of v0, p0, Landroidx/preference/ListPreference;

    if-eqz v0, :cond_1

    .line 1300
    check-cast p0, Landroidx/preference/ListPreference;

    .line 1301
    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->b(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 1304
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

.method private d(Z)V
    .locals 4

    .line 1766
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->Z:Lcom/coui/appcompat/dialog/panel/b;

    const-string v1, "CameraSubSettingFragment"

    if-nez v0, :cond_0

    const-string p0, "handleWatermarkAuthorEditDialog, mWatermarkAuthorEditDialog is null"

    .line 1767
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1772
    :cond_0
    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/panel/b;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1775
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleWatermarkAuthorEditDialog, isShow: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isFinishing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1776
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isShowing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/p;->Z:Lcom/coui/appcompat/dialog/panel/b;

    invoke-virtual {v3}, Lcom/coui/appcompat/dialog/panel/b;->isShowing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1775
    invoke-static {v1, v2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 1779
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/p;->Z:Lcom/coui/appcompat/dialog/panel/b;

    invoke-virtual {p1}, Lcom/coui/appcompat/dialog/panel/b;->isShowing()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1780
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/p;->Z:Lcom/coui/appcompat/dialog/panel/b;

    invoke-virtual {p1}, Lcom/coui/appcompat/dialog/panel/b;->show()V

    .line 1781
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/p;->Z:Lcom/coui/appcompat/dialog/panel/b;

    invoke-virtual {p1}, Lcom/coui/appcompat/dialog/panel/b;->c()Lcom/coui/appcompat/widget/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coui/appcompat/widget/l;->getDragView()Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const-wide/16 v0, 0x0

    .line 1782
    iput-wide v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->ac:J

    goto :goto_0

    .line 1785
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/p;->Z:Lcom/coui/appcompat/dialog/panel/b;

    invoke-virtual {p1}, Lcom/coui/appcompat/dialog/panel/b;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1786
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/p;->Z:Lcom/coui/appcompat/dialog/panel/b;

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/b;->dismiss()V

    goto :goto_0

    :cond_2
    const-string p0, "handleWatermarkAuthorEditDialog, watermarkDialogActivity is null"

    .line 1790
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic e(Lcom/oplus/camera/ui/menu/setting/p;)Lcom/coui/appcompat/dialog/panel/b;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/p;->Z:Lcom/coui/appcompat/dialog/panel/b;

    return-object p0
.end method

.method private e(Z)V
    .locals 4

    .line 1795
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->Y:Lcom/android/ui/menu/a;

    const-string v1, "CameraSubSettingFragment"

    if-nez v0, :cond_0

    const-string p0, "handleWatermarkDisplayInfoDialog, mCameraWatermarkDisplayInfoDialog is null"

    .line 1796
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1801
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/p;->getActivity()Landroidx/fragment/app/c;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1803
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/p;->getFragmentManager()Landroidx/fragment/app/h;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1804
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleWatermarkDisplayInfoDialog, isShow: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isFinishing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1805
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1804
    invoke-static {v1, v2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 1808
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1809
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/p;->Y:Lcom/android/ui/menu/a;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/android/ui/menu/a;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 1810
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/p;->Y:Lcom/android/ui/menu/a;

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->av:Lcom/android/ui/menu/a$a;

    invoke-virtual {p1, v0}, Lcom/android/ui/menu/a;->a(Lcom/android/ui/menu/a$a;)V

    .line 1811
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/p;->Y:Lcom/android/ui/menu/a;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/p;->getFragmentManager()Landroidx/fragment/app/h;

    move-result-object p0

    const-string v0, "DISPLAY_INFO"

    invoke-virtual {p1, p0, v0}, Lcom/android/ui/menu/a;->show(Landroidx/fragment/app/h;Ljava/lang/String;)V

    goto :goto_0

    .line 1814
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/p;->Y:Lcom/android/ui/menu/a;

    invoke-virtual {p0}, Lcom/android/ui/menu/a;->dismissAllowingStateLoss()V

    goto :goto_0

    :cond_2
    const-string p0, "handleWatermarkDisplayInfoDialog, CameraWaterMarkInfoDialogActivity, getFragmentManager is null"

    .line 1817
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic f(Lcom/oplus/camera/ui/menu/setting/p;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/p;->B()V

    return-void
.end method

.method static synthetic g(Lcom/oplus/camera/ui/menu/setting/p;)Landroid/location/Location;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/p;->as:Landroid/location/Location;

    return-object p0
.end method

.method private t()V
    .locals 3

    .line 287
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/p;->a()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/p;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->b(Ljava/lang/CharSequence;)V

    .line 289
    new-instance v0, Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/p;->o()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oplus/camera/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->h:Lcom/oplus/camera/ComboPreferences;

    .line 290
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->h:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/p;->o()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/oplus/camera/ui/menu/setting/p;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    const-string v0, "camera_setting_advance_root_preference"

    .line 292
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->i:Landroidx/preference/PreferenceScreen;

    const-string v0, "pref_bottom_line"

    .line 293
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->O:Landroidx/preference/Preference;

    const-string v0, "pref_shutter_setting_function"

    .line 295
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->j:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    const-string v0, "pref_self_setting_function"

    .line 296
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->k:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    const-string v0, "pref_lens_dirty_detection_function"

    .line 297
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->l:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    const-string v0, "pref_other_setting_function"

    .line 298
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->m:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    const-string v0, "pref_build_image_setting_function"

    .line 299
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->n:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    const-string v0, "pref_gradienter_setting_function"

    .line 300
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->o:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    const-string v0, "pref_video_sound_function"

    .line 301
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->p:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    const-string v0, "pref_video_sound_noise_function"

    .line 302
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->q:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    const-string v0, "pref_mirror_key"

    .line 304
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->z:Lcom/android/ui/menu/CameraSwitchPreference;

    const-string v0, "pref_lens_dirty_detection_key"

    .line 305
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->A:Lcom/android/ui/menu/CameraSwitchPreference;

    const-string v0, "pref_camera_quick_launch_key"

    .line 306
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->C:Lcom/android/ui/menu/CameraSwitchPreference;

    const-string v0, "pref_camera_storage_key"

    .line 307
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->D:Lcom/android/ui/menu/CameraSwitchPreference;

    const-string v0, "pref_camera_code_key"

    .line 308
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIJumpPreference;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->B:Lcom/coui/appcompat/preference/COUIJumpPreference;

    const-string v0, "pref_camera_tap_shutter_key"

    .line 309
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->w:Lcom/android/ui/menu/CameraSwitchPreference;

    const-string v0, "pref_camera_gesture_shutter_key"

    .line 310
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->x:Lcom/android/ui/menu/CameraSwitchPreference;

    const-string v0, "pref_shutter_setting_guide_key"

    .line 311
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/ui/menu/CameraShutterSettingPreference;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->y:Lcom/android/ui/menu/CameraShutterSettingPreference;

    const-string v0, "pref_watermark_visual_category"

    .line 313
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->r:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    const-string v0, "pref_watermark_visual_content_category"

    .line 314
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->s:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    const-string v0, "pref_watermark_visual_config_category"

    .line 315
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->t:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    const-string v0, "pref_watermark_visual_makeup_category"

    .line 316
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->v:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    const-string v0, "pref_watermark_function_key"

    .line 317
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->P:Lcom/android/ui/menu/CameraSwitchPreference;

    const-string v0, "pref_watermark_preview_key"

    .line 318
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->Q:Lcom/android/ui/menu/CameraWatermarkVisualPreference;

    .line 319
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->Q:Lcom/android/ui/menu/CameraWatermarkVisualPreference;

    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->ad:Z

    invoke-virtual {v0, v1}, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->e(Z)V

    const-string v0, "pref_watermark_author_key"

    .line 320
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIPreference;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->R:Lcom/coui/appcompat/preference/COUIPreference;

    const-string v0, "pref_watermark_display_info_key"

    .line 321
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->S:Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;

    const-string v0, "pref_watermark_date_and_time"

    .line 322
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUISwitchPreference;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->T:Lcom/coui/appcompat/preference/COUISwitchPreference;

    const-string v0, "pref_watermark_phone"

    .line 323
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUISwitchPreference;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->U:Lcom/coui/appcompat/preference/COUISwitchPreference;

    const-string v0, "pref_watermark_location"

    .line 324
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUISwitchPreference;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->V:Lcom/coui/appcompat/preference/COUISwitchPreference;

    const-string v0, "pref_watermark_size_key"

    .line 325
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIListPreference;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->W:Lcom/coui/appcompat/preference/COUIListPreference;

    const-string v0, "pref_watermark_position_key"

    .line 326
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIListPreference;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->X:Lcom/coui/appcompat/preference/COUIListPreference;

    const-string v0, "pref_watermark_makeup_function_key"

    .line 327
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->aa:Lcom/android/ui/menu/CameraSwitchPreference;

    const-string v0, "pref_watermark_makeup_preview_key"

    .line 328
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->ab:Lcom/android/ui/menu/CameraWatermarkVisualPreference;

    const-string v0, "pref_video_sound_normal_key"

    .line 330
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIMarkPreference;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->E:Lcom/coui/appcompat/preference/COUIMarkPreference;

    const-string v0, "pref_video_sound_panorama_key"

    .line 331
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIMarkPreference;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->F:Lcom/coui/appcompat/preference/COUIMarkPreference;

    const-string v0, "pref_video_sound_focusing_key"

    .line 332
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIMarkPreference;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->G:Lcom/coui/appcompat/preference/COUIMarkPreference;

    const-string v0, "pref_video_noise_filter_key"

    .line 333
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->H:Lcom/android/ui/menu/CameraSwitchPreference;

    const-string v0, "pref_camera_line_photo"

    .line 335
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIListPreference;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->K:Lcom/coui/appcompat/preference/COUIListPreference;

    const-string v0, "pref_camera_line_video"

    .line 336
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIListPreference;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->L:Lcom/coui/appcompat/preference/COUIListPreference;

    const-string v0, "pref_assist_gradienter"

    .line 337
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->I:Lcom/android/ui/menu/CameraSwitchPreference;

    const-string v0, "pref_share_and_edit_key"

    .line 338
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->J:Lcom/android/ui/menu/CameraSwitchPreference;

    const-string v0, "pref_about_setting_function"

    .line 340
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->u:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    const-string v0, "pref_about_setting_open_source_license"

    .line 341
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIJumpPreference;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->M:Lcom/coui/appcompat/preference/COUIJumpPreference;

    const-string v0, "pref_about_setting_privacy_policy"

    .line 342
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIJumpPreference;

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->N:Lcom/coui/appcompat/preference/COUIJumpPreference;

    .line 344
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->P:Lcom/android/ui/menu/CameraSwitchPreference;

    new-instance v1, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$MtykqXk9JIR7zId1igxjmKcMjLc;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$MtykqXk9JIR7zId1igxjmKcMjLc;-><init>(Lcom/oplus/camera/ui/menu/setting/p;)V

    invoke-virtual {v0, v1}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Landroidx/preference/Preference$b;)V

    .line 345
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->W:Lcom/coui/appcompat/preference/COUIListPreference;

    new-instance v1, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$MtykqXk9JIR7zId1igxjmKcMjLc;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$MtykqXk9JIR7zId1igxjmKcMjLc;-><init>(Lcom/oplus/camera/ui/menu/setting/p;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUIListPreference;->a(Landroidx/preference/Preference$b;)V

    .line 346
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->W:Lcom/coui/appcompat/preference/COUIListPreference;

    new-instance v1, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$UuQeMIsfcbAREyzPm3mx6Bly22k;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$UuQeMIsfcbAREyzPm3mx6Bly22k;-><init>(Lcom/oplus/camera/ui/menu/setting/p;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUIListPreference;->a(Landroidx/preference/Preference$c;)V

    .line 347
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->X:Lcom/coui/appcompat/preference/COUIListPreference;

    new-instance v1, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$MtykqXk9JIR7zId1igxjmKcMjLc;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$MtykqXk9JIR7zId1igxjmKcMjLc;-><init>(Lcom/oplus/camera/ui/menu/setting/p;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUIListPreference;->a(Landroidx/preference/Preference$b;)V

    .line 348
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->X:Lcom/coui/appcompat/preference/COUIListPreference;

    new-instance v1, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$UuQeMIsfcbAREyzPm3mx6Bly22k;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$UuQeMIsfcbAREyzPm3mx6Bly22k;-><init>(Lcom/oplus/camera/ui/menu/setting/p;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUIListPreference;->a(Landroidx/preference/Preference$c;)V

    .line 349
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->S:Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;

    new-instance v1, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$MtykqXk9JIR7zId1igxjmKcMjLc;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$MtykqXk9JIR7zId1igxjmKcMjLc;-><init>(Lcom/oplus/camera/ui/menu/setting/p;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;->a(Landroidx/preference/Preference$b;)V

    .line 350
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->S:Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;

    new-instance v1, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$UuQeMIsfcbAREyzPm3mx6Bly22k;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$UuQeMIsfcbAREyzPm3mx6Bly22k;-><init>(Lcom/oplus/camera/ui/menu/setting/p;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;->a(Landroidx/preference/Preference$c;)V

    .line 351
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->T:Lcom/coui/appcompat/preference/COUISwitchPreference;

    new-instance v1, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$MtykqXk9JIR7zId1igxjmKcMjLc;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$MtykqXk9JIR7zId1igxjmKcMjLc;-><init>(Lcom/oplus/camera/ui/menu/setting/p;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUISwitchPreference;->a(Landroidx/preference/Preference$b;)V

    .line 352
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->T:Lcom/coui/appcompat/preference/COUISwitchPreference;

    new-instance v1, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$UuQeMIsfcbAREyzPm3mx6Bly22k;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$UuQeMIsfcbAREyzPm3mx6Bly22k;-><init>(Lcom/oplus/camera/ui/menu/setting/p;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUISwitchPreference;->a(Landroidx/preference/Preference$c;)V

    .line 353
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->U:Lcom/coui/appcompat/preference/COUISwitchPreference;

    new-instance v1, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$MtykqXk9JIR7zId1igxjmKcMjLc;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$MtykqXk9JIR7zId1igxjmKcMjLc;-><init>(Lcom/oplus/camera/ui/menu/setting/p;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUISwitchPreference;->a(Landroidx/preference/Preference$b;)V

    .line 354
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->U:Lcom/coui/appcompat/preference/COUISwitchPreference;

    new-instance v1, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$UuQeMIsfcbAREyzPm3mx6Bly22k;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$UuQeMIsfcbAREyzPm3mx6Bly22k;-><init>(Lcom/oplus/camera/ui/menu/setting/p;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUISwitchPreference;->a(Landroidx/preference/Preference$c;)V

    .line 355
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->V:Lcom/coui/appcompat/preference/COUISwitchPreference;

    new-instance v1, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$MtykqXk9JIR7zId1igxjmKcMjLc;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$MtykqXk9JIR7zId1igxjmKcMjLc;-><init>(Lcom/oplus/camera/ui/menu/setting/p;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUISwitchPreference;->a(Landroidx/preference/Preference$b;)V

    .line 356
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->V:Lcom/coui/appcompat/preference/COUISwitchPreference;

    new-instance v1, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$UuQeMIsfcbAREyzPm3mx6Bly22k;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$UuQeMIsfcbAREyzPm3mx6Bly22k;-><init>(Lcom/oplus/camera/ui/menu/setting/p;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUISwitchPreference;->a(Landroidx/preference/Preference$c;)V

    .line 357
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->V:Lcom/coui/appcompat/preference/COUISwitchPreference;

    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->ad:Z

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUISwitchPreference;->a(Z)V

    .line 358
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->R:Lcom/coui/appcompat/preference/COUIPreference;

    new-instance v1, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$MtykqXk9JIR7zId1igxjmKcMjLc;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$MtykqXk9JIR7zId1igxjmKcMjLc;-><init>(Lcom/oplus/camera/ui/menu/setting/p;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUIPreference;->a(Landroidx/preference/Preference$b;)V

    .line 359
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->R:Lcom/coui/appcompat/preference/COUIPreference;

    new-instance v1, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$UuQeMIsfcbAREyzPm3mx6Bly22k;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$UuQeMIsfcbAREyzPm3mx6Bly22k;-><init>(Lcom/oplus/camera/ui/menu/setting/p;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUIPreference;->a(Landroidx/preference/Preference$c;)V

    .line 360
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->aa:Lcom/android/ui/menu/CameraSwitchPreference;

    new-instance v1, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$MtykqXk9JIR7zId1igxjmKcMjLc;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$MtykqXk9JIR7zId1igxjmKcMjLc;-><init>(Lcom/oplus/camera/ui/menu/setting/p;)V

    invoke-virtual {v0, v1}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Landroidx/preference/Preference$b;)V

    .line 362
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->w:Lcom/android/ui/menu/CameraSwitchPreference;

    new-instance v1, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$MtykqXk9JIR7zId1igxjmKcMjLc;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$MtykqXk9JIR7zId1igxjmKcMjLc;-><init>(Lcom/oplus/camera/ui/menu/setting/p;)V

    invoke-virtual {v0, v1}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Landroidx/preference/Preference$b;)V

    .line 363
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->x:Lcom/android/ui/menu/CameraSwitchPreference;

    new-instance v1, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$MtykqXk9JIR7zId1igxjmKcMjLc;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$MtykqXk9JIR7zId1igxjmKcMjLc;-><init>(Lcom/oplus/camera/ui/menu/setting/p;)V

    invoke-virtual {v0, v1}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Landroidx/preference/Preference$b;)V

    .line 364
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->z:Lcom/android/ui/menu/CameraSwitchPreference;

    new-instance v1, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$MtykqXk9JIR7zId1igxjmKcMjLc;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$MtykqXk9JIR7zId1igxjmKcMjLc;-><init>(Lcom/oplus/camera/ui/menu/setting/p;)V

    invoke-virtual {v0, v1}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Landroidx/preference/Preference$b;)V

    .line 365
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->A:Lcom/android/ui/menu/CameraSwitchPreference;

    new-instance v1, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$MtykqXk9JIR7zId1igxjmKcMjLc;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$MtykqXk9JIR7zId1igxjmKcMjLc;-><init>(Lcom/oplus/camera/ui/menu/setting/p;)V

    invoke-virtual {v0, v1}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Landroidx/preference/Preference$b;)V

    .line 366
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->C:Lcom/android/ui/menu/CameraSwitchPreference;

    new-instance v1, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$MtykqXk9JIR7zId1igxjmKcMjLc;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$MtykqXk9JIR7zId1igxjmKcMjLc;-><init>(Lcom/oplus/camera/ui/menu/setting/p;)V

    invoke-virtual {v0, v1}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Landroidx/preference/Preference$b;)V

    .line 367
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->D:Lcom/android/ui/menu/CameraSwitchPreference;

    new-instance v1, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$MtykqXk9JIR7zId1igxjmKcMjLc;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$MtykqXk9JIR7zId1igxjmKcMjLc;-><init>(Lcom/oplus/camera/ui/menu/setting/p;)V

    invoke-virtual {v0, v1}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Landroidx/preference/Preference$b;)V

    .line 369
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->B:Lcom/coui/appcompat/preference/COUIJumpPreference;

    new-instance v1, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$UuQeMIsfcbAREyzPm3mx6Bly22k;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$UuQeMIsfcbAREyzPm3mx6Bly22k;-><init>(Lcom/oplus/camera/ui/menu/setting/p;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUIJumpPreference;->a(Landroidx/preference/Preference$c;)V

    .line 370
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->E:Lcom/coui/appcompat/preference/COUIMarkPreference;

    new-instance v1, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$UuQeMIsfcbAREyzPm3mx6Bly22k;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$UuQeMIsfcbAREyzPm3mx6Bly22k;-><init>(Lcom/oplus/camera/ui/menu/setting/p;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUIMarkPreference;->a(Landroidx/preference/Preference$c;)V

    .line 371
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->F:Lcom/coui/appcompat/preference/COUIMarkPreference;

    new-instance v1, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$UuQeMIsfcbAREyzPm3mx6Bly22k;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$UuQeMIsfcbAREyzPm3mx6Bly22k;-><init>(Lcom/oplus/camera/ui/menu/setting/p;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUIMarkPreference;->a(Landroidx/preference/Preference$c;)V

    .line 372
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->G:Lcom/coui/appcompat/preference/COUIMarkPreference;

    new-instance v1, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$UuQeMIsfcbAREyzPm3mx6Bly22k;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$UuQeMIsfcbAREyzPm3mx6Bly22k;-><init>(Lcom/oplus/camera/ui/menu/setting/p;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUIMarkPreference;->a(Landroidx/preference/Preference$c;)V

    .line 373
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->H:Lcom/android/ui/menu/CameraSwitchPreference;

    new-instance v1, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$MtykqXk9JIR7zId1igxjmKcMjLc;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$MtykqXk9JIR7zId1igxjmKcMjLc;-><init>(Lcom/oplus/camera/ui/menu/setting/p;)V

    invoke-virtual {v0, v1}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Landroidx/preference/Preference$b;)V

    .line 375
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->K:Lcom/coui/appcompat/preference/COUIListPreference;

    new-instance v1, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$MtykqXk9JIR7zId1igxjmKcMjLc;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$MtykqXk9JIR7zId1igxjmKcMjLc;-><init>(Lcom/oplus/camera/ui/menu/setting/p;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUIListPreference;->a(Landroidx/preference/Preference$b;)V

    .line 376
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->L:Lcom/coui/appcompat/preference/COUIListPreference;

    new-instance v1, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$MtykqXk9JIR7zId1igxjmKcMjLc;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$MtykqXk9JIR7zId1igxjmKcMjLc;-><init>(Lcom/oplus/camera/ui/menu/setting/p;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUIListPreference;->a(Landroidx/preference/Preference$b;)V

    .line 377
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->I:Lcom/android/ui/menu/CameraSwitchPreference;

    new-instance v1, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$MtykqXk9JIR7zId1igxjmKcMjLc;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$MtykqXk9JIR7zId1igxjmKcMjLc;-><init>(Lcom/oplus/camera/ui/menu/setting/p;)V

    invoke-virtual {v0, v1}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Landroidx/preference/Preference$b;)V

    .line 378
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->J:Lcom/android/ui/menu/CameraSwitchPreference;

    new-instance v1, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$MtykqXk9JIR7zId1igxjmKcMjLc;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$MtykqXk9JIR7zId1igxjmKcMjLc;-><init>(Lcom/oplus/camera/ui/menu/setting/p;)V

    invoke-virtual {v0, v1}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Landroidx/preference/Preference$b;)V

    .line 380
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->M:Lcom/coui/appcompat/preference/COUIJumpPreference;

    new-instance v1, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$UuQeMIsfcbAREyzPm3mx6Bly22k;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$UuQeMIsfcbAREyzPm3mx6Bly22k;-><init>(Lcom/oplus/camera/ui/menu/setting/p;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUIJumpPreference;->a(Landroidx/preference/Preference$c;)V

    .line 381
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->N:Lcom/coui/appcompat/preference/COUIJumpPreference;

    new-instance v1, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$UuQeMIsfcbAREyzPm3mx6Bly22k;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/menu/setting/-$$Lambda$UuQeMIsfcbAREyzPm3mx6Bly22k;-><init>(Lcom/oplus/camera/ui/menu/setting/p;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUIJumpPreference;->a(Landroidx/preference/Preference$c;)V

    .line 383
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oplus/camera/util/Util;->ak()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->w:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Lcom/coui/appcompat/preference/COUISwitchPreference;)V

    .line 385
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->x:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Lcom/coui/appcompat/preference/COUISwitchPreference;)V

    .line 386
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->z:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Lcom/coui/appcompat/preference/COUISwitchPreference;)V

    .line 387
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->A:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Lcom/coui/appcompat/preference/COUISwitchPreference;)V

    .line 388
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->C:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Lcom/coui/appcompat/preference/COUISwitchPreference;)V

    .line 389
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->D:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Lcom/coui/appcompat/preference/COUISwitchPreference;)V

    .line 390
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->H:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Lcom/coui/appcompat/preference/COUISwitchPreference;)V

    .line 391
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->I:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Lcom/coui/appcompat/preference/COUISwitchPreference;)V

    .line 392
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->J:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Lcom/coui/appcompat/preference/COUISwitchPreference;)V

    .line 393
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->P:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Lcom/coui/appcompat/preference/COUISwitchPreference;)V

    .line 394
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->aa:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Lcom/coui/appcompat/preference/COUISwitchPreference;)V

    .line 395
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->T:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Lcom/coui/appcompat/preference/COUISwitchPreference;)V

    .line 396
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->U:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Lcom/coui/appcompat/preference/COUISwitchPreference;)V

    .line 397
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->V:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Lcom/coui/appcompat/preference/COUISwitchPreference;)V

    .line 398
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->M:Lcom/coui/appcompat/preference/COUIJumpPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUIJumpPreference;->b(Landroid/graphics/drawable/Drawable;)V

    .line 399
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/p;->N:Lcom/coui/appcompat/preference/COUIJumpPreference;

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/preference/COUIJumpPreference;->b(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private u()V
    .locals 2

    const-string v0, "com.oplus.feature.quick.launch.support"

    .line 404
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.oplus.feature.quick.launch.support.mode"

    .line 405
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x14

    .line 407
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->C:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/p;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f10041f

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private v()V
    .locals 5

    const-string v0, "CameraSubSettingFragment"

    const-string v1, "addOrRemoveCameraPreference()"

    .line 418
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->m:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->D:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_3

    const-string v0, "com.oplus.storage.save.to.external.support"

    .line 421
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/p;->o()Landroid/content/Context;

    move-result-object v0

    const-string v2, "com.coloros.movetosdcard"

    invoke-static {v0, v2}, Lcom/oplus/camera/util/Util;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 423
    :cond_0
    invoke-static {v1}, Lcom/oplus/camera/Storage;->b(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 424
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->m:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/p;->D:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->d(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 425
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->m:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    const-string v2, "pref_camera_storage_key"

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->d(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_3

    .line 426
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->m:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/p;->D:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->c(Landroidx/preference/Preference;)Z

    .line 430
    :cond_3
    :goto_0
    iget v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->ao:I

    if-nez v0, :cond_6

    .line 431
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->ah:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->ai:Z

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->m:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    if-eqz v0, :cond_5

    .line 432
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/p;->B:Lcom/coui/appcompat/preference/COUIJumpPreference;

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->d(Landroidx/preference/Preference;)Z

    .line 435
    :cond_5
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->ag:Z

    if-nez v0, :cond_7

    .line 436
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->i:Landroidx/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/p;->l:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceScreen;->d(Landroidx/preference/Preference;)Z

    goto :goto_1

    .line 439
    :cond_6
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->i:Landroidx/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/p;->k:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceScreen;->d(Landroidx/preference/Preference;)Z

    .line 440
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->i:Landroidx/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/p;->l:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceScreen;->d(Landroidx/preference/Preference;)Z

    .line 441
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->i:Landroidx/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/p;->m:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceScreen;->d(Landroidx/preference/Preference;)Z

    .line 444
    :cond_7
    :goto_1
    iget v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->ao:I

    const/4 v2, 0x1

    if-eq v2, v0, :cond_8

    .line 445
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->i:Landroidx/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/p;->j:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceScreen;->d(Landroidx/preference/Preference;)Z

    goto :goto_2

    .line 447
    :cond_8
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->i:Landroidx/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/p;->O:Landroidx/preference/Preference;

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceScreen;->d(Landroidx/preference/Preference;)Z

    :goto_2
    const/4 v0, 0x2

    .line 450
    iget v3, p0, Lcom/oplus/camera/ui/menu/setting/p;->ao:I

    if-eq v0, v3, :cond_9

    .line 451
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->r:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    if-eqz v0, :cond_a

    .line 452
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/p;->i:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v3, v0}, Landroidx/preference/PreferenceScreen;->d(Landroidx/preference/Preference;)Z

    goto :goto_3

    .line 455
    :cond_9
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->h:Lcom/oplus/camera/ComboPreferences;

    const v3, 0x7f1003d5

    .line 456
    invoke-virtual {p0, v3}, Lcom/oplus/camera/ui/menu/setting/p;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_watermark_function_key"

    .line 455
    invoke-virtual {v0, v4, v3}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "on"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 457
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Z)V

    :cond_a
    :goto_3
    const/4 v0, 0x3

    .line 460
    iget v3, p0, Lcom/oplus/camera/ui/menu/setting/p;->ao:I

    if-eq v0, v3, :cond_b

    .line 461
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->i:Landroidx/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/p;->p:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceScreen;->d(Landroidx/preference/Preference;)Z

    .line 462
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->i:Landroidx/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/p;->q:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceScreen;->d(Landroidx/preference/Preference;)Z

    goto :goto_4

    .line 464
    :cond_b
    invoke-static {}, Lcom/oplus/camera/util/Util;->D()Z

    move-result v0

    if-nez v0, :cond_c

    .line 465
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->i:Landroidx/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/p;->q:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceScreen;->d(Landroidx/preference/Preference;)Z

    :cond_c
    :goto_4
    const/4 v0, 0x4

    .line 469
    iget v3, p0, Lcom/oplus/camera/ui/menu/setting/p;->ao:I

    if-eq v0, v3, :cond_d

    .line 470
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->i:Landroidx/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/p;->n:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceScreen;->d(Landroidx/preference/Preference;)Z

    .line 471
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->i:Landroidx/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/p;->o:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceScreen;->d(Landroidx/preference/Preference;)Z

    :cond_d
    const/4 v0, 0x5

    .line 474
    iget v3, p0, Lcom/oplus/camera/ui/menu/setting/p;->ao:I

    if-eq v0, v3, :cond_e

    .line 475
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->i:Landroidx/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/p;->u:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceScreen;->d(Landroidx/preference/Preference;)Z

    .line 476
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->i:Landroidx/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/p;->N:Lcom/coui/appcompat/preference/COUIJumpPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceScreen;->d(Landroidx/preference/Preference;)Z

    .line 477
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->i:Landroidx/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/p;->M:Lcom/coui/appcompat/preference/COUIJumpPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceScreen;->d(Landroidx/preference/Preference;)Z

    goto :goto_5

    .line 479
    :cond_e
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->i:Landroidx/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/p;->O:Landroidx/preference/Preference;

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceScreen;->d(Landroidx/preference/Preference;)Z

    .line 482
    :goto_5
    invoke-static {}, Lcom/oplus/camera/util/Util;->al()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 483
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->t:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    if-eqz v0, :cond_f

    .line 484
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/p;->X:Lcom/coui/appcompat/preference/COUIListPreference;

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->d(Landroidx/preference/Preference;)Z

    .line 487
    :cond_f
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->V:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-eqz v0, :cond_10

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/setting/p;->s:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    if-eqz v3, :cond_10

    .line 488
    invoke-virtual {v3, v0}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->d(Landroidx/preference/Preference;)Z

    .line 491
    :cond_10
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/p;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f030012

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 492
    array-length v3, v0

    sub-int/2addr v3, v2

    invoke-static {v0, v1, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 493
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->S:Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;->a([Ljava/lang/CharSequence;)V

    .line 496
    :cond_11
    invoke-static {}, Lcom/oplus/camera/util/Util;->am()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/oplus/camera/util/Util;->ar()Z

    move-result v0

    if-nez v0, :cond_12

    .line 497
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->t:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    if-eqz v0, :cond_12

    .line 498
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->X:Lcom/coui/appcompat/preference/COUIListPreference;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->d(Landroidx/preference/Preference;)Z

    .line 499
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->t:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->W:Lcom/coui/appcompat/preference/COUIListPreference;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->d(Landroidx/preference/Preference;)Z

    .line 503
    :cond_12
    invoke-static {}, Lcom/oplus/camera/util/Util;->ar()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 504
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->U:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {v0}, Lcom/coui/appcompat/preference/COUISwitchPreference;->x()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 506
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "oneplus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 507
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->U:Lcom/coui/appcompat/preference/COUISwitchPreference;

    const v1, 0x7f1003da

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUISwitchPreference;->d(I)V

    .line 511
    :cond_13
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->ap:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->m:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    if-eqz v0, :cond_14

    .line 512
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->C:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->d(Landroidx/preference/Preference;)Z

    :cond_14
    const-string v0, "com.oplus.share.edit.support"

    .line 515
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->m:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    if-eqz v0, :cond_15

    .line 517
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->J:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->d(Landroidx/preference/Preference;)Z

    .line 520
    :cond_15
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->k:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Lcom/coui/appcompat/preference/COUIPreferenceCategory;)V

    .line 521
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->l:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Lcom/coui/appcompat/preference/COUIPreferenceCategory;)V

    .line 522
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->m:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Lcom/coui/appcompat/preference/COUIPreferenceCategory;)V

    return-void
.end method

.method private w()V
    .locals 2

    .line 615
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->r:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->Q:Lcom/android/ui/menu/CameraWatermarkVisualPreference;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->d(Landroidx/preference/Preference;)Z

    .line 616
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->r:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->s:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->d(Landroidx/preference/Preference;)Z

    .line 617
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->r:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->t:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->d(Landroidx/preference/Preference;)Z

    .line 618
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->r:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->aa:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->d(Landroidx/preference/Preference;)Z

    .line 619
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->r:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/p;->v:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->d(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private x()V
    .locals 3

    .line 1173
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->I:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_0

    .line 1174
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->h:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/ui/menu/CameraSwitchPreference;->B()Ljava/lang/String;

    move-result-object v0

    const-string v2, "off"

    invoke-virtual {v1, v0, v2}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1175
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/p;->I:Lcom/android/ui/menu/CameraSwitchPreference;

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Z)V

    :cond_0
    return-void
.end method

.method private y()V
    .locals 3

    .line 1180
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->L:Lcom/coui/appcompat/preference/COUIListPreference;

    if-eqz v0, :cond_0

    .line 1181
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->h:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/coui/appcompat/preference/COUIListPreference;->B()Ljava/lang/String;

    move-result-object v0

    const-string v2, "off"

    invoke-virtual {v1, v0, v2}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1182
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->L:Lcom/coui/appcompat/preference/COUIListPreference;

    invoke-static {v1, v0}, Lcom/oplus/camera/ui/menu/setting/p;->d(Landroidx/preference/Preference;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1183
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/p;->L:Lcom/coui/appcompat/preference/COUIListPreference;

    invoke-virtual {v2, v1}, Lcom/coui/appcompat/preference/COUIListPreference;->c(Ljava/lang/CharSequence;)V

    .line 1184
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/p;->L:Lcom/coui/appcompat/preference/COUIListPreference;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/preference/COUIListPreference;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private z()V
    .locals 3

    .line 1189
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->K:Lcom/coui/appcompat/preference/COUIListPreference;

    if-eqz v0, :cond_0

    .line 1190
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->h:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/coui/appcompat/preference/COUIListPreference;->B()Ljava/lang/String;

    move-result-object v0

    const-string v2, "off"

    invoke-virtual {v1, v0, v2}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1191
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->K:Lcom/coui/appcompat/preference/COUIListPreference;

    invoke-static {v1, v0}, Lcom/oplus/camera/ui/menu/setting/p;->d(Landroidx/preference/Preference;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1192
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/p;->K:Lcom/coui/appcompat/preference/COUIListPreference;

    invoke-virtual {v2, v1}, Lcom/coui/appcompat/preference/COUIListPreference;->c(Ljava/lang/CharSequence;)V

    .line 1193
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/p;->K:Lcom/coui/appcompat/preference/COUIListPreference;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/preference/COUIListPreference;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 276
    invoke-super {p0, p1, p2, p3}, Lcom/oplus/camera/ui/menu/setting/b;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/p;->au:Landroidx/recyclerview/widget/RecyclerView;

    .line 277
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/p;->au:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public a(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    .line 227
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/b;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/p;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/MyApplication;

    invoke-virtual {p1}, Lcom/oplus/camera/MyApplication;->i()V

    const-string p1, "CameraSubSettingFragment"

    const-string p2, "onCreatePreferences"

    .line 231
    invoke-static {p1, p2}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-static {}, Lcom/oplus/camera/util/Util;->aq()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "\u3001"

    .line 234
    sput-object p1, Lcom/oplus/camera/ui/menu/setting/p;->f:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ","

    .line 236
    sput-object p1, Lcom/oplus/camera/ui/menu/setting/p;->f:Ljava/lang/String;

    .line 239
    :goto_0
    new-instance p1, Lcom/oplus/camera/x;

    iget-object p2, p0, Lcom/oplus/camera/ui/menu/setting/p;->h:Lcom/oplus/camera/ComboPreferences;

    invoke-direct {p1, p2}, Lcom/oplus/camera/x;-><init>(Lcom/oplus/camera/ComboPreferences;)V

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/p;->at:Lcom/oplus/camera/x;

    .line 241
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/p;->at:Lcom/oplus/camera/x;

    if-eqz p1, :cond_1

    const/4 p2, 0x2

    iget v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->ao:I

    if-ne p2, v0, :cond_1

    .line 243
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/p;->getActivity()Landroidx/fragment/app/c;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/oplus/camera/x;->a(Landroid/content/Context;)V

    .line 244
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/p;->at:Lcom/oplus/camera/x;

    invoke-virtual {p1}, Lcom/oplus/camera/x;->a()V

    .line 247
    :cond_1
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f130004

    .line 248
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/p;->b(I)V

    goto :goto_1

    :cond_2
    const p1, 0x7f130003

    .line 250
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/p;->b(I)V

    .line 253
    :goto_1
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/p;->t()V

    .line 254
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/p;->v()V

    .line 255
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/p;->u()V

    return-void
.end method

.method protected a(Landroid/os/Bundle;)Z
    .locals 3

    .line 887
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/p;->getActivity()Landroidx/fragment/app/c;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->D:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v2, "key_storage_dialog_show"

    .line 889
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 890
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/p;->D:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {p0}, Lcom/android/ui/menu/CameraSwitchPreference;->c()V

    return v1

    .line 895
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/p;->getActivity()Landroidx/fragment/app/c;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "watermark_author_dialog_state"

    .line 896
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 897
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/setting/p;->a(Landroid/os/Parcelable;)V

    return v1

    .line 902
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/p;->getActivity()Landroidx/fragment/app/c;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 903
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/p;->getFragmentManager()Landroidx/fragment/app/h;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 904
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/p;->getFragmentManager()Landroidx/fragment/app/h;

    move-result-object p1

    const-string v0, "DISPLAY_INFO"

    .line 905
    invoke-virtual {p1, v0}, Landroidx/fragment/app/h;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/ui/menu/a;

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/p;->Y:Lcom/android/ui/menu/a;

    .line 907
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/p;->Y:Lcom/android/ui/menu/a;

    if-eqz p1, :cond_2

    .line 908
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/p;->av:Lcom/android/ui/menu/a$a;

    invoke-virtual {p1, p0}, Lcom/android/ui/menu/a;->a(Lcom/android/ui/menu/a$a;)V

    :cond_2
    return v1

    .line 914
    :cond_3
    invoke-super {p0, p1}, Lcom/oplus/camera/ui/menu/setting/b;->a(Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method protected b(Landroid/os/Bundle;)V
    .locals 2

    .line 919
    invoke-super {p0, p1}, Lcom/oplus/camera/ui/menu/setting/b;->b(Landroid/os/Bundle;)V

    .line 920
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->D:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_0

    .line 921
    invoke-virtual {v0}, Lcom/android/ui/menu/CameraSwitchPreference;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "key_storage_dialog_show"

    .line 920
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 923
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->Z:Lcom/coui/appcompat/dialog/panel/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/panel/b;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 924
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/p;->Z:Lcom/coui/appcompat/dialog/panel/b;

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/b;->a()Landroid/view/View;

    move-result-object p0

    const v0, 0x7f090088

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/widget/COUIEditText;

    .line 925
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIEditText;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object p0

    const-string v0, "watermark_author_dialog_state"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    return-void
.end method

.method public b(Landroidx/preference/Preference;)V
    .locals 1

    .line 1478
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->S:Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/p;->getFragmentManager()Landroidx/fragment/app/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1479
    invoke-virtual {p1}, Landroidx/preference/Preference;->B()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/ui/menu/a;->b(Ljava/lang/String;)Lcom/android/ui/menu/a;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/p;->Y:Lcom/android/ui/menu/a;

    const/4 p1, 0x1

    .line 1480
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/setting/p;->e(Z)V

    goto :goto_0

    .line 1482
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/ui/menu/setting/b;->b(Landroidx/preference/Preference;)V

    :goto_0
    return-void
.end method

.method protected c(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "CameraSubSettingFragment"

    const-string v1, "parseActivityArguments start"

    .line 1097
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, "pref_camera_tap_shutter_key"

    .line 1103
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->af:Z

    const-string v1, "pref_lens_dirty_detection_key"

    .line 1104
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->ag:Z

    const-string v1, "key_is_capture_mode"

    .line 1105
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->aj:Z

    const-string v1, "KEY_CAMERA_MENU"

    .line 1106
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->ak:Z

    const/4 v1, 0x0

    const-string v2, "camera_entry_from"

    .line 1107
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oplus/camera/ui/menu/setting/p;->al:Z

    const-string v2, "camera_sub_setting_from"

    .line 1108
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/oplus/camera/ui/menu/setting/p;->ao:I

    const-string v2, "pref_photo_codec_key"

    .line 1109
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oplus/camera/ui/menu/setting/p;->ah:Z

    const-string v2, "pref_10bits_heic_encode_key"

    .line 1110
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oplus/camera/ui/menu/setting/p;->ai:Z

    const-string v2, "pref_camera_quick_launch_key"

    .line 1111
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oplus/camera/ui/menu/setting/p;->ap:Z

    const-string v2, "camera_enter_form_lock_screen"

    .line 1112
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->aq:Z

    const-string v1, "allow_location"

    .line 1113
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/p;->ad:Z

    return-void
.end method

.method public j()V
    .locals 4

    .line 1436
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/p;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1439
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->Y:Lcom/android/ui/menu/a;

    if-eqz v1, :cond_0

    .line 1440
    iget-object v1, v1, Lcom/android/ui/menu/a;->e:Ljava/util/Set;

    goto :goto_0

    .line 1442
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->S:Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;

    invoke-virtual {v1}, Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;->m()Ljava/util/Set;

    move-result-object v1

    :goto_0
    const/4 v2, 0x2

    .line 1445
    aget-object v0, v0, v2

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1446
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->S:Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;->a(Ljava/util/Set;)V

    .line 1447
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->S:Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;

    invoke-virtual {v0}, Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;->m()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;->b(Ljava/lang/Object;)Z

    .line 1448
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->V:Lcom/coui/appcompat/preference/COUISwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUISwitchPreference;->e(Z)V

    .line 1449
    invoke-direct {p0, v2}, Lcom/oplus/camera/ui/menu/setting/p;->e(Z)V

    return-void
.end method

.method public k()V
    .locals 4

    .line 1454
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/p;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1455
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->S:Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;

    invoke-virtual {v1}, Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;->m()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x2

    .line 1456
    aget-object v0, v0, v2

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1457
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->S:Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;->a(Ljava/util/Set;)V

    .line 1458
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->S:Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;

    invoke-virtual {v0}, Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;->m()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;->b(Ljava/lang/Object;)Z

    .line 1459
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->V:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/preference/COUISwitchPreference;->e(Z)V

    .line 1460
    invoke-static {}, Lcom/oplus/camera/q;->a()Lcom/oplus/camera/q;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->h:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/q;->a(Lcom/oplus/camera/ComboPreferences;)V

    .line 1461
    invoke-direct {p0, v2}, Lcom/oplus/camera/ui/menu/setting/p;->e(Z)V

    return-void
.end method

.method protected l()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method protected m()V
    .locals 1

    .line 1471
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/p;->getActivity()Landroidx/fragment/app/c;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->x(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1472
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/p;->k()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 282
    invoke-super {p0}, Lcom/oplus/camera/ui/menu/setting/b;->onDestroy()V

    const/4 v0, 0x0

    .line 283
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->au:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .line 931
    invoke-super {p0}, Lcom/oplus/camera/ui/menu/setting/b;->onDestroyView()V

    .line 932
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->h:Lcom/oplus/camera/ComboPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 933
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/p;->o()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ComboPreferences;->a(Landroid/content/Context;)V

    .line 934
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->h:Lcom/oplus/camera/ComboPreferences;

    .line 937
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->i:Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    .line 938
    invoke-virtual {v0}, Landroidx/preference/PreferenceScreen;->d()V

    .line 939
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->i:Landroidx/preference/PreferenceScreen;

    .line 942
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->j:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    if-eqz v0, :cond_2

    .line 943
    invoke-virtual {v0}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->d()V

    .line 944
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->j:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    .line 947
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->k:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    if-eqz v0, :cond_3

    .line 948
    invoke-virtual {v0}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->d()V

    .line 949
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->k:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    .line 952
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->A:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_4

    .line 953
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->l:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    invoke-virtual {v0}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->d()V

    .line 954
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->l:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    .line 957
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->m:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    if-eqz v0, :cond_5

    .line 958
    invoke-virtual {v0}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->d()V

    .line 959
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->m:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    .line 962
    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->r:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    if-eqz v0, :cond_6

    .line 963
    invoke-virtual {v0}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->d()V

    .line 964
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->r:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    .line 967
    :cond_6
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->n:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    if-eqz v0, :cond_7

    .line 968
    invoke-virtual {v0}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->d()V

    .line 969
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->n:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    .line 972
    :cond_7
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->o:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    if-eqz v0, :cond_8

    .line 973
    invoke-virtual {v0}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->d()V

    .line 974
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->o:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    .line 977
    :cond_8
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->q:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    if-eqz v0, :cond_9

    .line 978
    invoke-virtual {v0}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->d()V

    .line 979
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->q:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    .line 982
    :cond_9
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->u:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    if-eqz v0, :cond_a

    .line 983
    invoke-virtual {v0}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->d()V

    .line 984
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->u:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    .line 987
    :cond_a
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->p:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    if-eqz v0, :cond_b

    .line 988
    invoke-virtual {v0}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->d()V

    .line 989
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->p:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    .line 992
    :cond_b
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->D:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/android/ui/menu/CameraSwitchPreference;->e()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "CameraSubSettingFragment"

    const-string v2, "onDestroyView, Storage Dialog dismiss"

    .line 993
    invoke-static {v0, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->D:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v0}, Lcom/android/ui/menu/CameraSwitchPreference;->e()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 996
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->D:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v0}, Lcom/android/ui/menu/CameraSwitchPreference;->f()V

    .line 999
    :cond_c
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->D:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v0}, Lcom/android/ui/menu/CameraSwitchPreference;->d()V

    .line 1000
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->D:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 1003
    :cond_d
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->z:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 1004
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->A:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 1005
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->B:Lcom/coui/appcompat/preference/COUIJumpPreference;

    .line 1006
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->C:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 1007
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->w:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 1008
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->x:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 1009
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->y:Lcom/android/ui/menu/CameraShutterSettingPreference;

    .line 1011
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->H:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 1012
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->E:Lcom/coui/appcompat/preference/COUIMarkPreference;

    .line 1013
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->G:Lcom/coui/appcompat/preference/COUIMarkPreference;

    .line 1014
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->F:Lcom/coui/appcompat/preference/COUIMarkPreference;

    .line 1016
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->I:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 1017
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->L:Lcom/coui/appcompat/preference/COUIListPreference;

    .line 1018
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->K:Lcom/coui/appcompat/preference/COUIListPreference;

    .line 1019
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->J:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 1020
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->M:Lcom/coui/appcompat/preference/COUIJumpPreference;

    .line 1021
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->N:Lcom/coui/appcompat/preference/COUIJumpPreference;

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 874
    invoke-super {p0}, Lcom/oplus/camera/ui/menu/setting/b;->onPause()V

    .line 875
    invoke-static {}, Lcom/oplus/camera/q;->a()Lcom/oplus/camera/q;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->ax:Lcom/oplus/camera/q$f;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/q;->b(Lcom/oplus/camera/q$f;)V

    .line 876
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/p;->getActivity()Landroidx/fragment/app/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 878
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 879
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->d(Z)V

    const/4 v1, 0x0

    .line 880
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->Z:Lcom/coui/appcompat/dialog/panel/b;

    .line 881
    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->e(Z)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1353
    :cond_0
    instance-of v1, p1, Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->R:Lcom/coui/appcompat/preference/COUIPreference;

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->S:Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;

    if-eq p1, v1, :cond_1

    .line 1356
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/b;->b(Landroidx/preference/Preference;Ljava/lang/Object;)V

    .line 1359
    :cond_1
    instance-of v1, p1, Lcom/coui/appcompat/preference/COUIListPreference;

    if-eqz v1, :cond_2

    .line 1360
    invoke-static {p1, p2}, Lcom/oplus/camera/ui/menu/setting/p;->d(Landroidx/preference/Preference;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1361
    move-object v2, p1

    check-cast v2, Lcom/coui/appcompat/preference/COUIListPreference;

    invoke-virtual {v2, v1}, Lcom/coui/appcompat/preference/COUIListPreference;->c(Ljava/lang/CharSequence;)V

    .line 1364
    :cond_2
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->C:Lcom/android/ui/menu/CameraSwitchPreference;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_5

    .line 1367
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 1368
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_3
    move v1, v0

    :goto_0
    if-eqz v1, :cond_4

    .line 1372
    iput v2, p0, Lcom/oplus/camera/ui/menu/setting/p;->g:I

    goto :goto_1

    .line 1374
    :cond_4
    iput v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->g:I

    .line 1377
    :goto_1
    iget p0, p0, Lcom/oplus/camera/ui/menu/setting/p;->g:I

    const-string v0, "com.oplus.camera quick launch"

    invoke-static {v0, p0}, Lcom/oplus/compat/a/a$a;->a(Ljava/lang/String;I)Z

    goto/16 :goto_3

    .line 1378
    :cond_5
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->P:Lcom/android/ui/menu/CameraSwitchPreference;

    if-ne p1, v1, :cond_6

    .line 1379
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Z)V

    goto :goto_3

    .line 1380
    :cond_6
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->S:Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;

    if-eq p1, v1, :cond_a

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->R:Lcom/coui/appcompat/preference/COUIPreference;

    if-eq p1, v1, :cond_a

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->T:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-eq p1, v1, :cond_a

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->U:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-eq p1, v1, :cond_a

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->W:Lcom/coui/appcompat/preference/COUIListPreference;

    if-eq p1, v1, :cond_a

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->X:Lcom/coui/appcompat/preference/COUIListPreference;

    if-ne p1, v1, :cond_7

    goto :goto_2

    .line 1388
    :cond_7
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->V:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-ne p1, v1, :cond_8

    .line 1389
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/p;->c(Landroidx/preference/Preference;Ljava/lang/Object;)V

    .line 1390
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/p;->getActivity()Landroidx/fragment/app/c;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oplus/camera/ui/menu/setting/p;->a(Landroid/app/Activity;)V

    .line 1392
    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->an:Z

    if-eqz v1, :cond_b

    .line 1393
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->an:Z

    return v0

    .line 1397
    :cond_8
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->x:Lcom/android/ui/menu/CameraSwitchPreference;

    if-ne p1, v0, :cond_9

    .line 1398
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1401
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->h:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const v1, 0x7f1001cc

    .line 1402
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/menu/setting/p;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "last_camera_gesture_shutter_key"

    .line 1401
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1402
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_3

    .line 1404
    :cond_9
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->aa:Lcom/android/ui/menu/CameraSwitchPreference;

    if-ne p1, v0, :cond_b

    .line 1405
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->c(Z)V

    goto :goto_3

    .line 1386
    :cond_a
    :goto_2
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/p;->c(Landroidx/preference/Preference;Ljava/lang/Object;)V

    .line 1387
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/p;->getActivity()Landroidx/fragment/app/c;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/menu/setting/p;->a(Landroid/app/Activity;)V

    .line 1410
    :cond_b
    :goto_3
    instance-of p0, p1, Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz p0, :cond_c

    .line 1411
    move-object p0, p1

    check-cast p0, Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {p0, p1, p2}, Lcom/android/ui/menu/CameraSwitchPreference;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result v2

    :cond_c
    return v2
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 1026
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/p;->getActivity()Landroidx/fragment/app/c;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/menu/setting/CameraSubSettingActivity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1032
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->B()Ljava/lang/String;

    move-result-object v0

    const-string v2, "pref_camera_code_key"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 1033
    invoke-virtual {p0, v2, v3}, Lcom/oplus/camera/ui/menu/setting/p;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "oplus.intent.action.APP_CODE_SETTING"

    .line 1034
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/setting/p;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1035
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->E:Lcom/coui/appcompat/preference/COUIMarkPreference;

    if-ne p1, v0, :cond_2

    .line 1036
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/p;->h:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {p1}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/p;->F()Ljava/lang/String;

    move-result-object v0

    const-string v2, "normal"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1037
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/p;->A()V

    goto/16 :goto_0

    .line 1038
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->F:Lcom/coui/appcompat/preference/COUIMarkPreference;

    if-ne p1, v0, :cond_3

    .line 1039
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/p;->h:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {p1}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/p;->F()Ljava/lang/String;

    move-result-object v0

    const-string v2, "panorama"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1040
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/p;->A()V

    goto :goto_0

    .line 1041
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->G:Lcom/coui/appcompat/preference/COUIMarkPreference;

    if-ne p1, v0, :cond_4

    .line 1042
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/p;->h:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {p1}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/p;->F()Ljava/lang/String;

    move-result-object v0

    const-string v2, "focusing"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1043
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/p;->A()V

    goto :goto_0

    .line 1044
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->R:Lcom/coui/appcompat/preference/COUIPreference;

    if-ne p1, v0, :cond_5

    .line 1045
    invoke-direct {p0, v3}, Lcom/oplus/camera/ui/menu/setting/p;->a(Landroid/os/Parcelable;)V

    const-string p1, "pref_watermark_author_key"

    .line 1046
    invoke-virtual {p0, p1, v3}, Lcom/oplus/camera/ui/menu/setting/p;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1047
    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->S:Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;

    if-ne p1, v0, :cond_6

    const-string p1, "pref_watermark_display_info_key"

    .line 1048
    invoke-virtual {p0, p1, v3}, Lcom/oplus/camera/ui/menu/setting/p;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1049
    :cond_6
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->W:Lcom/coui/appcompat/preference/COUIListPreference;

    if-ne p1, v0, :cond_7

    const-string p1, "pref_watermark_size_key"

    .line 1050
    invoke-virtual {p0, p1, v3}, Lcom/oplus/camera/ui/menu/setting/p;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1051
    :cond_7
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->X:Lcom/coui/appcompat/preference/COUIListPreference;

    if-ne p1, v0, :cond_8

    const-string p1, "pref_watermark_position_key"

    .line 1052
    invoke-virtual {p0, p1, v3}, Lcom/oplus/camera/ui/menu/setting/p;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1053
    :cond_8
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->M:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-ne p1, v0, :cond_9

    .line 1054
    new-instance p1, Landroid/content/Intent;

    const-string v0, "oplus.intent.action.APP_OPEN_SOURCE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1055
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/p;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1056
    :cond_9
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->N:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-ne p1, v0, :cond_a

    .line 1057
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.oplus.bootreg.activity.statementpage"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x2

    const-string v2, "statement_intent_flag"

    .line 1058
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1059
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/p;->startActivity(Landroid/content/Intent;)V

    :cond_a
    :goto_0
    return v1
.end method

.method public onResume()V
    .locals 2

    .line 266
    invoke-super {p0}, Lcom/oplus/camera/ui/menu/setting/b;->onResume()V

    .line 268
    iget v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->ao:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    .line 269
    invoke-static {}, Lcom/oplus/camera/q;->a()Lcom/oplus/camera/q;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->ax:Lcom/oplus/camera/q$f;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/q;->a(Lcom/oplus/camera/q$f;)V

    .line 270
    invoke-static {}, Lcom/oplus/camera/q;->a()Lcom/oplus/camera/q;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/p;->h:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/q;->b(Lcom/oplus/camera/ComboPreferences;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 260
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 261
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/p;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f06004a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/p;->c(I)V

    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 0

    .line 1090
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/p;->getActivity()Landroidx/fragment/app/c;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1092
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
    .locals 5

    .line 1119
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->z:Lcom/android/ui/menu/CameraSwitchPreference;

    const-string v1, "on"

    if-eqz v0, :cond_0

    .line 1120
    invoke-virtual {v0}, Lcom/android/ui/menu/CameraSwitchPreference;->L()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/p;->z:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v2}, Lcom/android/ui/menu/CameraSwitchPreference;->B()Ljava/lang/String;

    move-result-object v2

    const-string v3, "off"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1121
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/p;->z:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Z)V

    .line 1124
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->A:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_1

    .line 1125
    invoke-virtual {v0}, Lcom/android/ui/menu/CameraSwitchPreference;->L()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/p;->A:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 1126
    invoke-virtual {v2}, Lcom/android/ui/menu/CameraSwitchPreference;->B()Ljava/lang/String;

    move-result-object v2

    .line 1125
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1127
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/p;->A:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Z)V

    .line 1130
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->C:Lcom/android/ui/menu/CameraSwitchPreference;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 1131
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/p;->getActivity()Landroidx/fragment/app/c;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1134
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "com.oplus.camera quick launch"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->g:I

    .line 1137
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->C:Lcom/android/ui/menu/CameraSwitchPreference;

    iget v4, p0, Lcom/oplus/camera/ui/menu/setting/p;->g:I

    if-ne v2, v4, :cond_3

    move v4, v2

    goto :goto_0

    :cond_3
    move v4, v3

    :goto_0
    invoke-virtual {v0, v4}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Z)V

    .line 1140
    :cond_4
    iget v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->ao:I

    if-ne v2, v0, :cond_5

    .line 1141
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/p;->D()V

    .line 1142
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/p;->E()V

    .line 1145
    :cond_5
    iget v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->ao:I

    if-nez v0, :cond_6

    .line 1146
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/p;->B()V

    .line 1147
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/p;->C()V

    :cond_6
    const/4 v0, 0x3

    .line 1150
    iget v2, p0, Lcom/oplus/camera/ui/menu/setting/p;->ao:I

    if-ne v0, v2, :cond_7

    .line 1151
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/p;->A()V

    :cond_7
    const/4 v0, 0x4

    .line 1154
    iget v2, p0, Lcom/oplus/camera/ui/menu/setting/p;->ao:I

    if-ne v0, v2, :cond_8

    .line 1155
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/p;->z()V

    .line 1156
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/p;->y()V

    .line 1157
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/setting/p;->x()V

    .line 1160
    :cond_8
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->J:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_a

    const-string v0, "com.oplus.share.edit.support"

    .line 1161
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1162
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->J:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v0, v3}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Z)V

    .line 1163
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/p;->J:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {p0, v3}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Z)V

    goto :goto_1

    .line 1165
    :cond_9
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/p;->J:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v0}, Lcom/android/ui/menu/CameraSwitchPreference;->L()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/p;->J:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v2}, Lcom/android/ui/menu/CameraSwitchPreference;->B()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1167
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/p;->J:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Z)V

    :cond_a
    :goto_1
    return-void
.end method

.method protected r()V
    .locals 4

    const-string v0, "CameraSubSettingFragment"

    const-string v1, "installIntentFilterIfNeeded"

    .line 1321
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/p;->getActivity()Landroidx/fragment/app/c;

    move-result-object v0

    .line 1325
    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->ae:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1326
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->ae:Z

    .line 1327
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    .line 1328
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    .line 1329
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MEDIA_EJECT"

    .line 1330
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "file"

    .line 1331
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1332
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/p;->aw:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x0

    const-string v3, "oplus.permission.OPLUS_COMPONENT_SAFE"

    invoke-virtual {v0, p0, v1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method protected s()V
    .locals 2

    .line 1339
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/p;->getActivity()Landroidx/fragment/app/c;

    move-result-object v0

    .line 1341
    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->ae:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1342
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/p;->ae:Z

    .line 1343
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/p;->aw:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
