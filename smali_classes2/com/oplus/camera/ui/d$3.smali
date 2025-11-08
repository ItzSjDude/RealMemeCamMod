.class Lcom/oplus/camera/ui/d$3;
.super Ljava/lang/Object;
.source "CameraUIManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/d;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/d;)V
    .locals 0

    .line 1120
    iput-object p1, p0, Lcom/oplus/camera/ui/d$3;->a:Lcom/oplus/camera/ui/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1123
    iget-object p1, p0, Lcom/oplus/camera/ui/d$3;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/ui/d$3;->a:Lcom/oplus/camera/ui/d;

    .line 1124
    invoke-static {p1}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIListener;->am()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/ui/d$3;->a:Lcom/oplus/camera/ui/d;

    .line 1125
    invoke-static {p1}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIListener;->ah()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/ui/d$3;->a:Lcom/oplus/camera/ui/d;

    .line 1126
    invoke-static {p1}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIListener;->ai()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/ui/d$3;->a:Lcom/oplus/camera/ui/d;

    .line 1127
    invoke-static {p1}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIListener;->bx()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    return-void

    .line 1131
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/d$3;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/d;->bK()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1132
    iget-object p1, p0, Lcom/oplus/camera/ui/d$3;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/d;->cw()V

    .line 1135
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/ui/d$3;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/oplus/camera/ui/d$3;->a:Lcom/oplus/camera/ui/d;

    .line 1136
    invoke-static {p1}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p1

    const-string v0, "key_multicamera_type_menu_key"

    invoke-interface {p1, v0}, Lcom/oplus/camera/ui/CameraUIListener;->h(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1137
    iget-object p1, p0, Lcom/oplus/camera/ui/d$3;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->j(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ComboPreferences;

    move-result-object p1

    iget-object v1, p0, Lcom/oplus/camera/ui/d$3;->a:Lcom/oplus/camera/ui/d;

    .line 1138
    invoke-static {v1}, Lcom/oplus/camera/ui/d;->f(Lcom/oplus/camera/ui/d;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f100278

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1137
    invoke-virtual {p1, v0, v1}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "on"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 1139
    iget-object v2, p0, Lcom/oplus/camera/ui/d$3;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v2}, Lcom/oplus/camera/ui/d;->j(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    if-nez p1, :cond_3

    const-string v3, "key_multicamera_type_menu_need_zoom_key"

    .line 1142
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_3
    if-eqz p1, :cond_4

    const-string v1, "off"

    .line 1145
    :cond_4
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1146
    :cond_5
    iget-object p1, p0, Lcom/oplus/camera/ui/d$3;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/oplus/camera/ui/d$3;->a:Lcom/oplus/camera/ui/d;

    .line 1147
    invoke-static {p1}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p1

    const-string v1, "pref_street_long_exposure_menu"

    invoke-interface {p1, v1}, Lcom/oplus/camera/ui/CameraUIListener;->h(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1148
    iget-object p1, p0, Lcom/oplus/camera/ui/d$3;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->f(Lcom/oplus/camera/ui/d;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Landroidx/preference/j;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v2, "street_long_exposure_reddot_show"

    const/4 v3, 0x1

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1152
    iget-object p1, p0, Lcom/oplus/camera/ui/d$3;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->f(Lcom/oplus/camera/ui/d;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Landroidx/preference/j;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1153
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1156
    :cond_6
    iget-object p1, p0, Lcom/oplus/camera/ui/d$3;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->j(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ComboPreferences;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 1157
    iget-object p1, p0, Lcom/oplus/camera/ui/d$3;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->j(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ComboPreferences;

    move-result-object p1

    invoke-virtual {p1, v1, v3}, Lcom/oplus/camera/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 1158
    iget-object p0, p0, Lcom/oplus/camera/ui/d$3;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->j(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ComboPreferences;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    xor-int/2addr p1, v3

    invoke-interface {p0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_1

    .line 1163
    :cond_7
    iget-object p1, p0, Lcom/oplus/camera/ui/d$3;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->z(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/levelcontrol/c$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/c$a;->g()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1166
    iget-object p1, p0, Lcom/oplus/camera/ui/d$3;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->A(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/levelcontrol/c;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/oplus/camera/ui/d$3;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->A(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/levelcontrol/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->isMenuOpen()Z

    move-result p1

    if-nez p1, :cond_8

    .line 1167
    iget-object p1, p0, Lcom/oplus/camera/ui/d$3;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->B(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/setting/f;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/oplus/camera/ui/d$3;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->B(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/setting/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/setting/f;->c()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1168
    iget-object p1, p0, Lcom/oplus/camera/ui/d$3;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->B(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/setting/f;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/menu/setting/f;->a(I)V

    :cond_8
    const-string p1, "pref_video_blur_menu"

    goto :goto_0

    .line 1171
    :cond_9
    iget-object p1, p0, Lcom/oplus/camera/ui/d$3;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->z(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/levelcontrol/c$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/c$a;->h()Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "pref_tilt_shift_blur_menu"

    goto :goto_0

    .line 1173
    :cond_a
    iget-object p1, p0, Lcom/oplus/camera/ui/d$3;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->z(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/levelcontrol/c$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/c$a;->b()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 1174
    iget-object p1, p0, Lcom/oplus/camera/ui/d$3;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIListener;->aF()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_b
    const-string p1, ""

    .line 1177
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/ui/d$3;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p0

    invoke-interface {p0, p1, v0, v0}, Lcom/oplus/camera/ui/CameraUIListener;->a(Ljava/lang/String;ZZ)Z

    :cond_c
    :goto_1
    return-void
.end method
