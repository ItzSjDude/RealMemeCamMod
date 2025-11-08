.class public Lcom/oplus/camera/entry/b;
.super Ljava/lang/Object;
.source "CameraEntry.java"

# interfaces
.implements Lcom/oplus/camera/entry/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/entry/b$a;
    }
.end annotation


# static fields
.field private static h:Ljava/lang/Long;


# instance fields
.field private A:Z

.field private B:Landroid/content/SharedPreferences;

.field private C:Ljava/lang/String;

.field private D:I

.field private E:I

.field private F:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:I

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Landroid/app/Activity;

.field private m:Ljava/lang/String;

.field private n:J

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:F

.field private w:Z

.field private x:I

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 67
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/oplus/camera/entry/b;->h:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 68
    iput v0, p0, Lcom/oplus/camera/entry/b;->i:I

    const/4 v1, -0x1

    .line 69
    iput v1, p0, Lcom/oplus/camera/entry/b;->j:I

    const-string v2, ""

    .line 70
    iput-object v2, p0, Lcom/oplus/camera/entry/b;->k:Ljava/lang/String;

    const/4 v3, 0x0

    .line 71
    iput-object v3, p0, Lcom/oplus/camera/entry/b;->l:Landroid/app/Activity;

    .line 72
    iput-object v2, p0, Lcom/oplus/camera/entry/b;->m:Ljava/lang/String;

    const-wide/16 v4, 0x0

    .line 73
    iput-wide v4, p0, Lcom/oplus/camera/entry/b;->n:J

    const/4 v2, 0x0

    .line 74
    iput-boolean v2, p0, Lcom/oplus/camera/entry/b;->o:Z

    .line 75
    iput-boolean v2, p0, Lcom/oplus/camera/entry/b;->p:Z

    .line 76
    iput-boolean v2, p0, Lcom/oplus/camera/entry/b;->q:Z

    .line 77
    iput-boolean v2, p0, Lcom/oplus/camera/entry/b;->r:Z

    .line 78
    iput-boolean v2, p0, Lcom/oplus/camera/entry/b;->s:Z

    .line 79
    iput-boolean v2, p0, Lcom/oplus/camera/entry/b;->t:Z

    .line 81
    iput-boolean v2, p0, Lcom/oplus/camera/entry/b;->u:Z

    const/4 v4, 0x0

    .line 82
    iput v4, p0, Lcom/oplus/camera/entry/b;->v:F

    .line 85
    iput-boolean v2, p0, Lcom/oplus/camera/entry/b;->w:Z

    const/4 v4, 0x3

    .line 86
    iput v4, p0, Lcom/oplus/camera/entry/b;->x:I

    .line 89
    iput-boolean v0, p0, Lcom/oplus/camera/entry/b;->y:Z

    .line 90
    iput-boolean v0, p0, Lcom/oplus/camera/entry/b;->z:Z

    .line 91
    iput-boolean v2, p0, Lcom/oplus/camera/entry/b;->A:Z

    .line 92
    iput-object v3, p0, Lcom/oplus/camera/entry/b;->B:Landroid/content/SharedPreferences;

    .line 93
    iput-object v3, p0, Lcom/oplus/camera/entry/b;->C:Ljava/lang/String;

    .line 94
    iput v1, p0, Lcom/oplus/camera/entry/b;->D:I

    .line 95
    iput v2, p0, Lcom/oplus/camera/entry/b;->E:I

    .line 96
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/entry/b;->F:Ljava/util/Set;

    return-void
.end method

.method private V()Z
    .locals 2

    .line 855
    invoke-virtual {p0}, Lcom/oplus/camera/entry/b;->J()I

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_1

    const/4 v0, 0x2

    .line 856
    invoke-virtual {p0}, Lcom/oplus/camera/entry/b;->J()I

    move-result p0

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method private W()Landroid/app/KeyguardManager;
    .locals 1

    .line 1447
    iget-object p0, p0, Lcom/oplus/camera/entry/b;->l:Landroid/app/Activity;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "keyguard"

    .line 1451
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    return-object p0
.end method

.method private X()Z
    .locals 2

    .line 1511
    iget-object p0, p0, Lcom/oplus/camera/entry/b;->B:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->s()I

    move-result v0

    const-string v1, "key_filter_index"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 1513
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->h()I

    move-result v0

    if-eq p0, v0, :cond_1

    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->i()I

    move-result v0

    if-eq p0, v0, :cond_1

    .line 1514
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->j()I

    move-result v0

    if-eq p0, v0, :cond_1

    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->k()I

    move-result v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private a(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 11

    const-string v0, "effect"

    const-string v1, "beauty"

    const-string v2, "front"

    const-string v3, "mode"

    .line 926
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 928
    iget-object v5, p0, Lcom/oplus/camera/entry/b;->m:Ljava/lang/String;

    const-string v6, "android.intent.action.MAIN"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    iget-object v5, p0, Lcom/oplus/camera/entry/b;->m:Ljava/lang/String;

    const-string v6, "com.oplus.camera.action.SHORTCUT_TYPE_MENU"

    .line 929
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz p2, :cond_0

    goto/16 :goto_a

    .line 933
    :cond_0
    iget-object p2, p0, Lcom/oplus/camera/entry/b;->F:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->clear()V

    .line 934
    invoke-virtual {p0}, Lcom/oplus/camera/entry/b;->O()V

    .line 936
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseIntentExtraInfo, mAction: "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/oplus/camera/entry/b;->m:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", extras: "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v5, "CameraEntry"

    invoke-static {v5, p2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, -0x1

    .line 942
    :try_start_0
    invoke-virtual {p1, v3, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    .line 944
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    move v7, p2

    .line 947
    :goto_0
    iget-object v8, p0, Lcom/oplus/camera/entry/b;->k:Ljava/lang/String;

    const-string v9, "com.heytap.lab"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    if-ne p2, v7, :cond_1

    .line 948
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 949
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    :cond_1
    const-string v3, "rear"

    const-string v8, "android.intent.extras.CAMERA_FACING"

    const/4 v9, 0x0

    if-eq v7, p2, :cond_3

    const/4 v10, 0x7

    if-ne v7, v10, :cond_2

    const-string v10, "com.oplus.feature.timelapse.pro.support"

    .line 953
    invoke-static {v10}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/16 v7, 0x13

    .line 957
    :cond_2
    invoke-static {v7}, Lcom/oplus/camera/entry/c;->a(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/oplus/camera/entry/b;->C:Ljava/lang/String;

    .line 959
    iget-object v7, p0, Lcom/oplus/camera/entry/b;->C:Ljava/lang/String;

    invoke-static {v7}, Lcom/oplus/camera/entry/b;->a(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 960
    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 961
    iget-object v7, p0, Lcom/oplus/camera/entry/b;->F:Ljava/util/Set;

    invoke-interface {v7, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v4, :cond_4

    const-string v7, "encode10bit"

    .line 965
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 967
    :try_start_1
    invoke-virtual {p1, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/oplus/camera/entry/b;->t:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    .line 969
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 972
    :goto_1
    iget-object v4, p0, Lcom/oplus/camera/entry/b;->F:Ljava/util/Set;

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 974
    :cond_4
    iput-boolean v9, p0, Lcom/oplus/camera/entry/b;->t:Z

    .line 980
    :goto_2
    :try_start_2
    invoke-virtual {p1, v3, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v4

    .line 982
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    move v4, v9

    :goto_3
    if-eqz v4, :cond_5

    .line 986
    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 987
    iget-object v4, p0, Lcom/oplus/camera/entry/b;->F:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 989
    iget-object v4, p0, Lcom/oplus/camera/entry/b;->C:Ljava/lang/String;

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/oplus/camera/entry/b;->k:Ljava/lang/String;

    const-string v7, "com.heytap.speechassist"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 990
    invoke-static {v9}, Lcom/oplus/camera/entry/c;->a(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/oplus/camera/entry/b;->C:Ljava/lang/String;

    .line 997
    :cond_5
    :try_start_3
    invoke-virtual {p1, v2, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception v4

    .line 999
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    move v4, v9

    :goto_4
    const/4 v7, 0x1

    if-eqz v4, :cond_6

    .line 1003
    invoke-virtual {p1, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1004
    iget-object v4, p0, Lcom/oplus/camera/entry/b;->F:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1006
    iget-object v2, p0, Lcom/oplus/camera/entry/b;->C:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 1007
    invoke-static {v9}, Lcom/oplus/camera/entry/c;->a(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oplus/camera/entry/b;->C:Ljava/lang/String;

    .line 1014
    :cond_6
    :try_start_4
    invoke-virtual {p1, v1, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_5

    :catch_4
    move-exception v2

    .line 1016
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v9

    :goto_5
    if-eqz v2, :cond_7

    .line 1020
    iget-object v2, p0, Lcom/oplus/camera/entry/b;->F:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1024
    :cond_7
    iput p2, p0, Lcom/oplus/camera/entry/b;->D:I

    .line 1025
    iput v9, p0, Lcom/oplus/camera/entry/b;->E:I

    .line 1028
    :try_start_5
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/oplus/camera/entry/b;->D:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_6

    :catch_5
    move-exception p2

    .line 1030
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1033
    :goto_6
    iget p2, p0, Lcom/oplus/camera/entry/b;->D:I

    if-lez p2, :cond_8

    .line 1034
    iget-object p2, p0, Lcom/oplus/camera/entry/b;->F:Ljava/util/Set;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1037
    iget p2, p0, Lcom/oplus/camera/entry/b;->D:I

    const/4 v0, 0x4

    if-ne p2, v0, :cond_8

    :try_start_6
    const-string p2, "filter"

    .line 1039
    invoke-virtual {p1, p2, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/oplus/camera/entry/b;->E:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_7

    :catch_6
    move-exception p2

    .line 1041
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_7
    const-string p2, "com.oplus.camera.extra.IS_VOICE_INTERACTION_ROOT"

    .line 1046
    invoke-virtual {p1, p2, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/oplus/camera/entry/b;->m:Ljava/lang/String;

    const-string v0, "android.media.action.STILL_IMAGE_CAMERA"

    .line 1047
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    const-string p2, "com.google.assistant.extra.CAMERA_OPEN_ONLY"

    .line 1048
    invoke-virtual {p1, p2, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_9

    .line 1049
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result p2

    const/high16 v0, 0x100000

    and-int/2addr p2, v0

    if-nez p2, :cond_9

    .line 1050
    iput-boolean v7, p0, Lcom/oplus/camera/entry/b;->w:Z

    const-string p2, "parseIntentExtraInfo, set mbRequstVoiceCapture true"

    .line 1052
    invoke-static {v5, p2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    :cond_9
    iget-boolean p2, p0, Lcom/oplus/camera/entry/b;->w:Z

    if-eqz p2, :cond_b

    const/4 p2, 0x3

    const-string v0, "com.google.assistant.extrPACKAGE_NAME_HEYTAP_MARKETa.TIMER_DURATION_SECONDS"

    .line 1056
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 1058
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseIntentExtraInfo, delayDuration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xa

    if-lez p2, :cond_a

    if-gt p2, v0, :cond_a

    .line 1061
    iput p2, p0, Lcom/oplus/camera/entry/b;->x:I

    goto :goto_8

    :cond_a
    if-le p2, v0, :cond_b

    .line 1063
    iput v0, p0, Lcom/oplus/camera/entry/b;->x:I

    :cond_b
    :goto_8
    const/4 p2, 0x0

    :try_start_7
    const-string v0, "zoom"

    .line 1068
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/oplus/camera/entry/b;->v:F
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_9

    :catch_7
    move-exception v0

    .line 1070
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1073
    :goto_9
    iget-object v0, p0, Lcom/oplus/camera/entry/b;->m:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/oplus/camera/entry/b;->v:F

    invoke-static {v0, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p2

    if-eqz p2, :cond_c

    .line 1074
    iput-boolean v7, p0, Lcom/oplus/camera/entry/b;->u:Z

    .line 1075
    invoke-static {v9}, Lcom/oplus/camera/entry/c;->a(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/camera/entry/b;->C:Ljava/lang/String;

    .line 1076
    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1077
    iget-object p2, p0, Lcom/oplus/camera/entry/b;->F:Ljava/util/Set;

    invoke-interface {p2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1080
    :cond_c
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "parseIntentExtraInfo, mBestOpticalZoomValue: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oplus/camera/entry/b;->v:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", mExtraIntent: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/entry/b;->F:Ljava/util/Set;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    invoke-static {p1}, Lcom/oplus/camera/util/AndroidTestHelper;->init(Landroid/content/Intent;)V

    :cond_d
    :goto_a
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "slowVideo"

    .line 1187
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "movie"

    .line 1188
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "night"

    .line 1189
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "professional"

    .line 1190
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "macro"

    .line 1191
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "highDefinition"

    .line 1192
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "street"

    .line 1193
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "panorama"

    .line 1195
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "com.oplus.feature.front.panorama.support"

    .line 1196
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private a(Ljava/lang/String;Lcom/oplus/camera/entry/b$a;)Z
    .locals 3

    .line 176
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "highDefinition"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x12

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "idPhoto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x14

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "microscope"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "panorama"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "3dPhoto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x1c

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "professional"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xa

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "slowVideo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xf

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "portrait"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x9

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "microscopeVideo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "night"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "movie"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "macro"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x11

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "xpan"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "longExposure"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x19

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "fastVideo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xe

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "superText"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v2

    goto/16 :goto_1

    :sswitch_10
    const-string v0, "ultraHD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto/16 :goto_1

    :sswitch_11
    const-string v0, "tiltShift"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x17

    goto/16 :goto_1

    :sswitch_12
    const-string v0, "highPixel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x13

    goto/16 :goto_1

    :sswitch_13
    const-string v0, "fishEye"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x15

    goto/16 :goto_1

    :sswitch_14
    const-string v0, "street"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x1b

    goto :goto_1

    :sswitch_15
    const-string v0, "starry"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x16

    goto :goto_1

    :sswitch_16
    const-string v0, "tiltShiftFastVideo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x18

    goto :goto_1

    :sswitch_17
    const-string v0, "double_exposure"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xc

    goto :goto_1

    :sswitch_18
    const-string v0, "timelapsePro"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x1a

    goto :goto_1

    :sswitch_19
    const-string v0, "common"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto :goto_1

    :sswitch_1a
    const-string v0, "groupshot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_1b
    const-string v0, "sticker"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xb

    goto :goto_1

    :sswitch_1c
    const-string v0, "commonVideo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xd

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    return v2

    .line 328
    :pswitch_0
    sget-object p0, Lcom/oplus/camera/entry/b$a;->back_main:Lcom/oplus/camera/entry/b$a;

    if-ne p2, p0, :cond_1

    goto :goto_2

    :cond_1
    move v1, v2

    :goto_2
    return v1

    .line 323
    :pswitch_1
    sget-object p0, Lcom/oplus/camera/entry/b$a;->back_wide:Lcom/oplus/camera/entry/b$a;

    if-eq p2, p0, :cond_3

    sget-object p0, Lcom/oplus/camera/entry/b$a;->back_main:Lcom/oplus/camera/entry/b$a;

    if-eq p2, p0, :cond_3

    sget-object p0, Lcom/oplus/camera/entry/b$a;->back_sat:Lcom/oplus/camera/entry/b$a;

    if-ne p2, p0, :cond_2

    goto :goto_3

    :cond_2
    move v1, v2

    :cond_3
    :goto_3
    return v1

    .line 320
    :pswitch_2
    sget-object p0, Lcom/oplus/camera/entry/b$a;->back_main:Lcom/oplus/camera/entry/b$a;

    if-ne p2, p0, :cond_4

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    return v1

    .line 317
    :pswitch_3
    sget-object p0, Lcom/oplus/camera/entry/b$a;->back_wide:Lcom/oplus/camera/entry/b$a;

    if-eq p0, p2, :cond_6

    sget-object p0, Lcom/oplus/camera/entry/b$a;->back_main:Lcom/oplus/camera/entry/b$a;

    if-ne p0, p2, :cond_5

    goto :goto_5

    :cond_5
    move v1, v2

    :cond_6
    :goto_5
    return v1

    .line 312
    :pswitch_4
    sget-object p0, Lcom/oplus/camera/entry/b$a;->back_main:Lcom/oplus/camera/entry/b$a;

    if-eq p2, p0, :cond_8

    sget-object p0, Lcom/oplus/camera/entry/b$a;->back_wide:Lcom/oplus/camera/entry/b$a;

    if-eq p2, p0, :cond_8

    sget-object p0, Lcom/oplus/camera/entry/b$a;->back_sat:Lcom/oplus/camera/entry/b$a;

    if-ne p2, p0, :cond_7

    goto :goto_6

    :cond_7
    move v1, v2

    :cond_8
    :goto_6
    return v1

    .line 307
    :pswitch_5
    sget-object p0, Lcom/oplus/camera/entry/b$a;->back_main:Lcom/oplus/camera/entry/b$a;

    if-ne p2, p0, :cond_9

    goto :goto_7

    :cond_9
    move v1, v2

    :goto_7
    return v1

    .line 304
    :pswitch_6
    sget-object p0, Lcom/oplus/camera/entry/b$a;->back_wide:Lcom/oplus/camera/entry/b$a;

    if-ne p2, p0, :cond_a

    goto :goto_8

    :cond_a
    move v1, v2

    :goto_8
    return v1

    .line 300
    :pswitch_7
    sget-object p0, Lcom/oplus/camera/entry/b$a;->back_main:Lcom/oplus/camera/entry/b$a;

    if-eq p2, p0, :cond_c

    sget-object p0, Lcom/oplus/camera/entry/b$a;->front_main:Lcom/oplus/camera/entry/b$a;

    if-ne p2, p0, :cond_b

    goto :goto_9

    :cond_b
    move v1, v2

    :cond_c
    :goto_9
    return v1

    .line 297
    :pswitch_8
    sget-object p0, Lcom/oplus/camera/entry/b$a;->back_main:Lcom/oplus/camera/entry/b$a;

    if-ne p2, p0, :cond_d

    goto :goto_a

    :cond_d
    move v1, v2

    :goto_a
    return v1

    .line 290
    :pswitch_9
    sget-object p0, Lcom/oplus/camera/entry/b$a;->back_wide:Lcom/oplus/camera/entry/b$a;

    if-ne p2, p0, :cond_e

    const-string p0, "com.oplus.ultra.wide.high.picturesize"

    .line 291
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 294
    :cond_e
    sget-object p0, Lcom/oplus/camera/entry/b$a;->back_main:Lcom/oplus/camera/entry/b$a;

    if-ne p2, p0, :cond_f

    goto :goto_b

    :cond_f
    move v1, v2

    :goto_b
    return v1

    .line 287
    :pswitch_a
    sget-object p0, Lcom/oplus/camera/entry/b$a;->back_macro:Lcom/oplus/camera/entry/b$a;

    if-ne p2, p0, :cond_10

    goto :goto_c

    :cond_10
    move v1, v2

    :goto_c
    return v1

    .line 282
    :pswitch_b
    sget-object p0, Lcom/oplus/camera/entry/b$a;->back_wide:Lcom/oplus/camera/entry/b$a;

    if-eq p2, p0, :cond_12

    sget-object p0, Lcom/oplus/camera/entry/b$a;->back_tele:Lcom/oplus/camera/entry/b$a;

    if-eq p2, p0, :cond_12

    sget-object p0, Lcom/oplus/camera/entry/b$a;->back_main:Lcom/oplus/camera/entry/b$a;

    if-ne p2, p0, :cond_11

    goto :goto_d

    :cond_11
    move v1, v2

    :cond_12
    :goto_d
    return v1

    .line 279
    :pswitch_c
    sget-object p0, Lcom/oplus/camera/entry/b$a;->back_main:Lcom/oplus/camera/entry/b$a;

    if-ne p2, p0, :cond_13

    goto :goto_e

    :cond_13
    move v1, v2

    :goto_e
    return v1

    .line 273
    :pswitch_d
    sget-object p0, Lcom/oplus/camera/entry/b$a;->front_main:Lcom/oplus/camera/entry/b$a;

    if-eq p2, p0, :cond_15

    sget-object p0, Lcom/oplus/camera/entry/b$a;->back_main:Lcom/oplus/camera/entry/b$a;

    if-eq p2, p0, :cond_15

    sget-object p0, Lcom/oplus/camera/entry/b$a;->back_wide:Lcom/oplus/camera/entry/b$a;

    if-eq p2, p0, :cond_15

    sget-object p0, Lcom/oplus/camera/entry/b$a;->back_sat:Lcom/oplus/camera/entry/b$a;

    if-ne p2, p0, :cond_14

    goto :goto_f

    :cond_14
    move v1, v2

    :cond_15
    :goto_f
    return v1

    .line 265
    :pswitch_e
    sget-object p0, Lcom/oplus/camera/entry/b$a;->front_main:Lcom/oplus/camera/entry/b$a;

    if-eq p2, p0, :cond_17

    sget-object p0, Lcom/oplus/camera/entry/b$a;->front_wide:Lcom/oplus/camera/entry/b$a;

    if-eq p2, p0, :cond_17

    sget-object p0, Lcom/oplus/camera/entry/b$a;->back_main:Lcom/oplus/camera/entry/b$a;

    if-eq p2, p0, :cond_17

    sget-object p0, Lcom/oplus/camera/entry/b$a;->back_wide:Lcom/oplus/camera/entry/b$a;

    if-eq p2, p0, :cond_17

    sget-object p0, Lcom/oplus/camera/entry/b$a;->back_tele:Lcom/oplus/camera/entry/b$a;

    if-eq p2, p0, :cond_17

    sget-object p0, Lcom/oplus/camera/entry/b$a;->back_sat:Lcom/oplus/camera/entry/b$a;

    if-ne p2, p0, :cond_16

    goto :goto_10

    :cond_16
    move v1, v2

    :cond_17
    :goto_10
    return v1

    .line 260
    :pswitch_f
    sget-object p0, Lcom/oplus/camera/entry/b$a;->front_main:Lcom/oplus/camera/entry/b$a;

    if-eq p2, p0, :cond_19

    sget-object p0, Lcom/oplus/camera/entry/b$a;->back_main:Lcom/oplus/camera/entry/b$a;

    if-eq p2, p0, :cond_19

    sget-object p0, Lcom/oplus/camera/entry/b$a;->back_wide:Lcom/oplus/camera/entry/b$a;

    if-ne p2, p0, :cond_18

    goto :goto_11

    :cond_18
    move v1, v2

    :cond_19
    :goto_11
    return v1

    .line 255
    :pswitch_10
    sget-object p0, Lcom/oplus/camera/entry/b$a;->front_dual:Lcom/oplus/camera/entry/b$a;

    if-eq p2, p0, :cond_1b

    sget-object p0, Lcom/oplus/camera/entry/b$a;->front_main:Lcom/oplus/camera/entry/b$a;

    if-eq p2, p0, :cond_1b

    sget-object p0, Lcom/oplus/camera/entry/b$a;->back_main:Lcom/oplus/camera/entry/b$a;

    if-ne p2, p0, :cond_1a

    goto :goto_12

    :cond_1a
    move v1, v2

    :cond_1b
    :goto_12
    return v1

    .line 249
    :pswitch_11
    sget-object p0, Lcom/oplus/camera/entry/b$a;->back_wide:Lcom/oplus/camera/entry/b$a;

    if-eq p2, p0, :cond_1d

    sget-object p0, Lcom/oplus/camera/entry/b$a;->back_tele:Lcom/oplus/camera/entry/b$a;

    if-eq p2, p0, :cond_1d

    sget-object p0, Lcom/oplus/camera/entry/b$a;->back_macro:Lcom/oplus/camera/entry/b$a;

    if-eq p2, p0, :cond_1d

    sget-object p0, Lcom/oplus/camera/entry/b$a;->back_main:Lcom/oplus/camera/entry/b$a;

    if-ne p2, p0, :cond_1c

    goto :goto_13

    :cond_1c
    move v1, v2

    :cond_1d
    :goto_13
    return v1

    .line 241
    :pswitch_12
    sget-object p0, Lcom/oplus/camera/entry/b$a;->back_dual:Lcom/oplus/camera/entry/b$a;

    if-eq p2, p0, :cond_1f

    sget-object p0, Lcom/oplus/camera/entry/b$a;->back_second_dual:Lcom/oplus/camera/entry/b$a;

    if-eq p2, p0, :cond_1f

    sget-object p0, Lcom/oplus/camera/entry/b$a;->back_mono:Lcom/oplus/camera/entry/b$a;

    if-eq p2, p0, :cond_1f

    sget-object p0, Lcom/oplus/camera/entry/b$a;->front_main:Lcom/oplus/camera/entry/b$a;

    if-eq p2, p0, :cond_1f

    sget-object p0, Lcom/oplus/camera/entry/b$a;->front_dual:Lcom/oplus/camera/entry/b$a;

    if-eq p2, p0, :cond_1f

    sget-object p0, Lcom/oplus/camera/entry/b$a;->back_streamer_main:Lcom/oplus/camera/entry/b$a;

    if-ne p2, p0, :cond_1e

    goto :goto_14

    :cond_1e
    move v1, v2

    :cond_1f
    :goto_14
    return v1

    .line 237
    :pswitch_13
    sget-object p0, Lcom/oplus/camera/entry/b$a;->front_main:Lcom/oplus/camera/entry/b$a;

    if-eq p2, p0, :cond_21

    sget-object p0, Lcom/oplus/camera/entry/b$a;->back_main:Lcom/oplus/camera/entry/b$a;

    if-ne p2, p0, :cond_20

    goto :goto_15

    :cond_20
    move v1, v2

    :cond_21
    :goto_15
    return v1

    .line 229
    :pswitch_14
    sget-object p0, Lcom/oplus/camera/entry/b$a;->back_main:Lcom/oplus/camera/entry/b$a;

    if-eq p2, p0, :cond_23

    sget-object p0, Lcom/oplus/camera/entry/b$a;->back_wide:Lcom/oplus/camera/entry/b$a;

    if-eq p2, p0, :cond_23

    sget-object p0, Lcom/oplus/camera/entry/b$a;->back_tele:Lcom/oplus/camera/entry/b$a;

    if-eq p2, p0, :cond_23

    sget-object p0, Lcom/oplus/camera/entry/b$a;->back_sat:Lcom/oplus/camera/entry/b$a;

    if-eq p2, p0, :cond_23

    sget-object p0, Lcom/oplus/camera/entry/b$a;->front_main:Lcom/oplus/camera/entry/b$a;

    if-eq p2, p0, :cond_23

    sget-object p0, Lcom/oplus/camera/entry/b$a;->front_wide:Lcom/oplus/camera/entry/b$a;

    if-ne p2, p0, :cond_22

    goto :goto_16

    :cond_22
    move v1, v2

    :cond_23
    :goto_16
    return v1

    :pswitch_15
    const-string p1, "com.oplus.mono.filter.mode.place"

    .line 208
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result p1

    .line 210
    sget-object v0, Lcom/oplus/camera/entry/b$a;->back_mono:Lcom/oplus/camera/entry/b$a;

    if-ne p2, v0, :cond_25

    if-eq p1, v1, :cond_24

    const-string p1, "com.oplus.mono.filter.support"

    .line 212
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_25

    :cond_24
    return v2

    .line 216
    :cond_25
    sget-object p1, Lcom/oplus/camera/entry/b$a;->back_mono:Lcom/oplus/camera/entry/b$a;

    if-ne p2, p1, :cond_26

    invoke-direct {p0}, Lcom/oplus/camera/entry/b;->X()Z

    move-result p0

    if-eqz p0, :cond_26

    const-string p0, "com.oplus.mono.id.include.in.sat"

    .line 217
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_26

    return v1

    .line 221
    :cond_26
    sget-object p0, Lcom/oplus/camera/entry/b$a;->back_sat:Lcom/oplus/camera/entry/b$a;

    if-eq p2, p0, :cond_28

    sget-object p0, Lcom/oplus/camera/entry/b$a;->back_main:Lcom/oplus/camera/entry/b$a;

    if-eq p2, p0, :cond_28

    sget-object p0, Lcom/oplus/camera/entry/b$a;->back_wide:Lcom/oplus/camera/entry/b$a;

    if-eq p2, p0, :cond_28

    sget-object p0, Lcom/oplus/camera/entry/b$a;->back_tele:Lcom/oplus/camera/entry/b$a;

    if-eq p2, p0, :cond_28

    sget-object p0, Lcom/oplus/camera/entry/b$a;->front_main:Lcom/oplus/camera/entry/b$a;

    if-eq p2, p0, :cond_28

    sget-object p0, Lcom/oplus/camera/entry/b$a;->front_wide:Lcom/oplus/camera/entry/b$a;

    if-ne p2, p0, :cond_27

    goto :goto_17

    :cond_27
    move v1, v2

    :cond_28
    :goto_17
    return v1

    .line 205
    :pswitch_16
    sget-object p0, Lcom/oplus/camera/entry/b$a;->back_main:Lcom/oplus/camera/entry/b$a;

    if-eq p2, p0, :cond_2a

    sget-object p0, Lcom/oplus/camera/entry/b$a;->back_wide:Lcom/oplus/camera/entry/b$a;

    if-ne p2, p0, :cond_29

    goto :goto_18

    :cond_29
    move v1, v2

    :cond_2a
    :goto_18
    return v1

    .line 202
    :pswitch_17
    sget-object p0, Lcom/oplus/camera/entry/b$a;->back_microscope:Lcom/oplus/camera/entry/b$a;

    if-ne p2, p0, :cond_2b

    goto :goto_19

    :cond_2b
    move v1, v2

    :goto_19
    return v1

    .line 199
    :pswitch_18
    sget-object p0, Lcom/oplus/camera/entry/b$a;->back_microscope:Lcom/oplus/camera/entry/b$a;

    if-ne p2, p0, :cond_2c

    goto :goto_1a

    :cond_2c
    move v1, v2

    :goto_1a
    return v1

    .line 196
    :pswitch_19
    sget-object p0, Lcom/oplus/camera/entry/b$a;->back_main:Lcom/oplus/camera/entry/b$a;

    if-ne p2, p0, :cond_2d

    goto :goto_1b

    :cond_2d
    move v1, v2

    :goto_1b
    return v1

    :pswitch_1a
    const-string p0, "com.oplus.feature.ultra.high.resolution.full.zoom.support"

    .line 183
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_30

    .line 184
    sget-object p0, Lcom/oplus/camera/entry/b$a;->back_main:Lcom/oplus/camera/entry/b$a;

    if-eq p2, p0, :cond_2f

    sget-object p0, Lcom/oplus/camera/entry/b$a;->back_wide:Lcom/oplus/camera/entry/b$a;

    if-eq p2, p0, :cond_2f

    sget-object p0, Lcom/oplus/camera/entry/b$a;->back_sat:Lcom/oplus/camera/entry/b$a;

    if-ne p2, p0, :cond_2e

    goto :goto_1c

    :cond_2e
    move v1, v2

    :cond_2f
    :goto_1c
    return v1

    :cond_30
    const-string p0, "com.oplus.ultra.high.resolution.switch.camera.support"

    .line 187
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_33

    .line 188
    sget-object p0, Lcom/oplus/camera/entry/b$a;->back_wide:Lcom/oplus/camera/entry/b$a;

    if-eq p2, p0, :cond_32

    sget-object p0, Lcom/oplus/camera/entry/b$a;->back_tele:Lcom/oplus/camera/entry/b$a;

    if-eq p2, p0, :cond_32

    sget-object p0, Lcom/oplus/camera/entry/b$a;->back_main:Lcom/oplus/camera/entry/b$a;

    if-ne p2, p0, :cond_31

    goto :goto_1d

    :cond_31
    move v1, v2

    :cond_32
    :goto_1d
    return v1

    .line 192
    :cond_33
    sget-object p0, Lcom/oplus/camera/entry/b$a;->back_main:Lcom/oplus/camera/entry/b$a;

    if-ne p2, p0, :cond_34

    goto :goto_1e

    :cond_34
    move v1, v2

    :goto_1e
    return v1

    .line 178
    :pswitch_1b
    sget-object p0, Lcom/oplus/camera/entry/b$a;->back_sat:Lcom/oplus/camera/entry/b$a;

    if-eq p2, p0, :cond_36

    sget-object p0, Lcom/oplus/camera/entry/b$a;->back_wide:Lcom/oplus/camera/entry/b$a;

    if-eq p2, p0, :cond_36

    sget-object p0, Lcom/oplus/camera/entry/b$a;->back_main:Lcom/oplus/camera/entry/b$a;

    if-ne p2, p0, :cond_35

    goto :goto_1f

    :cond_35
    move v1, v2

    :cond_36
    :goto_1f
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x733d8ab0 -> :sswitch_1c
        -0x70aaf6c3 -> :sswitch_1b
        -0x58568607 -> :sswitch_1a
        -0x50c0d615 -> :sswitch_19
        -0x4b90eff3 -> :sswitch_18
        -0x3f2f124b -> :sswitch_17
        -0x358924c6 -> :sswitch_16
        -0x353237e7 -> :sswitch_15
        -0x352aaffd -> :sswitch_14
        -0x3292a347 -> :sswitch_13
        -0x2a24c5fc -> :sswitch_12
        -0x19cca83b -> :sswitch_11
        -0x13e39a58 -> :sswitch_10
        -0x13d70cb8 -> :sswitch_f
        -0x21dda81 -> :sswitch_e
        -0x1bf945d -> :sswitch_d
        0x383d25 -> :sswitch_c
        0x62d9bcc -> :sswitch_b
        0x6343f30 -> :sswitch_a
        0x63f6418 -> :sswitch_9
        0x136c544b -> :sswitch_8
        0x2b77bb9b -> :sswitch_7
        0x2d8e52fa -> :sswitch_6
        0x34289e27 -> :sswitch_5
        0x391aba21 -> :sswitch_4
        0x3fc6a675 -> :sswitch_3
        0x51de9a10 -> :sswitch_2
        0x61ab39d7 -> :sswitch_1
        0x6594cc95 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
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
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 1460
    invoke-static {p1}, Lcom/oplus/camera/entry/b;->b(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    invoke-static {p0}, Lcom/oplus/camera/entry/b;->e(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_0

    const-string p1, "_from_other_app"

    .line 1461
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private b(Landroid/content/Intent;)V
    .locals 4

    const-string v0, ""

    .line 1300
    iput-object v0, p0, Lcom/oplus/camera/entry/b;->k:Ljava/lang/String;

    const/4 v0, 0x0

    .line 1303
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/entry/b;->l:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getReferrer()Landroid/net/Uri;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1305
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v0

    :goto_0
    :try_start_1
    const-string v2, "extra_key_caller_package_name"

    .line 1312
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    const-string v3, "android_camera_launch_type"

    .line 1313
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    move-object v2, v0

    .line 1315
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1318
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1319
    iput-object v2, p0, Lcom/oplus/camera/entry/b;->k:Ljava/lang/String;

    goto :goto_3

    :cond_0
    if-eqz v1, :cond_1

    .line 1321
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/entry/b;->k:Ljava/lang/String;

    .line 1324
    :cond_1
    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "gimbal_launch_from_framework"

    .line 1325
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x4

    .line 1326
    iput p1, p0, Lcom/oplus/camera/entry/b;->j:I

    goto :goto_4

    :cond_2
    const-string p1, "quick_launch_from_framework"

    .line 1327
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x5

    .line 1328
    iput p1, p0, Lcom/oplus/camera/entry/b;->j:I

    goto :goto_4

    :cond_3
    const-string p1, "watch_launch_from_framework"

    .line 1329
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x6

    .line 1330
    iput p1, p0, Lcom/oplus/camera/entry/b;->j:I

    .line 1334
    :cond_4
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initCallPkg, mCallPkg: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/camera/entry/b;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mCameraEntryTypeFromFramework: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/camera/entry/b;->j:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraEntry"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "CameraEntry"

    if-nez p1, :cond_0

    const-string p0, "parseIntent, intent is null"

    .line 1215
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1220
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/entry/b;->m:Ljava/lang/String;

    .line 1221
    invoke-direct {p0, p1}, Lcom/oplus/camera/entry/b;->b(Landroid/content/Intent;)V

    .line 1223
    iget-object v1, p0, Lcom/oplus/camera/entry/b;->m:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_a

    const-string v3, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    .line 1224
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1225
    iput-boolean v2, p0, Lcom/oplus/camera/entry/b;->s:Z

    .line 1226
    iput v2, p0, Lcom/oplus/camera/entry/b;->i:I

    goto :goto_2

    .line 1227
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/entry/b;->m:Ljava/lang/String;

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "common"

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/oplus/camera/entry/b;->m:Ljava/lang/String;

    const-string v4, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 1230
    :cond_2
    iget-object v1, p0, Lcom/oplus/camera/entry/b;->m:Ljava/lang/String;

    const-string v4, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "commonVideo"

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/oplus/camera/entry/b;->m:Ljava/lang/String;

    const-string v5, "com.oplus.action.VIDEO_CAPTURE"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 1233
    :cond_3
    iget-object v1, p0, Lcom/oplus/camera/entry/b;->m:Ljava/lang/String;

    const-string v5, "com.oplus.action.VIDEO_CAMERA"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1234
    iput v2, p0, Lcom/oplus/camera/entry/b;->i:I

    .line 1235
    iput-object v4, p0, Lcom/oplus/camera/entry/b;->C:Ljava/lang/String;

    goto :goto_2

    .line 1236
    :cond_4
    iget-object v1, p0, Lcom/oplus/camera/entry/b;->m:Ljava/lang/String;

    const-string v4, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1247
    iput-boolean v2, p0, Lcom/oplus/camera/entry/b;->s:Z

    .line 1248
    iput-boolean v2, p0, Lcom/oplus/camera/entry/b;->r:Z

    .line 1249
    iput v2, p0, Lcom/oplus/camera/entry/b;->i:I

    .line 1251
    invoke-virtual {p0}, Lcom/oplus/camera/entry/b;->n()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1252
    iput-object v3, p0, Lcom/oplus/camera/entry/b;->C:Ljava/lang/String;

    goto :goto_2

    .line 1255
    :cond_5
    iput v2, p0, Lcom/oplus/camera/entry/b;->i:I

    goto :goto_2

    :cond_6
    :goto_0
    const/4 v1, 0x3

    .line 1231
    iput v1, p0, Lcom/oplus/camera/entry/b;->i:I

    .line 1232
    iput-object v4, p0, Lcom/oplus/camera/entry/b;->C:Ljava/lang/String;

    goto :goto_2

    :cond_7
    :goto_1
    const/4 v1, 0x2

    .line 1228
    iput v1, p0, Lcom/oplus/camera/entry/b;->i:I

    .line 1229
    iput-object v3, p0, Lcom/oplus/camera/entry/b;->C:Ljava/lang/String;

    .line 1258
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/oplus/camera/entry/b;->N()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1259
    iget-object v1, p0, Lcom/oplus/camera/entry/b;->l:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 1261
    instance-of v3, v1, Lcom/oplus/camera/MyApplication;

    if-eqz v3, :cond_9

    .line 1262
    check-cast v1, Lcom/oplus/camera/MyApplication;

    invoke-virtual {v1}, Lcom/oplus/camera/MyApplication;->i()V

    :cond_9
    const-string v1, "com.oplus.feature.quick.launch.support.mode"

    .line 1265
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "android_camera_launch_type"

    .line 1266
    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v1, :cond_a

    if-eqz v3, :cond_a

    .line 1269
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "mode"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1274
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseIntent, mCameraEntryType: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oplus/camera/entry/b;->i:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mCallPkg: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/camera/entry/b;->k:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mAction: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/camera/entry/b;->m:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/entry/b;->a(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 1279
    invoke-virtual {p0}, Lcom/oplus/camera/entry/b;->w()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 1280
    iget-object p1, p0, Lcom/oplus/camera/entry/b;->l:Landroid/app/Activity;

    invoke-virtual {p1, v2}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    .line 1283
    :cond_b
    invoke-virtual {p0}, Lcom/oplus/camera/entry/b;->B()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 1284
    invoke-virtual {p0}, Lcom/oplus/camera/entry/b;->C()V

    :cond_c
    return-void
.end method

.method public static b(I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq v0, p0, :cond_1

    const/4 v0, 0x3

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "sticker"

    .line 1203
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "common"

    .line 1204
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "portrait"

    .line 1205
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "commonVideo"

    .line 1206
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private b(Ljava/lang/String;Lcom/oplus/camera/entry/b$a;)Z
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 337
    sget-object v3, Lcom/oplus/camera/entry/b$a;->back_sat:Lcom/oplus/camera/entry/b$a;

    const-string v4, "video_size_4kuhd"

    const-string v5, "pref_video_size_key"

    const-string v6, "night"

    const-string v7, "common"

    const-string v8, "commonVideo"

    const-string v10, "off"

    const-string v11, "on"

    const/4 v12, 0x0

    if-ne v2, v3, :cond_18

    .line 338
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "com.oplus.feature.video.sat.support"

    .line 339
    invoke-static {v3}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    return v12

    :cond_0
    const-string v3, "com.oplus.feature.video.live.hdr.sat.support"

    .line 343
    invoke-static {v3}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v0, Lcom/oplus/camera/entry/b;->B:Landroid/content/SharedPreferences;

    iget-object v13, v0, Lcom/oplus/camera/entry/b;->l:Landroid/app/Activity;

    .line 345
    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f1004ca

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "key_video_hdr"

    .line 344
    invoke-interface {v3, v14, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v12

    .line 349
    :cond_1
    iget-object v3, v0, Lcom/oplus/camera/entry/b;->B:Landroid/content/SharedPreferences;

    iget-object v13, v0, Lcom/oplus/camera/entry/b;->l:Landroid/app/Activity;

    .line 350
    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f100487

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "key_ultra_night_video"

    .line 349
    invoke-interface {v3, v14, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v12

    :cond_2
    const-string v3, "com.oplus.feature.ai.enhancement.video.sat.support"

    .line 354
    invoke-static {v3}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v0, Lcom/oplus/camera/entry/b;->B:Landroid/content/SharedPreferences;

    .line 356
    invoke-static {v12}, Lcom/oplus/camera/util/Util;->e(Z)Ljava/lang/String;

    move-result-object v13

    const-string v14, "key_ai_enhancement_video"

    .line 355
    invoke-interface {v3, v14, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v12

    .line 360
    :cond_3
    iget-object v3, v0, Lcom/oplus/camera/entry/b;->B:Landroid/content/SharedPreferences;

    const-string v13, "pref_video_super_eis_key"

    invoke-interface {v3, v13, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    return v12

    .line 364
    :cond_4
    iget-object v3, v0, Lcom/oplus/camera/entry/b;->B:Landroid/content/SharedPreferences;

    const-string v13, "pref_video_blur_menu_state"

    invoke-interface {v3, v13, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    return v12

    .line 368
    :cond_5
    iget-object v3, v0, Lcom/oplus/camera/entry/b;->B:Landroid/content/SharedPreferences;

    sget v13, Lcom/oplus/camera/ui/preview/a/j;->a:I

    const-string v14, "key_video_filter_index"

    invoke-interface {v3, v14, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 369
    iget-object v13, v0, Lcom/oplus/camera/entry/b;->B:Landroid/content/SharedPreferences;

    iget-object v14, v0, Lcom/oplus/camera/entry/b;->l:Landroid/app/Activity;

    const v15, 0x7f10049c

    .line 370
    invoke-virtual {v14, v15}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "pref_video_fps_key"

    .line 369
    invoke-interface {v13, v15, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 371
    iget-object v14, v0, Lcom/oplus/camera/entry/b;->B:Landroid/content/SharedPreferences;

    .line 372
    invoke-static {v5, v12}, Lcom/oplus/camera/aps/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    .line 371
    invoke-interface {v14, v5, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 374
    invoke-static {v12}, Lcom/oplus/camera/ui/preview/a/j;->b(Z)I

    move-result v15

    const/16 v9, 0x1e

    if-ne v3, v15, :cond_6

    const-string v15, "video_size_720p"

    .line 375
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-ne v15, v9, :cond_6

    return v12

    .line 380
    :cond_6
    invoke-static {v12}, Lcom/oplus/camera/ui/preview/a/j;->a(Z)I

    move-result v15

    if-ne v3, v15, :cond_8

    const-string v3, "video_size_720p"

    .line 381
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "video_size_1080p"

    .line 382
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "com.oplus.feature.video.blur.1080p.support"

    .line 383
    invoke-static {v3}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 384
    :cond_7
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v9, :cond_8

    return v12

    :cond_8
    const-string v3, "com.oplus.feature.video.sat.mask"

    .line 389
    invoke-static {v3}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result v15

    const/16 v16, 0x1

    and-int/lit8 v15, v15, 0x1

    if-nez v15, :cond_9

    .line 390
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-eq v15, v9, :cond_9

    return v12

    .line 394
    :cond_9
    invoke-static {v3}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result v15

    and-int/lit8 v15, v15, 0x2

    if-nez v15, :cond_a

    .line 395
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    return v12

    .line 399
    :cond_a
    invoke-static {v3}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result v15

    and-int/lit8 v15, v15, 0x4

    if-nez v15, :cond_b

    .line 400
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-eq v15, v9, :cond_b

    .line 401
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    return v12

    .line 405
    :cond_b
    invoke-static {v3}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result v9

    and-int/lit8 v9, v9, 0x8

    if-nez v9, :cond_c

    .line 406
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/16 v13, 0x78

    if-ne v9, v13, :cond_c

    .line 407
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    return v12

    .line 411
    :cond_c
    invoke-static {v3}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result v3

    and-int/lit8 v3, v3, 0x10

    if-nez v3, :cond_18

    const-string v3, "video_size_8k"

    .line 412
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    return v12

    .line 415
    :cond_d
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 416
    invoke-static {}, Lcom/oplus/camera/e/a;->f()Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, v0, Lcom/oplus/camera/entry/b;->B:Landroid/content/SharedPreferences;

    const-string v9, "key_high_picture_size"

    .line 417
    invoke-interface {v3, v9, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_18

    :cond_e
    return v12

    .line 420
    :cond_f
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 421
    invoke-static {}, Lcom/oplus/camera/e/a;->f()Z

    move-result v3

    if-nez v3, :cond_10

    return v12

    .line 425
    :cond_10
    iget-object v3, v0, Lcom/oplus/camera/entry/b;->B:Landroid/content/SharedPreferences;

    const-string v9, "pref_night_pro_mode_key"

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    return v12

    :cond_11
    const-string v3, "superText"

    .line 428
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    const-string v3, "ultraHD"

    .line 429
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    const-string v3, "tiltShift"

    .line 430
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    goto :goto_0

    :cond_12
    const-string v3, "fastVideo"

    .line 434
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    const-string v3, "com.oplus.feature.fast.video.sat.support"

    .line 435
    invoke-static {v3}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v3, v0, Lcom/oplus/camera/entry/b;->B:Landroid/content/SharedPreferences;

    iget-object v9, v0, Lcom/oplus/camera/entry/b;->l:Landroid/app/Activity;

    const v13, 0x7f1004cc

    .line 437
    invoke-virtual {v9, v13}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v13, "pref_video_hyper_lapse_key"

    .line 436
    invoke-interface {v3, v13, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    :cond_13
    return v12

    :cond_14
    const-string v3, "tiltShiftFastVideo"

    .line 440
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    const-string v3, "com.oplus.feature.fast.video.sat.support"

    .line 441
    invoke-static {v3}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    return v12

    :cond_15
    const-string v3, "groupshot"

    .line 444
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    return v12

    :cond_16
    const-string v3, "xpan"

    .line 446
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    return v12

    .line 431
    :cond_17
    :goto_0
    invoke-static {}, Lcom/oplus/camera/e/a;->f()Z

    move-result v3

    if-nez v3, :cond_18

    return v12

    .line 451
    :cond_18
    sget-object v3, Lcom/oplus/camera/entry/b$a;->back_tele:Lcom/oplus/camera/entry/b$a;

    const-string v9, "professional"

    const-string v13, "pref_switch_camera_key"

    const-string v14, "camera_ultra_wide"

    const-string v15, "camera_main"

    if-ne v2, v3, :cond_23

    .line 452
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 453
    iget-object v3, v0, Lcom/oplus/camera/entry/b;->B:Landroid/content/SharedPreferences;

    invoke-interface {v3, v13, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "camera_tele"

    .line 454
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    return v12

    :cond_19
    const-string v3, "timelapsePro"

    .line 457
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    return v12

    :cond_1a
    const-string v3, "movie"

    .line 459
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 460
    iget-object v3, v0, Lcom/oplus/camera/entry/b;->B:Landroid/content/SharedPreferences;

    const-string v4, "com.oplus.feature.wide.angle.open.default"

    .line 461
    invoke-static {v4}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    move-object v4, v14

    goto :goto_1

    :cond_1b
    move-object v4, v15

    :goto_1
    const-string v5, "pref_switch_camera_bar_key"

    .line 460
    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "camera_tele"

    .line 463
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    return v12

    :cond_1c
    const-string v3, "ultraHD"

    .line 466
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 467
    iget-object v3, v0, Lcom/oplus/camera/entry/b;->B:Landroid/content/SharedPreferences;

    invoke-interface {v3, v13, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "camera_tele"

    .line 468
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    return v12

    .line 471
    :cond_1d
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 472
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    goto :goto_3

    .line 477
    :cond_1e
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 478
    iget-object v3, v0, Lcom/oplus/camera/entry/b;->B:Landroid/content/SharedPreferences;

    iget-object v12, v0, Lcom/oplus/camera/entry/b;->l:Landroid/app/Activity;

    move-object/from16 v17, v6

    const v6, 0x7f10049c

    .line 479
    invoke-virtual {v12, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v12, "pref_video_fps_key"

    .line 478
    invoke-interface {v3, v12, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 480
    iget-object v6, v0, Lcom/oplus/camera/entry/b;->B:Landroid/content/SharedPreferences;

    move-object/from16 v18, v8

    const/4 v12, 0x0

    .line 481
    invoke-static {v5, v12}, Lcom/oplus/camera/aps/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 480
    invoke-interface {v6, v5, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 483
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v6, 0x3c

    if-eq v3, v6, :cond_20

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    goto :goto_2

    .line 487
    :cond_1f
    iget-object v3, v0, Lcom/oplus/camera/entry/b;->B:Landroid/content/SharedPreferences;

    const-string v4, "pref_none_sat_tele_angle_key"

    invoke-interface {v3, v4, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 488
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    const/4 v3, 0x0

    return v3

    :cond_20
    :goto_2
    const/4 v3, 0x0

    return v3

    :cond_21
    move-object/from16 v17, v6

    move-object/from16 v18, v8

    move v3, v12

    const-string v4, "xpan"

    .line 491
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    return v3

    :cond_22
    :goto_3
    move-object/from16 v17, v6

    move-object/from16 v18, v8

    move v3, v12

    .line 473
    iget-object v4, v0, Lcom/oplus/camera/entry/b;->B:Landroid/content/SharedPreferences;

    const-string v5, "pref_none_sat_tele_angle_key"

    invoke-interface {v4, v5, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 474
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24

    return v3

    :cond_23
    move-object/from16 v17, v6

    move-object/from16 v18, v8

    .line 496
    :cond_24
    sget-object v3, Lcom/oplus/camera/entry/b$a;->back_macro:Lcom/oplus/camera/entry/b$a;

    if-ne v2, v3, :cond_25

    .line 497
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    iget-object v3, v0, Lcom/oplus/camera/entry/b;->B:Landroid/content/SharedPreferences;

    .line 498
    invoke-interface {v3, v13, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "camera_macro"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    const/4 v3, 0x0

    return v3

    .line 503
    :cond_25
    iget-object v3, v0, Lcom/oplus/camera/entry/b;->B:Landroid/content/SharedPreferences;

    const-string v4, "pref_none_sat_ultra_wide_angle_key"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    iget-object v3, v0, Lcom/oplus/camera/entry/b;->B:Landroid/content/SharedPreferences;

    const-string v4, "pref_none_sat_ultra_wide_angle_key"

    .line 504
    invoke-interface {v3, v4, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    const/4 v3, 0x1

    goto :goto_4

    :cond_26
    const/4 v3, 0x0

    :goto_4
    const-string v4, "com.oplus.feature.front.eis.wide.force.support"

    .line 505
    invoke-static {v4}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v4

    .line 507
    iget-object v5, v0, Lcom/oplus/camera/entry/b;->B:Landroid/content/SharedPreferences;

    const-string v6, "pref_video_super_eis_key"

    invoke-interface {v5, v6, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 509
    iget-object v6, v0, Lcom/oplus/camera/entry/b;->B:Landroid/content/SharedPreferences;

    const-string v8, "pref_video_super_eis_key"

    invoke-interface {v6, v8, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27

    const-string v6, "com.oplus.feature.video.super.eis.wide.support"

    .line 511
    invoke-static {v6}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_27

    iget-object v6, v0, Lcom/oplus/camera/entry/b;->B:Landroid/content/SharedPreferences;

    const-string v8, "pref_super_eis_wide_key"

    const/4 v12, 0x0

    .line 512
    invoke-interface {v6, v8, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_27

    const/4 v6, 0x1

    goto :goto_5

    :cond_27
    const/4 v6, 0x0

    .line 513
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/entry/b;->r()Z

    move-result v8

    if-eqz v8, :cond_28

    const-string v8, "com.oplus.portrait.half.body.support"

    invoke-static {v8}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_28

    const/4 v8, 0x1

    goto :goto_6

    :cond_28
    const/4 v8, 0x0

    .line 514
    :goto_6
    iget-object v12, v0, Lcom/oplus/camera/entry/b;->B:Landroid/content/SharedPreferences;

    move/from16 v19, v4

    const-string v4, "pref_portrait_half_body_key"

    invoke-interface {v12, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a

    if-eqz v8, :cond_29

    goto :goto_7

    .line 516
    :cond_29
    iget-object v4, v0, Lcom/oplus/camera/entry/b;->B:Landroid/content/SharedPreferences;

    const-string v8, "pref_portrait_half_body_key"

    invoke-interface {v4, v8, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_8

    .line 517
    :cond_2a
    iget-object v4, v0, Lcom/oplus/camera/entry/b;->m:Ljava/lang/String;

    if-eqz v4, :cond_2b

    const-string v8, "com.oplus.camera.action.SHORTCUT_TYPE_MENU"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    const-string v4, "com.oplus.portrait.half.body.support"

    .line 518
    invoke-static {v4}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2b

    const/high16 v4, 0x40000000    # 2.0f

    const-string v8, "com.oplus.portrait.zoom.value.default"

    .line 519
    invoke-static {v8}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigFloatValue(Ljava/lang/String;)F

    move-result v8

    cmpl-float v4, v4, v8

    if-nez v4, :cond_2b

    const/4 v4, 0x1

    goto :goto_8

    :cond_2b
    :goto_7
    const/4 v4, 0x0

    :goto_8
    const-string v8, "com.oplus.ultra.wide.high.picturesize"

    .line 520
    invoke-static {v8}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2c

    iget-object v8, v0, Lcom/oplus/camera/entry/b;->B:Landroid/content/SharedPreferences;

    const-string v12, "key_high_picture_size"

    move/from16 v20, v4

    const/4 v4, 0x0

    .line 522
    invoke-interface {v8, v12, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_2d

    iget-object v4, v0, Lcom/oplus/camera/entry/b;->B:Landroid/content/SharedPreferences;

    const-string v8, "pref_ultra_wide_high_picture_size_key"

    .line 523
    invoke-interface {v4, v8, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    const/4 v4, 0x1

    goto :goto_9

    :cond_2c
    move/from16 v20, v4

    :cond_2d
    const/4 v4, 0x0

    .line 525
    :goto_9
    sget-object v8, Lcom/oplus/camera/entry/b$a;->back_wide:Lcom/oplus/camera/entry/b$a;

    if-ne v2, v8, :cond_3f

    .line 526
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3e

    const-string v8, "double_exposure"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2e

    goto/16 :goto_b

    .line 530
    :cond_2e
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2f

    .line 531
    iget-object v8, v0, Lcom/oplus/camera/entry/b;->B:Landroid/content/SharedPreferences;

    invoke-interface {v8, v13, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 532
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3f

    const/4 v8, 0x0

    return v8

    :cond_2f
    move-object/from16 v8, v18

    .line 535
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_32

    if-nez v3, :cond_31

    if-nez v6, :cond_31

    if-eqz v5, :cond_30

    const-string v9, "com.oplus.feature.video.super.eis.only.wide.support"

    .line 539
    invoke-static {v9}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_31

    :cond_30
    const/4 v0, 0x0

    return v0

    :cond_31
    move-object/from16 v9, v17

    goto/16 :goto_c

    :cond_32
    move-object/from16 v9, v17

    .line 542
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3d

    const-string v11, "superText"

    .line 543
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3d

    const-string v11, "longExposure"

    .line 544
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3d

    const-string v11, "tiltShift"

    .line 545
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_33

    goto/16 :goto_a

    :cond_33
    const-string v11, "ultraHD"

    .line 549
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_34

    .line 550
    iget-object v10, v0, Lcom/oplus/camera/entry/b;->B:Landroid/content/SharedPreferences;

    invoke-interface {v10, v13, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 551
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_40

    const/4 v10, 0x0

    return v10

    :cond_34
    const-string v11, "fastVideo"

    .line 554
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_36

    if-nez v3, :cond_40

    .line 555
    iget-object v11, v0, Lcom/oplus/camera/entry/b;->B:Landroid/content/SharedPreferences;

    iget-object v12, v0, Lcom/oplus/camera/entry/b;->l:Landroid/app/Activity;

    const v13, 0x7f1004cc

    .line 556
    invoke-virtual {v12, v13}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "pref_video_hyper_lapse_key"

    .line 555
    invoke-interface {v11, v13, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_35

    .line 557
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/entry/b;->U()Z

    move-result v10

    if-eqz v10, :cond_35

    iget-object v10, v0, Lcom/oplus/camera/entry/b;->B:Landroid/content/SharedPreferences;

    const-string v11, "key_hyper_lapse_zoom_ultra_wide_open"

    const/4 v12, 0x1

    .line 558
    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_40

    :cond_35
    const/4 v10, 0x0

    return v10

    :cond_36
    const/4 v10, 0x0

    const-string v11, "tiltShiftFastVideo"

    .line 561
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_37

    if-nez v3, :cond_41

    return v10

    :cond_37
    const-string v11, "timelapsePro"

    .line 565
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_38

    return v10

    :cond_38
    const-string v10, "movie"

    .line 567
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3a

    .line 568
    iget-object v10, v0, Lcom/oplus/camera/entry/b;->B:Landroid/content/SharedPreferences;

    const-string v11, "com.oplus.feature.wide.angle.open.default"

    .line 569
    invoke-static {v11}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_39

    move-object v15, v14

    :cond_39
    const-string v11, "pref_switch_camera_bar_key"

    .line 568
    invoke-interface {v10, v11, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 571
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_40

    const/4 v10, 0x0

    return v10

    :cond_3a
    const/4 v10, 0x0

    const-string v11, "xpan"

    .line 574
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3b

    .line 575
    iget-object v11, v0, Lcom/oplus/camera/entry/b;->B:Landroid/content/SharedPreferences;

    const-string v12, "pref_hasselblad_xpan_switch_camera_bar_key"

    invoke-interface {v11, v12, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 576
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_41

    return v10

    :cond_3b
    const-string v11, "highDefinition"

    .line 579
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3c

    if-nez v3, :cond_41

    return v10

    :cond_3c
    const-string v11, "street"

    .line 583
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_41

    if-nez v3, :cond_41

    return v10

    :cond_3d
    :goto_a
    const/4 v10, 0x0

    if-nez v3, :cond_41

    return v10

    :cond_3e
    :goto_b
    move-object/from16 v9, v17

    move-object/from16 v8, v18

    const/4 v10, 0x0

    if-nez v3, :cond_41

    if-nez v4, :cond_41

    return v10

    :cond_3f
    move-object/from16 v9, v17

    move-object/from16 v8, v18

    :cond_40
    :goto_c
    const/4 v10, 0x0

    .line 590
    :cond_41
    sget-object v11, Lcom/oplus/camera/entry/b$a;->front_wide:Lcom/oplus/camera/entry/b$a;

    if-ne v2, v11, :cond_47

    .line 593
    invoke-static {}, Lcom/oplus/camera/util/Util;->g()I

    move-result v11

    if-nez v11, :cond_42

    const/4 v11, 0x1

    return v11

    :cond_42
    const/4 v11, 0x1

    .line 597
    invoke-static {v1, v11}, Lcom/oplus/camera/util/Util;->a(Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_43

    return v10

    .line 601
    :cond_43
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_44

    if-nez v3, :cond_47

    return v10

    .line 605
    :cond_44
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_46

    if-nez v3, :cond_47

    if-eqz v19, :cond_45

    if-nez v5, :cond_47

    :cond_45
    return v10

    .line 619
    :cond_46
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    if-nez v3, :cond_47

    return v10

    .line 626
    :cond_47
    sget-object v3, Lcom/oplus/camera/entry/b$a;->front_dual:Lcom/oplus/camera/entry/b$a;

    if-ne v2, v3, :cond_49

    const-string v3, "sticker"

    .line 627
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    return v10

    :cond_48
    const-string v3, "portrait"

    .line 629
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 630
    invoke-static {}, Lcom/oplus/camera/e/a;->e()Z

    move-result v3

    if-nez v3, :cond_49

    return v10

    .line 636
    :cond_49
    sget-object v3, Lcom/oplus/camera/entry/b$a;->back_main:Lcom/oplus/camera/entry/b$a;

    if-ne v3, v2, :cond_4b

    .line 637
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    if-eqz v4, :cond_4b

    return v10

    .line 641
    :cond_4a
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    if-eqz v6, :cond_4b

    return v10

    .line 648
    :cond_4b
    sget-object v3, Lcom/oplus/camera/entry/b$a;->back_dual:Lcom/oplus/camera/entry/b$a;

    if-ne v3, v2, :cond_4c

    const-string v3, "portrait"

    .line 649
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    if-eqz v20, :cond_4c

    return v10

    .line 654
    :cond_4c
    sget-object v3, Lcom/oplus/camera/entry/b$a;->back_second_dual:Lcom/oplus/camera/entry/b$a;

    if-ne v3, v2, :cond_4d

    const-string v3, "portrait"

    .line 655
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    if-nez v20, :cond_4d

    return v10

    .line 660
    :cond_4d
    invoke-direct/range {p0 .. p2}, Lcom/oplus/camera/entry/b;->a(Ljava/lang/String;Lcom/oplus/camera/entry/b$a;)Z

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1468
    invoke-static {p0}, Lcom/oplus/camera/entry/b;->e(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    .line 1471
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static e(Ljava/lang/String;)I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, -0x2

    return p0

    :cond_0
    const-string v0, "_from_other_app"

    .line 1507
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static o()J
    .locals 2

    .line 864
    sget-object v0, Lcom/oplus/camera/entry/b;->h:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public A()I
    .locals 0

    .line 1123
    iget p0, p0, Lcom/oplus/camera/entry/b;->x:I

    return p0
.end method

.method public B()Z
    .locals 1

    .line 1128
    iget-boolean v0, p0, Lcom/oplus/camera/entry/b;->p:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/oplus/camera/entry/b;->q:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public C()V
    .locals 2

    .line 1136
    invoke-direct {p0}, Lcom/oplus/camera/entry/b;->W()Landroid/app/KeyguardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1139
    iget-object p0, p0, Lcom/oplus/camera/entry/b;->l:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    :cond_0
    return-void
.end method

.method public D()Z
    .locals 0

    .line 1144
    invoke-direct {p0}, Lcom/oplus/camera/entry/b;->W()Landroid/app/KeyguardManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1147
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public E()V
    .locals 0

    return-void
.end method

.method public F()V
    .locals 3

    .line 1157
    invoke-virtual {p0}, Lcom/oplus/camera/entry/b;->w()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1158
    iget-object v0, p0, Lcom/oplus/camera/entry/b;->l:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    goto :goto_0

    .line 1160
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/entry/b;->l:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    .line 1163
    :goto_0
    iput-boolean v1, p0, Lcom/oplus/camera/entry/b;->o:Z

    return-void
.end method

.method public G()V
    .locals 2

    .line 1175
    invoke-virtual {p0}, Lcom/oplus/camera/entry/b;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1176
    iget-object v0, p0, Lcom/oplus/camera/entry/b;->l:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    :cond_0
    const/4 v0, 0x0

    .line 1179
    iput-object v0, p0, Lcom/oplus/camera/entry/b;->l:Landroid/app/Activity;

    return-void
.end method

.method public H()Z
    .locals 0

    .line 1183
    iget-boolean p0, p0, Lcom/oplus/camera/entry/b;->o:Z

    return p0
.end method

.method public I()Ljava/lang/String;
    .locals 2

    .line 1367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oplus/camera/entry/b;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/entry/b;->F:Ljava/util/Set;

    const-string v1, "beauty"

    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public J()I
    .locals 0

    .line 1371
    iget p0, p0, Lcom/oplus/camera/entry/b;->i:I

    return p0
.end method

.method public K()J
    .locals 2

    .line 1383
    iget-wide v0, p0, Lcom/oplus/camera/entry/b;->n:J

    return-wide v0
.end method

.method public L()Z
    .locals 1

    .line 1414
    iget p0, p0, Lcom/oplus/camera/entry/b;->j:I

    const/4 v0, -0x1

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public M()I
    .locals 1

    .line 1422
    invoke-virtual {p0}, Lcom/oplus/camera/entry/b;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/oplus/camera/entry/b;->j:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/oplus/camera/entry/b;->i:I

    :goto_0
    return p0
.end method

.method public N()Z
    .locals 1

    .line 1426
    iget p0, p0, Lcom/oplus/camera/entry/b;->j:I

    const/4 v0, 0x5

    if-eq v0, p0, :cond_1

    const/4 v0, 0x6

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public O()V
    .locals 3

    .line 1431
    invoke-virtual {p0}, Lcom/oplus/camera/entry/b;->L()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1432
    invoke-direct {p0}, Lcom/oplus/camera/entry/b;->W()Landroid/app/KeyguardManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1435
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1436
    iput-boolean v2, p0, Lcom/oplus/camera/entry/b;->q:Z

    .line 1439
    :cond_0
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1440
    :cond_1
    iput-boolean v2, p0, Lcom/oplus/camera/entry/b;->p:Z

    :cond_2
    return-void
.end method

.method public P()Z
    .locals 1

    .line 1456
    iget-boolean v0, p0, Lcom/oplus/camera/entry/b;->p:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/entry/b;->w()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public Q()Z
    .locals 1

    .line 1478
    iget-object p0, p0, Lcom/oplus/camera/entry/b;->k:Ljava/lang/String;

    const-string v0, "com.heytap.speechassist"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public R()Z
    .locals 1

    .line 1482
    iget-object p0, p0, Lcom/oplus/camera/entry/b;->m:Ljava/lang/String;

    const-string v0, "com.oplus.camera.action.SHORTCUT_TYPE_MENU"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public S()Z
    .locals 1

    .line 1486
    iget-object p0, p0, Lcom/oplus/camera/entry/b;->k:Ljava/lang/String;

    const-string v0, "com.oplus.appplatform"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public T()Z
    .locals 2

    .line 1490
    iget-object v0, p0, Lcom/oplus/camera/entry/b;->m:Ljava/lang/String;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/entry/b;->m:Ljava/lang/String;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    .line 1491
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean p0, p0, Lcom/oplus/camera/entry/b;->s:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public U()Z
    .locals 2

    const-string p0, "com.oplus.feature.hyper.lapse.zoom.list"

    .line 1495
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigFloatArrayValue(Ljava/lang/String;)[F

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1497
    array-length v1, p0

    if-eqz v1, :cond_0

    aget p0, p0, v0

    const v1, 0x3f19999a    # 0.6f

    cmpl-float p0, p0, v1

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public a(Ljava/lang/String;I)I
    .locals 3

    const-string v0, "multiCamera"

    .line 664
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 665
    invoke-static {}, Lcom/oplus/camera/e/a;->s()I

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    .line 669
    sget-object p2, Lcom/oplus/camera/entry/b$a;->front_dual:Lcom/oplus/camera/entry/b$a;

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/entry/b;->b(Ljava/lang/String;Lcom/oplus/camera/entry/b$a;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 670
    invoke-static {}, Lcom/oplus/camera/e/a;->n()I

    move-result p0

    return p0

    .line 671
    :cond_1
    sget-object p2, Lcom/oplus/camera/entry/b$a;->front_wide:Lcom/oplus/camera/entry/b$a;

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/entry/b;->b(Ljava/lang/String;Lcom/oplus/camera/entry/b$a;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 672
    invoke-static {}, Lcom/oplus/camera/e/a;->k()I

    move-result p0

    return p0

    .line 675
    :cond_2
    invoke-static {}, Lcom/oplus/camera/e/a;->i()I

    move-result p0

    return p0

    .line 677
    :cond_3
    sget-object p2, Lcom/oplus/camera/entry/b$a;->back_mono:Lcom/oplus/camera/entry/b$a;

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/entry/b;->b(Ljava/lang/String;Lcom/oplus/camera/entry/b$a;)Z

    move-result p2

    if-nez p2, :cond_4

    sget-object p2, Lcom/oplus/camera/entry/b$a;->back_streamer_main:Lcom/oplus/camera/entry/b$a;

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/entry/b;->b(Ljava/lang/String;Lcom/oplus/camera/entry/b$a;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 678
    :cond_4
    invoke-virtual {p0, p1}, Lcom/oplus/camera/entry/b;->c(Ljava/lang/String;)I

    move-result p2

    .line 680
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLogicCameraId, notDualCameraId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraEntry"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    if-eq v1, p2, :cond_5

    return p2

    .line 687
    :cond_5
    sget-object p2, Lcom/oplus/camera/entry/b$a;->back_dual:Lcom/oplus/camera/entry/b$a;

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/entry/b;->b(Ljava/lang/String;Lcom/oplus/camera/entry/b$a;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 688
    invoke-static {}, Lcom/oplus/camera/e/a;->l()I

    move-result p0

    return p0

    .line 691
    :cond_6
    sget-object p2, Lcom/oplus/camera/entry/b$a;->back_second_dual:Lcom/oplus/camera/entry/b$a;

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/entry/b;->b(Ljava/lang/String;Lcom/oplus/camera/entry/b$a;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 692
    invoke-static {}, Lcom/oplus/camera/e/a;->m()I

    move-result p0

    return p0

    .line 695
    :cond_7
    sget-object p2, Lcom/oplus/camera/entry/b$a;->back_tele:Lcom/oplus/camera/entry/b$a;

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/entry/b;->b(Ljava/lang/String;Lcom/oplus/camera/entry/b$a;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 696
    invoke-static {}, Lcom/oplus/camera/e/a;->o()I

    move-result p0

    return p0

    .line 699
    :cond_8
    sget-object p2, Lcom/oplus/camera/entry/b$a;->back_macro:Lcom/oplus/camera/entry/b$a;

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/entry/b;->b(Ljava/lang/String;Lcom/oplus/camera/entry/b$a;)Z

    move-result p2

    if-eqz p2, :cond_a

    const-string p0, "com.oplus.feature.macrolens.equal.ultrawidelens"

    .line 700
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 701
    invoke-static {}, Lcom/oplus/camera/e/a;->j()I

    move-result p0

    return p0

    .line 704
    :cond_9
    invoke-static {}, Lcom/oplus/camera/e/a;->r()I

    move-result p0

    return p0

    .line 707
    :cond_a
    sget-object p2, Lcom/oplus/camera/entry/b$a;->back_wide:Lcom/oplus/camera/entry/b$a;

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/entry/b;->b(Ljava/lang/String;Lcom/oplus/camera/entry/b$a;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 708
    invoke-virtual {p0}, Lcom/oplus/camera/entry/b;->J()I

    move-result p2

    if-ne p2, v0, :cond_b

    .line 709
    invoke-static {}, Lcom/oplus/camera/e/a;->j()I

    move-result p0

    return p0

    .line 713
    :cond_b
    sget-object p2, Lcom/oplus/camera/entry/b$a;->back_sat:Lcom/oplus/camera/entry/b$a;

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/entry/b;->b(Ljava/lang/String;Lcom/oplus/camera/entry/b$a;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 714
    iget p2, p0, Lcom/oplus/camera/entry/b;->i:I

    if-ne p2, v0, :cond_c

    .line 715
    invoke-static {}, Lcom/oplus/camera/e/a;->p()I

    move-result p0

    return p0

    .line 719
    :cond_c
    sget-object p2, Lcom/oplus/camera/entry/b$a;->back_microscope:Lcom/oplus/camera/entry/b$a;

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/entry/b;->b(Ljava/lang/String;Lcom/oplus/camera/entry/b$a;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 720
    iget p0, p0, Lcom/oplus/camera/entry/b;->i:I

    if-ne p0, v0, :cond_d

    .line 721
    invoke-static {}, Lcom/oplus/camera/e/a;->q()I

    move-result p0

    return p0

    .line 725
    :cond_d
    invoke-static {}, Lcom/oplus/camera/e/a;->h()I

    move-result p0

    return p0
.end method

.method public a(I)Ljava/lang/String;
    .locals 2

    .line 742
    iget-object v0, p0, Lcom/oplus/camera/entry/b;->C:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 744
    :cond_0
    iget v0, p0, Lcom/oplus/camera/entry/b;->i:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const-string p0, "commonVideo"

    return-object p0

    .line 746
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/entry/b;->c()Z

    move-result v0

    const-string v1, "common"

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/oplus/camera/entry/b;->a()Z

    move-result v0

    if-nez v0, :cond_2

    return-object v1

    .line 749
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/entry/b;->B:Landroid/content/SharedPreferences;

    check-cast v0, Lcom/oplus/camera/ComboPreferences;

    iget-object p0, p0, Lcom/oplus/camera/entry/b;->l:Landroid/app/Activity;

    invoke-virtual {v0, p0, p1}, Lcom/oplus/camera/ComboPreferences;->a(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "pref_camera_mode_key"

    .line 750
    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public a(Landroid/content/Intent;Landroid/app/Activity;Landroid/content/SharedPreferences;Landroid/os/Bundle;)V
    .locals 0

    .line 1289
    iput-object p2, p0, Lcom/oplus/camera/entry/b;->l:Landroid/app/Activity;

    .line 1290
    iput-object p3, p0, Lcom/oplus/camera/entry/b;->B:Landroid/content/SharedPreferences;

    .line 1291
    invoke-direct {p0, p1, p4}, Lcom/oplus/camera/entry/b;->b(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 1292
    invoke-virtual {p0}, Lcom/oplus/camera/entry/b;->p()V

    .line 1294
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onCreate, mCameraEntryType: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/oplus/camera/entry/b;->i:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mCallPkg: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/oplus/camera/entry/b;->k:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", mAction: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/entry/b;->m:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraEntry"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 5

    .line 115
    invoke-virtual {p0}, Lcom/oplus/camera/entry/b;->J()I

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x2

    .line 116
    invoke-virtual {p0}, Lcom/oplus/camera/entry/b;->J()I

    move-result v2

    if-ne v0, v2, :cond_4

    .line 117
    :cond_0
    iget-boolean v0, p0, Lcom/oplus/camera/entry/b;->z:Z

    if-eqz v0, :cond_1

    return-void

    .line 121
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveCameraExitState, currentTime: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", justSaveTimeStamp: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "CameraEntry"

    invoke-static {v4, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_2

    .line 127
    iput-boolean v1, p0, Lcom/oplus/camera/entry/b;->z:Z

    .line 130
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/entry/b;->B:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 132
    invoke-virtual {p0}, Lcom/oplus/camera/entry/b;->J()I

    move-result p0

    invoke-static {p0}, Lcom/oplus/camera/entry/b;->b(I)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "pref_camera_exit_time_stamp_key"

    .line 133
    invoke-interface {p1, p0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_3
    const-string p0, "pref_camera_exit_time_from_other_program_code"

    .line 135
    invoke-interface {p1, p0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 138
    :goto_0
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_4
    return-void
.end method

.method public a()Z
    .locals 0

    .line 149
    iget-boolean p0, p0, Lcom/oplus/camera/entry/b;->A:Z

    return p0
.end method

.method public a(Landroid/content/Intent;)Z
    .locals 4

    const-string v0, "CameraEntry"

    const-string v1, "onNewIntent"

    .line 1338
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    iget-object v1, p0, Lcom/oplus/camera/entry/b;->l:Landroid/app/Activity;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p0, "onNewIntent, mActivity is null"

    .line 1341
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 1349
    :cond_0
    invoke-virtual {v1}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x1c000000

    .line 1350
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1353
    iget-object v0, p0, Lcom/oplus/camera/entry/b;->l:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1354
    iget-object v0, p0, Lcom/oplus/camera/entry/b;->l:Landroid/app/Activity;

    const v1, 0x7f010055

    const v3, 0x7f010058

    invoke-virtual {v0, v1, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 1355
    iget-object p0, p0, Lcom/oplus/camera/entry/b;->l:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return v2

    .line 1360
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/entry/b;->l:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    const/4 v0, 0x0

    .line 1361
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/entry/b;->b(Landroid/content/Intent;Landroid/os/Bundle;)V

    const/4 p0, 0x1

    return p0
.end method

.method public b(Z)V
    .locals 2

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set mbShouldKeepCurrentMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraEntry"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iput-boolean p1, p0, Lcom/oplus/camera/entry/b;->A:Z

    return-void
.end method

.method public b()Z
    .locals 8

    .line 153
    iget-object v0, p0, Lcom/oplus/camera/entry/b;->B:Landroid/content/SharedPreferences;

    const-string v1, "pref_report_permission_timestamp"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/32 v6, 0x5265c00

    cmp-long v0, v2, v6

    if-lez v0, :cond_0

    .line 158
    iget-object p0, p0, Lcom/oplus/camera/entry/b;->B:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public c(Ljava/lang/String;)I
    .locals 5

    .line 1387
    iget-object v0, p0, Lcom/oplus/camera/entry/b;->B:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->p()I

    move-result v1

    const-string v2, "key_portrait_new_style_index"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "com.oplus.mono.filter.mode.place"

    .line 1389
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x3

    if-eqz v1, :cond_0

    if-ne v3, v1, :cond_1

    :cond_0
    const-string v4, "common"

    .line 1391
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1392
    iget-object p0, p0, Lcom/oplus/camera/entry/b;->B:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->s()I

    move-result p1

    const-string v0, "key_filter_index"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    if-eq v4, v1, :cond_2

    if-ne v3, v1, :cond_3

    :cond_2
    const-string v1, "portrait"

    .line 1393
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1394
    iget-object p0, p0, Lcom/oplus/camera/entry/b;->B:Landroid/content/SharedPreferences;

    .line 1395
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->p()I

    move-result p1

    .line 1394
    invoke-interface {p0, v2, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1398
    :cond_3
    :goto_0
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->h()I

    move-result p0

    if-ne v0, p0, :cond_4

    .line 1399
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->u()I

    move-result p0

    return p0

    .line 1400
    :cond_4
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->i()I

    move-result p0

    if-ne v0, p0, :cond_5

    .line 1401
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->v()I

    move-result p0

    return p0

    .line 1402
    :cond_5
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->j()I

    move-result p0

    if-ne v0, p0, :cond_6

    .line 1403
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->w()I

    move-result p0

    return p0

    .line 1404
    :cond_6
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->k()I

    move-result p0

    if-ne v0, p0, :cond_7

    .line 1405
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->x()I

    move-result p0

    return p0

    .line 1406
    :cond_7
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->l()I

    move-result p0

    if-ne v0, p0, :cond_8

    .line 1407
    invoke-static {}, Lcom/oplus/camera/e/a;->h()I

    move-result p0

    return p0

    :cond_8
    const/4 p0, -0x1

    return p0
.end method

.method public c(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 779
    iput-object v0, p0, Lcom/oplus/camera/entry/b;->C:Ljava/lang/String;

    .line 780
    iget-object v0, p0, Lcom/oplus/camera/entry/b;->F:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 783
    iput-boolean p1, p0, Lcom/oplus/camera/entry/b;->y:Z

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    .line 167
    invoke-direct {p0}, Lcom/oplus/camera/entry/b;->V()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/oplus/camera/entry/b;->y:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .line 730
    iget-object v0, p0, Lcom/oplus/camera/entry/b;->C:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 732
    :cond_0
    iget v0, p0, Lcom/oplus/camera/entry/b;->i:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const-string p0, "commonVideo"

    return-object p0

    .line 734
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/entry/b;->c()Z

    move-result v0

    const-string v1, "common"

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/oplus/camera/entry/b;->a()Z

    move-result v0

    if-nez v0, :cond_2

    return-object v1

    .line 737
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/entry/b;->B:Landroid/content/SharedPreferences;

    const-string v0, "pref_camera_mode_key"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public d(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1167
    invoke-virtual {p0}, Lcom/oplus/camera/entry/b;->w()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1168
    iget-object p1, p0, Lcom/oplus/camera/entry/b;->l:Landroid/app/Activity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    :cond_0
    const/4 p1, 0x1

    .line 1171
    iput-boolean p1, p0, Lcom/oplus/camera/entry/b;->o:Z

    return-void
.end method

.method public e()I
    .locals 0

    .line 755
    iget p0, p0, Lcom/oplus/camera/entry/b;->D:I

    return p0
.end method

.method public f()I
    .locals 0

    .line 759
    iget p0, p0, Lcom/oplus/camera/entry/b;->E:I

    return p0
.end method

.method public g()Z
    .locals 1

    .line 763
    invoke-virtual {p0}, Lcom/oplus/camera/entry/b;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/entry/b;->F:Ljava/util/Set;

    const-string v0, "effect"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public h()Z
    .locals 0

    .line 767
    iget-boolean p0, p0, Lcom/oplus/camera/entry/b;->t:Z

    return p0
.end method

.method public i()Z
    .locals 2

    .line 771
    invoke-virtual {p0}, Lcom/oplus/camera/entry/b;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/entry/b;->F:Ljava/util/Set;

    const-string v1, "beauty"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/entry/b;->F:Ljava/util/Set;

    const-string v0, "filter"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x1

    .line 775
    invoke-virtual {p0, v0}, Lcom/oplus/camera/entry/b;->c(Z)V

    return-void
.end method

.method public k()Z
    .locals 1

    .line 788
    invoke-virtual {p0}, Lcom/oplus/camera/entry/b;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/entry/b;->F:Ljava/util/Set;

    const-string v0, "encode10bit"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public l()Z
    .locals 2

    .line 796
    iget-object v0, p0, Lcom/oplus/camera/entry/b;->k:Ljava/lang/String;

    const-string v1, "retail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/entry/b;->h()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public m()I
    .locals 5

    .line 800
    iget-object v0, p0, Lcom/oplus/camera/entry/b;->B:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    .line 801
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_id_key"

    .line 800
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 803
    invoke-static {}, Lcom/oplus/camera/screen/a/b;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    .line 805
    :cond_0
    invoke-static {}, Lcom/oplus/camera/screen/a/b;->h()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    return v3

    .line 810
    :cond_1
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oplus/camera/entry/b;->C:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/oplus/camera/entry/b;->k:Ljava/lang/String;

    const-string v4, "com.heytap.speechassist"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    .line 814
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/entry/b;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/oplus/camera/entry/b;->a()Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    .line 819
    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/oplus/camera/entry/b;->l:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "android.intent.extras.CAMERA_FACING"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-le v0, v3, :cond_4

    move v0, v3

    .line 825
    :cond_4
    iget-boolean v2, p0, Lcom/oplus/camera/entry/b;->r:Z

    if-eqz v2, :cond_8

    .line 826
    iget-object v2, p0, Lcom/oplus/camera/entry/b;->l:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "android.intent.extra.USE_FRONT_CAMERA"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/oplus/camera/entry/b;->l:Landroid/app/Activity;

    .line 827
    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "com.google.assistant.extra.USE_FRONT_CAMERA"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    :cond_5
    move v2, v1

    goto :goto_1

    :cond_6
    :goto_0
    move v2, v3

    :goto_1
    if-eqz v2, :cond_7

    move v0, v3

    goto :goto_2

    .line 831
    :cond_7
    invoke-virtual {p0}, Lcom/oplus/camera/entry/b;->n()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_8

    move v0, v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 836
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 839
    :cond_8
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIntentLegacyId, mCameraEntryType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/camera/entry/b;->i:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", cameraId: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "CameraEntry"

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public n()Z
    .locals 2

    .line 845
    iget-object p0, p0, Lcom/oplus/camera/entry/b;->l:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-string v1, "com.oplus.camera.extra.IS_VOICE_INTERACTION_ROOT"

    .line 848
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "isVoiceQuery"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public p()V
    .locals 11

    .line 868
    iget-object v0, p0, Lcom/oplus/camera/entry/b;->B:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    const-string v3, "pref_camera_exit_time_stamp_key"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 871
    iget v0, p0, Lcom/oplus/camera/entry/b;->i:I

    invoke-static {v0}, Lcom/oplus/camera/entry/b;->b(I)Z

    move-result v0

    const v5, 0x7f1001bb

    const-string v6, "pref_camera_flashmode_key"

    if-eqz v0, :cond_0

    .line 872
    iget-object v0, p0, Lcom/oplus/camera/entry/b;->B:Landroid/content/SharedPreferences;

    const-string v3, "pref_camera_exit_time_from_other_program_code"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 874
    iget-object v0, p0, Lcom/oplus/camera/entry/b;->B:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v7, p0, Lcom/oplus/camera/entry/b;->i:I

    invoke-static {v6, v7}, Lcom/oplus/camera/entry/b;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/oplus/camera/entry/b;->l:Landroid/app/Activity;

    .line 875
    invoke-virtual {v8, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 874
    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 875
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 878
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v9, v7, v3

    .line 879
    iput-wide v9, p0, Lcom/oplus/camera/entry/b;->n:J

    .line 880
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/oplus/camera/entry/b;->h:Ljava/lang/Long;

    .line 882
    invoke-direct {p0}, Lcom/oplus/camera/entry/b;->V()Z

    move-result v0

    const/4 v9, 0x0

    if-eqz v0, :cond_3

    .line 883
    iget-boolean v0, p0, Lcom/oplus/camera/entry/b;->z:Z

    if-eqz v0, :cond_2

    .line 884
    iput-boolean v9, p0, Lcom/oplus/camera/entry/b;->z:Z

    .line 886
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateOverrideCameraModeStatus, currentTime: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", timeStamp: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", mCameraEnterTimeGap: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/oplus/camera/entry/b;->n:J

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "CameraEntry"

    invoke-static {v7, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v0, v1, v3

    if-gez v0, :cond_1

    .line 889
    iget-wide v3, p0, Lcom/oplus/camera/entry/b;->n:J

    cmp-long v0, v1, v3

    if-gez v0, :cond_1

    const-wide/32 v0, 0x493e0

    cmp-long v0, v0, v3

    if-gez v0, :cond_1

    const/4 v0, 0x1

    .line 892
    iput-boolean v0, p0, Lcom/oplus/camera/entry/b;->y:Z

    .line 893
    invoke-virtual {p0, v9}, Lcom/oplus/camera/entry/b;->b(Z)V

    goto :goto_0

    .line 895
    :cond_1
    iput-boolean v9, p0, Lcom/oplus/camera/entry/b;->y:Z

    goto :goto_0

    .line 898
    :cond_2
    iput-boolean v9, p0, Lcom/oplus/camera/entry/b;->y:Z

    goto :goto_0

    .line 900
    :cond_3
    invoke-virtual {p0}, Lcom/oplus/camera/entry/b;->q()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 901
    iget-boolean v0, p0, Lcom/oplus/camera/entry/b;->z:Z

    if-eqz v0, :cond_5

    .line 902
    iput-boolean v9, p0, Lcom/oplus/camera/entry/b;->z:Z

    goto :goto_0

    .line 904
    :cond_4
    invoke-virtual {p0}, Lcom/oplus/camera/entry/b;->w()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 905
    iget-boolean v0, p0, Lcom/oplus/camera/entry/b;->z:Z

    if-eqz v0, :cond_5

    .line 906
    iput-boolean v9, p0, Lcom/oplus/camera/entry/b;->z:Z

    .line 907
    iput-boolean v9, p0, Lcom/oplus/camera/entry/b;->y:Z

    .line 911
    :cond_5
    :goto_0
    iget v0, p0, Lcom/oplus/camera/entry/b;->i:I

    invoke-static {v0}, Lcom/oplus/camera/entry/b;->b(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 912
    iget-object v0, p0, Lcom/oplus/camera/entry/b;->B:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, p0, Lcom/oplus/camera/entry/b;->i:I

    invoke-static {v6, v1}, Lcom/oplus/camera/entry/b;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/oplus/camera/entry/b;->l:Landroid/app/Activity;

    .line 913
    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 912
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 913
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_6
    return-void
.end method

.method public q()Z
    .locals 1

    .line 918
    iget-object v0, p0, Lcom/oplus/camera/entry/b;->C:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/oplus/camera/entry/b;->F:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public r()Z
    .locals 1

    .line 922
    invoke-virtual {p0}, Lcom/oplus/camera/entry/b;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/entry/b;->C:Ljava/lang/String;

    const-string v0, "portrait"

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public s()Z
    .locals 0

    .line 1087
    iget-boolean p0, p0, Lcom/oplus/camera/entry/b;->u:Z

    return p0
.end method

.method public t()V
    .locals 1

    const/4 v0, 0x0

    .line 1091
    iput-boolean v0, p0, Lcom/oplus/camera/entry/b;->u:Z

    return-void
.end method

.method public u()F
    .locals 0

    .line 1095
    iget p0, p0, Lcom/oplus/camera/entry/b;->v:F

    return p0
.end method

.method public v()Ljava/lang/String;
    .locals 0

    .line 1099
    iget-object p0, p0, Lcom/oplus/camera/entry/b;->k:Ljava/lang/String;

    return-object p0
.end method

.method public w()Z
    .locals 2

    .line 1103
    iget-object v0, p0, Lcom/oplus/camera/entry/b;->m:Ljava/lang/String;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/oplus/camera/entry/b;->q:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public x()Z
    .locals 0

    .line 1111
    iget-boolean p0, p0, Lcom/oplus/camera/entry/b;->w:Z

    return p0
.end method

.method public y()V
    .locals 1

    const/4 v0, 0x0

    .line 1115
    iput-boolean v0, p0, Lcom/oplus/camera/entry/b;->s:Z

    return-void
.end method

.method public z()V
    .locals 1

    const/4 v0, 0x0

    .line 1119
    iput-boolean v0, p0, Lcom/oplus/camera/entry/b;->w:Z

    return-void
.end method
