.class public Lcom/oplus/camera/DebugBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DebugBroadcastReceiver.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/oplus/camera/DebugBroadcastReceiver;->a:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/oplus/camera/DebugBroadcastReceiver;->b:Landroid/content/Context;

    .line 47
    new-instance v0, Lcom/oplus/camera/DebugBroadcastReceiver$1;

    invoke-direct {v0, p0}, Lcom/oplus/camera/DebugBroadcastReceiver$1;-><init>(Lcom/oplus/camera/DebugBroadcastReceiver;)V

    iput-object v0, p0, Lcom/oplus/camera/DebugBroadcastReceiver;->c:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/DebugBroadcastReceiver;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/oplus/camera/DebugBroadcastReceiver;->a:Ljava/lang/String;

    return-object p0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 153
    iput-object p2, p0, Lcom/oplus/camera/DebugBroadcastReceiver;->a:Ljava/lang/String;

    .line 154
    new-instance v0, Lcom/coui/appcompat/dialog/app/b$a;

    const v1, 0x7f1102d7

    invoke-direct {v0, p1, v1}, Lcom/coui/appcompat/dialog/app/b$a;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f10001f

    .line 155
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/app/b$a;->a(I)Lcom/coui/appcompat/dialog/app/b$a;

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/DebugBroadcastReceiver;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/dialog/app/b$a;->b(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/app/b$a;

    const/4 p1, 0x0

    .line 157
    invoke-virtual {v0, p1}, Lcom/coui/appcompat/dialog/app/b$a;->a(Z)Lcom/coui/appcompat/dialog/app/b$a;

    .line 158
    iget-object p1, p0, Lcom/oplus/camera/DebugBroadcastReceiver;->c:Landroid/content/DialogInterface$OnClickListener;

    const v1, 0x104000a

    invoke-virtual {v0, v1, p1}, Lcom/coui/appcompat/dialog/app/b$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/b$a;

    .line 160
    invoke-direct {p0, p2}, Lcom/oplus/camera/DebugBroadcastReceiver;->b(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/high16 p0, 0x1040000

    const/4 p1, 0x0

    .line 161
    invoke-virtual {v0, p0, p1}, Lcom/coui/appcompat/dialog/app/b$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/b$a;

    .line 164
    :cond_0
    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/app/b$a;->a()Lcom/coui/appcompat/dialog/app/b;

    move-result-object p0

    .line 165
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/app/b;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x7f6

    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    .line 166
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/app/b;->show()V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "*#2785*6787#"

    .line 136
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "*#2785*8378#"

    .line 137
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "*#2785*82757#"

    .line 138
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "*#2785*757#"

    .line 139
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "*#2785*368*324#"

    .line 140
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "*#2785*368*757#"

    .line 141
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "*#2872*324*66#"

    .line 142
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "*#2872*324*633#"

    .line 143
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "*#2785*324*51#"

    .line 144
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "*#2785*324*52#"

    .line 145
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method static synthetic b(Lcom/oplus/camera/DebugBroadcastReceiver;)Landroid/content/Context;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/oplus/camera/DebugBroadcastReceiver;->b:Landroid/content/Context;

    return-object p0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 183
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p0, "*#2872*324*633#"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x7

    goto :goto_1

    :sswitch_1
    const-string p0, "*#2785*324*52#"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x9

    goto :goto_1

    :sswitch_2
    const-string p0, "*#2785*324*51#"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    goto :goto_1

    :sswitch_3
    const-string p0, "*#2785*8378#"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v0

    goto :goto_1

    :sswitch_4
    const-string p0, "*#2785*6787#"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_1

    :sswitch_5
    const-string p0, "*#2872*324*66#"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto :goto_1

    :sswitch_6
    const-string p0, "*#2785*757#"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto :goto_1

    :sswitch_7
    const-string p0, "*#2785*82757#"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :sswitch_8
    const-string p0, "*#2785*368*757#"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_1

    :sswitch_9
    const-string p0, "*#2785*368*324#"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    .line 220
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDialogContent, do not support this mode, mode: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "DebugBroadcastReceiver"

    invoke-static {p2, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    goto :goto_2

    :pswitch_0
    const p0, 0x7f100597

    .line 217
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const p0, 0x7f100598

    .line 214
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    const p0, 0x7f1006d7

    .line 211
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    const p0, 0x7f1006d8

    .line 207
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :pswitch_4
    const p0, 0x7f10065b

    .line 204
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    const p0, 0x7f1006ab

    .line 201
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_6
    const p0, 0x7f1006aa

    .line 197
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :pswitch_7
    const p0, 0x7f1006d4

    .line 193
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :pswitch_8
    const p0, 0x7f1006af

    .line 189
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :pswitch_9
    const p0, 0x7f100629

    .line 185
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_2
    const p2, 0x7f10001e

    .line 225
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v1

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6f12d90e -> :sswitch_9
        -0x6f10fbf2 -> :sswitch_8
        -0x3fff084d -> :sswitch_7
        0x9859579 -> :sswitch_6
        0x1b3d831e -> :sswitch_5
        0x271ff134 -> :sswitch_4
        0x273a4b18 -> :sswitch_3
        0x376f8a23 -> :sswitch_2
        0x376f8a42 -> :sswitch_1
        0x4c72d772 -> :sswitch_0
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

.method private b(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "*#2785*368*757#"

    .line 170
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "*#2785*757#"

    .line 171
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "*#2872*324*633#"

    .line 172
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "*#2785*324*52#"

    .line 173
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 111
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.oplus.engineermode.EngineerModeMain"

    .line 113
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "order"

    .line 117
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 119
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 122
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 126
    :cond_1
    invoke-direct {p0, v0}, Lcom/oplus/camera/DebugBroadcastReceiver;->a(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    return-void

    .line 130
    :cond_2
    iput-object p1, p0, Lcom/oplus/camera/DebugBroadcastReceiver;->b:Landroid/content/Context;

    .line 131
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/DebugBroadcastReceiver;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
