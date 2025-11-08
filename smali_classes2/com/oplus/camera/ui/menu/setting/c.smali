.class public abstract Lcom/oplus/camera/ui/menu/setting/c;
.super Lcom/coui/appcompat/preference/e;
.source "BasePreferenceFragment.java"

# interfaces
.implements Landroidx/preference/Preference$b;
.implements Landroidx/preference/Preference$c;


# instance fields
.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:I

.field private f:Ljava/lang/Boolean;

.field private g:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

.field private h:Lcom/google/android/material/appbar/AppBarLayout;

.field private i:Landroid/view/View;

.field private j:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Lcom/coui/appcompat/preference/e;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/c;->b:Ljava/lang/String;

    const/4 v1, 0x2

    .line 55
    iput v1, p0, Lcom/oplus/camera/ui/menu/setting/c;->c:I

    const/4 v1, 0x0

    .line 56
    iput v1, p0, Lcom/oplus/camera/ui/menu/setting/c;->d:I

    .line 57
    iput v1, p0, Lcom/oplus/camera/ui/menu/setting/c;->e:I

    .line 58
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/c;->f:Ljava/lang/Boolean;

    .line 61
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/c;->i:Landroid/view/View;

    return-void
.end method

.method static a(Landroidx/preference/Preference;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 191
    invoke-virtual {p0}, Landroidx/preference/Preference;->B()Ljava/lang/String;

    move-result-object p0

    const-string v0, "pref_camera_tap_shutter_key"

    .line 193
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "off"

    const/4 v2, 0x0

    if-nez v0, :cond_3

    const-string v0, "pref_camera_gesture_shutter_key"

    .line 194
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "pref_camera_sound_key"

    .line 195
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "pref_camera_recordlocation_key"

    .line 196
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "pref_face_rectify_key"

    .line 197
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "pref_watermark_function_key"

    .line 198
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "pref_track_focus_key"

    .line 199
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "pref_inertial_zoom_key"

    .line 200
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "pref_assist_gradienter"

    .line 201
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "pref_share_and_edit_key"

    .line 202
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "pref_super_clear_portrait"

    .line 203
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "pref_watermark_date_and_time"

    .line 204
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "pref_watermark_location"

    .line 205
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "pref_mirror_setting_key"

    .line 206
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "pref_heif_format_key"

    .line 207
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "pref_hevc_video_key"

    .line 208
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "pref_10bits_heic_encode_key"

    .line 209
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "pref_camera_quick_launch_key"

    .line 217
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 220
    instance-of p0, p1, Ljava/lang/Boolean;

    if-eqz p0, :cond_1

    .line 221
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :cond_1
    if-eqz v2, :cond_2

    const-string p1, "only_start"

    goto :goto_1

    :cond_2
    move-object p1, v1

    goto :goto_1

    .line 212
    :cond_3
    :goto_0
    instance-of p0, p1, Ljava/lang/Boolean;

    if-eqz p0, :cond_4

    .line 213
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :cond_4
    if-eqz v2, :cond_2

    const-string p0, "on"

    move-object p1, p0

    :cond_5
    :goto_1
    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 5

    const-string v0, "pref_sound_types_key_rear"

    .line 252
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_7

    const-string v0, "pref_sound_types_key_front"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, "pref_help_and_feedback_key"

    .line 254
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    const-string v0, "pref_camera_reference_line"

    .line 255
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v2

    .line 256
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/c;->b:Ljava/lang/String;

    const/4 p1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v3, -0x733d8ab0

    const/4 v4, 0x2

    if-eq v0, v3, :cond_5

    const v3, -0x21dda81

    if-eq v0, v3, :cond_4

    const v3, 0x2d8e52fa

    if-eq v0, v3, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "slowVideo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    move p1, v4

    goto :goto_1

    :cond_4
    const-string v0, "fastVideo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    move p1, v1

    goto :goto_1

    :cond_5
    const-string v0, "commonVideo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    move p1, v2

    :cond_6
    :goto_1
    if-eqz p1, :cond_7

    if-eq p1, v1, :cond_7

    if-eq p1, v4, :cond_7

    return v2

    :cond_7
    :goto_2
    return v1
.end method

.method public a(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    .line 67
    invoke-super {p0, p1, p2}, Lcom/coui/appcompat/preference/e;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/c;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    const-string v0, "pref_camera_mode_key"

    .line 72
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/camera/ui/menu/setting/c;->b:Ljava/lang/String;

    const-string p2, "camera_enter_type"

    .line 73
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/oplus/camera/ui/menu/setting/c;->c:I

    const-string p2, "pref_camera_id_key"

    .line 74
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/oplus/camera/ui/menu/setting/c;->d:I

    const-string p2, "camera_property_camera_id"

    .line 75
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/oplus/camera/ui/menu/setting/c;->e:I

    .line 78
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/c;->c(Landroid/os/Bundle;)V

    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 235
    new-instance v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/c;->o()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;-><init>(Landroid/content/Context;)V

    .line 236
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/c;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mCaptureMode:Ljava/lang/String;

    .line 237
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/c;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mCaptureType:I

    .line 238
    iget v1, p0, Lcom/oplus/camera/ui/menu/setting/c;->c:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mCameraEnterType:Ljava/lang/String;

    .line 239
    iget p0, p0, Lcom/oplus/camera/ui/menu/setting/c;->e:I

    iput p0, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mCameraId:I

    if-eqz p2, :cond_1

    .line 242
    invoke-static {p0}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "front"

    goto :goto_0

    :cond_0
    const-string p0, "rear"

    :goto_0
    iput-object p0, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mRearOrFront:Ljava/lang/String;

    .line 243
    invoke-virtual {v0, p1, p2}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->buildSettingMenuItem(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 245
    :cond_1
    invoke-virtual {v0, p1}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->buildSettingJumpItem(Ljava/lang/String;)V

    .line 248
    :goto_1
    invoke-virtual {v0}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->report()V

    return-void
.end method

.method b(Landroidx/preference/Preference;Ljava/lang/Object;)V
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/c;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string p0, "BasePreferenceFragment"

    const-string p1, "report Msg data failed, current mode is null!"

    .line 300
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 305
    :cond_0
    invoke-static {p1, p2}, Lcom/oplus/camera/ui/menu/setting/c;->a(Landroidx/preference/Preference;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 306
    invoke-virtual {p1}, Landroidx/preference/Preference;->B()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/menu/setting/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public c(I)V
    .locals 2

    .line 132
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/c;->e()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/c;->e()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setBackgroundColor(I)V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/c;->h:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {v0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->setBackgroundColor(I)V

    .line 140
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/c;->getActivity()Landroidx/fragment/app/c;

    move-result-object v0

    if-eqz v0, :cond_3

    const/16 v0, 0x1e

    .line 141
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_2

    invoke-static {}, Lcom/oplus/camera/util/Util;->ab()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/c;->getActivity()Landroidx/fragment/app/c;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/c;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x1700

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 147
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/c;->getActivity()Landroidx/fragment/app/c;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/c;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    .line 148
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/c;->getActivity()Landroidx/fragment/app/c;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/c;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    goto :goto_0

    .line 150
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/c;->getActivity()Landroidx/fragment/app/c;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/c;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected abstract c(Landroid/os/Bundle;)V
.end method

.method protected n()Z
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/c;->f:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 83
    iget v0, p0, Lcom/oplus/camera/ui/menu/setting/c;->d:I

    invoke-static {v0}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/c;->f:Ljava/lang/Boolean;

    .line 86
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/c;->f:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public o()Landroid/content/Context;
    .locals 0

    .line 187
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/c;->j:Landroid/content/Context;

    return-object p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 177
    invoke-super {p0, p1}, Lcom/coui/appcompat/preference/e;->onAttach(Landroid/content/Context;)V

    .line 178
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/c;->j:Landroid/content/Context;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .line 91
    invoke-super {p0, p1, p2, p3}, Lcom/coui/appcompat/preference/e;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0903d5

    .line 92
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    iput-object p2, p0, Lcom/oplus/camera/ui/menu/setting/c;->g:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    .line 94
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/setting/c;->g:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    const p3, 0x7f08028e

    .line 98
    invoke-virtual {p2, p3}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setNavigationIcon(I)V

    .line 99
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/setting/c;->g:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    const p3, 0x7f100001

    invoke-virtual {p2, p3}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setNavigationContentDescription(I)V

    .line 100
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/setting/c;->g:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    new-instance p3, Lcom/oplus/camera/ui/menu/setting/c$1;

    invoke-direct {p3, p0}, Lcom/oplus/camera/ui/menu/setting/c$1;-><init>(Lcom/oplus/camera/ui/menu/setting/c;)V

    invoke-virtual {p2, p3}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/c;->e()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p2, p3}, Landroidx/core/h/v;->c(Landroid/view/View;Z)V

    .line 107
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/c;->e()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/c;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0602e5

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setBackgroundColor(I)V

    .line 108
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/setting/c;->g:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/c;->p()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 110
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/c;->getActivity()Landroidx/fragment/app/c;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/c;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    const p3, 0x7f100335

    invoke-virtual {p0, p3}, Lcom/oplus/camera/ui/menu/setting/c;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 111
    new-instance p2, Lcom/oplus/camera/algovisualization/h;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/c;->g:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    .line 112
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/c;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "showInfo"

    const-string v4, "visualizationState"

    const-string v5, "currentTime"

    const-string v6, "ALOG visualization has opened"

    const-string v7, "ALOG visualization opened"

    move-object v0, p2

    invoke-direct/range {v0 .. v7}, Lcom/oplus/camera/algovisualization/h;-><init>(Lcom/coui/appcompat/widget/toolbar/COUIToolbar;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Lcom/oplus/camera/algovisualization/h;->a()V

    :cond_1
    const p2, 0x7f09005b

    .line 119
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object p2, p0, Lcom/oplus/camera/ui/menu/setting/c;->h:Lcom/google/android/material/appbar/AppBarLayout;

    .line 120
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/setting/c;->h:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/c;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f07098e

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p3, v0, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setPadding(IIII)V

    .line 121
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/setting/c;->h:Lcom/google/android/material/appbar/AppBarLayout;

    const p3, 0x7f090136

    invoke-virtual {p2, p3}, Lcom/google/android/material/appbar/AppBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/camera/ui/menu/setting/c;->i:Landroid/view/View;

    .line 123
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/c;->i:Landroid/view/View;

    if-eqz p0, :cond_2

    const/4 p2, 0x0

    .line 125
    invoke-virtual {p0, p2}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    return-object p1
.end method

.method public onDetach()V
    .locals 0

    .line 183
    invoke-super {p0}, Lcom/coui/appcompat/preference/e;->onDetach()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 170
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/c;->s()V

    .line 172
    invoke-super {p0}, Lcom/coui/appcompat/preference/e;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 162
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/c;->r()V

    .line 163
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/c;->q()V

    .line 165
    invoke-super {p0}, Lcom/coui/appcompat/preference/e;->onResume()V

    return-void
.end method

.method public abstract p()Ljava/lang/String;
.end method

.method protected abstract q()V
.end method

.method protected abstract r()V
.end method

.method protected abstract s()V
.end method
