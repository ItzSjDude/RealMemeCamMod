.class public Lcom/oplus/camera/screen/a/d;
.super Ljava/lang/Object;
.source "ScreenModeDecision.java"


# instance fields
.field a:Lcom/oplus/camera/screen/f$a;

.field b:Lcom/oplus/camera/screen/f$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    sget-object v0, Lcom/oplus/camera/screen/f$a;->out:Lcom/oplus/camera/screen/f$a;

    iput-object v0, p0, Lcom/oplus/camera/screen/a/d;->a:Lcom/oplus/camera/screen/f$a;

    .line 11
    sget-object v0, Lcom/oplus/camera/screen/f$a;->out:Lcom/oplus/camera/screen/f$a;

    iput-object v0, p0, Lcom/oplus/camera/screen/a/d;->b:Lcom/oplus/camera/screen/f$a;

    return-void
.end method

.method private a(IIIZ)Lcom/oplus/camera/screen/f$a;
    .locals 5

    .line 34
    sget-object p2, Lcom/oplus/camera/screen/f$a;->common:Lcom/oplus/camera/screen/f$a;

    .line 36
    iget-object v0, p0, Lcom/oplus/camera/screen/a/d;->a:Lcom/oplus/camera/screen/f$a;

    sget-object v1, Lcom/oplus/camera/screen/f$a;->right:Lcom/oplus/camera/screen/f$a;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/screen/a/d;->a:Lcom/oplus/camera/screen/f$a;

    sget-object v1, Lcom/oplus/camera/screen/f$a;->left:Lcom/oplus/camera/screen/f$a;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    iget-object p4, p0, Lcom/oplus/camera/screen/a/d;->a:Lcom/oplus/camera/screen/f$a;

    sget-object v0, Lcom/oplus/camera/screen/f$a;->full:Lcom/oplus/camera/screen/f$a;

    if-eq p4, v0, :cond_1

    iget-object p4, p0, Lcom/oplus/camera/screen/a/d;->a:Lcom/oplus/camera/screen/f$a;

    sget-object v0, Lcom/oplus/camera/screen/f$a;->full90:Lcom/oplus/camera/screen/f$a;

    if-eq p4, v0, :cond_1

    iget-object p0, p0, Lcom/oplus/camera/screen/a/d;->a:Lcom/oplus/camera/screen/f$a;

    sget-object p4, Lcom/oplus/camera/screen/f$a;->full270:Lcom/oplus/camera/screen/f$a;

    if-ne p0, p4, :cond_14

    :cond_1
    if-ne v2, p3, :cond_2

    .line 85
    sget-object p2, Lcom/oplus/camera/screen/f$a;->left:Lcom/oplus/camera/screen/f$a;

    goto/16 :goto_1

    .line 87
    :cond_2
    sget-object p2, Lcom/oplus/camera/screen/f$a;->right:Lcom/oplus/camera/screen/f$a;

    goto/16 :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    .line 37
    invoke-static {}, Lcom/oplus/camera/util/Util;->g()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 38
    sget-object p2, Lcom/oplus/camera/screen/f$a;->common:Lcom/oplus/camera/screen/f$a;

    goto/16 :goto_1

    .line 39
    :cond_4
    invoke-static {}, Lcom/oplus/camera/util/Util;->g()I

    move-result v0

    if-nez v0, :cond_5

    .line 40
    sget-object p2, Lcom/oplus/camera/screen/f$a;->out:Lcom/oplus/camera/screen/f$a;

    goto/16 :goto_1

    .line 41
    :cond_5
    sget v0, Lcom/oplus/camera/util/Util;->i:I

    const/16 v1, 0x3c

    const/16 v3, 0x10e

    const/16 v4, 0x5a

    if-ge v0, v1, :cond_9

    if-nez p1, :cond_6

    .line 43
    sget-object p2, Lcom/oplus/camera/screen/f$a;->full:Lcom/oplus/camera/screen/f$a;

    goto/16 :goto_1

    :cond_6
    if-ne v4, p1, :cond_7

    .line 45
    sget-object p2, Lcom/oplus/camera/screen/f$a;->low270:Lcom/oplus/camera/screen/f$a;

    goto :goto_1

    :cond_7
    if-ne v3, p1, :cond_8

    .line 47
    sget-object p2, Lcom/oplus/camera/screen/f$a;->low90:Lcom/oplus/camera/screen/f$a;

    goto :goto_1

    .line 49
    :cond_8
    sget-object p2, Lcom/oplus/camera/screen/f$a;->full:Lcom/oplus/camera/screen/f$a;

    goto :goto_1

    .line 51
    :cond_9
    sget v0, Lcom/oplus/camera/util/Util;->i:I

    const/16 v1, 0x96

    if-ge v0, v1, :cond_d

    if-nez p1, :cond_a

    .line 53
    sget-object p2, Lcom/oplus/camera/screen/f$a;->full:Lcom/oplus/camera/screen/f$a;

    goto :goto_1

    :cond_a
    if-ne v4, p1, :cond_b

    .line 55
    sget-object p2, Lcom/oplus/camera/screen/f$a;->rack270:Lcom/oplus/camera/screen/f$a;

    goto :goto_1

    :cond_b
    if-ne v3, p1, :cond_c

    .line 57
    sget-object p2, Lcom/oplus/camera/screen/f$a;->rack90:Lcom/oplus/camera/screen/f$a;

    goto :goto_1

    .line 59
    :cond_c
    sget-object p2, Lcom/oplus/camera/screen/f$a;->full:Lcom/oplus/camera/screen/f$a;

    goto :goto_1

    .line 61
    :cond_d
    invoke-static {}, Lcom/oplus/camera/util/Util;->g()I

    move-result v0

    if-ne v2, v0, :cond_14

    if-eqz p4, :cond_10

    .line 62
    sget-object p2, Lcom/oplus/camera/screen/f$a;->right:Lcom/oplus/camera/screen/f$a;

    iget-object p4, p0, Lcom/oplus/camera/screen/a/d;->a:Lcom/oplus/camera/screen/f$a;

    if-eq p2, p4, :cond_e

    sget-object p2, Lcom/oplus/camera/screen/f$a;->left:Lcom/oplus/camera/screen/f$a;

    iget-object p4, p0, Lcom/oplus/camera/screen/a/d;->a:Lcom/oplus/camera/screen/f$a;

    if-ne p2, p4, :cond_10

    .line 64
    :cond_e
    iget-object p2, p0, Lcom/oplus/camera/screen/a/d;->a:Lcom/oplus/camera/screen/f$a;

    if-ne v2, p3, :cond_f

    .line 67
    sget-object p2, Lcom/oplus/camera/screen/f$a;->left:Lcom/oplus/camera/screen/f$a;

    goto :goto_1

    :cond_f
    if-nez p3, :cond_14

    .line 69
    sget-object p2, Lcom/oplus/camera/screen/f$a;->right:Lcom/oplus/camera/screen/f$a;

    goto :goto_1

    :cond_10
    if-nez p1, :cond_11

    .line 72
    sget-object p2, Lcom/oplus/camera/screen/f$a;->full:Lcom/oplus/camera/screen/f$a;

    goto :goto_1

    :cond_11
    if-ne v4, p1, :cond_12

    .line 74
    sget-object p2, Lcom/oplus/camera/screen/f$a;->full270:Lcom/oplus/camera/screen/f$a;

    goto :goto_1

    :cond_12
    if-ne v3, p1, :cond_13

    .line 76
    sget-object p2, Lcom/oplus/camera/screen/f$a;->full90:Lcom/oplus/camera/screen/f$a;

    goto :goto_1

    .line 78
    :cond_13
    sget-object p2, Lcom/oplus/camera/screen/f$a;->full:Lcom/oplus/camera/screen/f$a;

    .line 91
    :cond_14
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "clickDecisionLogic, orientation: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", decisionMode: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ScreenModeDecision"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method


# virtual methods
.method public a(III)Lcom/oplus/camera/screen/f$a;
    .locals 5

    .line 97
    sget-object p2, Lcom/oplus/camera/screen/f$a;->common:Lcom/oplus/camera/screen/f$a;

    .line 99
    invoke-static {}, Lcom/oplus/camera/util/Util;->g()I

    move-result v0

    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    .line 100
    sget-object p2, Lcom/oplus/camera/screen/f$a;->common:Lcom/oplus/camera/screen/f$a;

    goto/16 :goto_1

    .line 101
    :cond_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->g()I

    move-result v0

    if-nez v0, :cond_1

    .line 102
    sget-object p2, Lcom/oplus/camera/screen/f$a;->out:Lcom/oplus/camera/screen/f$a;

    goto/16 :goto_1

    .line 103
    :cond_1
    sget v0, Lcom/oplus/camera/util/Util;->i:I

    const/16 v1, 0x3c

    const/16 v2, 0x10e

    const/16 v3, 0x5a

    const/4 v4, 0x1

    if-ge v0, v1, :cond_6

    if-nez p1, :cond_3

    if-ne p3, v4, :cond_2

    .line 106
    sget-object p0, Lcom/oplus/camera/screen/f$a;->left:Lcom/oplus/camera/screen/f$a;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/oplus/camera/screen/f$a;->right:Lcom/oplus/camera/screen/f$a;

    :goto_0
    move-object p2, p0

    goto/16 :goto_1

    :cond_3
    if-ne v3, p1, :cond_4

    .line 108
    sget-object p2, Lcom/oplus/camera/screen/f$a;->low270:Lcom/oplus/camera/screen/f$a;

    goto :goto_1

    :cond_4
    if-ne v2, p1, :cond_5

    .line 110
    sget-object p2, Lcom/oplus/camera/screen/f$a;->low90:Lcom/oplus/camera/screen/f$a;

    goto :goto_1

    .line 112
    :cond_5
    sget-object p2, Lcom/oplus/camera/screen/f$a;->right:Lcom/oplus/camera/screen/f$a;

    goto :goto_1

    .line 114
    :cond_6
    sget v0, Lcom/oplus/camera/util/Util;->i:I

    const/16 v1, 0x96

    if-ge v0, v1, :cond_b

    if-nez p1, :cond_8

    if-ne p3, v4, :cond_7

    .line 117
    sget-object p0, Lcom/oplus/camera/screen/f$a;->left:Lcom/oplus/camera/screen/f$a;

    goto :goto_0

    :cond_7
    sget-object p0, Lcom/oplus/camera/screen/f$a;->right:Lcom/oplus/camera/screen/f$a;

    goto :goto_0

    :cond_8
    if-ne v3, p1, :cond_9

    .line 119
    sget-object p2, Lcom/oplus/camera/screen/f$a;->rack270:Lcom/oplus/camera/screen/f$a;

    goto :goto_1

    :cond_9
    if-ne v2, p1, :cond_a

    .line 121
    sget-object p2, Lcom/oplus/camera/screen/f$a;->rack90:Lcom/oplus/camera/screen/f$a;

    goto :goto_1

    .line 123
    :cond_a
    sget-object p2, Lcom/oplus/camera/screen/f$a;->right:Lcom/oplus/camera/screen/f$a;

    goto :goto_1

    .line 125
    :cond_b
    invoke-static {}, Lcom/oplus/camera/util/Util;->g()I

    move-result v0

    if-ne v4, v0, :cond_11

    .line 126
    sget-object p2, Lcom/oplus/camera/screen/f$a;->right:Lcom/oplus/camera/screen/f$a;

    iget-object v0, p0, Lcom/oplus/camera/screen/a/d;->a:Lcom/oplus/camera/screen/f$a;

    if-ne p2, v0, :cond_c

    if-ne v4, p3, :cond_c

    .line 127
    sget-object p2, Lcom/oplus/camera/screen/f$a;->left:Lcom/oplus/camera/screen/f$a;

    goto :goto_1

    .line 128
    :cond_c
    sget-object p2, Lcom/oplus/camera/screen/f$a;->left:Lcom/oplus/camera/screen/f$a;

    iget-object p0, p0, Lcom/oplus/camera/screen/a/d;->a:Lcom/oplus/camera/screen/f$a;

    if-ne p2, p0, :cond_d

    if-nez p3, :cond_d

    .line 129
    sget-object p2, Lcom/oplus/camera/screen/f$a;->right:Lcom/oplus/camera/screen/f$a;

    goto :goto_1

    :cond_d
    if-nez p1, :cond_e

    .line 131
    sget-object p2, Lcom/oplus/camera/screen/f$a;->full:Lcom/oplus/camera/screen/f$a;

    goto :goto_1

    :cond_e
    if-ne v3, p1, :cond_f

    .line 133
    sget-object p2, Lcom/oplus/camera/screen/f$a;->full270:Lcom/oplus/camera/screen/f$a;

    goto :goto_1

    :cond_f
    if-ne v2, p1, :cond_10

    .line 135
    sget-object p2, Lcom/oplus/camera/screen/f$a;->full90:Lcom/oplus/camera/screen/f$a;

    goto :goto_1

    .line 137
    :cond_10
    sget-object p2, Lcom/oplus/camera/screen/f$a;->full:Lcom/oplus/camera/screen/f$a;

    .line 141
    :cond_11
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "commonDecisionLogic, orientation: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", decisionMode: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ScreenModeDecision"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public a(IIIZZ)Lcom/oplus/camera/screen/f$a;
    .locals 2

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDecisionChangeScreenMode, orientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", angle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cameraid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isClick: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "isRotateOrCameraIdChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenModeDecision"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p4, :cond_1

    .line 21
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/camera/screen/a/d;->a(III)Lcom/oplus/camera/screen/f$a;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/screen/a/d;->b:Lcom/oplus/camera/screen/f$a;

    .line 23
    iget-object p1, p0, Lcom/oplus/camera/screen/a/d;->a:Lcom/oplus/camera/screen/f$a;

    iget-object p2, p0, Lcom/oplus/camera/screen/a/d;->b:Lcom/oplus/camera/screen/f$a;

    if-eq p1, p2, :cond_0

    .line 24
    iput-object p2, p0, Lcom/oplus/camera/screen/a/d;->a:Lcom/oplus/camera/screen/f$a;

    .line 27
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/screen/a/d;->b:Lcom/oplus/camera/screen/f$a;

    return-object p0

    .line 29
    :cond_1
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/oplus/camera/screen/a/d;->a(IIIZ)Lcom/oplus/camera/screen/f$a;

    move-result-object p0

    return-object p0
.end method
